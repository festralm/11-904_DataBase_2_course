ALTER TABLE `marketplace`.`review` 
CHANGE COLUMN `author` `user_id` INT NULL DEFAULT NULL ,
ADD INDEX `review_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`review` 
ADD CONSTRAINT `review_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
