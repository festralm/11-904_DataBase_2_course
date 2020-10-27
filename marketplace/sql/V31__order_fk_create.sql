ALTER TABLE `marketplace`.`order` 
ADD INDEX `order_fk_1_idx` (`pick_up_point_id` ASC) VISIBLE,
ADD INDEX `order_fk_2_idx` (`address_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order` 
ADD CONSTRAINT `order_fk_1`
  FOREIGN KEY (`pick_up_point_id`)
  REFERENCES `marketplace`.`pick_up_point` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `order_fk_2`
  FOREIGN KEY (`address_id`)
  REFERENCES `marketplace`.`user_address` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
