ALTER TABLE `marketplace`.`good_storage` 
DROP FOREIGN KEY `gs_fk_1`,
DROP FOREIGN KEY `gs_fk_2`;
ALTER TABLE `marketplace`.`good_storage` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
CHANGE COLUMN `storage_id` `storage_id` INT NOT NULL ,
CHANGE COLUMN `count` `count` INT NULL DEFAULT 0 ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_storage` 
ADD CONSTRAINT `good_storage_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`),
ADD CONSTRAINT `good_storage_fk_2`
  FOREIGN KEY (`storage_id`)
  REFERENCES `marketplace`.`storage` (`id`);
