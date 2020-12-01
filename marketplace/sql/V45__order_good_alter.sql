ALTER TABLE `marketplace`.`order_good` 
DROP FOREIGN KEY `og_fk_1`,
DROP FOREIGN KEY `og_fk_2`;
ALTER TABLE `marketplace`.`order_good` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `order_id` `order_id` INT NOT NULL ,
CHANGE COLUMN `good_id` `good_id` INT NOT NULL ,
ADD UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order_good` 
ADD CONSTRAINT `order_good_fk_1`
  FOREIGN KEY (`order_id`)
  REFERENCES `marketplace`.`order` (`id`),
ADD CONSTRAINT `order_good_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`);
