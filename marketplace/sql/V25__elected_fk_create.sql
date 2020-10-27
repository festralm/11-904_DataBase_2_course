ALTER TABLE `marketplace`.`elected` 
ADD INDEX `elected_fk_1_idx` (`user_id` ASC) VISIBLE,
ADD INDEX `elected_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`elected` 
ADD CONSTRAINT `elected_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `elected_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
