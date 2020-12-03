ALTER TABLE `marketplace`.`order` 
DROP COLUMN `status`,
DROP COLUMN `delivery_type`,
DROP COLUMN `number`,
ADD COLUMN `currency` ENUM('RUB', 'USD') NOT NULL AFTER `price`,
CHANGE COLUMN `issue_date` `arrival_date` TIMESTAMP NULL DEFAULT NULL AFTER `order_date`,
CHANGE COLUMN `datetime` `order_date` TIMESTAMP NULL DEFAULT NULL ,
CHANGE COLUMN `price` `price` DECIMAL(12,2) NULL DEFAULT NULL ;
ALTER TABLE `marketplace`.`order` 
ADD COLUMN `status` ENUM('proccesing', 'payed', 'arrived', 'pickedup', 'cancelled') NOT NULL AFTER `address_id`;
