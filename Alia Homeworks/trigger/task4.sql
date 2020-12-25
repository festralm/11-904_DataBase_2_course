Delimiter $$
CREATE DEFINER=`root`@`localhost` TRIGGER `order_product_BEFORE_INSERT` BEFORE INSERT ON `order_product` FOR EACH ROW BEGIN
	set new.total = new.price * new.qty;
END$$

CREATE DEFINER=`root`@`localhost` TRIGGER `order_product_AFTER_INSERT` AFTER INSERT ON `order_product` FOR EACH ROW BEGIN
    UPDATE `trigger_hw`.`order`
SET `total` = (SELECT sum(total) 
from order_product
where order_id = `order`.id)
WHERE `order`.`id` = new.order_id;
END$$

CREATE DEFINER=`root`@`localhost` TRIGGER `order_product_BEFORE_UPDATE` BEFORE UPDATE ON `order_product` FOR EACH ROW BEGIN
set new.total = new.price * new.qty;
END$$

CREATE DEFINER=`root`@`localhost` TRIGGER `order_product_AFTER_UPDATE` AFTER UPDATE ON `order_product` FOR EACH ROW BEGIN
    UPDATE `trigger_hw`.`order`
SET `total` = (SELECT sum(total) 
from order_product
where order_id = `order`.id)
WHERE `order`.`id` = new.order_id;
END$$

Delimiter ;