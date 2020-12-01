ALTER TABLE `marketplace`.`good` 
DROP FOREIGN KEY `good_fk_3`,
DROP FOREIGN KEY `good_fk_1`;
ALTER TABLE `marketplace`.`good` 
DROP INDEX `good_fk_1_idx` ,
DROP INDEX `good_fk_3_idx` ;
;

ALTER TABLE `marketplace`.`elected` 
DROP FOREIGN KEY `elected_fk_2`;
ALTER TABLE `marketplace`.`elected` 
DROP INDEX `elected_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`compilation_good` 
DROP FOREIGN KEY `compilation_good_fk_2`;
ALTER TABLE `marketplace`.`compilation_good` 
DROP INDEX `cg_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`basket` 
DROP FOREIGN KEY `basket_fk_2`;
ALTER TABLE `marketplace`.`basket` 
DROP INDEX `basket_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`good_storage` 
DROP FOREIGN KEY `gs_fk_1`;
ALTER TABLE `marketplace`.`good_storage` 
DROP INDEX `gs_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`order_good` 
DROP FOREIGN KEY `og_fk_2`;
ALTER TABLE `marketplace`.`order_good` 
DROP INDEX `og_fk_2_idx` ;
;

ALTER TABLE `marketplace`.`good_review` 
DROP FOREIGN KEY `gr_fk_1`;
ALTER TABLE `marketplace`.`good_review` 
DROP INDEX `gr_fk_1_idx` ;
;

ALTER TABLE `marketplace`.`good` 
CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `category` `category_id` INT NOT NULL ,
CHANGE COLUMN `price` `price` DECIMAL(12,2) NOT NULL ,
CHANGE COLUMN `rating` `rating` DECIMAL(3,2) NULL DEFAULT '5' ,
CHANGE COLUMN `seller` `seller_id` INT NOT NULL ,
CHANGE COLUMN `producer` `producer_id` INT NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(1000) NULL DEFAULT NULL ;

ALTER TABLE `marketplace`.`good_review` 
ADD INDEX `gr_fk_1_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_review` 
ADD CONSTRAINT `gr_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`order_good` 
ADD INDEX `og_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`order_good` 
ADD CONSTRAINT `og_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`good_storage` 
ADD INDEX `gs_fk_1_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`good_storage` 
ADD CONSTRAINT `gs_fk_1`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`basket` 
ADD INDEX `basket_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`basket` 
ADD CONSTRAINT `basket_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`compilation_good` 
ADD INDEX `compilation_good_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`compilation_good` 
ADD CONSTRAINT `compilation_good_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`elected` 
ADD INDEX `elected_fk_2_idx` (`good_id` ASC) VISIBLE;
;
ALTER TABLE `marketplace`.`elected` 
ADD CONSTRAINT `elected_fk_2`
  FOREIGN KEY (`good_id`)
  REFERENCES `marketplace`.`good` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `marketplace`.`good` 
ADD CONSTRAINT `good_fk_1`
  FOREIGN KEY (`category_id`)
  REFERENCES `marketplace`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `good_fk_2`
  FOREIGN KEY (`seller_id`)
  REFERENCES `marketplace`.`seller` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `good_fk_3`
  FOREIGN KEY (`producer_id`)
  REFERENCES `marketplace`.`producer` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
