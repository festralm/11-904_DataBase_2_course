ALTER TABLE `marketplace`.`good` 
DROP FOREIGN KEY `good_fk_2`;
ALTER TABLE `marketplace`.`good` 
DROP INDEX `good_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`celler` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `password` `password` VARCHAR(32) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`good` 
ADD INDEX `good_fk_2_idx1` (`seller` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`celler` 
RENAME TO  `marketplace`.`seller` ;
