ALTER TABLE `marketplace`.`user` 
ADD COLUMN `bonus_cashback` DECIMAL(12,2) NULL DEFAULT 0 AFTER `phone_number`;
