-- Generation time: Mon, 30 Nov 2020 19:28:47 +0000
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

DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producer_id` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `storage_fk_1_idx` (`producer_id`),
  CONSTRAINT `storage_fk_1` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `storage` VALUES ('1','1','60736 Hettinger Ferry Apt. 818\nNorth Cierra, UT 81627-2427'),
('2','2','125 Hettinger Track Apt. 943\nMurphyfort, WA 05326-8388'),
('3','3','275 Schmidt Springs Suite 922\nLake Talia, OR 37659'),
('4','4','84731 Emmerich Tunnel Apt. 903\nWest Lamarborough, NV 79860'),
('5','5','114 Hegmann River Suite 861\nNew Meghanland, MT 06703-0996'),
('6','6','114 Jude Island Apt. 795\nEast Rossie, IN 90279'),
('7','7','31160 Ottilie River\nConnellyhaven, LA 33461'),
('8','8','597 Rory Garden Suite 669\nPort Leratown, WV 10182-2765'),
('9','9','4576 Greenholt Center\nLake Austynshire, DE 18766'),
('10','10','476 Mariela Glen Apt. 598\nEleanoreshire, SD 84650-6064'),
('11','11','68208 Sauer Flats Suite 274\nSouth Joannieview, OH 39155-3557'),
('12','12','57589 Quitzon Grove Apt. 042\nEast Rodolfoburgh, ID 13488-8939'),
('13','13','1573 Clifford Heights Apt. 843\nAlexiemouth, UT 01471-9250'),
('14','14','4161 Stone Meadows Apt. 150\nLake Giovanistad, FL 03294-2892'),
('15','15','70841 Gaetano Well Apt. 730\nNorth Jackelineborough, IN 63349'),
('16','16','080 Carter Road Apt. 873\nPort Eunicemouth, NE 59905'),
('17','17','5164 Emie Walks\nNew Hubertshire, MI 86333-4916'),
('18','18','999 Travon Vista\nJeremyville, OH 31917'),
('19','19','252 Marcelino Run Apt. 093\nMantehaven, VT 86280-0892'),
('20','20','9371 Hudson Mews\nWest Carlostown, SD 58072-0737'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

