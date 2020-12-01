ALTER TABLE `marketplace`.`user_address` 
DROP FOREIGN KEY `user_address_fk_1`;
ALTER TABLE `marketplace`.`user_address` 
DROP INDEX `user_address_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`order` 
DROP FOREIGN KEY `order_fk_2`;
ALTER TABLE `marketplace`.`order` 
DROP INDEX `order_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`user_address` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `address` `address` VARCHAR(100) NULL DEFAULT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`user_address` 
ADD INDEX `user_address_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_address` 
ADD CONSTRAINT `user_address_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`order` 
ADD INDEX `order_fk_2_idx` (`address_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order` 
ADD CONSTRAINT `order_fk_2`
  FOREIGN KEY (`address_id`)
  REFERENCES `marketplace`.`user_address` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

