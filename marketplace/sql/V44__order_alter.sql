ALTER TABLE `marketplace`.`order_good` 
DROP FOREIGN KEY `og_fk_1`;
ALTER TABLE `marketplace`.`order_good` 
DROP INDEX `og_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`user_order` 
DROP FOREIGN KEY `uo_fk_2`;
ALTER TABLE `marketplace`.`user_order` 
DROP INDEX `uo_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`order` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `price` `price` DECIMAL(32,2) NULL DEFAULT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`order_good` 
ADD INDEX `og_fk_1_idx` (`order_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order_good` 
ADD CONSTRAINT `og_fk_1`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`user_order` 
ADD INDEX `uo_fk_2_idx` (`order_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_order` 
ADD CONSTRAINT `uo_fk_2`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
