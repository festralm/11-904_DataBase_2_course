ALTER TABLE `marketplace`.`user_order` 
ADD INDEX `uo_fk_1_idx` (`user_id` ASC) VISIBLE,
ADD INDEX `uo_fk_2_idx` (`order_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_order` 
ADD CONSTRAINT `uo_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `uo_fk_2`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
