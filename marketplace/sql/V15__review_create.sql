CREATE TABLE `review` (
  `id` int NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `author` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
