-- Generation time: Mon, 30 Nov 2020 19:19:23 +0000
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

DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_address_fk_1_idx` (`user_id`),
  CONSTRAINT `user_address_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user_address` VALUES ('1','1','7647 Elmo Cove\nMillstown, WV 63484-8867'),
('2','2','242 Anya Village\nLaneytown, DE 93406'),
('3','3','9515 Thiel Port\nPort Arlene, ND 73074-6022'),
('4','4','8054 Raul Locks Suite 396\nNew Carlos, MO 75984'),
('5','5','56121 Dane Gateway Apt. 191\nBraunberg, PA 72876-6381'),
('6','6','01721 Orn Walks\nJohnstontown, HI 98502'),
('7','7','96496 Braun Lights Apt. 875\nMillerfort, OK 09247'),
('8','8','1290 Giovanna Ways Apt. 094\nSouth Sadieberg, ME 81260'),
('9','9','2815 D\'Amore Circles\nEast Johnpaulshire, MS 99466-1524'),
('10','10','3571 Evans Drive Suite 901\nRyanmouth, NY 12920-2272'),
('11','11','34323 Myrtis Lock Apt. 887\nEast Deontaechester, IA 57914-4362'),
('12','12','84633 Vicente Brook Suite 506\nSouth Rickietown, TN 16477-3683'),
('13','13','93990 Gottlieb Fort\nDarenbury, IN 75316'),
('14','14','79204 Stehr Roads\nAmbrosebury, KS 93374'),
('15','15','12168 Alanis Villages Apt. 274\nEast Coy, WY 50229-2623'),
('16','16','56874 Bret Mountain\nWest Oniebury, MA 74286-9536'),
('17','17','1316 Sawayn Shores\nKuphalburgh, MI 72774'),
('18','18','421 Altenwerth Road\nNew Petra, OR 11188'),
('19','19','632 Kayla Greens Suite 035\nVirginiemouth, MA 16474'),
('20','20','84503 Rempel Greens\nNorth Kamron, WI 54995-3263'),
('21','21','721 Simonis Road\nNorth Rocio, NJ 26915-4089'),
('22','22','3702 Jacobson Crossing\nHalvorsonmouth, OH 99704'),
('23','23','257 Jones Village\nErnsershire, AL 96406-5767'),
('24','24','8671 Polly Lake Suite 106\nPort Garett, VA 77015-6951'),
('25','25','40046 Andrew Freeway Suite 558\nSouth Leonel, WV 22069'),
('26','26','27090 Talia Rest Suite 578\nJoannietown, NV 68172-9788'),
('27','27','31606 Kadin Path\nSheridanmouth, VA 37431'),
('28','28','968 Steuber Walks Suite 507\nSouth Janickberg, NM 66778-3668'),
('29','29','7645 Rafael Trace Apt. 331\nEbertfort, VT 84741'),
('30','30','3944 Arlene Bypass Apt. 661\nNorth Codyport, LA 55881-7790'),
('31','31','724 Goodwin Lodge Suite 384\nPort Alysa, TX 62277-9366'),
('32','32','042 Emmet Burgs Apt. 120\nDuBuqueville, PA 21902-6969'),
('33','33','1451 Gisselle Trail\nWatsicamouth, MN 04191-7373'),
('34','34','5519 Heathcote Stream Apt. 222\nLake Jedidiah, DE 50771-8742'),
('35','35','07760 Vicente Club Apt. 235\nBostad, CA 66106-6406'),
('36','36','5117 Weissnat Isle\nAbelborough, NC 69960-8153'),
('37','37','890 Crona View Suite 027\nEast Katlynview, ND 32994'),
('38','38','0020 Nicola Centers Suite 892\nLake Jennieview, MD 74509'),
('39','39','00614 Sadie Key\nGreenholtshire, OK 43604-2080'),
('40','40','11807 Hyatt Trace Suite 340\nWilliemouth, NY 81585'),
('41','41','450 O\'Conner Mission\nEast Mattburgh, MT 22973-6903'),
('42','42','72418 Larson Stravenue Suite 441\nPort Flossiemouth, NJ 87898-2827'),
('43','43','31575 Rice Overpass Suite 174\nBernierborough, TX 36203-8937'),
('44','44','22744 Alden Mall Suite 393\nAgustinafurt, TX 28347-0477'),
('45','45','64995 Cora Green Suite 996\nEast Nya, MS 56542-7950'),
('46','46','723 Ofelia Fort\nHilpertmouth, WA 27476'),
('47','47','0600 Jacobi Garden\nLouisafort, IA 69366-8601'),
('48','48','7442 Parisian Unions\nHermannstad, OK 23605-1609'),
('49','49','916 Kuvalis Road\nWest Malvinaview, NY 93052-3895'),
('50','50','8517 Grimes Trail\nNorth Judy, MD 40520'),
('51','51','2862 Will Field Suite 697\nHuelschester, CT 37129-3380'),
('52','52','94318 Lane Heights\nNorth Moises, LA 58319'),
('53','53','678 Beer Way Suite 786\nBoville, GA 65097-3502'),
('54','54','990 Lindsey Valley Apt. 954\nBettyfort, IL 30533'),
('55','55','750 Paucek Trail Apt. 391\nSouth Madison, IA 97815'),
('56','56','338 Wilhelm Plain Apt. 311\nNew Aleenview, VT 89308-5190'),
('57','57','604 Haag Centers Suite 724\nLangworthberg, MO 13164-3339'),
('58','58','6614 Zboncak Ridges Suite 372\nWehnerton, ME 77285'),
('59','59','28225 Jazmyn Island\nEast Reganbury, NV 44370'),
('60','60','66777 Ondricka Forges Suite 746\nPort Travis, MS 64449-6840'),
('61','61','2823 Hilll Grove\nLuettgenville, FL 89192'),
('62','62','91663 Wisoky Orchard\nAnastacioside, UT 31589-0935'),
('63','63','30083 Imogene Locks\nFlatleyton, RI 09299-6707'),
('64','64','3865 Frank Stravenue\nNicholefurt, ND 08369'),
('65','65','53442 Hickle Court\nConroychester, SD 62648-2669'),
('66','66','0553 Botsford Trail Suite 183\nNorth Madieville, LA 67664'),
('67','67','05225 Hulda Mountains Suite 482\nWest Loniestad, AK 96721'),
('68','68','478 Elouise Plains\nNew Josefinaland, NC 44235-7603'),
('69','69','69559 Julia Shoal\nPort Lavinia, TX 08077'),
('70','70','1261 Lind Orchard\nNew Cydney, NY 54580'),
('71','71','831 Yvonne Shoals Suite 521\nNorth Ruby, CT 47111-5683'),
('72','72','3686 Boehm Squares Suite 332\nSouth Baylee, SD 15119'),
('73','73','271 Bernhard Street Apt. 538\nCamdenshire, SD 82751'),
('74','74','84873 Solon Crossing Apt. 207\nGabeton, NE 37183-6418'),
('75','75','044 Bogisich Locks Apt. 494\nKuphalbury, IN 58201'),
('76','76','1576 Gloria Loaf Apt. 510\nJonesborough, AL 25062-3760'),
('77','77','005 Nannie Ville\nPort Elmirashire, SD 99549'),
('78','78','057 Brandon Mall\nEast Meredithfort, CT 78888'),
('79','79','735 Collins Shoal Suite 062\nPort Johathanchester, DC 38112-6428'),
('80','80','7477 Lang Estate Apt. 920\nNew Cecil, MT 41668-8605'),
('81','81','071 Juliet Plaza Suite 788\nLake Aracely, WV 79427-0680'),
('82','82','15675 Kohler Loaf\nLuisashire, TX 65905'),
('83','83','2418 Will Orchard Apt. 790\nSchoenborough, MD 63697-3518'),
('84','84','2459 King Turnpike Suite 349\nPort Meganeberg, NJ 77276-7790'),
('85','85','318 Stanford Parkway Apt. 229\nPort Jonathon, DC 31423'),
('86','86','6497 Eveline Street\nNorth Theotown, NV 24633-4491'),
('87','87','7639 Bauch Junction Suite 170\nDibberttown, DC 06348-8715'),
('88','88','272 Danielle Field Suite 855\nPort Kavonshire, VA 65360-6429'),
('89','89','6263 Feil Valleys\nLake Elmorehaven, AK 06109'),
('90','90','6436 Manuel Mill\nCarlieview, WV 43702-0214'),
('91','91','4006 Hauck Trafficway Apt. 240\nNew Dion, KS 48084-5388'),
('92','92','0193 Swaniawski Street Suite 409\nBradtketown, IA 16619-1490'),
('93','93','0152 Hermiston Shore Apt. 014\nNorth Alta, ND 49442'),
('94','94','1847 Alayna Mission\nEast Sim, OR 46055'),
('95','95','99127 Gulgowski Place\nLake Kieran, WY 28775'),
('96','96','3619 Beer Land Suite 097\nWest Athena, IL 30538-1882'),
('97','97','874 Dickens Underpass\nNew Valentin, NC 62891-1024'),
('98','98','930 Dina Forges\nProhaskastad, WV 02961-8036'),
('99','99','332 Legros Mills Suite 589\nLake Jaylen, TX 76677'),
('100','100','80329 Monica Locks\nLake Rogerville, VA 83300'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

