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


