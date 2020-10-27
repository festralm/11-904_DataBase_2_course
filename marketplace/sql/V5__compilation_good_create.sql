CREATE TABLE `compilation_good` (
  `id` int NOT NULL,
  `compilation_id` int DEFAULT NULL,
  `good_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
