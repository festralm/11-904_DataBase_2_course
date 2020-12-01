-- Generation time: Mon, 30 Nov 2020 19:42:07 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_23
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `compilation`;
CREATE TABLE `compilation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `compilation` VALUES ('1','consectetur','Aut facilis cum et optio dolor autem. Dolorem neque est omnis pariatur et corrupti. Id et quibusdam ipsa aut provident excepturi perferendis.'),
('2','eaque','Mollitia ea consectetur veniam. Nulla aut cum officia eligendi officia. Perferendis excepturi deleniti quia sapiente. Nisi saepe quaerat harum voluptates iure.'),
('3','corrupti','Et quo ut esse et. Fugit aliquid veniam aut ut eaque. Temporibus maiores sit in dolores quia.'),
('4','adipisci','Ut nihil iure impedit ut fugit. Veniam totam sequi illum. Tenetur ullam natus et sunt esse exercitationem.'),
('5','ab','Quibusdam quas quas quia magnam voluptatem quia accusamus. Voluptatem necessitatibus nesciunt maiores ut quis. Qui dolor sunt sint sed nulla numquam. Dolorem eum est nemo quisquam ea et debitis. Omnis et excepturi laborum omnis architecto aut expedita.'),
('6','aut','Et laborum facilis enim libero quibusdam cumque dolores. Voluptates quia quisquam animi illo sit quia tempora voluptas. Sequi incidunt quia inventore reiciendis doloribus facere aut aut. Veritatis eligendi nihil ut. Magni quia dolorem quo aspernatur architecto.'),
('7','minus','Nobis quas beatae qui fugit dicta consectetur. Autem nam officia explicabo deleniti. Doloremque in similique quaerat consequatur molestiae placeat eos nihil. Porro libero rerum rem sunt sequi numquam voluptatibus.'),
('8','aut','Voluptatem quisquam maxime ut recusandae sapiente natus itaque. Quos eos rem aut debitis atque. Ducimus natus consequatur perferendis hic labore voluptatum.'),
('9','ullam','Odio minus dignissimos vero minima ad ipsam. Magnam libero delectus maxime numquam odit sint. At non nam ad sint omnis fuga itaque necessitatibus.'),
('10','voluptas','Provident eaque accusantium quae sit et dignissimos iure. Sunt est optio modi nihil corporis. Dolore est quos est assumenda.'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

