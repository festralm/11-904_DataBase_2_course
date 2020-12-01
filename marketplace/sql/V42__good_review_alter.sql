ALTER TABLE `marketplace`.`good_review` 
DROP FOREIGN KEY `gr_fk_1`,
DROP FOREIGN KEY `gr_fk_2`;
ALTER TABLE `marketplace`.`good_review` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
CHANGE COLUMN `review_id` `review_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_review` 
ADD CONSTRAINT `good_review_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`),
ADD CONSTRAINT `good_review_fk_2`
  FOREIGN KEY (`review_id`)
  REFERENCES `marketplace`.`review` (`id`);
