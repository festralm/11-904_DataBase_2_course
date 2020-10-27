CREATE TABLE `celler` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` int NOT NULL,
  `login` varchar(45) NOT NULL,
  `license_key` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
