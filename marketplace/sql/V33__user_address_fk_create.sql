ALTER TABLE `marketplace`.`user_address` 
ADD INDEX `ua_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_address` 
ADD CONSTRAINT `ua_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
