ALTER TABLE `marketplace`.`compilation_good` 
DROP FOREIGN KEY `cg_fk_1`;
ALTER TABLE `marketplace`.`compilation_good` 
DROP INDEX `cg_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`compilation` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `name` `name` VARCHAR(45) NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(500) NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;

ALTER TABLE `marketplace`.`compilation_good` 
ADD INDEX `cg_fk_1_idx` (`compilation_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`compilation_good` 
ADD CONSTRAINT `cg_fk_1`
  FOREIGN KEY (`compilation_id`)
  REFERENCES `marketplace`.`compilation` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
