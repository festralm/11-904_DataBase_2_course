ALTER TABLE `marketplace`.`user_discount` 
ADD INDEX `ud_fk_1_idx` (`user_id` ASC) VISIBLE,
ADD INDEX `ud_fk_2_idx` (`discount_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_discount` 
ADD CONSTRAINT `ud_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `ud_fk_2`
  FOREIGN KEY (`discount_id`)
  REFERENCES `marketplace`.`discount` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
