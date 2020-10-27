ALTER TABLE `marketplace`.`order_good` 
ADD INDEX `og_fk_1_idx` (`order_id` ASC) VISIBLE,
ADD INDEX `og_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order_good` 
ADD CONSTRAINT `og_fk_1`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `og_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
