ALTER TABLE `marketplace`.`good` 
ADD COLUMN `discount` DECIMAL(5,2) NULL DEFAULT 0 AFTER `cashback`,
CHANGE COLUMN `cashback` `cashback` DECIMAL(5,2) NULL DEFAULT 0 ;
