-- Generation time: Mon, 30 Nov 2020 19:31:12 +0000
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

DROP TABLE IF EXISTS `good_storage`;
CREATE TABLE `good_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `count` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `gs_fk_1_idx` (`good_id`),
  KEY `good_storage_fk_2_idx` (`storage_id`),
  CONSTRAINT `good_storage_fk_1` FOREIGN KEY (`good_id`) REFERENCES `good` (`id`),
  CONSTRAINT `good_storage_fk_2` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `good_storage` VALUES ('1','1','1','0'),
('2','2','2','0'),
('3','3','3','93'),
('4','4','4','0'),
('5','5','5','0'),
('6','6','6','0'),
('7','7','7','11'),
('8','8','8','26'),
('9','9','9','56'),
('10','10','10','0'),
('11','11','11','45'),
('12','12','12','0'),
('13','13','13','97'),
('14','14','14','41'),
('15','15','15','69'),
('16','16','16','0'),
('17','17','17','21'),
('18','18','18','0'),
('19','19','19','40'),
('20','20','20','0'),
('21','21','1','37'),
('22','22','2','43'),
('23','23','3','0'),
('24','24','4','5'),
('25','25','5','0'),
('26','26','6','70'),
('27','27','7','20'),
('28','28','8','43'),
('29','29','9','0'),
('30','30','10','89'),
('31','31','11','0'),
('32','32','12','71'),
('33','33','13','0'),
('34','34','14','0'),
('35','35','15','0'),
('36','36','16','47'),
('37','37','17','0'),
('38','38','18','24'),
('39','39','19','27'),
('40','40','20','0'),
('41','41','1','99'),
('42','42','2','0'),
('43','43','3','10'),
('44','44','4','59'),
('45','45','5','40'),
('46','46','6','93'),
('47','47','7','45'),
('48','48','8','2'),
('49','49','9','36'),
('50','50','10','12'),
('51','51','11','66'),
('52','52','12','91'),
('53','53','13','0'),
('54','54','14','12'),
('55','55','15','63'),
('56','56','16','0'),
('57','57','17','27'),
('58','58','18','27'),
('59','59','19','36'),
('60','60','20','68'),
('61','61','1','0'),
('62','62','2','41'),
('63','63','3','0'),
('64','64','4','0'),
('65','65','5','37'),
('66','66','6','0'),
('67','67','7','53'),
('68','68','8','38'),
('69','69','9','0'),
('70','70','10','0'),
('71','71','11','0'),
('72','72','12','62'),
('73','73','13','0'),
('74','74','14','42'),
('75','75','15','16'),
('76','76','16','96'),
('77','77','17','0'),
('78','78','18','36'),
('79','79','19','37'),
('80','80','20','0'),
('81','81','1','0'),
('82','82','2','26'),
('83','83','3','62'),
('84','84','4','26'),
('85','85','5','69'),
('86','86','6','0'),
('87','87','7','78'),
('88','88','8','60'),
('89','89','9','57'),
('90','90','10','81'),
('91','91','11','87'),
('92','92','12','82'),
('93','93','13','84'),
('94','94','14','81'),
('95','95','15','70'),
('96','96','16','73'),
('97','97','17','35'),
('98','98','18','0'),
('99','99','19','66'),
('100','100','20','61'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
