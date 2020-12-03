ALTER TABLE `marketplace`.`good` 
ADD COLUMN `currency` ENUM('RUB', 'USD') NOT NULL AFTER `price`;
