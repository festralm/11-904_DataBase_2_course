CREATE TABLE `students` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_fk_1_idx` (`user_id`),
  KEY `student_fk_2_idx` (`group_id`),
  CONSTRAINT `student_fk_2` FOREIGN KEY (`group_id`) REFERENCES `groups_` (`id`),
  CONSTRAINT `students_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
