Delimiter $$

CREATE DEFINER=`root`@`localhost` TRIGGER `seo_page_BEFORE_UPDATE` BEFORE UPDATE ON `seo_page` FOR EACH ROW BEGIN

	if (new.link <> old.link) then
    set new.old_link = old.link;
    end if;
END$$

Delimiter ;