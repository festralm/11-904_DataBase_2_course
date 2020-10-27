CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `password` int NOT NULL,
  `login` varchar(45) NOT NULL,
  `card` int DEFAULT NULL,
  `social_network` varchar(45) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `bonus` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
