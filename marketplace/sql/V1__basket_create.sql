CREATE TABLE `basket` (
  `id` int NOT NULL,
  `user` int DEFAULT NULL,
  `good` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
