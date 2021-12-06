USE `auction`;


/*********************************************************/
/* USER + ADMIN (admin, system@123password) (DO NOT CHANGE) */
/*********************************************************/
INSERT INTO `User`(`id`, `username`, `password`, `firstName`, `lastName`, `email`, `dateOfBirth`)
VALUE (100, 'admin', '$2a$12$fVrTHxy/D.zJR35BQtPsPeG.nI.E2AaqNPsEx4LTKyBo8V3zIViQO', 'KTT', 'admin', 'admin@gmail.com', '2000-01-01');
SELECT * FROM `User`;

INSERT INTO `Admin`(`id`)
VALUE (100);
SELECT * FROM `Admin`;


/*********************************************************/
/* CHANGE_ROLE_STATUS (DO NOT CHANGE)*/
/*********************************************************/
INSERT INTO `ChangeRoleStatus`(`id`, `name`)
VALUES
    (100, 'Request to be a seller'),
    (200, 'Approve upgrade to seller'),
    (201, 'Decline update to seller'),
    (300, 'Bidder cancel request'),
    (400, 'Downgrade from seller to bidder');
SELECT * FROM `ChangeRoleStatus`;


/*********************************************************/
/* BIDDED PRODUCT STATUS (DO NOT CHANGE) */
/*********************************************************/
INSERT INTO `BiddedProductStatus`(`id`, `name`)
VALUES
    (100, 'Currently bidding'),
    (200, 'Time out'),
    (210, 'Product sold'),
    (220, 'Reject bidding');
SELECT * FROM `BiddedProductStatus`;


/*********************************************************/
/* CATEGORY */
/*********************************************************/
INSERT INTO `Category`(`section`, `name`)
VALUES
    ('Electronics', 'Laptop'),
    ('Electronics', 'Mobie phone'),
    ('Electronics', 'Camera'),
    ('Styles', 'Dress'),
    ('Styles', 'Boot'),
    ('Styles', 'Pant'),
    ('Styles', 'Shirt'),
    ('Styles', 'Legging'),
    ('Styles', 'Sock');
SELECT * FROM `Category`;


