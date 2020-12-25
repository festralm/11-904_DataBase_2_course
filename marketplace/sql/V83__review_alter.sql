ALTER TABLE `marketplace`.`review` 
ADD COLUMN `good_id` INT NULL AFTER `user_id`;

ALTER TABLE `marketplace`.`review` 
ADD INDEX `review_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`review` 
ADD CONSTRAINT `review_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
