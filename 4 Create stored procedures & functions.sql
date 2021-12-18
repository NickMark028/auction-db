USE `Auction`;


/*********************************************************/
/* REGISTER A NEW BIDDER */
/*********************************************************/
DELIMITER //
DROP PROCEDURE IF EXISTS `RegisterBidder`; //
CREATE PROCEDURE `RegisterBidder`
(
    _email				VARCHAR(128),
    _password			VARCHAR(512),
    _firstName			VARCHAR(64) CHARACTER SET utf8mb4,
    _lastName			VARCHAR(64) CHARACTER SET utf8mb4,
    _address            VARCHAR(256),
    _dateOfBirth		DATE
)
BEGIN
    DECLARE _id INT;
    
	START TRANSACTION;
	
    -- Register new bidder
    INSERT INTO `User`(`username`, `password`, `firstName`, `lastName`, `email`, `dateOfBirth`)
    VALUE (_email, _password, _firstName, _lastName, _email, _dateOfBirth);

    SET _id = (SELECT `id` FROM `User` U WHERE U.`username` = _email);

	INSERT INTO `Bidder`(`id`, `address`)
	VALUE (_id, _address);    

    COMMIT;
END; //
DELIMITER ;


/*********************************************************/
/* SEARCH_PRODUCT_CONTAIN_KEYWORD + SEARCH_PRODUCT*/
/*********************************************************/
DELIMITER //
DROP PROCEDURE IF EXISTS `SearchProductContainKeyword`; //
CREATE PROCEDURE `SearchProductContainKeyword`
(
    _keyword			VARCHAR(256) CHARACTER SET utf8mb4,
    _offset				INT,
	_count				INT
)
BEGIN
	SELECT	*
	FROM	`Product`
	WHERE	`name` LIKE CONCAT('%', _keyword, '%')
    LIMIT	_offset, _count;
END; //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS `SearchProduct`; //
CREATE PROCEDURE `SearchProduct`
(
    _keyword			VARCHAR(256) CHARACTER SET utf8mb4,
    _page				INT,	-- Start at 1
	_count				INT
)
BEGIN
	DECLARE _resultCount INT DEFAULT 0;
	DECLARE _offset INT DEFAULT (_page - 1) * _count;
    
    IF LENGTH(_keyword) < 4 THEN
		CALL SearchProductContainKeyword(_keyword, _offset, _count);
    ELSE
		SELECT	COUNT(*) INTO _resultCount
        FROM	`Product`
		WHERE	MATCH(`name`) AGAINST(_keyword IN BOOLEAN MODE);
        
		IF _resultCount = 0 THEN
			CALL SearchProductContainKeyword(_keyword, _offset, _count);
		ELSE
			SELECT	*
			FROM	`Product`
			WHERE	MATCH(`name`) AGAINST(_keyword IN BOOLEAN MODE)
            LIMIT	_offset, _count;
		END IF;
	END IF;
END; //
DELIMITER ;
