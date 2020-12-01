ALTER TABLE `marketplace`.`good` 
DROP FOREIGN KEY `good_fk_1`;
ALTER TABLE `marketplace`.`good` 
DROP INDEX `good_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`category` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`good` 
ADD INDEX `good_fk_1_idx` (`category` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good` 
ADD CONSTRAINT `good_fk_1`
  FOREIGN KEY (`category`)
  REFERENCES `marketplace`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `marketplace`.`category` 
ADD COLUMN `parent_category_id` INT NULL AFTER `name`,
ADD INDEX `category_fk_1_idx` (`parent_category_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`category` 
ADD CONSTRAINT `category_fk_1`
  FOREIGN KEY (`parent_category_id`)
  REFERENCES `marketplace`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
