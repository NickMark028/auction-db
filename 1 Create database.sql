/*********************************************************/
/* CREATE DATABASE */
/*********************************************************/
DROP DATABASE IF EXISTS `auction`;
CREATE DATABASE IF NOT EXISTS `auction`;
USE `auction`;


/*********************************************************/
/* CONFIGURATION */
/*********************************************************/
SET GLOBAL time_zone = '+7:00';


/*********************************************************/
/* CREATE TABLES */
/*********************************************************/
CREATE TABLE IF NOT EXISTS `User`
(
	`id`				BIGINT AUTO_INCREMENT,
    `username`			VARCHAR(128) UNIQUE NOT NULL,
    `password`			VARCHAR(512) NOT NULL,
    `firstName`			VARCHAR(64) CHARACTER SET utf8mb4 NOT NULL,
    `lastName`			VARCHAR(64) CHARACTER SET utf8mb4 NOT NULL,
    `email`				VARCHAR(128) UNIQUE NOT NULL,
    `dateOfBirth`		DATE NOT NULL,
    `createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    `updatedAt`			TIMESTAMP NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Admin`
(
	`id`				BIGINT,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Bidder`
(
	`id`				BIGINT,
    `address`			VARCHAR(256) NOT NULL,
    `verifed`			BOOL NOT NULL DEFAULT FALSE,
    `score`				INT NOT NULL DEFAULT 10,
    `isDeleted`			BOOL NOT NULL DEFAULT FALSE,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Seller`
(
	`id`				BIGINT,
    `expiredTime`		TIMESTAMP NOT NULL,
    `active`			BOOL NOT NULL DEFAULT FALSE,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Product`
(
	`id`				BIGINT AUTO_INCREMENT,
    `sellerId`			BIGINT NOT NULL,
    `name`				VARCHAR(256) CHARACTER SET utf8mb4 NOT NULL,
    `reservedPrice`		FLOAT NOT NULL,
    `priceStep`			FLOAT NOT NULL,
    `instantPrice`		FLOAT NOT NULL,
    `desciption`		VARCHAR(8192) CHARACTER SET utf8mb4 NOT NULL,
    `isRenewal`			BOOL NOT NULL,
    `coverImageURL`		VARCHAR(2048) NOT NULL,
    `timeExpired`		TIMESTAMP NOT NULL,
    `createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    `updatedAt`			TIMESTAMP NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `BiddedProduct`
(
	`id`				BIGINT,
    `topBidderId`		BIGINT,
    `bidderOwnerId`		BIGINT,
    `currentPrice`		FLOAT NOT NULL,
    `auctionLogCount`	INT NOT NULL DEFAULT 0,
    `bidderCount`		INT NOT NULL DEFAULT 0,
    `remainingTime`		FLOAT NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Category`
(
	`id`				BIGINT AUTO_INCREMENT,
    `section`			VARCHAR(64) CHARACTER SET utf8mb4 NOT NULL,
    `name`				VARCHAR(64) CHARACTER SET utf8mb4 NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `ProductCategory`
(
	`productId`			BIGINT,
    `categoryId`		BIGINT,
    
    PRIMARY KEY(`productId`, `categoryId`)
);

CREATE TABLE IF NOT EXISTS `ProductImage`
(
	`id`				BIGINT AUTO_INCREMENT,
	`productId`			BIGINT NOT NULL,
    `url`				VARCHAR(2048) NOT NULL,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `Evaluation`
(
	`id`				BIGINT AUTO_INCREMENT,
    `msgToBidder`		VARCHAR(1024) CHARACTER SET utf8mb4,
    `msgToSeller`		VARCHAR(1024) CHARACTER SET utf8mb4,
    `scoreToBidder`		BIGINT NOT NULL DEFAULT 0,
    `scoreToSeller`		BIGINT NOT NULL DEFAULT 0,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `WatchList`
(
	`bidderId`			BIGINT,
	`productId`			BIGINT,
    `createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    `isDeleted`			BOOL NOT NULL DEFAULT FALSE,
    
    PRIMARY KEY(`bidderId`, `productId`)
);

CREATE TABLE IF NOT EXISTS `AuctionLog`
(
	`id`				BIGINT,
	`bidderId`			BIGINT NOT NULL,
	`productId`			BIGINT NOT NULL,
    `price`				FLOAT NOT NULL,
    `createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `BlockedBidder`
(
	`bidderId`			BIGINT,
	`productId`			BIGINT,
	`createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    
    PRIMARY KEY(`bidderId`, `productId`)
);

CREATE TABLE IF NOT EXISTS `ChangeRoleLog`
(
	`id`				BIGINT AUTO_INCREMENT,
	`bidderId`			BIGINT NOT NULL,
	`message`			VARCHAR(1024) CHARACTER SET utf8mb4,
    `statusCode`		BIGINT,
    `replier`			BIGINT,
    `timeReplied`		TIMESTAMP,
    `createdAt`			TIMESTAMP NOT NULL DEFAULT NOW(),
    `isDeleted`			BOOL NOT NULL DEFAULT FALSE,
    
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `StatusCode`
(
	`id`				BIGINT,
	`name`				VARCHAR(1024) NOT NULL,
    
    PRIMARY KEY(`id`)
);


/*********************************************************/
/* SET UP STARTING INCREMENT VALUE */
/*********************************************************/
ALTER TABLE `User` AUTO_INCREMENT = 1000001;
ALTER TABLE `ChangeRoleLog` AUTO_INCREMENT = 1000001;
ALTER TABLE `Product` AUTO_INCREMENT = 1000001;
ALTER TABLE `ProductImage` AUTO_INCREMENT = 1000001;
ALTER TABLE `Evaluation` AUTO_INCREMENT = 1000001;
ALTER TABLE `Category` AUTO_INCREMENT = 1;


/*********************************************************/
/* ADD FOREIGN KEYS */
/*********************************************************/
ALTER TABLE `Admin`
ADD FOREIGN KEY `FK_A_U`(`id`)
	REFERENCES `User`(`id`);

ALTER TABLE `Bidder`
ADD FOREIGN KEY `FK_B_U`(`id`)
	REFERENCES `User`(`id`);

ALTER TABLE `ChangeRoleLog`
ADD FOREIGN KEY `FK_CRL_B`(`bidderId`)
	REFERENCES `Bidder`(`id`),
ADD FOREIGN KEY `FK_CRL_SC`(`statusCode`)
	REFERENCES `StatusCode`(`id`),
ADD FOREIGN KEY `FK_CRL_A`(`replier`)
	REFERENCES `Admin`(`id`);
    
ALTER TABLE `Seller`
ADD FOREIGN KEY `FK_S_B`(`id`)
	REFERENCES `Bidder`(`id`);

ALTER TABLE `Product`
ADD FOREIGN KEY `FK_P_S`(`sellerId`)
	REFERENCES `Seller`(`id`);

ALTER TABLE `ProductCategory`
ADD FOREIGN KEY `FK_PC_C`(`productId`)
	REFERENCES `Product`(`id`),
ADD FOREIGN KEY `FK_PC_P`(`categoryId`)
	REFERENCES `Category`(`id`);
    
ALTER TABLE `ProductImage`
ADD FOREIGN KEY `FK_PI_P`(`productId`)
	REFERENCES `Product`(`id`);    

ALTER TABLE `BiddedProduct`
ADD FOREIGN KEY `FK_BD_P`(`id`)
	REFERENCES `Product`(`id`),
ADD FOREIGN KEY `FK_BD_B1`(`topBidderId`)
	REFERENCES `Bidder`(`id`),
ADD FOREIGN KEY `FK_BD_B2`(`bidderOwnerId`)
	REFERENCES `Bidder`(`id`);
    
ALTER TABLE `WatchList`
ADD FOREIGN KEY `FK_WL_B`(`bidderId`)
	REFERENCES `Bidder`(`id`),
ADD FOREIGN KEY `FK_WL_BP`(`productId`)
	REFERENCES `BiddedProduct`(`id`);
    
ALTER TABLE `AuctionLog`
ADD FOREIGN KEY `FK_AL_B`(`bidderId`)
	REFERENCES `Bidder`(`id`),
ADD FOREIGN KEY `FK_AL_BP`(`productId`)
	REFERENCES `BiddedProduct`(`id`);
    
ALTER TABLE `BlockedBidder`
ADD FOREIGN KEY `FK_BB_B`(`bidderId`)
	REFERENCES `Bidder`(`id`),
ADD FOREIGN KEY `FK_BB_BP`(`productId`)
	REFERENCES `BiddedProduct`(`id`);

ALTER TABLE `Evaluation`
ADD FOREIGN KEY `FK_E_BP`(`id`)
	REFERENCES `BiddedProduct`(`id`);    
    
    
