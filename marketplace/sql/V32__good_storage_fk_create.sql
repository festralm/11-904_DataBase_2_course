ALTER TABLE `marketplace`.`good_storage` 
ADD INDEX `gs_fk_1_idx` (`good_id` ASC) VISIBLE,
ADD INDEX `gs_fk_2_idx` (`storage_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_storage` 
ADD CONSTRAINT `gs_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `gs_fk_2`
  FOREIGN KEY (`storage_id`)
  REFERENCES `marketplace`.`storage` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
