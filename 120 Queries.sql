USE `auction-dev`;


CREATE EVENT ScheduleTimeOutForProduct10000010
ON SCHEDULE AT timeExpired
DO
	UPDATE  BiddedProduct
	SET     statusCode = 200
	WHERE   id = productId;

