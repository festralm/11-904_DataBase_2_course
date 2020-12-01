ALTER TABLE `marketplace`.`storage` 
DROP FOREIGN KEY `storage_fk_1`;
ALTER TABLE `marketplace`.`storage` 
DROP INDEX `storage_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`good` 
DROP FOREIGN KEY `good_fk_3`;
ALTER TABLE `marketplace`.`good` 
DROP INDEX `good_fk_3` ;
;

ALTER TABLE `marketplace`.`producer` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`storage` 
ADD INDEX `storage_fk_1_idx` (`producer_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`storage` 
ADD CONSTRAINT `storage_fk_1`
  FOREIGN KEY (`producer_id`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`good` 
ADD INDEX `good_fk_3_idx` (`producer_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good` 
ADD CONSTRAINT `good_fk_3`
  FOREIGN KEY (`producer_id`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
