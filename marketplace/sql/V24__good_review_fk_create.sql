ALTER TABLE `marketplace`.`good_review` 
ADD INDEX `gr_fk_1_idx` (`good_id` ASC) VISIBLE,
ADD INDEX `gr_fk_2_idx` (`review_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_review` 
ADD CONSTRAINT `gr_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `gr_fk_2`
  FOREIGN KEY (`review_id`)
  REFERENCES `marketplace`.`review` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
