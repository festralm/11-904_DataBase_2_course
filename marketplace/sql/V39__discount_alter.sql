ALTER TABLE `marketplace`.`user_discount` 
DROP FOREIGN KEY `ud_fk_2`;
ALTER TABLE `marketplace`.`user_discount` 
DROP INDEX `ud_fk_2_idx` ;
;
ALTER TABLE `marketplace`.`discount` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `secret_key` `secret_key` VARCHAR(45) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_discount` 
ADD INDEX `ud_fk_2_idx` (`discount_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_discount` 
ADD CONSTRAINT `ud_fk_2`
  FOREIGN KEY (`discount_id`)
  REFERENCES `marketplace`.`discount` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
