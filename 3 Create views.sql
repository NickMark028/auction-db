USE `Auction`;

DROP VIEW IF EXISTS `AdminView`;
CREATE VIEW `AdminView`
AS
	SELECT	U.*
	FROM	`Admin` A JOIN `User` U ON A.`id` = U.`id`;

DROP VIEW IF EXISTS `BidderView`;
CREATE VIEW `BidderView`
AS
	SELECT	U.*, B.`address`, B.`verifed`, B.`positiveCount`, B.`negativeCount`, B.`isDeleted`
	FROM	`Bidder` B JOIN `User` U ON B.`id` = U.`id`;

DROP VIEW IF EXISTS `SellerView`;
CREATE VIEW `SellerView`
AS
	SELECT	BV.*, S.`expiredTime`, S.`active`
	FROM	`Seller` S JOIN `BidderView` BV ON S.`id` = BV.`id`;

DROP VIEW IF EXISTS `ProductView`;
CREATE VIEW `ProductView`
AS
	SELECT	P.*, BP.`topBidderId`, BP.`currentPrice`, BP.`auctionLogCount`, BP.`bidderCount`
	FROM	`Product` P JOIN `BiddedProduct` BP ON P.`id` = BP.`id`;


