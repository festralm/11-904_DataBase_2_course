ALTER TABLE `marketplace`.`order` 
DROP FOREIGN KEY `order_fk_1`;
ALTER TABLE `marketplace`.`order` 
DROP INDEX `order_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`pick_up_point` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `address` `address` VARCHAR(45) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`order` 
ADD INDEX `order_fk_1_idx` (`pick_up_point_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order` 
ADD CONSTRAINT `order_fk_1`
  FOREIGN KEY (`pick_up_point_id`)
  REFERENCES `marketplace`.`pick_up_point` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