/*********************************************************/
/* USER + BIDDER */
/*********************************************************/
CALL RegisterBidder('hcleft0@spotify.com', 'Dove, galapagos', 'Hobart', 'Cleft', '86 Calypso Hill', '2012-02-22');
CALL RegisterBidder('apomroy1@washingtonpost.com', 'Monitor lizard (unidentified)', 'Angie', 'Pomroy', '1266 Porter Trail', '2012-07-10');
CALL RegisterBidder('gherity2@gravatar.com', 'Dove, galapagos', 'Garland', 'Herity', '585 Oneill Hill', '2017-05-09');
CALL RegisterBidder('sdecruse3@unesco.org', 'Salmon, sockeye', 'Shelby', 'Decruse', '1 Manufacturers Avenue', '2019-06-07');
CALL RegisterBidder('mrivalant4@google.es', 'Drongo, fork-tailed', 'Merrie', 'Rivalant', '0069 Del Mar Hill', '2018-12-25');
CALL RegisterBidder('ltrimming5@privacy.gov.au', 'Paddy heron (unidentified)', 'Lin', 'Trimming', '06 Dottie Lane', '2003-03-12');
CALL RegisterBidder('mthirlwell6@ibm.com', 'Steenbok', 'Malinda', 'Thirlwell', '31 Ryan Avenue', '1987-02-19');
CALL RegisterBidder('jvannikov7@imdb.com', 'Western spotted skunk', 'Jonas', 'Vannikov', '7644 Pond Crossing', '1983-06-30');
CALL RegisterBidder('carro8@last.fm', 'Striated heron', 'Caitrin', 'Arro', '29 Valley Edge Court', '1992-01-16');
CALL RegisterBidder('cbatalini9@bloglovin.com', 'Opossum, american virginia', 'Clemmie', 'Batalini', '0 Pennsylvania Way', '2016-07-30');
CALL RegisterBidder('jdaina@virginia.edu', 'Water monitor', 'Jo-ann', 'Dain', '55811 Ryan Junction', '1999-06-27');
CALL RegisterBidder('amaccarlichb@theatlantic.com', 'Spotted-tailed quoll', 'Angelia', 'MacCarlich', '87854 Browning Circle', '2001-07-16');
CALL RegisterBidder('bdedneyc@joomla.org', 'White-necked raven', 'Bertie', 'Dedney', '38619 Sunbrook Point', '1994-07-09');
CALL RegisterBidder('hmangiond@pen.io', 'Defassa waterbuck', 'Hanan', 'Mangion', '380 Daystar Road', '2010-11-07');
CALL RegisterBidder('mwoodwinge@cbc.ca', 'Toucan, white-throated', 'Maximilianus', 'Woodwing', '8543 Messerschmidt Park', '2004-03-21');
CALL RegisterBidder('cbhatiaf@blog.com', 'Lemming, arctic', 'Christi', 'Bhatia', '80091 Stephen Junction', '1988-08-13');
CALL RegisterBidder('dhunnaballg@dion.ne.jp', 'European wild cat', 'Davis', 'Hunnaball', '412 Sachs Avenue', '2010-02-20');
CALL RegisterBidder('ysparhamh@admin.ch', 'Scottish highland cow', 'Yetta', 'Sparham', '6 Clove Alley', '1999-08-21');
CALL RegisterBidder('mreadmirei@ustream.tv', 'Bohor reedbuck', 'Mame', 'Readmire', '984 Hauk Pass', '1984-12-12');
CALL RegisterBidder('pgiacopelloj@census.gov', 'Western spotted skunk', 'Pavel', 'Giacopello', '6599 Warner Alley', '1988-01-06');
CALL RegisterBidder('ssoutherdenk@xrea.com', 'Tyrant flycatcher', 'Sidoney', 'Southerden', '6 Kingsford Avenue', '1990-08-07');
CALL RegisterBidder('ngoodluckl@prnewswire.com', 'Flightless cormorant', 'Nady', 'Goodluck', '8 Cottonwood Alley', '1998-01-30');
CALL RegisterBidder('okembleym@facebook.com', 'Common pheasant', 'Orren', 'Kembley', '83608 Heath Hill', '2011-03-27');
CALL RegisterBidder('coxtobyn@exblog.jp', 'Squirrel, pine', 'Cleopatra', 'Oxtoby', '19 Manley Avenue', '1996-06-14');
CALL RegisterBidder('eglasspoolo@mediafire.com', 'Baleen whale', 'Elayne', 'Glasspool', '5 American Alley', '2019-11-04');
CALL RegisterBidder('coldfieldp@yolasite.com', 'Civet, common palm', 'Cristie', 'Oldfield', '45538 Lighthouse Bay Court', '2002-12-27');
CALL RegisterBidder('mfilyushkinq@amazon.co.uk', 'Heron, green-backed', 'Mala', 'Filyushkin', '79534 Sloan Crossing', '2003-07-12');
CALL RegisterBidder('dscoterboshr@sogou.com', 'Frilled dragon', 'Daniele', 'Scoterbosh', '06183 Bartillon Trail', '1985-02-15');
CALL RegisterBidder('gcheynes@wufoo.com', 'Monkey, black spider', 'Giorgio', 'Cheyne', '292 Thompson Circle', '2011-06-29');
CALL RegisterBidder('amaccarrollt@seesaa.net', 'Brown capuchin', 'Agnesse', 'MacCarroll', '988 Upham Alley', '1989-10-28');
CALL RegisterBidder('kcooneyu@quantcast.com', 'Pied avocet', 'Kirstyn', 'Cooney', '53 Dexter Parkway', '1985-12-29');
CALL RegisterBidder('crickhussv@flickr.com', 'Kelp gull', 'Carly', 'Rickhuss', '6711 Monica Park', '1999-09-17');
CALL RegisterBidder('gthreadgouldw@amazon.co.jp', 'Dusky gull', 'Gerhardt', 'Threadgould', '912 Boyd Point', '1984-05-23');
CALL RegisterBidder('bcastagnetox@squarespace.com', 'Yellow-headed caracara', 'Bellina', 'Castagneto', '4 Comanche Park', '1997-02-18');
CALL RegisterBidder('bkassmany@csmonitor.com', 'Loris, slender', 'Bert', 'Kassman', '717 Meadow Vale Road', '1984-07-27');
CALL RegisterBidder('srobisonz@amazon.co.jp', 'Margay', 'Sarajane', 'Robison', '855 Graedel Point', '1982-07-20');
CALL RegisterBidder('wbullcock10@whitehouse.gov', 'Capybara', 'Wakefield', 'Bullcock', '60 Division Parkway', '1991-03-10');
CALL RegisterBidder('fmullan11@de.vu', 'Spotted hyena', 'Filberte', 'Mullan', '066 Merrick Avenue', '2002-12-08');
CALL RegisterBidder('egreystoke12@amazon.com', 'Jackal, indian', 'Engracia', 'Greystoke', '4921 Mcguire Pass', '1984-12-08');
CALL RegisterBidder('pschaffel13@drupal.org', 'Common wombat', 'Pam', 'Schaffel', '5897 Ludington Road', '2001-11-15');
CALL RegisterBidder('mbattlestone14@cam.ac.uk', 'Red hartebeest', 'Marlane', 'Battlestone', '26611 Anhalt Park', '2003-09-10');
CALL RegisterBidder('checkle15@umich.edu', 'Badger, european', 'Corbie', 'Heckle', '179 South Circle', '1984-12-17');
CALL RegisterBidder('ldroogan16@springer.com', 'Elk, Wapiti', 'Lucian', 'Droogan', '479 Redwing Plaza', '1999-04-18');
CALL RegisterBidder('dbowcock17@imgur.com', 'Snake (unidentified)', 'Darb', 'Bowcock', '057 Novick Junction', '2018-03-23');
CALL RegisterBidder('rboddam18@cbsnews.com', 'Two-toed tree sloth', 'Rene', 'Boddam', '68939 Ramsey Crossing', '1991-06-03');
CALL RegisterBidder('nbillingsly19@phoca.cz', 'Fox, blue', 'Nonah', 'Billingsly', '408 Ilene Avenue', '1984-05-16');
CALL RegisterBidder('gwybern1a@spiegel.de', 'Black spider monkey', 'Gerty', 'Wybern', '74674 Packers Pass', '2006-08-30');
CALL RegisterBidder('mhasson1b@bluehost.com', 'Eastern box turtle', 'Malinde', 'Hasson', '94 Logan Pass', '2014-04-23');
CALL RegisterBidder('miacomettii1c@tuttocitta.it', 'Blackbuck', 'Mayne', 'Iacomettii', '28598 Buhler Junction', '2014-07-08');
CALL RegisterBidder('fjaffa1d@mozilla.org', 'Duiker, gray', 'Forest', 'Jaffa', '12 Hermina Trail', '1997-09-09');
CALL RegisterBidder('bgorner1e@uol.com.br', 'Otter, small-clawed', 'Bambie', 'Gorner', '03036 Duke Center', '1990-05-07');
CALL RegisterBidder('haucoate1f@is.gd', 'Red-legged pademelon', 'Hyacinthie', 'Aucoate', '9507 Meadow Ridge Way', '2017-08-08');
CALL RegisterBidder('lcranefield1g@reverbnation.com', 'Glossy ibis', 'Lauree', 'Cranefield', '2 Dakota Circle', '2011-10-03');
CALL RegisterBidder('jknappen1h@webeden.co.uk', 'Nuthatch, red-breasted', 'Jenny', 'Knappen', '001 Stephen Alley', '2012-08-09');
CALL RegisterBidder('mmarrian1i@dailymail.co.uk', 'White rhinoceros', 'Maybelle', 'Marrian', '8072 Harbort Terrace', '1994-02-28');
CALL RegisterBidder('vstrettell1j@biglobe.ne.jp', 'Fox, grey', 'Valentia', 'Strettell', '895 Eliot Street', '1984-10-10');
CALL RegisterBidder('emcparlin1k@yellowbook.com', 'Jackal, silver-backed', 'Eli', 'McParlin', '39 Sachs Avenue', '2011-06-15');
CALL RegisterBidder('jmargeram1l@amazon.co.jp', 'Lourie, grey', 'Jenelle', 'Margeram', '7 Main Trail', '2000-05-10');
CALL RegisterBidder('pdosdell1m@cargocollective.com', 'Black-footed ferret', 'Prinz', 'Dosdell', '95035 Hoffman Court', '1992-05-29');
CALL RegisterBidder('primer1n@google.es', 'Goose, egyptian', 'Pinchas', 'Rimer', '2274 Doe Crossing Junction', '1980-04-12');
CALL RegisterBidder('cmarkova1o@moonfruit.com', 'Ground monitor (unidentified)', 'Conrad', 'Markova', '865 Sullivan Crossing', '1984-05-08');
CALL RegisterBidder('wcashford1p@cpanel.net', 'Indian red admiral', 'Westbrooke', 'Cashford', '0 Hintze Court', '1986-06-08');
CALL RegisterBidder('scaunt1q@omniture.com', 'Steenbok', 'Shepperd', 'Caunt', '45 Shelley Park', '1986-11-11');
CALL RegisterBidder('arayman1r@boston.com', 'Hoary marmot', 'Alli', 'Rayman', '268 Ronald Regan Crossing', '1992-12-06');
CALL RegisterBidder('rstears1s@apple.com', 'Blacksmith plover', 'Rabi', 'Stears', '381 Kipling Trail', '1983-02-02');
CALL RegisterBidder('awellstood1t@w3.org', 'Bird, bare-faced go away', 'Agata', 'Wellstood', '038 Kedzie Place', '2012-06-18');
CALL RegisterBidder('qburbudge1u@wisc.edu', 'Hyrax', 'Queenie', 'Burbudge', '034 Banding Place', '1998-09-22');
CALL RegisterBidder('mbladon1v@clickbank.net', 'African darter', 'Molli', 'Bladon', '1263 Burning Wood Pass', '1990-11-05');
CALL RegisterBidder('fprine1w@meetup.com', 'Pelican, eastern white', 'Fons', 'Prine', '466 Toban Center', '1980-08-18');
CALL RegisterBidder('arailton1x@google.it', 'Little cormorant', 'Austina', 'Railton', '990 Morning Alley', '2003-04-13');
CALL RegisterBidder('ctuting1y@utexas.edu', 'Sheep, red', 'Cinderella', 'Tuting', '7835 Prentice Alley', '1996-04-12');
CALL RegisterBidder('apicot1z@epa.gov', 'Phalarope, red', 'Alan', 'Picot', '79767 Clemons Hill', '1990-02-06');
CALL RegisterBidder('dwesson20@slashdot.org', 'Eleven-banded armadillo (unidentified)', 'Dianne', 'Wesson', '60833 Maple Trail', '1986-06-21');
CALL RegisterBidder('bcornu21@addthis.com', 'Pie, rufous tree', 'Bliss', 'Cornu', '80 Rieder Plaza', '2019-06-05');
CALL RegisterBidder('abook22@dyndns.org', 'Possum, pygmy', 'Amandie', 'Book', '96691 Laurel Street', '1987-07-24');
CALL RegisterBidder('vpenna23@hexun.com', 'Common eland', 'Vale', 'Penna', '639 Bowman Court', '2018-11-02');
CALL RegisterBidder('dpitkin24@gov.uk', 'Creeper, black-tailed tree', 'Dixie', 'Pitkin', '67 Forest Run Circle', '1985-02-22');
CALL RegisterBidder('lfussen25@reference.com', 'Bird, magnificent frigate', 'Lyon', 'Fussen', '131 Sycamore Park', '1980-04-11');
CALL RegisterBidder('mslimmon26@deliciousdays.com', 'Kafue flats lechwe', 'Maryann', 'Slimmon', '5 Manley Alley', '1998-09-20');
CALL RegisterBidder('rspiniello27@si.edu', 'Chacma baboon', 'Rozanne', 'Spiniello', '34441 Red Cloud Plaza', '2006-06-04');
CALL RegisterBidder('oreisen28@purevolume.com', 'Roseat flamingo', 'Owen', 'Reisen', '12853 Shoshone Plaza', '2018-04-11');
CALL RegisterBidder('fkimmel29@geocities.com', 'Raven, white-necked', 'Francoise', 'Kimmel', '02351 Brown Alley', '1996-04-12');
CALL RegisterBidder('dciccarelli2a@addtoany.com', 'Raven, white-necked', 'Dotti', 'Ciccarelli', '36516 Knutson Point', '2017-03-06');
CALL RegisterBidder('rbroker2b@theguardian.com', 'Slender loris', 'Rhonda', 'Broker', '40 Derek Avenue', '1980-04-12');
CALL RegisterBidder('fleece2c@twitpic.com', 'Crake, african black', 'Faythe', 'Leece', '85 Monument Park', '2016-02-04');
CALL RegisterBidder('swhittleton2d@hc360.com', 'Eurasian red squirrel', 'Stefanie', 'Whittleton', '57152 Lindbergh Junction', '1993-03-09');
CALL RegisterBidder('sgave2e@imdb.com', 'Lion, mountain', 'Shermie', 'Gave', '13 Warrior Place', '1991-07-22');
CALL RegisterBidder('mlauxmann2f@parallels.com', 'Porcupine, prehensile-tailed', 'Miquela', 'Lauxmann', '5854 Bunting Drive', '2004-12-08');
CALL RegisterBidder('gsterricker2g@mit.edu', 'Weaver, sociable', 'Genovera', 'Sterricker', '7 Morrow Avenue', '1996-11-17');
CALL RegisterBidder('mpavlasek2h@phoca.cz', 'Tarantula, salmon pink bird eater', 'Meyer', 'Pavlasek', '9 Dixon Alley', '2019-07-05');
CALL RegisterBidder('nmaryan2i@arizona.edu', 'Drongo, fork-tailed', 'Nomi', 'Maryan', '97288 Claremont Crossing', '2008-05-05');
CALL RegisterBidder('apickford2j@gnu.org', 'Dragon, netted rock', 'Alleyn', 'Pickford', '67394 Sycamore Way', '2005-02-18');
CALL RegisterBidder('oohrtmann2k@last.fm', 'Brown brocket', 'Ogdon', 'Ohrtmann', '8 Nova Pass', '2004-02-02');
CALL RegisterBidder('zdudmesh2l@senate.gov', 'Blue and yellow macaw', 'Zorine', 'Dudmesh', '78 Paget Pass', '2013-08-29');
CALL RegisterBidder('zallpress2m@nationalgeographic.com', 'Eagle, bald', 'Zeb', 'Allpress', '375 Forest Alley', '2003-02-18');
CALL RegisterBidder('mdimbleby2n@weebly.com', 'Squirrel, smith''s bush', 'Mair', 'Dimbleby', '62 Monica Court', '2007-10-01');
CALL RegisterBidder('dlilleycrop2o@instagram.com', 'Loris, slender', 'Delly', 'Lilleycrop', '329 Commercial Park', '2019-09-05');
CALL RegisterBidder('ftrendle2p@toplist.cz', 'White-tailed jackrabbit', 'Fredrick', 'Trendle', '668 4th Point', '2005-03-31');
CALL RegisterBidder('neveritt2q@elegantthemes.com', 'Cattle egret', 'Nelson', 'Everitt', '60409 Ronald Regan Way', '2008-02-21');
CALL RegisterBidder('pwoodford2r@godaddy.com', 'Bald eagle', 'Pearline', 'Woodford', '1 American Ash Center', '1984-11-04');
SELECT * FROM `User`;
SELECT * FROM `Bidder`;


