ALTER TABLE `marketplace`.`user_address` 
DROP FOREIGN KEY `ua_fk_1`;
ALTER TABLE `marketplace`.`user_address` 
DROP INDEX `ua_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`user_discount` 
DROP FOREIGN KEY `ud_fk_1`;
ALTER TABLE `marketplace`.`user_discount` 
DROP INDEX `ud_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`basket` 
DROP FOREIGN KEY `basket_fk_1`;
ALTER TABLE `marketplace`.`basket` 
DROP INDEX `basket_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`elected` 
DROP FOREIGN KEY `elected_fk_1`;
ALTER TABLE `marketplace`.`elected` 
DROP INDEX `elected_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`user_order` 
DROP FOREIGN KEY `uo_fk_1`;
ALTER TABLE `marketplace`.`user_order` 
DROP INDEX `uo_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`review` 
DROP FOREIGN KEY `review_fk_1`;
ALTER TABLE `marketplace`.`review` 
DROP INDEX `review_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`user` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `name` `name` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `email` `email` VARCHAR(120) NOT NULL ,
CHANGE COLUMN `password` `password` VARCHAR(32) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE;
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

ALTER TABLE `marketplace`.`user_discount` 
ADD INDEX `user_discount_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_discount` 
ADD CONSTRAINT `user_discount_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`basket` 
ADD INDEX `basket_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`basket` 
ADD CONSTRAINT `basket_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`elected` 
ADD INDEX `elected_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`elected` 
ADD CONSTRAINT `elected_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`user_order` 
ADD INDEX `user_order_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_order` 
ADD CONSTRAINT `user_order_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`review` 
ADD INDEX `review_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`review` 
ADD CONSTRAINT `review_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
