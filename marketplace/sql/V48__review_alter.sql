ALTER TABLE `marketplace`.`review` 
DROP FOREIGN KEY `review_fk_1`;
ALTER TABLE `marketplace`.`review` 
CHANGE COLUMN `description` `description` VARCHAR(1000) NOT NULL ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `likes` `likes` INT NOT NULL DEFAULT 0 ,
CHANGE COLUMN `rating` `rating` INT NOT NULL DEFAULT 5 ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
DROP INDEX `review_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`review` 
ADD INDEX `review_fk_1_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`review` 
ADD CONSTRAINT `review_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
