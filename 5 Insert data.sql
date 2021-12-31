USE `auction`;


/*********************************************************/
/* TIME ZONE */
/*********************************************************/
SET time_zone = '+7:00';


/*********************************************************/
/* USER + ADMIN (admin, system@123password) (DO NOT CHANGE) */
/*********************************************************/
INSERT INTO `User`(`id`, `username`, `password`, `firstName`, `lastName`, `email`, `dateOfBirth`)
VALUE (100, 'admin', '$2a$12$fVrTHxy/D.zJR35BQtPsPeG.nI.E2AaqNPsEx4LTKyBo8V3zIViQO', 'KTT', 'admin', 'admin@auction.com', '2000-01-01');
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
INSERT INTO `Category`(`section`, `name`, `path`)
VALUES
    ('Electronics', 'Laptop', 'laptop'),
    ('Electronics', 'Mobie phone', 'mobile-phone'),
    ('Electronics', 'Camera', 'camera'),
    ('Styles', 'Dress', 'dress'),
    ('Styles', 'Boot', 'boot'),
    ('Styles', 'Pant', 'pant'),
    ('Styles', 'Shirt', 'shirt'),
    ('Styles', 'Leggings', 'leggings'),
    ('Styles', 'Sock', 'sock');
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
    (1000051, 'ASUS Laptop', 'Laptop suitable for gaming', 9500, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/247243/acer-nitro-gaming-an515-57-727j-i7-nhqd9sv005-10-600x600.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 3000, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/242201/msi-gf66-11uc-i7-224vn-600x600.jpg', '2021-12-31'),
    (1000052, 'ACER Laptop', 'Laptop suitable for gaming', 3500, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/251418/asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-17-600x600.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 4000, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/255561/lenovo-yoga-slim-7-14itl05-i5-82a300dpvn-021121-030538-600x600.jpg', '2021-12-31'),
    (1000053, 'MSI Laptop', 'Laptop suitable for gaming', 4000, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/250518/acer-aspire-7-gaming-a715-42g-r6zr-r5-5500u-8gb-600x600.jpg', '2021-12-31'),
    (1000053, 'DELL Laptop', 'Laptop suitable for gaming', 4600, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/239463/asus-tuf-gaming-fx516pe-i7-hn005t-600x600.jpg', '2021-12-31'),
    (1000052, 'HP Laptop', 'Laptop suitable for gaming', 4700, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/260171/dell-gaming-g15-5515-r5-p105f004dgr-291121-114930-600x600.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 4300, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/249151/msi-gaming-ge66-raider-11uh-i7-259vn-600x600.jpg', '2021-12-31'),
    (1000053, 'MACBOOK Laptop', 'Laptop not suitable for gaming', 4200, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/236426/hp-omen-15-ek0078tx-i7-26y68pa-600x600.jpg', '2021-12-31'),
    (1000052, 'MSI Laptop', 'Laptop suitable for gaming', 4100, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-600x600.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 4600, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/238135/lg-gram-17-i7-17z90pgah76a5-3-600x600.jpg', '2021-12-31'),
    (1000053, 'ACER Laptop', 'Laptop suitable for gaming', 1234, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/239233/lenovo-yoga-9-14itl5-i7-82bg006evn-21-600x600.jpg', '2021-12-31'),
    (1000052, 'DELL Laptop', 'Laptop suitable for gaming', 1237, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/259865/hp-zbook-firefly-14-g8-i7-275w0av-251121-045610-600x600.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 2324, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/264547/asus-zenbook-ux363ea-i7-1165g7-16gb-512gb-131221-115725-600x600.jpg', '2021-12-31'),
    (1000053, 'HP Laptop', 'Laptop suitable for gaming', 2546, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/249743/dell-inspiron-7400-i5-1135g7-16gb-512gb-600x600.jpg', '2021-12-31'),
    (1000052, 'MSI Laptop', 'Laptop suitable for gaming', 4235, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/251426/gigabyte-gaming-g5-i5-5s11130sh-191021-102800-600x600.jpg', '2021-12-31'),
    (1000053, 'DELL Laptop', 'Laptop suitable for gaming', 2345, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/265803/lenovo-yoga-slim-7-14itl05-i7-1165g7-8gb-512gb-600x600.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 6543, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/264354/dell-gaming-g15-5511-i5-70266676-600x600.jpg', '2021-12-31'),
    (1000052, 'ASUS Laptop', 'Laptop suitable for gaming', 6454, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/44/255562/lenovo-yoga-duet-7-13itl6-i5-82ma000pvn-021121-032719-600x600.jpg', '2021-12-31'),
    (1000053, 'ASUS Laptop', 'Laptop suitable for gaming', 5345, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/44/247313/acer-nitro-5-gaming-an515-57-50ft-i5-nhqd8sv003-600x600.jpg', '2021-12-31'),
    (1000053, 'Samsung Mobile', 'Mobile suitable for calling', 6345, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/226935/samsung-galaxy-z-fold-3-silver-1-600x600.jpg', '2021-12-31'),
    (1000052, 'Motorola Mobile', 'Mobile suitable for calling', 6785, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-xi-do-600x600.jpg', '2021-12-31'),
    (1000052, 'Apple Mobile', 'Mobile suitable for calling', 7456, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/248293/xiaomi-11t-white-1-2-600x600.jpg', '2021-12-31'),
    (1000052, 'Microsoft Mobile', 'Mobile suitable for calling', 3443, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/234315/samsung-galaxy-a32-4g-thumb-den-600x600-600x600.jpg', '2021-12-31'),
    (1000053, 'Razer Mobile', 'Mobile suitable for calling', 3546, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/239747/oppo-reno6-z-5g-aurora-1-600x600.jpg', '2021-12-31'),
    (1000053, 'Apple Mobile', 'Mobile suitable for calling', 7566, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/245607/Vivo-V23e-1-2-600x600.jpg', '2021-12-31'),
    (1000052, 'Samsung Mobile', 'Mobile suitable for calling', 3223, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-silver-600x600.jpg', '2021-12-31'),
    (1000053, 'Oppo Mobile', 'Mobile suitable for calling', 6453, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/241265/realme-c21y-black-600x600.jpg', '2021-12-31'),
    (1000053, 'Xiaomi Mobile', 'Mobile suitable for calling', 4255, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/236431/vivo-y72-5g-blue-600x600.jpg', '2021-12-31'),
    (1000052, 'Apple Mobile', 'Mobile suitable for calling', 4235, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/228967/samsung-galaxy-a52-8gb-256gb-thumb-violet-600x600-600x600.jpg', '2021-12-31'),
    (1000053, 'Samsung Mobile', 'Mobile suitable for calling', 5346, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xam-new-600x600-600x600.jpg', '2021-12-31'),
    (1000053, 'Apple Mobile', 'Mobile suitable for calling', 2323, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-sierra-blue-600x600.jpg', '2021-12-31'),
    (1000052, 'Oppo Mobile', 'Mobile suitable for calling', 5325, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-dong-new-600x600-1-600x600.jpg', '2021-12-31'),
    (1000053, 'Xiaomi Mobile', 'Mobile suitable for calling', 5342, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-black-001-1-600x600.jpg', '2021-12-31'),
    (1000053, 'Microsoft Mobile', 'Mobile suitable for calling', 5234, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/248218/xiaomi-11t-pro-blue-1-600x600.jpg', '2021-12-31'),
    (1000052, 'Motorola Mobile', 'Mobile suitable for calling', 5423, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/190325/iphone-xr-hopmoi-den-600x600-2-600x600.jpg', '2021-12-31'),
    (1000053, 'Nokia Mobile', 'Mobile suitable for calling', 5342, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/251216/xiaomi-11t-grey-1-600x600.jpg', '2021-12-31'),
    (1000053, 'Apple Mobile', 'Mobile suitable for calling', 7565, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/233460/oppo-reno5-5g-thumb-600x600.jpg', '2021-12-31'),
    (1000052, 'Samsung Mobile', 'Mobile suitable for calling', 9786, 100, 5000, FALSE, 'https://cdn.tgdd.vn/Products/Images/42/223497/oppo-reno4-pro-trang-600x600.jpg', '2021-12-31'),
    (1000053, 'Apple Mobile', 'Mobile suitable for calling', 3546, 100, 5000, TRUE, 'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-thumb-600x600-600x600.jpg', '2021-12-31'),
    (1000053, 'Canon Camera', 'Camera suitable for photographer', 6253, 100, 5000, FALSE, 'https://cdn.nguyenkimmall.com/images/thumbnails/180/180/detailed/624/10044646-may-anh-canon-eos-m200-ef-m-15-45mm-den-1.jpg', '2021-12-31'),
    (1000052, 'Sony Camera', 'Camera suitable for photographer', 7565, 100, 5000, FALSE, 'https://cdn.nguyenkimmall.com/images/thumbnails/180/180/detailed/624/10044647-may-anh-canon-eos-m200-ef-m-15-45mm-trang-1.jpg', '2021-12-31'),
    (1000052, 'GoPro Camera', 'Camera suitable for photographer', 5645, 100, 5000, TRUE, 'https://cdn.nguyenkimmall.com/images/thumbnails/180/180/detailed/624/10044644-may-anh-canon-eos-200d-ii-kit-18-55mm-den-1.jpg', '2021-12-31'),
    (1000052, 'Sony Camera', 'Camera suitable for photographer', 3443, 100, 5000, FALSE, 'https://cdn.nguyenkimmall.com/images/thumbnails/180/180/detailed/624/10044644-may-anh-canon-eos-200d-ii-kit-18-55mm-den-1.jpg', '2021-12-31'),
    (1000053, 'Canon Camera', 'Camera suitable for photographer', 6342, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/canon-3000d(1).jpg', '2021-12-31'),
    (1000053, 'Nikon Camera', 'Camera suitable for photographer', 3453, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/nikon-coolpix-w300-vang.jpg', '2021-12-31'),
    (1000052, 'Sony Camera', 'Camera suitable for photographer', 3453, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-sony-alpha-a6600-kit-18-135mm-oss-den.jpg', '2021-12-31'),
    (1000053, 'Canon Camera', 'Camera suitable for photographer', 2334, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-sony-alpha-a6400-ilce6400m-kit-18135mm.jpg', '2021-12-31'),
    (1000053, 'Sony Camera', 'Camera suitable for photographer', 2113, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-nikon-d3500-kit-afp-1855-vr.jpg', '2021-12-31'),
    (1000052, 'GoPro Camera', 'Camera suitable for photographer', 4234, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-chong-nuoc-ricoh-wg-70.jpg', '2021-12-31'),
    (1000053, 'Canon Camera', 'Camera suitable for photographer', 2341, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/camera/sony/a7rm3a/may-anh-sony-alpha-a7rm3a-body.jpg', '2021-12-31'),
    (1000053, 'Sony Camera', 'Camera suitable for photographer', 4235, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/camera/sony/a1/may-anh-sony-alpha-a1.jpg', '2021-12-31'),
    (1000052, 'Apple Camera', 'Camera suitable for photographer', 2345, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/camera/sony/a7c/sony-a7c-silver-lens.jpg', '2021-12-31'),
    (1000053, 'Samsung Camera', 'Camera suitable for photographer', 5433, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-sony-alpha-a7c-body.jpg', '2021-12-31'),
    (1000053, 'Sony Camera', 'Camera suitable for photographer', 2534, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-sony-alpha-a7s-mark-iii(2).jpg', '2021-12-31'),
    (1000052, 'Canon Camera', 'Camera suitable for photographer', 2435, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-sony-cyber-shot-dsc-rx100-vii.jpg', '2021-12-31'),
    (1000053, 'Apple Camera', 'Camera suitable for photographer', 1234, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-canon-eos-rp-ong-kinh-canon-rf-24105mm-f4-l-is-usm.jpg', '2021-12-31'),
    (1000053, 'Nikin Camera', 'Camera suitable for photographer', 4123, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/camera/canon/m50ii/may-anh-canon-eos-m50-ii-kit-efm1545mm-white.jpg', '2021-12-31'),
    (1000052, 'Casio Camera', 'Camera suitable for photographer', 2435, 100, 5000, FALSE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-canon-eos-m200-kit-ef-m-15-45mm-is-stm-trang.jpg', '2021-12-31'),
    (1000053, 'Sony Camera', 'Camera suitable for photographer', 5234, 100, 5000, TRUE, 'https://binhminhdigital.com/Thumb/images/product/may-anh-canon-eos-m200-body-den(2).jpg', '2021-12-31'),
    (1000053, 'Pink Dress', 'Dress suitable for beauty', 2352, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Red Dress', 'Dress suitable for beauty', 2345, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Green Dress', 'Dress suitable for beauty', 1234, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Dress', 'Dress suitable for beauty', 4231, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Brown Dress', 'Dress suitable for beauty', 5433, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Purple Dress', 'Dress suitable for beauty', 4523, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Black Dress', 'Dress suitable for beauty', 4234, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Yellow Dress', 'Dress suitable for beauty', 4235, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'White Dress', 'Dress suitable for beauty', 5345, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Pink Dress', 'Dress suitable for beauty', 5634, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Blue Dress', 'Dress suitable for beauty', 3453, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Oragne Dress', 'Dress suitable for beauty', 3456, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Black Dress', 'Dress suitable for beauty', 4564, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Pink Dress', 'Dress suitable for beauty', 3453, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Blue Dress', 'Dress suitable for beauty', 3546, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'White Dress', 'Dress suitable for beauty', 3452, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Red Dress', 'Dress suitable for beauty', 5345, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Pink Dress', 'Dress suitable for beauty', 3445, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Dress', 'Dress suitable for beauty', 5643, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Green Dress', 'Dress suitable for beauty', 4534, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Red Boot', 'Boot suitable for beauty', 4564, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Green Boot', 'Boot suitable for beauty', 4564, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Boot', 'Boot suitable for beauty', 6745, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Brown Boot', 'Boot suitable for beauty', 5443, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Black Boot', 'Boot suitable for beauty', 3455, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Brown Boot', 'Boot suitable for beauty', 2345, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Boot', 'Boot suitable for beauty', 5343, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'White Boot', 'Boot suitable for beauty', 5343, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Yellow Boot', 'Boot suitable for beauty', 3453, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Boot', 'Boot suitable for beauty', 3454, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Green Boot', 'Boot suitable for beauty', 3463, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Brown Boot', 'Boot suitable for beauty', 3456, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Red Boot', 'Boot suitable for beauty', 6534, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Blue Boot', 'Boot suitable for beauty', 5634, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Green Boot', 'Boot suitable for beauty', 4536, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Blue Boot', 'Boot suitable for beauty', 3453, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Yellow Boot', 'Boot suitable for beauty', 5345, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Pink Boot', 'Boot suitable for beauty', 2334, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000052, 'Orange Boot', 'Boot suitable for beauty', 2222, 100, 5000, FALSE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'Black Boot', 'Boot suitable for beauty', 4444, 100, 5000, TRUE, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f', '2021-12-31'),
    (1000053, 'White Pant', 'Pant suitable for beauty', 5555, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Red Pant', 'Pant suitable for beauty', 6666, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Green Pant', 'Pant suitable for beauty', 1211, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Blue Pant', 'Pant suitable for beauty', 2222, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Black Pant', 'Pant suitable for beauty', 3434, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Pink Pant', 'Pant suitable for beauty', 3232, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Yellow Pant', 'Pant suitable for beauty', 4343, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'White Pant', 'Pant suitable for beauty', 5454, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Blue Pant', 'Pant suitable for beauty', 4444, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Black Pant', 'Pant suitable for beauty', 7676, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Red Pant', 'Pant suitable for beauty', 6556, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Green Pant', 'Pant suitable for beauty', 4545, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Blue Pant', 'Pant suitable for beauty', 5432, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Yellow Pant', 'Pant suitable for beauty', 5454, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Brown Pant', 'Pant suitable for beauty', 6546, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Pink Pant', 'Pant suitable for beauty', 6454, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Purple Pant', 'Pant suitable for beauty', 4564, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Brown Pant', 'Pant suitable for beauty', 4566, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000052, 'Black Pant', 'Pant suitable for beauty', 4566, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'White Pant', 'Pant suitable for beauty', 5646, 100, 5000, TRUE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31'),
    (1000053, 'Blue Pant', 'Pant suitable for beauty', 4445, 100, 5000, FALSE, 'https://cf.shopee.vn/file/1945c74cbbeefb9b559b338026c0ed0d', '2021-12-31');
SELECT * FROM `Product`;

INSERT INTO `BiddedProduct`(`id`, `currentprice`)
VALUES
	(1000001,9561),
	(1000002,9246),
	(1000003,9798),
	(1000004,9333),
	(1000005,9210),
	(1000006,9740),
	(1000007,9120),
	(1000008,9881),
	(1000009,9275),
	(1000010,9831),
	(1000011,9647),
	(1000012,9002),
	(1000013,9080),
	(1000014,9064),
	(1000015,9638),
	(1000016,9845),
	(1000017,9431),
	(1000018,9004),
	(1000019,9478),
	(1000020,9375),
	(1000021,9761),
	(1000022,9865),
	(1000023,9539),
	(1000024,9638),
	(1000025,9032),
	(1000026,9455),
	(1000027,9160),
	(1000028,9863),
	(1000029,9407),
	(1000030,9647),
	(1000031,9457),
	(1000032,9004),
	(1000033,9307),
	(1000034,9298),
	(1000035,9891),
	(1000036,9896),
	(1000037,9591),
	(1000038,9333),
	(1000039,9755),
	(1000040,9837),
	(1000041,9002),
	(1000042,9607),
	(1000043,9808),
	(1000044,9185),
	(1000045,9405),
	(1000046,9250),
	(1000047,9904),
	(1000048,9580),
	(1000049,9995),
	(1000050,9169),
	(1000051,9450),
	(1000052,9143),
	(1000053,9338),
	(1000054,9240),
	(1000055,9296),
	(1000056,9860),
	(1000057,9672),
	(1000058,9626),
	(1000059,9939),
	(1000060,9072),
	(1000061,9851),
	(1000062,9495),
	(1000063,9867),
	(1000064,9975),
	(1000065,9707),
	(1000066,9831),
	(1000067,9474),
	(1000068,9707),
	(1000069,9530),
	(1000070,9646),
	(1000071,9356),
	(1000072,9874),
	(1000073,9385),
	(1000074,9875),
	(1000075,9971),
	(1000076,9624),
	(1000077,9843),
	(1000078,9147),
	(1000079,9532),
	(1000080,9508),
	(1000081,9312),
	(1000082,9149),
	(1000083,9060),
	(1000084,9562),
	(1000085,9970),
	(1000086,9018),
	(1000087,9025),
	(1000088,9841),
	(1000089,9052),
	(1000090,9117),
	(1000091,9058),
	(1000092,9629),
	(1000093,9110),
	(1000094,9270),
	(1000095,9917),
	(1000096,9618),
	(1000097,9931),
	(1000098,9741),
	(1000099,9506),
	(1000100,9988),
	(1000101,9381),
	(1000102,9423),
	(1000103,9119),
	(1000104,9519),
	(1000105,9021),
	(1000106,9965),
	(1000107,9958),
	(1000108,9736),
	(1000109,9962),
	(1000110,9781),
	(1000111,9827),
	(1000112,9899),
	(1000113,9569),
	(1000114,9885),
	(1000115,9541),
	(1000116,9895),
	(1000117,9344),
	(1000118,9370),
	(1000119,9552),
	(1000120,9188),
	(1000121,9420);
SELECT * FROM `BiddedProduct`;

INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000001, 'https://cdn.tgdd.vn/Products/Images/44/250976/Slider/vi-vn-acer-predator-triton-300-pt315-53-71dj-i7-2.jpg'),
    (1000001, 'https://cdn.tgdd.vn/Products/Images/44/242201/msi-gf66-11uc-i7-224vn-2-1-org.jpg'),
    (1000001, 'https://cdn.tgdd.vn/Products/Images/44/242201/msi-gf66-11uc-i7-224vn-3-1-org.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000002, 'https://cdn.tgdd.vn/Products/Images/44/251418/Slider/vi-vn-asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-1.jpg'),
    (1000002, 'https://cdn.tgdd.vn/Products/Images/44/251418/Slider/vi-vn-asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-2.jpg'),
    (1000002, 'https://cdn.tgdd.vn/Products/Images/44/251418/Slider/vi-vn-asus-rog-zephyrus-gaming-g14-ga401qec-r9-k2064t-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000003, 'https://cdn.tgdd.vn/Products/Images/44/247243/Slider/acer-nitro-gaming-an515-57-727j-i7-nhqd9sv005-1020x570.jpg'),
    (1000003, 'https://cdn.tgdd.vn/Products/Images/44/247243/Slider/acer-nitro-gaming-an515-57-727j-i7-nhqd9sv005-250721-0326472.jpg'),
    (1000003, 'https://cdn.tgdd.vn/Products/Images/44/247243/Slider/acer-nitro-gaming-an515-57-727j-i7-nhqd9sv005-250721-0326473.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000004, 'https://cdn.tgdd.vn/Products/Images/44/255561/Slider/vi-vn-lenovo-yoga-slim-7-14itl05-i5-82a300dpvn-1.jpg'),
    (1000004, 'https://cdn.tgdd.vn/Products/Images/44/255561/Slider/vi-vn-lenovo-yoga-slim-7-14itl05-i5-82a300dpvn-2.jpg'),
    (1000004, 'https://cdn.tgdd.vn/Products/Images/44/255561/Slider/vi-vn-lenovo-yoga-slim-7-14itl05-i5-82a300dpvn-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000005, 'https://cdn.tgdd.vn/Products/Images/44/250518/Slider/vi-vn-acer-aspire-7-gaming-a715-42g-r6zr-r5-nhqaysv003-1.jpg'),
    (1000005, 'https://cdn.tgdd.vn/Products/Images/44/250518/Slider/vi-vn-acer-aspire-7-gaming-a715-42g-r6zr-r5-nhqaysv003-2.jpg'),
    (1000005, 'https://cdn.tgdd.vn/Products/Images/44/250518/Slider/vi-vn-acer-aspire-7-gaming-a715-42g-r6zr-r5-nhqaysv003-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000006, 'https://cdn.tgdd.vn/Products/Images/44/260058/Slider/vi-vn-acer-nitro-5-gaming-an515-57-720a-i7-nhqeqsv004-1.jpg'),
    (1000006, 'https://cdn.tgdd.vn/Products/Images/44/260058/Slider/vi-vn-acer-nitro-5-gaming-an515-57-720a-i7-nhqeqsv004-2.jpg'),
    (1000006, 'https://cdn.tgdd.vn/Products/Images/44/260058/Slider/vi-vn-acer-nitro-5-gaming-an515-57-720a-i7-nhqeqsv004-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000007, 'https://cdn.tgdd.vn/Products/Images/44/260156/Slider/vi-vn-gigabyte-gaming-g5-i5-kc5s11130sb-1.jpg'),
    (1000007, 'https://cdn.tgdd.vn/Products/Images/44/260156/Slider/vi-vn-gigabyte-gaming-g5-i5-kc5s11130sb-2.jpg'),
    (1000007, 'https://cdn.tgdd.vn/Products/Images/44/260156/Slider/vi-vn-gigabyte-gaming-g5-i5-kc5s11130sb-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000008, 'https://cdn.tgdd.vn/Products/Images/44/260054/Slider/vi-vn-acer-nitro-5-gaming-an515-57-71vv-i7-nhqensv005-1.jpg'),
    (1000008, 'https://cdn.tgdd.vn/Products/Images/44/260054/Slider/vi-vn-acer-nitro-5-gaming-an515-57-71vv-i7-nhqensv005-2.jpg'),
    (1000008, 'https://cdn.tgdd.vn/Products/Images/44/260054/Slider/vi-vn-acer-nitro-5-gaming-an515-57-71vv-i7-nhqensv005-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000009, 'https://cdn.tgdd.vn/Products/Images/44/255289/Slider/1-1020x570.jpg'),
    (1000009, 'https://cdn.tgdd.vn/Products/Images/44/255289/Slider/vi-vn-msi-katana-gf76-11uc-i7-441vn-2.jpg'),
    (1000009, 'https://cdn.tgdd.vn/Products/Images/44/255289/Slider/vi-vn-msi-katana-gf76-11uc-i7-441vn-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000010, 'https://cdn.tgdd.vn/Products/Images/44/256265/Slider/vi-vn-msi-gaming-stealth-15m-a11uek-i7-254vn-1.jpg'),
    (1000010, 'https://cdn.tgdd.vn/Products/Images/44/256265/Slider/vi-vn-msi-gaming-stealth-15m-a11uek-i7-254vn-2.jpg'),
    (1000010, 'https://cdn.tgdd.vn/Products/Images/44/256265/Slider/vi-vn-msi-gaming-stealth-15m-a11uek-i7-254vn-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000011, 'https://cdn.tgdd.vn/Products/Images/44/250443/Slider/vi-vn-gigabyte-gaming-g5-i5-md51s1123sh-1.jpg'),
    (1000011, 'https://cdn.tgdd.vn/Products/Images/44/250443/Slider/vi-vn-gigabyte-gaming-g5-i5-md51s1123sh-2.jpg'),
    (1000011, 'https://cdn.tgdd.vn/Products/Images/44/250443/Slider/3-1020x570.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000012, 'https://cdn.tgdd.vn/Products/Images/44/260045/Slider/vi-vn-asus-tuf-gaming-fx506hcb-i5-hn1138w-1.jpg'),
    (1000012, 'https://cdn.tgdd.vn/Products/Images/44/260045/Slider/vi-vn-asus-tuf-gaming-fx506hcb-i5-hn1138w-2.jpg'),
    (1000012, 'https://cdn.tgdd.vn/Products/Images/44/260045/Slider/vi-vn-asus-tuf-gaming-fx506hcb-i5-hn1138w-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000013, 'https://cdn.tgdd.vn/Products/Images/44/251247/Slider/vi-vn-asus-tuf-gaming-fx516pm-i7-hn002t-1.jpg'),
    (1000013, 'https://cdn.tgdd.vn/Products/Images/44/251247/Slider/vi-vn-asus-tuf-gaming-fx516pm-i7-hn002t-2.jpg'),
    (1000013, 'https://cdn.tgdd.vn/Products/Images/44/251247/Slider/vi-vn-asus-tuf-gaming-fx516pm-i7-hn002t-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000014, 'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/dell-gaming-g15-5515-r5-p105f004cgr-01-1020x570.jpg'),
    (1000014, 'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-2.jpg'),
    (1000014, 'https://cdn.tgdd.vn/Products/Images/44/260170/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004cgr-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000015, 'https://cdn.tgdd.vn/Products/Images/44/244385/Slider/vi-vn-dell-g3-15-i7-p89f002bwh.jpg'),
    (1000015, 'https://cdn.tgdd.vn/Products/Images/44/244385/Slider/vi-vn-dell-g3-15-i7-p89f002bwh-2.jpg'),
    (1000015, 'https://cdn.tgdd.vn/Products/Images/44/244385/Slider/vi-vn-dell-g3-15-i7-p89f002bwh-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000016, 'https://cdn.tgdd.vn/Products/Images/44/239463/Slider/asus-tuf-gaming-fx516pe-i7-hn005t-1020x570.jpg'),
    (1000016, 'https://cdn.tgdd.vn/Products/Images/44/239463/Slider/vi-vn-asus-tuf-gaming-fx516pe-i7-hn005t-2.jpg'),
    (1000016, 'https://cdn.tgdd.vn/Products/Images/44/239463/Slider/vi-vn-asus-tuf-gaming-fx516pe-i7-hn005t-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000017, 'https://cdn.tgdd.vn/Products/Images/44/260171/Slider/dell-gaming-g15-5515-r5-p105f004dgr-01-1020x570.jpg'),
    (1000017, 'https://cdn.tgdd.vn/Products/Images/44/260171/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004dgr-2.jpg'),
    (1000017, 'https://cdn.tgdd.vn/Products/Images/44/260171/Slider/vi-vn-dell-gaming-g15-5515-r5-p105f004dgr-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000018, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-1.jpg'),
    (1000018, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-2.jpg'),
    (1000018, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-3.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000019, 'https://cdn.tgdd.vn/Products/Images/44/250976/Slider/vi-vn-acer-predator-triton-300-pt315-53-71dj-i7-3.jpg'),
    (1000019, 'https://cdn.tgdd.vn/Products/Images/44/250976/Slider/vi-vn-acer-predator-triton-300-pt315-53-71dj-i7-4.jpg'),
    (1000019, 'https://cdn.tgdd.vn/Products/Images/44/250976/Slider/vi-vn-acer-predator-triton-300-pt315-53-71dj-i7-5.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000020, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-1.jpg'),
    (1000020, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-1.jpg'),
    (1000020, 'https://cdn.tgdd.vn/Products/Images/44/249151/Slider/vi-vn-msi-gaming-ge66-raider-11uh-i7-259vn-2.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000021, 'https://cdn.tgdd.vn/Products/Images/42/226935/Slider/samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg'),
    (1000021, 'https://cdn.tgdd.vn/Products/Images/42/226935/Slider/vi-vn-samsung-galaxy-z-fold-3-slider-flex-mode.jpg'),
    (1000021, 'https://cdn.tgdd.vn/Products/Images/42/226935/Slider/vi-vn-samsung-galaxy-z-fold-3-slider-khung-vien.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000022, 'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/iphone-11-thumb-video-780x433-1.jpg'),
    (1000022, 'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/vi-vn-iphone-11-tinhnang.jpg'),
    (1000022, 'https://cdn.tgdd.vn/Products/Images/42/153856/Slider/vi-vn-iphone-11-mausac.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000023, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/xiaomi-11t-slider-tong-quan-1020x570-1.jpg'),
    (1000023, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/vi-vn-xiaomi-11t-slider-man-hinh.jpg'),
    (1000023, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/vi-vn-xiaomi-11t-slider-camera.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000024, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/vi-vn-xiaomi-11t-slider-camera.jpg'),
    (1000024, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/vi-vn-xiaomi-11t-slider-anh-chup-camera.jpg'),
    (1000024, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/xiaomi-11t-slider-anh-chup-dem-1020x570.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000025, 'https://cdn.tgdd.vn/Products/Images/42/234315/Slider/vi-vn-samsung-galaxy-a32-4g-tongquan.jpg'),
    (1000025, 'https://cdn.tgdd.vn/Products/Images/42/234315/Slider/vi-vn-samsung-galaxy-a32-4g-thietke.jpg'),
    (1000025, 'https://cdn.tgdd.vn/Products/Images/42/234315/Slider/vi-vn-samsung-galaxy-a32-4g-cauhinh.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000026, 'https://cdn.tgdd.vn/Products/Images/42/239747/Slider/oppo-reno6-z-5g-280721-11481111.jpg'),
    (1000026, 'https://cdn.tgdd.vn/Products/Images/42/239747/Slider/oppo-reno6-z-5g-280721-11481110.jpg'),
    (1000026, 'https://cdn.tgdd.vn/Products/Images/42/239747/Slider/oppo-reno6-z-5g-280721-1148106.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000027, 'https://cdn.tgdd.vn/Products/Images/42/245607/Slider/vivo-v23e-tinhnang-1020x570.jpg'),
    (1000027, 'https://cdn.tgdd.vn/Products/Images/42/245607/Slider/vivo-v23e-baomat-1020x570-1.jpg'),
    (1000027, 'https://cdn.tgdd.vn/Products/Images/42/245607/Slider/vi-vn-vivo-v23e-manhinh-slider.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000028, 'https://cdn.tgdd.vn/Products/Images/42/230529/Slider/vi-vn-iphone-13-pro-max-slider-tong-quan.jpg'),
    (1000028, 'https://cdn.tgdd.vn/Products/Images/42/230529/Slider/vi-vn-iphone-13-pro-max-slider-hieu-nang.jpg'),
    (1000028, 'https://cdn.tgdd.vn/Products/Images/42/223602/Slider/vi-vn-iphone-13-slider-hieu-suat.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000029, 'https://cdn.tgdd.vn/Products/Images/42/241265/Slider/realme-c21y-tongquan-780x433-1.jpg'),
    (1000029, 'https://cdn.tgdd.vn/Products/Images/42/241265/Slider/realme-c21y-manhinh-780x433.jpg'),
    (1000029, 'https://cdn.tgdd.vn/Products/Images/42/241265/Slider/vi-vn-realme-c21y-camera.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000030, 'https://cdn.tgdd.vn/Products/Images/42/251703/Slider/oppo-a95-4g-tongquan-1020x570-1.jpg'),
    (1000030, 'https://cdn.tgdd.vn/Products/Images/42/251703/Slider/vi-vn-oppo-a95-4g-manhinh-slider.jpg'),
    (1000030, 'https://cdn.tgdd.vn/Products/Images/42/251703/Slider/vi-vn-oppo-a95-4g-cauhinh-slider.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000031, 'https://cdn.tgdd.vn/Products/Images/42/228967/Slider/samsung-galaxy-a52-tong-quan-780x433.jpg'),
    (1000031, 'https://cdn.tgdd.vn/Products/Images/42/228967/Slider/vi-vn-samsung-galaxy-a52-thietke.jpg'),
    (1000031, 'https://cdn.tgdd.vn/Products/Images/42/228967/Slider/vi-vn-samsung-galaxy-a52-manhinh.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000032, 'https://cdn.tgdd.vn/Products/Images/42/228967/Slider/vi-vn-samsung-galaxy-a52-camera.jpg'),
    (1000032, 'https://cdn.tgdd.vn/Products/Images/42/228967/Slider/vi-vn-samsung-galaxy-a52-cauhinh.jpg'),
    (1000032, 'https://cdn.tgdd.vn/Products/Images/42/248284/Slider/samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000033, 'https://cdn.tgdd.vn/Products/Images/42/226099/Slider/vi-vn-samsung-galaxy-z-fold-2-tinhnang.jpg'),
    (1000033, 'https://cdn.tgdd.vn/Products/Images/42/226099/Slider/-samsung-galaxy-z-fold-2-manhinhgap.gif'),
    (1000033, 'https://cdn.tgdd.vn/Products/Images/42/226099/Slider/vi-vn-samsung-galaxy-z-fold-2-tansoquet.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000034, 'https://cdn.tgdd.vn/Products/Images/42/230521/Slider/vi-vn-iphone-13-pro-slider-tong-quan.jpg'),
    (1000034, 'https://cdn.tgdd.vn/Products/Images/42/230521/Slider/vi-vn-iphone-13-pro-slider-hieu-nang.jpg'),
    (1000034, 'https://cdn.tgdd.vn/Products/Images/42/230521/Slider/iphone-13-pro-slider-120hz-1020x570.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000035, 'https://cdn.tgdd.vn/Products/Images/42/213033/Slider/iphone-12-pro-max-thumbv-780x433-1.jpg'),
    (1000035, 'https://cdn.tgdd.vn/Products/Images/42/213033/Slider/vi-vn-iphone-12-pro-max-1.jpg'),
    (1000035, 'https://cdn.tgdd.vn/Products/Images/42/213033/Slider/vi-vn-iphone-12-pro-max-2.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000036, 'https://cdn.tgdd.vn/Products/Images/42/248283/Slider/samsung-galaxy-z-flip3-5g-256gb-230821-04105416.jpg'),
    (1000036, 'https://cdn.tgdd.vn/Products/Images/42/248283/Slider/samsung-galaxy-z-flip3-5g-256gb-230821-04105412.jpg'),
    (1000036, 'https://cdn.tgdd.vn/Products/Images/42/248283/Slider/samsung-galaxy-z-flip3-5g-256gb-230821-0410530.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000037, 'https://cdn.tgdd.vn/Products/Images/42/213032/Slider/iphone-12-pro-thumbv-780x433-1.jpg'),
    (1000037, 'https://cdn.tgdd.vn/Products/Images/42/213032/Slider/vi-vn-iphone-12-pro-1.jpg'),
    (1000037, 'https://cdn.tgdd.vn/Products/Images/42/213032/Slider/vi-vn-iphone-12-pro-2.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000038, 'https://cdn.tgdd.vn/Products/Images/42/226316/Slider/samsung-galaxy-s21-ultra-5G-slider-780x433.jpg'),
    (1000038, 'https://cdn.tgdd.vn/Products/Images/42/226316/Slider/vi-vn-samsung-galaxy-s21-ultra-5g-thietke-slider.jpg'),
    (1000038, 'https://cdn.tgdd.vn/Products/Images/42/226316/Slider/vi-vn-samsung-galaxy-s21-ultra-5g-manhinh-slider.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000039, 'https://cdn.tgdd.vn/Products/Images/42/229949/Slider/vi-vn-samsung-galaxy-z-flip-3-tong-quan.jpg'),
    (1000039, 'https://cdn.tgdd.vn/Products/Images/42/229949/Slider/vi-vn-samsung-galaxy-z-flip-3-slider-camera.jpg'),
    (1000039, 'https://cdn.tgdd.vn/Products/Images/42/229949/Slider/vi-vn-samsung-galaxy-z-flip-3-slider-selfie.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000040, 'https://cdn.tgdd.vn/Products/Images/42/223602/Slider/iphone-13-slider-tong-quan-1020x570-1.jpg'),
    (1000040, 'https://cdn.tgdd.vn/Products/Images/42/223602/Slider/vi-vn-iphone-13-slider-chip.jpg'),
    (1000040, 'https://cdn.tgdd.vn/Products/Images/42/223602/Slider/vi-vn-iphone-13-slider-hieu-suat.jpg');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000041, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000041, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000041, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000042, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000042, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000042, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000043, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000043, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000043, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000044, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000044, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000044, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000045, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000045, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000045, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000046, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000046, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000046, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000047, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000047, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000047, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000048, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000048, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000048, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000049, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000049, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000049, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000050, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000050, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000050, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000051, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000051, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000051, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000052, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000052, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000052, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000053, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000053, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000053, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000054, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000054, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000054, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000055, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000055, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000055, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000056, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000056, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000056, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000057, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000057, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000057, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000058, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000058, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000058, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000059, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000059, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000059, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000060, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000060, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn'),
    (1000060, 'https://cf.shopee.vn/file/45726cddf948dbc3ef424b0c928a5ecd_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000061, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000061, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000061, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000062, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000062, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000062, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000063, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000063, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000063, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000064, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000064, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000064, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000065, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000065, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000065, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000066, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000066, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000066, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000067, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000067, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000067, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
	INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000068, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000068, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000068, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000069, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000069, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000069, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000070, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000070, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000070, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000071, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000071, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000071, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000072, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000072, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000072, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000073, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000073, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000073, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000074, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000074, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000074, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000075, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000075, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000075, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000076, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000076, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000076, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000077, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000077, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000077, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000078, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000078, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000078, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000079, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000079, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000079, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000080, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000080, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f'),
    (1000090, 'https://cf.shopee.vn/file/60118f48195836101a7cafc0b9fced2f');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000081, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000081, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000081, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000082, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000082, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000082, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000083, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000083, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000083, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000084, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000084, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000084, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000085, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000085, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000085, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000086, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000086, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000086, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000087, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000087, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000087, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000088, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000088, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000088, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000089, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000089, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000089, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000090, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000090, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000090, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000091, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000091, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000091, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000092, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000092, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000092, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000093, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000093, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000093, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000094, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000094, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000094, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000095, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000095, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000095, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000096, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000096, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000096, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000097, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000097, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000097, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000098, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000098, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000098, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000099, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000099, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000099, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000100, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000100, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn'),
    (1000100, 'https://cf.shopee.vn/file/4fa9bdce36c7b9fae684ff362db507d9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000101, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000101, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000101, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000102, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000102, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000102, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000103, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000103, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000103, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000104, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000104, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000104, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000105, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000105, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000105, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000106, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000106, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000106, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000107, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000107, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000107, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000108, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000108, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000108, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000109, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000109, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000109, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000110, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000110, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000110, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000111, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000111, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000111, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000112, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000112, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000112, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000113, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000113, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000113, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000114, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000114, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000114, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000115, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000115, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000115, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000116, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000116, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000116, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000117, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000117, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000117, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000118, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000118, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000118, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000119, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000119, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000119, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
INSERT INTO `ProductImage`(`productId`, `url`)
VALUES
    (1000120, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000120, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn'),
    (1000120, 'https://cf.shopee.vn/file/e20689ce35f18d37f67df05316e714f9_tn');
SELECT * FROM `ProductImage`;


/*********************************************************/
/* PRODUCT_CATEGORY */
/*********************************************************/
INSERT INTO `ProductCategory`(`productId`, `categoryId`)
VALUES (1000001, 1),
 (1000002, 1),
 (1000003, 1),
 (1000004, 1),
 (1000005, 1),
 (1000006, 1),
 (1000007, 1),
 (1000008, 1),
 (1000009, 1),
 (1000010, 1),
 (1000011, 1),
 (1000012, 1),
 (1000013, 1),
 (1000014, 1),
 (1000015, 1),
 (1000016, 1),
 (1000017, 1),
 (1000018, 1),
 (1000019, 1),
 (1000020, 2),
 (1000021, 2),
 (1000022, 2),
 (1000023, 2),
 (1000024, 2),
 (1000025, 2),
 (1000026, 2),
 (1000027, 2),
 (1000028, 2),
 (1000029, 2),
 (1000030, 2),
 (1000031, 2),
 (1000032, 2),
 (1000033, 2),
 (1000034, 2),
 (1000035, 2),
 (1000036, 2),
 (1000037, 2),
 (1000038, 2),
 (1000039, 2),
 (1000040, 2),
 (1000041, 3),
 (1000042, 3),
 (1000043, 3),
 (1000044, 3),
 (1000045, 3),
 (1000046, 3),
 (1000047, 3),
 (1000048, 3),
 (1000049, 3),
 (1000050, 3),
 (1000051, 3),
 (1000052, 3),
 (1000053, 3),
 (1000054, 3),
 (1000055, 3),
 (1000056, 3),
 (1000057, 3),
 (1000058, 3),
 (1000059, 3),
 (1000060, 3),
 (1000061, 3),
 (1000062, 4),
 (1000063, 4),
 (1000064, 4),
 (1000065, 4),
 (1000066, 4),
 (1000067, 4),
 (1000068, 4),
 (1000069, 4),
 (1000070, 4),
 (1000071, 4),
 (1000072, 4),
 (1000073, 4),
 (1000074, 4),
 (1000075, 4),
 (1000076, 4),
 (1000077, 4),
 (1000078, 4),
 (1000079, 4),
 (1000080, 4),
 (1000081, 5),
 (1000082, 5),
 (1000083, 5),
 (1000084, 5),
 (1000085, 5),
 (1000086, 5),
 (1000087, 5),
 (1000088, 5),
 (1000089, 5),
 (1000090, 5),
 (1000091, 5),
 (1000092, 5),
 (1000093, 5),
 (1000094, 5),
 (1000095, 5),
 (1000096, 5),
 (1000097, 5),
 (1000098, 5),
 (1000100, 6),
 (1000101, 6),
 (1000102, 6),
 (1000103, 6),
 (1000104, 6),
 (1000105, 6),
 (1000106, 6),
 (1000107, 6),
 (1000108, 6),
 (1000110, 6),
 (1000111, 6),
 (1000112, 6),
 (1000113, 6),
 (1000114, 6),
 (1000115, 6),
 (1000116, 6),
 (1000117, 6),
 (1000118, 6),
 (1000119, 6),
 (1000120, 6);


