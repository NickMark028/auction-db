USE `auction-dev`;


/*********************************************************/
/* TIME ZONE */
/*********************************************************/
SET time_zone = '+7:00';


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnAfterUpdateChangeRoleLog; //
CREATE TRIGGER OnAfterUpdateChangeRoleLog
AFTER UPDATE ON `ChangeRoleLog`
FOR EACH ROW
BEGIN
    -- Block new log in AuctionLog for those who is banned
	IF NEW.`statusCode` = 200 THEN
		IF NOT EXISTS (SELECT * FROM `Seller` S WHERE S.`id` = NEW.`bidderId`) THEN
			INSERT INTO `Seller`(`id`, `expiredTime`)
			VALUE (NEW.`bidderId`, DATE_ADD(NOW(), INTERVAL 7 DAY));
		ELSE
			UPDATE	`Seller` S
			SET		S.`active` = TRUE
			WHERE	S.`id` = NEW.`bidderId`;
		END IF;
	-- (NOT DONE)
	-- ELSEIF NEW.`statusCode` = 201 THEN
	-- BEGIN
	-- 	-- Inform the user
	-- END
    END IF;
		
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnBeforeInsertAuctionLog; //
CREATE TRIGGER OnBeforeInsertAuctionLog
BEFORE INSERT ON `AuctionLog`
FOR EACH ROW
BEGIN
	-- Reject insert a price lower than the Product.reservedPrice
	IF EXISTS(	SELECT	1
				FROM	Product P
				WHERE	P.reservedPrice > NEW.price) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'The price must be a minimum of the product reserved price';
	END IF;

    -- Block new log in AuctionLog for those who is banned
	IF EXISTS (	SELECT	1
				FROM	BlockedBidder BB
				WHERE	BB.bidderId = NEW.bidderId AND BB.productId = NEW.productId) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Bidder is banned';
    END IF;
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnAfterInsertAuctionLog; //
CREATE TRIGGER OnAfterInsertAuctionLog
AFTER INSERT ON `AuctionLog`
FOR EACH ROW
BEGIN
	DECLARE topBidderId BIGINT;
	DECLARE topPrice FLOAT;

	IF (SELECT BP.currentPrice FROM BiddedProduct BP WHERE BP.id = NEW.productId) IS NULL THEN
		UPDATE	BiddedProduct BP
		SET		BP.topBidderId = NEW.bidderId,
				BP.currentPrice = NEW.price,
				BP.auctionLogCount = 1,
				BP.bidderCount = 1
		WHERE	BP.id = NEW.productId;
	ELSE
		-- Increase the number of `auctionLogCount` by 1
		-- Count the number of `auctionLogCout`
		-- Update current price from BiddedProduct
		-- Update top bidder from BiddedProduct
		SELECT	MAX(AL.price)
		INTO	topPrice
		FROM	AuctionLog AL
		WHERE	AL.bidderId NOT IN (SELECT bidderId FROM BlockedBidder BB WHERE BB.productId = NEW.productId);

		SELECT	AL.bidderId
		INTO	topBidderId
		FROM	AuctionLog AL
		WHERE	AL.bidderId NOT IN (SELECT bidderId FROM BlockedBidder BB WHERE BB.productId = NEW.productId);

		UPDATE	BiddedProduct BP
		SET		BP.bidderCount =  (SELECT COUNT(DISTINCT AC.`bidderId`) FROM `AuctionLog` AC),
				BP.auctionLogCount = BP.auctionLogCount + 1,
				BP.topBidderId = topBidderId,
				BP.currentPrice = topPrice
		WHERE	NEW.productId = BP.id;    
	END IF;
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnAfterInsertBlockedBidder; //
CREATE TRIGGER OnAfterInsertBlockedBidder
AFTER INSERT ON `BlockedBidder`
FOR EACH ROW
BEGIN
	DECLARE topBidderId BIGINT;
	DECLARE topPrice FLOAT;

	-- Increase the number of `auctionLogCount` by 1
	-- Count the number of `auctionLogCout`
	-- Update current price from BiddedProduct
	-- Update top bidder from BiddedProduct
	SELECT	MAX(AL.price)
	INTO	topPrice
	FROM	AuctionLog AL
	WHERE	AL.bidderId NOT IN (SELECT bidderId FROM BlockedBidder BB WHERE BB.productId = NEW.productId);

	SELECT	AL.bidderId
	INTO	topBidderId
	FROM	AuctionLog AL
	WHERE	AL.bidderId NOT IN (SELECT bidderId FROM BlockedBidder BB WHERE BB.productId = NEW.productId);

	UPDATE	BiddedProduct BP
	SET		BP.bidderCount = (SELECT COUNT(DISTINCT AC.`bidderId`) FROM `AuctionLog` AC),	-- Only select non-blocked bidder 
			BP.topBidderId = topBidderId,
			BP.currentPrice = topPrice
	WHERE	NEW.productId = BP.id;    
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnBeforeInsertMessageToSeller; //
CREATE TRIGGER OnBeforeInsertMessageToSeller
BEFORE INSERT ON `MessageToSeller`
FOR EACH ROW
BEGIN
	-- Reject insert new row to `MessageToSeller` if Seller already reject Bidder
	DECLARE statusCode BIGINT;
	SET statusCode = (
		SELECT	BP.`statusCode`
		FROM	`MessageToSeller` MTS JOIN `BiddedProduct` BP ON MTS.`id` = BP.`id`
    );
    
    IF statusCode = 220 THEN
		SIGNAL SQLSTATE '45000';
	END IF;
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnAfterInsertMessageToSeller; //
CREATE TRIGGER OnAfterInsertMessageToSeller
BEFORE INSERT ON `MessageToSeller`
FOR EACH ROW
BEGIN
	-- Get sellerId
    DECLARE sellerId BIGINT;
    SET sellerId = (
		SELECT	S.`statusCode`
		FROM	`MessageToSeller` MTS
		JOIN	`BiddedProduct` BP ON MTS.`id` = BP.`id`
		JOIN	`Product` P ON BP.`id` = P.`id`
		JOIN	`Seller` S ON P.`id` = S.`id`
	);
    
    -- Increase the number of `positiveCount` or `negativeCount` for the Seller
    IF (NEW.`score` = 1) THEN
		UPDATE	`Bidder` SB
		SET		SB.`positiveCount` = SB.`positiveCount` + 1
        WHERE	SB.`id` = sellerId;
    ELSEIF (NEW.`score` = -1) THEN
		UPDATE	`Bidder` SB
		SET		SB.`negativeCount` = SB.`negativeCount` + 1
        WHERE	SB.`id` = sellerId;
    END IF;    
END; //
DELIMITER ;


/*********************************************************/
DELIMITER //
DROP TRIGGER IF EXISTS OnAfterInsertMessageToBidder; //
CREATE TRIGGER OnAfterInsertMessageToBidder
BEFORE INSERT ON `MessageToBidder`
FOR EACH ROW
BEGIN
    -- Get bidderId
	DECLARE bidderId BIGINT;
    SET bidderId = (
		SELECT	bidderId = BP.`topBidderId`
		FROM	`MessageToBidder` MTB JOIN `BiddedProduct` BP ON MTB.`id` = BP.`id`
    );
    
    -- Increase the number of `positiveCount` or `negativeCount` for the Bidder
    IF (NEW.`score` = 1) THEN
		UPDATE	`Bidder` B
		SET		B.`positiveCount` = B.`positiveCount` + 1
        WHERE	B.`id` = bidderId;
    ELSEIF (NEW.`score` = -1) THEN
		UPDATE	`Bidder` B
		SET		B.`negativeCount` = B.`negativeCount` + 1
        WHERE	B.`id` = bidderId;
    END IF;    
END; //
DELIMITER ;