/*********************************************************/
/* CHANGE_ROLE_LOG */
/*********************************************************/
INSERT INTO `ChangeRoleLog`(`bidderId`, `message`)
VALUES
    (1000051, 'Wanting to be a seller'),
    (1000052, 'Wanting to be a seller'),
    (1000053, 'Wanting to be a seller'),
    (1000054, 'Wanting to be a seller'),
    (1000055, 'Wanting to be a seller'),
    (1000056, 'Wanting to be a seller'),
    (1000057, 'Wanting to be a seller'),
    (1000058, 'Wanting to be a seller'),
    (1000059, 'Wanting to be a seller'),
    (1000060, 'Wanting to be a seller'),
    (1000061, 'Wanting to be a seller'),
    (1000062, 'Wanting to be a seller'),
    (1000063, 'Wanting to be a seller'),
    (1000064, 'Wanting to be a seller'),
    (1000065, 'Wanting to be a seller'),
    (1000066, 'Wanting to be a seller'),
    (1000067, 'Wanting to be a seller'),
    (1000068, 'Wanting to be a seller');


/*********************************************************/
/* SELLER: REQUEST FULLFIL, REQUEST REJECT, BIDDER DOESN'T WANT TO BECOME A SELLER */
/*********************************************************/
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 200 WHERE CRL.`id` = 1000001;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 200 WHERE CRL.`id` = 1000002;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 200 WHERE CRL.`id` = 1000003;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 201 WHERE CRL.`id` = 1000004;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 201 WHERE CRL.`id` = 1000005;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 201 WHERE CRL.`id` = 1000006;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 201 WHERE CRL.`id` = 1000007;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 300 WHERE CRL.`id` = 1000008;
UPDATE `ChangeRoleLog` CRL SET CRL.`statusCode` = 300 WHERE CRL.`id` = 1000009;
SELECT * FROM `ChangeRoleLog`;
SELECT * FROM `Seller`;

