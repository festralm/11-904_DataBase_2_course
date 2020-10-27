CREATE TABLE `order` (
  `id` int NOT NULL,
  `number` int DEFAULT NULL,
  `delivery_type` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `price` decimal(30,0) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `pick_up_point_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `ordercol` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
