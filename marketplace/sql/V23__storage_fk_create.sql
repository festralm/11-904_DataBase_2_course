ALTER TABLE `marketplace`.`storage` 
ADD INDEX `storage_fk_1_idx` (`producer_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`storage` 
ADD CONSTRAINT `storage_fk_1`
  FOREIGN KEY (`producer_id`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
