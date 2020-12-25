CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_time` timestamp NOT NULL,
  `total` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
