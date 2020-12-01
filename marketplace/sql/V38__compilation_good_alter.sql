ALTER TABLE `marketplace`.`compilation_good` 
DROP FOREIGN KEY `cg_fk_1`,
DROP FOREIGN KEY `cg_fk_2`;
ALTER TABLE `marketplace`.`compilation_good` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `compilation_id` `compilation_id` INT NOT NULL ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`compilation_good` 
ADD CONSTRAINT `cg_fk_1`
  FOREIGN KEY (`compilation_id`)
  REFERENCES `marketplace`.`compilation` (`id`),
ADD CONSTRAINT `cg_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`);

ALTER TABLE `marketplace`.`compilation_good` 
DROP FOREIGN KEY `cg_fk_1`,
DROP FOREIGN KEY `cg_fk_2`;
ALTER TABLE `marketplace`.`compilation_good` 
ADD CONSTRAINT `compilation_good_fk_1`
  FOREIGN KEY (`compilation_id`)
  REFERENCES `marketplace`.`compilation` (`id`),
ADD CONSTRAINT `compilation_good_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`);
