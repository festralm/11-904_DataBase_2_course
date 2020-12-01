ALTER TABLE `marketplace`.`user_order` 
DROP FOREIGN KEY `uo_fk_2`,
DROP FOREIGN KEY `user_order_fk_1`;
ALTER TABLE `marketplace`.`user_order` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `user_id` `user_id` INT NOT NULL ,
CHANGE COLUMN `order_id` `order_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`user_order` 
ADD CONSTRAINT `user_order_fk_2`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`),
ADD CONSTRAINT `user_order_fk_1`
  FOREIGN KEY (`user_id`)
  REFERENCES `marketplace`.`user` (`id`);
