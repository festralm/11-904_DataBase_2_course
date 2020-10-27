ALTER TABLE `marketplace`.`basket` 
CHANGE COLUMN `user` `user_id` INT NULL DEFAULT NULL ,
CHANGE COLUMN `good` `good_id` INT NULL DEFAULT NULL ,
ADD INDEX `basket_fk_2_idx` (`good_id` ASC) VISIBLE,
ADD INDEX `basket_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`basket` 
ADD CONSTRAINT `basket_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `basket_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
