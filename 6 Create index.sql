USE `auction`;

ALTER TABLE `Product`
ADD FULLTEXT(`name`);

