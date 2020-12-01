ALTER TABLE `marketplace`.`storage` 
DROP FOREIGN KEY `storage_fk_1`;
ALTER TABLE `marketplace`.`storage` 
DROP INDEX `storage_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`good_storage` 
DROP FOREIGN KEY `good_storage_fk_2`;
ALTER TABLE `marketplace`.`good_storage` 
DROP INDEX `gs_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`storage` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `producer_id` `producer_id` INT NOT NULL ,
CHANGE COLUMN `address` `address` VARCHAR(100) NULL DEFAULT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`good_storage` 
ADD INDEX `good_storage_fk_2_idx` (`storage_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_storage` 
ADD CONSTRAINT `good_storage_fk_2`
  FOREIGN KEY (`storage_id`)
  REFERENCES `marketplace`.`storage` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`storage` 
ADD INDEX `storage_fk_1_idx` (`producer_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`storage` 
ADD CONSTRAINT `storage_fk_1`
  FOREIGN KEY (`producer_id`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
