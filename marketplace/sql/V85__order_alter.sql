ALTER TABLE `marketplace`.`order` 
ADD COLUMN `user_id` INT NULL AFTER `status`;
ALTER TABLE `marketplace`.`order` 
ADD INDEX `order_fk_3_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order` 
ADD CONSTRAINT `order_fk_3`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
