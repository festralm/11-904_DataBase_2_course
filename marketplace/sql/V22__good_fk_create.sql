ALTER TABLE `marketplace`.`good` 
ADD INDEX `good_fk_1_idx` (`category` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good` 
ADD CONSTRAINT `good_fk_1`
  FOREIGN KEY (`category`)
  REFERENCES `marketplace`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`good` 
ADD INDEX `good_fk_2_idx` (`seller` ASC) VISIBLE,
ADD INDEX `good_fk_3_idx` (`producer` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good` 
ADD CONSTRAINT `good_fk_2`
  FOREIGN KEY (`seller`)
  REFERENCES `marketplace`.`celler` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `good_fk_3`
  FOREIGN KEY (`producer`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
