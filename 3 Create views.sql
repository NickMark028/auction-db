USE Auction;

DROP VIEW IF EXISTS UserView;
CREATE VIEW UserView
AS
	SELECT	id, username, firstName, lastName, email, dateOfBirth, createdAt, updatedAt
	FROM	`User`;
SELECT * FROM UserView;


DROP VIEW IF EXISTS AdminView;
CREATE VIEW AdminView
AS
	SELECT	UV.*
	FROM	`Admin` A JOIN UserView UV ON A.id = UV.id;
SELECT * FROM AdminView;


DROP VIEW IF EXISTS BidderView;
CREATE VIEW BidderView
AS
	SELECT	UV.*, B.address, B.verifed, B.positiveCount, B.negativeCount
	FROM	Bidder B JOIN UserView UV ON B.id = UV.id
    WHERE	B.isDeleted = FALSE;
SELECT * FROM BidderView;


DROP VIEW IF EXISTS SellerView;
CREATE VIEW SellerView
AS
	SELECT	BV.*, S.expiredTime, S.`active`
	FROM	Seller S JOIN BidderView BV ON S.id = BV.id;
SELECT * FROM SellerView;


DROP VIEW IF EXISTS ProductView;
CREATE VIEW ProductView
AS
	SELECT	P.id, P.sellerId, P.`name`, P.`description`, P.reservedPrice, P.priceStep, P.instantPrice, P.isRenewal, P.coverimageURL, P.timeExpired, P.createdAt, BP.topBidderId, BP.currentPrice, BP.auctionLogCount, BP.bidderCount
	FROM	Product P JOIN BiddedProduct BP ON P.id = BP.id
    WHERE	P.isDeleted = FALSE;
SELECT * FROM ProductView;
    

/* ------------------------------------------------------------------------ */

DROP VIEW IF EXISTS QueryCategoryView;
CREATE VIEW QueryCategoryView
AS
	SELECT		C.section, JSON_ARRAYAGG(JSON_OBJECT(
					'id', C.id,
					'name', C.`name`,
					'path', C.`path`)
				) AS categories
	FROM		Category C
	GROUP BY	C.section;
SELECT * FROM QueryCategoryView;


DROP VIEW IF EXISTS QueryProductView;
CREATE VIEW QueryProductView
AS
	-- PV.*, C.id as categoryId, C.section, C.`name` as categoryName, C.`path`, SV.firstName as sellerFirstName, SV.lastName as sellerLastName
	SELECT		PV.*,
				JSON_OBJECT('firstName', SV.firstName, 'lastName', SV.lastName) AS seller,
				C.section, C.`name` AS categoryName, C.`path` AS categoryPath,
				IF (PV.topBidderId IS NULL, NULL, JSON_OBJECT('firstName', BV.firstName, 'lastName', BV.lastName)) AS topBidder
	FROM		ProductView PV
	JOIN		ProductCategory PC ON PV.id = PC.productId
    LEFT JOIN	BidderView BV ON BV.id = PV.topBidderId
	JOIN		SellerView SV ON SV.id = PV.sellerId
	JOIN		Category C ON PC.categoryId = C.id;
SELECT * FROM QueryProductView;


