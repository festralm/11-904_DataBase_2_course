ALTER TABLE `marketplace`.`elected` 
DROP FOREIGN KEY `elected_fk_1`,
DROP FOREIGN KEY `elected_fk_2`;
ALTER TABLE `marketplace`.`elected` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`elected` 
ADD CONSTRAINT `elected_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`),
ADD CONSTRAINT `elected_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`);
