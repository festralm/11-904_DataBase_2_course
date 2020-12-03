ALTER TABLE `marketplace`.`user` 
DROP COLUMN `bonus`,
DROP COLUMN `social_network`,
DROP COLUMN `card`,
CHANGE COLUMN `birthdate` `birthdate` TIMESTAMP NULL DEFAULT NULL ,
CHANGE COLUMN `phone_number` `phone_number` VARCHAR(20) NULL DEFAULT NULL ;
