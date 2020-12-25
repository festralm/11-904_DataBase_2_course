CREATE TABLE `seo_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link` varchar(45) NOT NULL,
  `old_link` varchar(45) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
