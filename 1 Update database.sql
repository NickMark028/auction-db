USE `auction-dev`;


-- 2021/01/12
ALTER TABLE Product
ADD COLUMN timeExpired2 TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

UPDATE	Product
SET		timeExpired2 = timeExpired;

ALTER TABLE Product
DROP COLUMN timeExpired;

ALTER TABLE Product
RENAME COLUMN timeExpired2 TO timeExpired;

