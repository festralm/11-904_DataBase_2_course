CREATE TABLE `good` (
  `id` int NOT NULL,
  `category` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `rating` decimal(3,0) DEFAULT '5',
  `name` varchar(45) NOT NULL,
  `seller` int DEFAULT NULL,
  `producer` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `cashback` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
