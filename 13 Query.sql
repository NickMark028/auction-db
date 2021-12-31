USE auction;


-- Time zone
SET time_zone = '+7:00';


-- Get all category types
SELECT		C.section, JSON_ARRAYAGG(JSON_OBJECT(
                'id', C.id,
                'name', C.`name`,
                'path', C.`path`)
            ) AS categories
FROM		Category C
GROUP BY	C.section;


-- Get watch list
SELECT	PV.*, WLV.createdAt AS dateAdded
FROM	WatchListView WLV
JOIN 	ProductView PV ON PV.id = WLV.productId;
    

-- Top 5 product with most auction log
SELECT		*
FROM		ProductView PV
ORDER BY	PV.auctionLogCount DESC
LIMIT 		5;


-- Top 5 product nearest to close
SELECT		*
FROM		ProductView PV
ORDER BY	TIME_TO_SEC(TIMEDIFF(NOW(), NOW() - INTERVAL 1 MONTH)) ASC
LIMIT 		5;


-- Top 5 product with the highest price
SELECT		*
FROM		ProductView PV
ORDER BY	IF(PV.currentPrice IS NULL, PV.reservedPrice, PV.currentPrice) DESC
LIMIT 		5;


