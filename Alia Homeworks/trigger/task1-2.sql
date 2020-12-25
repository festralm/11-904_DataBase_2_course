DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `user_BEFORE_INSERT` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
	set NEW.password = md5(NEW.password);
END$$

CREATE DEFINER=`root`@`localhost` TRIGGER `user_BEFORE_UPDATE_1` BEFORE UPDATE ON `user` FOR EACH ROW BEGIN
set NEW.password = md5(NEW.password);
INSERT INTO `trigger_hw`.`product_history`
(`logged_time`,
`type`,
`user_id`,
`user_username`,
`user_password`,
`user_created_time`)
VALUES
(now(),
'update',
OLD.id,
OLD.username,
OLD.password,
OLD.created_time);
END$$

CREATE DEFINER=`root`@`localhost` TRIGGER `user_BEFORE_DELETE` BEFORE DELETE ON `user` FOR EACH ROW BEGIN
    INSERT INTO `trigger_hw`.`product_history`
(`logged_time`,
`type`,
`user_id`,
`user_username`,
`user_password`,
`user_created_time`)
VALUES
(now(),
'delete',
OLD.id,
OLD.username,
OLD.password,
OLD.created_time);
END$$
DELIMITER ;

