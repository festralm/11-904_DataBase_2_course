CREATE TABLE `good_storage` (
  `id` int NOT NULL,
  `good_id` int DEFAULT NULL,
  `storage_id` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