/*********************************************************/
/* PRODUCT + BIDDED_PRODUCT + PRODUCT_IMAGE */
/*********************************************************/
INSERT INTO `Product`(`sellerId`, `name`, `description`, `reservedPrice`, `priceStep`, `instantPrice`, `isRenewal`, `coverImageURL`, `timeExpired`)
VALUES
    (1000051, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, TRUE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, FALSE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, TRUE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, FALSE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, TRUE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 1500, 100, 5000, FALSE, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/17/637647989512049638_asus-vivobook-a515-bac-1.jpg', '2021-12-31');
SELECT * FROM `Product`;

INSERT INTO `BiddedProduct`(`id`, `currentprice`, `remainingTime`)
VALUES
    (1000001, 1500, 3*24*3600),
    (1000002, 1500, 3*24*3600),
    (1000003, 1500, 3*24*3600),
    (1000004, 1500, 3*24*3600),
    (1000005, 1500, 3*24*3600),
    (1000006, 1500, 3*24*3600);
SELECT * FROM `BiddedProduct`;

INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000001, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000001, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000001, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000002, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000002, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000002, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000003, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000003, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000003, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000004, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000004, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000004, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000005, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000005, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000005, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000006, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000006, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg'),
    (1000006, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/8/18/637648737584508137_asus-vivobook-m513-bac-oled-1.jpg');
SELECT * FROM `ProductImage`;


