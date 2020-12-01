-- Generation time: Mon, 30 Nov 2020 19:37:23 +0000
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

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `delivery_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `price` decimal(32,2) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pick_up_point_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `order_fk_1_idx` (`pick_up_point_id`),
  KEY `order_fk_2_idx` (`address_id`),
  CONSTRAINT `order_fk_1` FOREIGN KEY (`pick_up_point_id`) REFERENCES `pick_up_point` (`id`),
  CONSTRAINT `order_fk_2` FOREIGN KEY (`address_id`) REFERENCES `user_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `order` VALUES ('1','70443168',NULL,'1997-09-02 11:15:50','0.00','1988-07-06 21:34:24','Sed qui qui et sunt velit quae dignissimos. T','1','1'),
('2','612409',NULL,'2009-07-03 11:10:17','274603683.24','1983-01-08 03:04:34','Voluptas ipsam provident numquam atque. In ut','2','2'),
('3','963',NULL,'1970-01-22 03:55:39','38239.42','2006-05-22 03:31:56','Suscipit autem eum quisquam quasi. Alias nemo','3','3'),
('4','9708',NULL,'1997-09-15 08:51:48','178.16','2002-09-11 12:49:17','Iure occaecati non quidem ea excepturi maxime','4','4'),
('5','24323',NULL,'1983-12-02 10:42:56','130435649.00','2001-07-18 13:40:24','Et sint quia eligendi. Consequatur et eos nob','5','5'),
('6','272',NULL,'2009-08-06 11:05:29','5.73','2017-09-28 08:31:01','Et error consectetur et quaerat. Vel vel simi','6','6'),
('7','1',NULL,'2017-03-03 04:06:56','4384153.94','1996-09-13 07:05:42','Ipsa consequatur animi tempora ex autem est e','7','7'),
('8','0',NULL,'1983-02-05 08:57:29','198.00','1977-04-28 16:09:14','Sit ratione laudantium veniam suscipit harum.','8','8'),
('9','59028577',NULL,'1996-04-23 09:46:10','0.00','2002-08-08 15:05:12','Neque illo non voluptas nisi qui voluptatem a','9','9'),
('10','0',NULL,'1989-10-16 07:03:30','316859570.52','2012-01-24 00:27:27','Temporibus provident aliquid et est sunt ea a','10','10'),
('11','45',NULL,'2008-11-29 22:57:03','443.49','2014-12-09 11:40:38','Harum iste illum exercitationem. Eos asperior','11','11'),
('12','0',NULL,'1977-05-05 21:22:59','1212.90','1993-04-07 18:37:45','Impedit reiciendis consequatur distinctio vol','12','12'),
('13','2',NULL,'1971-07-03 09:40:06','0.00','2011-03-17 01:27:00','Cupiditate et in amet maiores praesentium ut.','13','13'),
('14','9',NULL,'1980-04-14 15:22:50','2.42','2016-01-07 15:49:09','Sunt perferendis alias quo dolorem facere bea','14','14'),
('15','0',NULL,'1992-08-07 19:16:42','3.59','1976-12-14 11:51:32','Deserunt deserunt et et voluptatem ut aut ab.','15','15'),
('16','0',NULL,'1984-07-05 10:40:53','91.00','2019-03-05 17:59:45','Rerum pariatur accusantium doloribus quisquam','16','16'),
('17','0',NULL,'2013-09-12 09:36:02','436055867.78','2011-02-21 19:19:53','Veritatis aliquid quas voluptate vel officiis','17','17'),
('18','268036497',NULL,'2020-11-02 03:02:47','38473800.63','1992-12-24 03:54:57','Aliquam similique optio ab et voluptatem volu','18','18'),
('19','5283',NULL,'2010-03-15 12:11:18','0.00','1991-07-07 09:05:52','Quidem ipsa consequatur omnis. Saepe et porro','19','19'),
('20','19010',NULL,'1988-12-13 09:20:04','5686.00','2007-07-03 08:36:54','Modi fuga velit asperiores eaque modi veniam ','20','20'),
('21','3448',NULL,'1988-05-04 10:35:32','2362.88','1983-09-24 02:19:43','Cupiditate id porro aut odio voluptates asper','21','21'),
('22','0',NULL,'1979-03-27 21:04:45','130.65','2004-06-15 13:27:16','Aut ullam placeat sint quo repellendus esse h','22','22'),
('23','615708',NULL,'2006-08-25 20:41:17','3.94','2006-01-31 18:36:43','Exercitationem aperiam in cum sed sed. Placea','23','23'),
('24','3808',NULL,'1974-05-27 23:36:27','69601996.00','2009-06-17 23:44:52','Nemo deleniti veritatis natus reiciendis nemo','24','24'),
('25','88',NULL,'2009-03-15 12:24:58','2.55','2004-06-18 23:46:52','Facilis est pariatur quas totam rerum asperio','25','25'),
('26','12',NULL,'1976-09-07 22:55:01','0.00','1981-08-19 02:36:41','Ullam perferendis et cum quos unde inventore.','26','26'),
('27','0',NULL,'2006-09-09 18:56:56','694.23','2014-08-30 07:23:22','Fugit eveniet sunt est et explicabo cum. Nam ','27','27'),
('28','475781136',NULL,'2014-07-19 13:55:02','33775695.00','2013-11-21 14:58:01','Vel nesciunt ea eveniet eos perspiciatis volu','28','28'),
('29','4',NULL,'2016-08-02 08:18:00','19594660.82','2016-07-31 14:39:04','Nemo molestiae repellat quos aut dolorem. Dol','29','29'),
('30','518',NULL,'1995-04-15 01:45:26','102.24','2013-11-16 05:23:29','In nihil rerum rerum. Sint consequatur volupt','30','30'),
('31','0',NULL,'1970-02-27 00:41:06','0.00','2000-07-30 00:09:02','Eum minima voluptates sapiente qui ut blandit','31','31'),
('32','65674934',NULL,'1995-06-04 07:16:14','379520.18','1974-01-13 08:54:25','Vitae qui cum exercitationem voluptatem vero.','32','32'),
('33','23429',NULL,'1979-12-23 04:28:58','4661.43','1979-07-20 07:53:20','Optio repudiandae incidunt ipsum quis. Dolore','33','33'),
('34','74438',NULL,'2001-10-28 17:38:01','45.00','1991-03-10 22:32:01','Reprehenderit ratione non rem omnis maxime. E','34','34'),
('35','9373852',NULL,'2012-04-26 22:00:10','911.10','1979-08-15 17:04:18','Tempore esse quasi velit aut. Sint eum occaec','35','35'),
('36','92',NULL,'2009-05-05 01:19:57','1204.49','1996-05-21 14:47:43','Ipsa quam voluptatum cupiditate laborum cumqu','36','36'),
('37','252',NULL,'1977-03-23 07:04:56','145880692.30','2002-08-24 19:00:08','Velit nobis quis dolore ut. Aperiam voluptate','37','37'),
('38','6',NULL,'1995-08-28 11:59:55','212.87','1991-02-25 07:35:01','Est dolorem in deleniti nulla. Et dolores nis','38','38'),
('39','65921388',NULL,'2000-11-14 22:52:12','0.74','1984-04-04 20:24:43','Voluptates sit voluptas illum consequuntur es','39','39'),
('40','52974',NULL,'2016-06-23 12:32:36','21446.83','1973-08-12 03:19:31','Vel et minus commodi quis voluptates perspici','40','40'),
('41','45737',NULL,'1989-01-31 18:26:57','2051.00','2016-09-04 23:19:32','Maiores quibusdam sunt cupiditate quos. Persp','41','41'),
('42','6943249',NULL,'2003-11-09 16:30:59','541393955.63','2010-10-06 00:42:52','Ullam et at omnis dolor eaque. Placeat conseq','42','42'),
('43','6599184',NULL,'2019-02-20 15:37:34','0.00','1972-07-19 16:23:28','Dignissimos non rerum voluptatem quasi autem ','43','43'),
('44','0',NULL,'1987-10-23 12:04:10','78.00','2002-06-07 21:10:50','Dolores qui doloremque recusandae dolorem ad.','44','44'),
('45','2',NULL,'1985-11-30 09:54:06','5009991.73','1997-06-21 08:42:01','Delectus qui quidem fugiat voluptatem est. Si','45','45'),
('46','6984',NULL,'1997-08-09 20:00:32','0.00','1976-09-26 15:07:28','Similique quos doloribus dolor sequi. Est est','46','46'),
('47','6',NULL,'1977-01-18 18:18:28','206.43','1981-09-18 05:36:26','Necessitatibus voluptatem et delectus enim od','47','47'),
('48','96',NULL,'2000-09-23 02:53:44','541.36','2015-07-17 13:32:52','Eum debitis sapiente eveniet soluta adipisci ','48','48'),
('49','2045840',NULL,'1974-12-29 20:10:18','0.41','2004-08-27 12:43:43','Veniam animi architecto voluptas qui nobis no','49','49'),
('50','0',NULL,'2003-11-23 09:34:09','10131.23','1980-05-27 11:22:14','Provident optio nesciunt quis repellat fuga. ','50','50'),
('51','2753',NULL,'2016-01-29 04:32:18','25741678.36','1997-11-19 21:17:25','Similique enim molestias ut veniam repellat. ','51','51'),
('52','5',NULL,'1978-12-31 03:37:40','33215334.81','2019-05-17 00:49:17','Dolor incidunt magnam voluptatem non. Reprehe','52','52'),
('53','305',NULL,'2017-11-16 12:18:22','298.33','1989-12-15 09:38:07','Voluptas et quia aut distinctio architecto. A','53','53'),
('54','251349',NULL,'2016-12-02 22:38:08','1522974.15','2005-11-18 06:29:45','Doloribus excepturi voluptatem repudiandae se','54','54'),
('55','799',NULL,'2004-06-27 00:11:36','129494861.28','2015-05-24 19:37:38','Aperiam voluptatibus itaque enim eos aliquam ','55','55'),
('56','255509',NULL,'2001-12-22 19:16:31','39297688.42','2015-08-17 16:26:56','Dolorem qui unde necessitatibus optio corrupt','56','56'),
('57','92163519',NULL,'1981-10-29 13:20:28','5030120.50','1999-11-06 23:55:17','Modi mollitia est qui qui cumque et accusamus','57','57'),
('58','45128227',NULL,'1975-08-01 04:43:43','9655236.32','2003-01-11 11:55:29','Eos qui et ut soluta. Dicta voluptatem quos l','58','58'),
('59','66191353',NULL,'2009-04-03 20:09:58','383955.83','1981-12-06 23:00:17','Maxime dignissimos soluta in dignissimos. Pra','59','59'),
('60','385447190',NULL,'1970-02-01 07:12:02','169.49','1976-01-04 18:32:01','Voluptatem sit saepe id non. Doloremque nulla','60','60'),
('61','853163',NULL,'1998-06-19 18:00:05','2157.00','2007-07-05 20:39:24','Illum consequuntur dolorum voluptatem. Exerci','61','61'),
('62','292018',NULL,'2014-12-05 05:32:52','39909988.08','1993-03-01 01:03:54','A consequatur sint tenetur. Accusamus enim et','62','62'),
('63','90',NULL,'1999-02-01 13:32:26','2320.25','1972-06-07 07:26:08','Qui debitis est quia sit illo illo inventore.','63','63'),
('64','0',NULL,'1988-07-31 10:02:38','0.00','1982-08-22 19:25:50','Doloremque eum nesciunt est fuga eos nisi. Hi','64','64'),
('65','57272',NULL,'1991-09-17 20:24:48','0.00','1980-10-25 11:41:35','Veritatis eos fugit ipsum et ratione corporis','65','65'),
('66','67559',NULL,'1983-11-10 13:50:21','30.45','2015-03-31 14:56:39','Debitis fuga quia dicta omnis. At sit sapient','66','66'),
('67','0',NULL,'2002-10-19 04:50:56','357450298.00','1988-05-25 00:03:55','Nulla nemo voluptas nisi velit id mollitia qu','67','67'),
('68','406308182',NULL,'1986-09-29 13:06:13','41740.28','2009-06-21 23:49:27','Velit quo totam animi eos. Hic est voluptas i','68','68'),
('69','24249543',NULL,'1999-02-24 18:36:06','7597.14','1980-07-06 13:01:01','Nobis sit tempora et aspernatur impedit. Dolo','69','69'),
('70','7040801',NULL,'1997-09-22 17:36:59','1263.20','1981-01-02 21:14:04','Ipsum et voluptas soluta iure officiis. Nemo ','70','70'),
('71','0',NULL,'1982-10-19 13:03:43','369641622.96','1977-03-10 08:09:40','Voluptatem veritatis illum voluptas tenetur i','71','71'),
('72','3022206',NULL,'1991-09-15 21:55:31','2546.97','1990-05-17 23:22:23','Aut ducimus aperiam culpa adipisci eos conseq','72','72'),
('73','0',NULL,'2011-06-18 15:42:28','0.51','2016-08-24 20:38:44','Et molestiae delectus iusto et autem officiis','73','73'),
('74','2822848',NULL,'2010-11-04 22:15:37','7600.07','2014-06-10 17:01:21','Quam est sed officia sapiente in sunt dolor q','74','74'),
('75','0',NULL,'1995-03-23 16:41:18','0.00','1997-12-16 21:38:53','Commodi illum voluptates beatae alias quia do','75','75'),
('76','29',NULL,'2009-08-10 23:52:45','2679223.16','2003-02-05 08:44:02','Voluptatem ea deleniti omnis eaque quam nihil','76','76'),
('77','57240755',NULL,'2009-04-26 06:20:18','32937.48','2010-09-04 21:07:01','Corporis aliquam error qui voluptatem. Cum qu','77','77'),
('78','4827969',NULL,'2002-02-18 13:34:43','8.70','2013-05-14 15:58:20','Et repellat placeat ipsum nostrum sed archite','78','78'),
('79','572',NULL,'2018-02-02 23:09:51','27.73','1989-08-11 08:06:30','Similique voluptatem tempora incidunt quis. E','79','79'),
('80','0',NULL,'1991-03-04 22:13:01','37027.27','1975-05-24 11:39:02','Id veritatis veritatis amet sed doloremque au','80','80'),
('81','32',NULL,'1993-08-27 21:10:23','2560.97','1996-03-06 17:38:54','Et officiis et mollitia dolor. Et tempore fug','81','81'),
('82','91907',NULL,'1990-03-17 10:03:56','185191.67','2019-10-04 01:06:25','Corporis numquam beatae totam rerum. Aut ut e','82','82'),
('83','7',NULL,'2014-05-25 07:41:01','1.45','2017-12-07 21:01:58','Voluptate porro voluptates ipsam. Cumque veli','83','83'),
('84','77',NULL,'2004-09-13 11:07:32','2.69','1993-01-10 03:43:27','Eaque non voluptatem ex optio. Tempore sunt d','84','84'),
('85','0',NULL,'1972-12-25 10:51:21','66.75','2018-07-02 01:02:53','Aliquam voluptate aut rerum neque voluptatum ','85','85'),
('86','646150',NULL,'1996-03-14 06:08:14','428.01','1996-05-14 15:35:03','Minima labore laboriosam officia voluptates q','86','86'),
('87','63738838',NULL,'1994-07-27 07:04:52','1304.00','2019-05-01 12:47:52','Ipsa et voluptate eaque autem repellat. Hic o','87','87'),
('88','1555781',NULL,'1986-03-10 01:00:28','231585.88','1975-07-31 07:34:46','Ut qui modi aut. Blanditiis nisi quia dolores','88','88'),
('89','443571764',NULL,'1985-04-30 09:31:22','355.69','1975-12-16 04:21:24','Autem quos ex aut. Sit suscipit inventore est','89','89'),
('90','2055',NULL,'2019-02-25 14:36:06','8571052.56','2003-09-17 05:03:43','Nobis quia quam eum beatae libero dignissimos','90','90'),
('91','612',NULL,'1975-06-30 01:32:01','2.26','1992-08-14 17:46:17','Est accusamus vel illum quis consectetur temp','91','91'),
('92','20925944',NULL,'2009-10-20 15:56:00','22.70','1980-03-02 03:57:12','Explicabo rerum quae aut esse in nisi eum. Es','92','92'),
('93','64415151',NULL,'2015-08-08 10:43:56','0.00','1980-07-23 00:11:15','Ut quam sit laborum aut expedita. Autem exped','93','93'),
('94','7',NULL,'2014-10-12 14:56:00','18320.56','1971-07-30 02:50:51','Voluptatem ex exercitationem hic quas. Quas e','94','94'),
('95','4',NULL,'1981-11-24 08:14:40','1484650.30','1976-02-26 21:24:03','Dolorem qui magnam officia hic in eum. Molest','95','95'),
('96','0',NULL,'2011-05-11 08:52:53','27056667.33','2014-10-27 14:04:41','Soluta ducimus animi occaecati corrupti ea do','96','96'),
('97','5670711',NULL,'2019-09-11 03:26:05','0.00','1971-01-16 08:25:20','Nesciunt possimus perferendis optio incidunt ','97','97'),
('98','86148',NULL,'2018-06-04 21:39:21','119732.03','2001-09-14 09:16:28','Quis eum dolores velit. Voluptas deserunt ea ','98','98'),
('99','7',NULL,'2004-08-18 06:24:54','28.72','2010-10-06 03:27:02','Praesentium ducimus quae quas aut blanditiis ','99','99'),
('100','884',NULL,'1983-05-07 08:20:55','524378468.25','1988-03-07 03:13:21','Adipisci ea distinctio fugiat ut et placeat i','100','100'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

