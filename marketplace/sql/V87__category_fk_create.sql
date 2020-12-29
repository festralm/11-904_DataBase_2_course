ALTER TABLE `marketplace`.`category` 
ADD INDEX `category_fk_1_idx` (`parent_category_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`category` 
ADD CONSTRAINT `category_fk_1`
  FOREIGN KEY (`parent_category_id`)
  REFERENCES `marketplace`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
