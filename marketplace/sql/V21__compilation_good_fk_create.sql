ALTER TABLE `marketplace`.`compilation_good` 
ADD INDEX `cg_fk_2_idx` (`good_id` ASC) VISIBLE,
ADD INDEX `cg_fk_1_idx` (`compilation_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`compilation_good` 
ADD CONSTRAINT `cg_fk_1`
  FOREIGN KEY (`compilation_id`)
  REFERENCES `marketplace`.`compilation` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `cg_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
