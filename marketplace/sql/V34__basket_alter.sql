ALTER TABLE `marketplace`.`basket` 
DROP FOREIGN KEY `basket_fk_1`,
DROP FOREIGN KEY `basket_fk_2`;
ALTER TABLE `marketplace`.`basket` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
CHANGE COLUMN `count` `count` INT NOT NULL DEFAULT 0 ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`basket` 
ADD CONSTRAINT `basket_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`),
ADD CONSTRAINT `basket_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`);
