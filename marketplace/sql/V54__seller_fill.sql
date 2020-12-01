-- Generation time: Mon, 30 Nov 2020 19:12:33 +0000
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

DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `license_key` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `seller` VALUES ('1','','5b79504f3447ece025d5eb23d7deee97','qabernathy','7bddaea2-7489-355f-baf5-a5f080a7a2c8'),
('2','','7404d5f450a027193a0d503b8283053b','eklein','a3cd7b33-6fdd-3a04-87b6-f1367b2c201f'),
('3','','2fc2a8c095400838a307ea2ae1a624e2','cruickshank.tamara','4012f35e-483c-3960-b0b0-fe33084fb5fd'),
('4','','85f73b1939f16df62f58a86233698535','taya.murphy','741d767b-b485-3de2-b590-ace852545a50'),
('5','','2e5e84d4ff0cb2eadcdc62aac6d3e801','mkirlin','694d33a8-7818-3340-999d-704463f47813'),
('6','Prof. Fabian Beahan MD','c0a3cc48910aa16ebd413c911bcdac07','kenya.champlin','dc18ca4b-88ac-37a4-98dc-d4b90271e1c8'),
('7','','4ed4d197f2979393a64f7a0ef65f460e','ehackett','3a9dd5a7-285b-3f40-8c14-64ba581dd4c3'),
('8','','4c9441816380133b883807e93822b593','paucek.nick','783f90af-8db5-3b46-9dab-c4197a0aafdf'),
('9','','ffa77007feea1bf623195be9e53b93fb','magnus.hegmann','0ce3c215-15aa-3503-badb-8a936fbcab8b'),
('10','Vanessa Kemmer','7248ca940f73bd8312af0cccccfcf8f9','mcclure.gracie','81544c71-b5c0-33fb-add3-167bcbd4dc41'),
('11','Dr. Enoch Morissette Sr.','4c22d5281ccb7cf22ef0a25e8314517c','mstokes','7eda40bd-6a60-396c-a2cb-8217352d6521'),
('12','Elenora Moore','9c1b5d55d4cd36ec3aac6872d96ad03d','eloisa.kertzmann','29604217-784b-301a-8b03-40f6a4e7221d'),
('13','Alfonzo Bergstrom DDS','1b08edc6d628f00ef83bfc578df422a5','ashleigh97','2ef6f76d-d2d5-35e4-8a80-3e52f095d134'),
('14','','405642c27687aa4fc8785459192a60f3','schroeder.jevon','bcb330ae-4e69-301c-87f5-ee8d19b7f48c'),
('15','Tristian Kertzmann','9bcc5a2c3ff1f39690b9202216ed8b42','mfisher','d5cca469-641c-3c5c-bd7d-ed5aa3e9bb3d'),
('16','Dr. Gunner VonRueden V','d2af1ac0ef9165bbb3e93ebb8ea8d499','schiller.kaylin','d5cad4f3-0de0-3e70-bd3c-75d405796652'),
('17','Dr. Janessa Purdy DDS','a1dd3bca6310332c4a38d78e7615f7d6','melany.o\'connell','71020784-2958-3770-978c-035d14d8ca29'),
('18','','84de8e47a4add4b0e56f6b135f56840c','kessler.norwood','574e92bc-681c-3047-b11b-7db0c874dfe3'),
('19','','2774666019c09783c5aad0eb5f8ca89c','phuel','18966ea9-baf7-305b-93a7-85b793706522'),
('20','','e49459b83c99585a95c65200ace23c83','shyann.johns','450a1b5f-8541-3d56-ac25-8215f1f13a80'),
('21','Dusty Walter','249c3df11543f3d3bc2895ba8076c3a1','greg.streich','d6859433-9edf-3d54-94b5-3c9587e6adaf'),
('22','','a08089848801a0df3e2ac27b5a0a7f69','portiz','56a0097e-f1d7-31c9-9c4e-c88c8b22d167'),
('23','Noah Dickens Sr.','99ccad08deb06a5dffdc7f391f73062b','stiedemann.lera','f59eaa46-05c7-36be-9f86-8b1f7b148ca4'),
('24','','2c41bbc7184c508d2e9c7d99ee6f42f9','stone.purdy','1a589dc9-9220-3d4f-adba-c1684368990a'),
('25','Dr. Amanda Kreiger','18489e7cacf6370d231047338f70c7ce','osinski.linwood','f2362f55-708a-3091-a3c8-4ba8cd209fd8'),
('26','','b601232a28054a7318dc981e8eecb490','goldner.juvenal','f355a514-b847-3de3-ac98-fbd69ceca05d'),
('27','','02d31069b2ab91818a17c3acd3fcfd1a','daphne.tillman','7306b339-1e10-3431-a345-1146b968c552'),
('28','Irving Wilkinson','98b1929ad1a2cf6f6941d65e7859b198','bernie54','b4b49795-fb68-349b-b847-d533b9331f59'),
('29','','d63c2952d300e40ee64ca4223340f8e0','reilly.waylon','80698aa4-f690-3b85-a2c7-9626a614f02c'),
('30','Deron Windler','eae3c6af3e0c9b24a80b7ff7d49b5513','dena.hettinger','bcb9e5ab-4d53-3a89-88fa-64e4ae977bd4'),
('31','','0793bc924788a0cced14244b2da890d9','hallie.stiedemann','c2bae6ce-2c96-3a3f-b8d0-39b4b669c050'),
('32','Travis Senger II','cc81a4afd6cc03b1761714f34aa168c7','muller.edmond','e4543074-9026-3091-88e1-de21ad90e2d3'),
('33','Prof. Mariane Olson','d86a4048aeb4f46525d36bf40826f1ab','schiller.candida','9a0b474c-c6d6-35f3-bb72-31a608b6d860'),
('34','Jamar Towne','e15ab59bf2d90a9dfca1eb798ce349a7','stokes.alanna','c9693d9e-8c31-320a-b050-06ee926f2f7f'),
('35','','64deb8b6d4089fe67a58750fc7514401','consuelo.hauck','242f2d0e-db2f-3f19-b63e-35aa08fc262d'),
('36','Prof. Amiya Sporer','c39fcc2bec25c449a8d9df7adae9705c','wilfrid48','02471648-d3f3-32e8-92fc-b48953aa43fd'),
('37','Cornelius White','48e26390477d0fa86acdb988cc888a87','ari.brakus','16d71269-cc77-3579-8064-f150a91050d6'),
('38','Mrs. Felipa Sanford III','548054b57d703e3848910945ddda874b','sallie.ebert','315e4c5b-8b08-3098-8acc-1190948d75ae'),
('39','','7e2d582249bc9d53f7b4f0b47678bc6e','cristopher41','349de580-6382-33fe-a086-c2f431aaf4da'),
('40','','a8d4bddde87e9de81f04e56b55e0a268','kamille.leffler','697ddae7-849a-35d9-b2ac-935fe04038b2'),
('41','','56c466cf4fd5903ca0c337c23ab1715c','tess91','ddd2a8a6-38be-31ba-8bcb-ca87e40c7c68'),
('42','Ms. Vivien Hermiston','fa623998f30c90cfc56afbf7660ea24d','wellington45','a448ab30-9ba8-35a3-b03d-0aeb16535f92'),
('43','Zechariah Balistreri','ae5e39d3ef3dec657b8421326e5d22f2','oceane06','c3fd06d9-bb68-324b-88aa-d8fd499a0973'),
('44','Florida Gottlieb Sr.','feb5e2cab8f4e5c0e6ebf9887f20ffee','dashawn.robel','4f0d791c-91c9-3987-b83a-bf450cf567aa'),
('45','','46b3f24f382d754093ac39fd321420ce','wiza.jessica','4a5f13a4-61f3-3bde-9c75-08435871746f'),
('46','','f120899c70190e11e38d096eefe2428d','aglae.thiel','a65c27b4-08aa-36f9-adef-52c82698449d'),
('47','Laurel Feeney','25f7c71bc425665d1a144bce2a3d9347','mo\'reilly','d6275473-358d-3521-bce1-276539e50f04'),
('48','','7ec35fed92b49705ae3ef8b116201b00','monserrate.kessler','8c8ed45c-61fc-3e02-b5c0-05fb741f3419'),
('49','','8a2d1ddb0ad4c13507ee8c90fae5d00d','jadon.bode','4d76ee83-d809-3196-bd11-eec9d88bda50'),
('50','','ffc5723e24332344c3e7205bc9c12ea4','darrick.wisozk','24361993-8be9-39d6-a9c5-edd4d2ef5ada'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

