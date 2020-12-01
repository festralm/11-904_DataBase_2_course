ALTER TABLE `marketplace`.`user_discount` 
DROP FOREIGN KEY `ud_fk_2`,
DROP FOREIGN KEY `user_discount_fk_1`;
ALTER TABLE `marketplace`.`user_discount` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `discount_id` `discount_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_discount` 
ADD CONSTRAINT `user_discount_fk_2`
  FOREIGN KEY (`discount_id`)
  REFERENCES `marketplace`.`discount` (`id`),
ADD CONSTRAINT `user_discount_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`);
