-- Generation time: Mon, 30 Nov 2020 19:25:25 +0000
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

DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `rating` decimal(3,2) DEFAULT 5.00,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `seller_id` int(11) NOT NULL,
  `producer_id` int(11) NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cashback` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `good_fk_2_idx1` (`seller_id`),
  KEY `good_fk_1` (`category_id`),
  KEY `good_fk_3_idx` (`producer_id`),
  CONSTRAINT `good_fk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `good_fk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`),
  CONSTRAINT `good_fk_3` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `good` VALUES ('1','1','4094592185.33','0.45','et','1','1','Corrupti similique at a tenetur sed. Commodi sequi dolore eaque quam sequi rerum sit. Dolor quia optio ut eum velit. Sint non autem cupiditate molestiae. Ut quia consectetur perspiciatis tempora vel.','0'),
('2','2','7723778508.00','3.64','omnis','2','2','Aut unde sed quia facilis eligendi voluptatem et. Deleniti qui fugit quod omnis. Rem in velit hic laborum non corporis quidem.','0'),
('3','3','1013395502.60','3.91','velit','3','3','Ullam in sint quasi voluptatum. Et ex ipsam placeat voluptatem repellendus ea aut ut.','0'),
('4','4','9003401001.48','3.87','occaecati','4','4','Debitis eius similique eius exercitationem autem cumque et aut. Omnis quae eum nihil facilis consequatur. Quam voluptatem eum eos mollitia harum aspernatur.','0'),
('5','5','8599079771.00','1.36','repellendus','5','5','Cumque numquam vero quos doloremque veniam fugiat. Repellat ratione magni reprehenderit voluptas repellendus. Non enim praesentium iusto illum at. Exercitationem voluptatem sunt quam beatae impedit tempora sunt.','23'),
('6','6','6534530494.89','4.91','quis','6','6','Quam laborum est reiciendis veritatis quaerat voluptas quibusdam. Est maxime voluptatem nisi quidem. Dolor natus sed incidunt voluptatem beatae aut.','97'),
('7','7','9399938139.80','2.31','ea','7','7','Pariatur deleniti voluptates minima voluptas et incidunt. Accusantium voluptate repellat vero quas. Sed libero eum et rem nesciunt. Nulla voluptatem laborum et velit iusto tenetur.','0'),
('8','8','4158174955.88','4.70','rerum','8','8','Debitis veritatis facere et sit eius error sit. Dolores qui quis ea nisi sequi maiores. Suscipit et porro id.','26'),
('9','9','4330741164.00','2.59','fuga','9','9','Asperiores dignissimos eum doloremque nihil reiciendis delectus. Sint rerum delectus iure aliquid nobis eum. Optio voluptate ad quia quaerat laudantium eos id.','24'),
('10','10','4296359891.71','2.00','dolor','10','10','Id voluptatibus fuga ipsam. Molestiae rerum reiciendis sapiente et. Sint sit molestiae odio.','0'),
('11','11','8335009844.30','0.72','consequuntur','11','11','Eum et quibusdam maxime ratione quisquam. Quaerat corrupti aliquid mollitia earum pariatur. Voluptatem consequatur magnam est sint vitae reprehenderit. Et adipisci blanditiis consectetur in consequatur.','0'),
('12','12','3834600151.99','3.96','omnis','12','12','Expedita quia fugiat aliquam eligendi est voluptatem. Blanditiis doloremque quasi repellendus non voluptatem. Fugit et corporis velit et. Aspernatur provident nihil dolorem ratione sequi aperiam expedita.','0'),
('13','13','5086532446.55','1.47','corporis','13','13','Deserunt placeat nihil sit rerum error vel. Eveniet optio sapiente dicta eos. Pariatur est ut quibusdam eaque totam sapiente. Quam aperiam asperiores quia doloremque laboriosam quis vitae.','0'),
('14','14','6289972707.00','0.57','vel','14','14','Repudiandae sapiente voluptatum aliquid aut delectus est repellendus dolores. Debitis cum doloribus tempora aut molestiae. Voluptatum voluptatem accusantium repellendus. Commodi ea autem et rerum commodi placeat dignissimos.','0'),
('15','15','7107176839.18','1.69','dolorem','15','15','Officiis aut aliquam corporis labore nisi quidem. Voluptatum eius beatae sit voluptas perspiciatis autem dolorum. At iure et temporibus error quidem. Quia consequuntur qui numquam perspiciatis modi rerum. Velit molestias qui numquam placeat ab asperiores non.','42'),
('16','16','3763981109.00','1.50','eaque','16','16','Harum iure ea neque voluptatem. Ratione rem voluptatum culpa reprehenderit omnis. Nostrum eos ea doloribus cum molestiae. Aperiam at fugit dicta totam et nesciunt aliquam.','83'),
('17','17','613314002.05','1.77','pariatur','17','17','Numquam tempora est expedita numquam. Adipisci unde molestias id dolores quis ipsam. Est aut autem doloribus occaecati expedita maxime iusto facere. Quia nobis ab maxime quibusdam facilis.','24'),
('18','18','7604998921.03','3.64','vero','18','18','Voluptatem dolores magnam saepe atque eligendi. Quaerat quas animi voluptas ipsa nisi nulla deleniti. Mollitia consequuntur voluptates laudantium.','0'),
('19','19','9859532195.95','2.40','quidem','19','19','Eos placeat ea eius sit sint veniam. Non quaerat id officia quam facere iusto dolorem. Eligendi autem blanditiis laudantium modi quam quibusdam tenetur nesciunt.','0'),
('20','20','8108187302.19','3.68','eum','20','20','Error dolore eligendi laudantium. Provident amet laboriosam quasi. Officia fugit doloremque nesciunt nisi et voluptate ut. Accusamus enim magnam earum repudiandae aliquam magni laudantium. Odit quod et quidem quo.','0'),
('21','21','1431235606.37','4.61','tenetur','21','21','Beatae et autem et et placeat. Accusantium voluptas alias ut. Ratione soluta facilis est maiores.','52'),
('22','22','6395196819.22','2.70','quae','22','22','Eos aut maiores sed. Et omnis dolorum deserunt consequuntur. Et non minus nihil voluptas.','0'),
('23','23','3434468476.43','3.00','soluta','23','23','Incidunt nihil rem quia maxime. Nulla cum deleniti quidem porro quae at eaque. Ad id assumenda praesentium. Molestiae alias facilis dolor assumenda fugiat aut.','37'),
('24','24','7317841102.25','2.28','omnis','24','24','Provident voluptatibus inventore a. Explicabo nesciunt non facilis aperiam itaque sunt accusantium. Deleniti aperiam voluptatem non distinctio molestiae.','64'),
('25','25','3475462814.20','2.98','quam','25','25','Non in consequatur doloremque distinctio praesentium quo. Voluptatem dignissimos accusamus molestiae dignissimos distinctio saepe.','0'),
('26','1','3729362717.33','1.40','dolores','26','26','Eaque qui velit totam totam doloribus nostrum et aut. Voluptas debitis ut non. Veritatis et sint aut consectetur rerum hic sit.','0'),
('27','2','1344451592.80','1.53','veritatis','27','27','Nihil asperiores aut quibusdam suscipit odio quo sed. Alias provident consequuntur perspiciatis iste ducimus aut. Pariatur magni voluptatem nemo qui sit et et quas. Vel asperiores et aut error fugiat accusamus recusandae dolore.','0'),
('28','3','572181525.85','1.70','et','28','28','Perspiciatis vero deserunt numquam. Distinctio vero maiores quae dolores alias. Beatae animi ex omnis eos praesentium.','56'),
('29','4','4252584620.07','0.18','quia','29','29','Aut qui amet numquam mollitia nihil. Sed recusandae vel praesentium fugiat porro cum. Facere veniam omnis voluptate id possimus quaerat soluta. Voluptatibus et quos vero quia nemo esse eos.','86'),
('30','5','4632544998.84','3.00','nemo','30','30','Voluptatem error et nulla voluptatum repellat fugiat. Et facere tempore tempora necessitatibus dolorem corrupti. Vel a voluptas fugiat eos. Et harum et odio placeat earum.','98'),
('31','6','8991085229.00','3.42','veritatis','31','31','Non deleniti magni sapiente autem. Et reiciendis necessitatibus magnam tenetur sunt quis ad. Porro hic molestiae pariatur debitis distinctio inventore animi.','10'),
('32','7','2084928351.29','3.20','iste','32','32','Provident mollitia eaque autem. Qui enim adipisci incidunt rerum deleniti dolorem. Qui qui eveniet ipsum nam voluptates modi tenetur.','0'),
('33','8','9048579725.02','1.32','voluptatem','33','33','Consequuntur rerum qui aliquam eos. Qui quo voluptates accusantium nemo cupiditate repellendus laboriosam. Qui quae et qui eius non nihil.','66'),
('34','9','1843772931.70','0.38','vitae','34','34','Accusantium aut sit natus ipsum ut. Cupiditate aliquid sequi similique reiciendis. Necessitatibus similique eos maxime fugiat ipsa ab labore.','43'),
('35','10','6979413696.32','4.00','ea','35','35','Molestiae sed rem non voluptatem. Maiores ut exercitationem sint reprehenderit repellendus. Perferendis quia odit odit molestias aliquam deleniti quia aut.','45'),
('36','11','1526875091.34','4.10','culpa','36','36','Id numquam tempora beatae ducimus. Repellendus laudantium est quos est sint voluptas. Animi voluptatem aut quaerat. Molestias commodi numquam deserunt et voluptate. Quidem iusto est voluptatem doloremque delectus officia autem.','0'),
('37','12','3273964064.46','3.34','et','37','37','Magni optio quae corporis facere assumenda perspiciatis excepturi. Magni dolores aut aut eveniet. Ducimus qui sint consectetur reiciendis.','0'),
('38','13','9648888063.42','1.40','vero','38','38','Error velit quis rerum blanditiis natus. Ab corrupti amet voluptatum asperiores occaecati earum. Sit commodi nam unde sapiente enim.','0'),
('39','14','5229090700.91','4.16','ea','39','39','Rerum odio est vero rerum aut. Deserunt aut voluptas accusantium tenetur perspiciatis similique. Tenetur quibusdam quae ut necessitatibus facilis consequuntur nostrum tempore.','58'),
('40','15','2510688059.02','4.80','et','40','40','Aspernatur aut quia nesciunt explicabo vitae nulla neque ipsa. Sapiente iusto fuga quia. Dolor dolorum commodi et sequi. Distinctio quisquam repudiandae ut explicabo quos doloremque itaque laboriosam.','0'),
('41','16','1183891487.74','3.20','cumque','41','41','Laudantium earum provident sint libero distinctio consequatur minima et. Sequi placeat error dolore adipisci. Quia laborum sit ut modi ut eveniet esse aliquid. Autem fugit consequatur numquam voluptatem. Expedita qui alias molestias quis esse et.','0'),
('42','17','1701561888.37','1.20','suscipit','42','42','Expedita numquam omnis et et. Rerum eos ab vero saepe blanditiis earum. Quae blanditiis sit nihil illo nam vel molestiae.','97'),
('43','18','3029247826.14','0.21','recusandae','43','43','Esse eum et ea repellendus ut. Qui ipsum dicta corporis iusto qui. Deserunt omnis placeat non qui.','53'),
('44','19','7023344568.68','1.90','voluptates','44','44','Quisquam suscipit sunt tenetur non nesciunt. Temporibus expedita ex alias aut voluptatem nihil qui. Ipsam fugiat a sint molestias ratione. Et voluptatem quas alias quaerat dolor possimus totam. Est cupiditate molestiae a rem nostrum qui.','20'),
('45','20','4263047121.20','3.30','tenetur','45','45','Porro maxime vero numquam et reprehenderit quo omnis. Omnis tempora dolor adipisci iste ipsam. Sed nihil consectetur rem non.','0'),
('46','21','6193578869.50','3.07','facilis','46','46','Nihil accusantium et et temporibus. Distinctio recusandae quia qui et ab autem. Earum optio rerum tempora deserunt molestiae sit.','88'),
('47','22','8878061723.42','1.42','distinctio','47','47','Magni dolores id voluptate fuga illo quo voluptates. Voluptas ut architecto praesentium repellendus commodi eligendi. Doloremque laboriosam praesentium consequatur nostrum in explicabo vero.','52'),
('48','23','8673176186.54','4.44','magnam','48','48','Nulla ipsa quia non earum et. In sint qui labore maxime ipsum tempore voluptas quasi. Velit sequi ad consequatur velit alias repudiandae adipisci.','96'),
('49','24','7427283807.58','3.44','quasi','49','49','Omnis perferendis optio neque quod omnis eveniet. Sed perferendis eaque necessitatibus voluptatum iste. Aperiam eveniet veniam et non sed placeat. Beatae blanditiis qui quisquam tempore laborum placeat ipsa.','12'),
('50','25','596570912.97','4.44','amet','50','50','Et et ex illum. Ut pariatur amet non iure sequi officiis blanditiis. Odio quam perspiciatis nam. Dolores omnis voluptas corrupti libero.','0'),
('51','1','3986099433.68','2.24','voluptatem','1','51','Labore eveniet unde dolore vel hic. Aut ipsam quo totam officiis. Inventore cumque odio rerum harum ad. Officiis est repudiandae impedit laudantium minus provident.','0'),
('52','2','8114097684.80','3.00','autem','2','52','Corporis ipsum quam est ipsum sed quae omnis. Suscipit aut sit libero consequatur ad. Aut aperiam reiciendis rerum ut cupiditate iusto quis. Est aspernatur rerum quia sed eligendi est debitis excepturi.','28'),
('53','3','1571752518.00','3.92','hic','3','53','Reprehenderit sint provident magni quisquam vel labore consequatur optio. Culpa placeat itaque earum facere qui. Reprehenderit amet inventore ullam ullam. Qui ab harum nesciunt est et.','0'),
('54','4','5476956350.87','4.01','excepturi','4','54','Ex ea possimus velit sequi et. Pariatur placeat facere reprehenderit non earum in. Est vel enim et.','0'),
('55','5','6273574328.48','4.00','explicabo','5','55','Ab laboriosam minima incidunt distinctio. Numquam harum sed ipsam totam iure molestiae quidem. Voluptatum voluptatem sed nobis pariatur. Tempora sint nesciunt in nihil ipsa.','0'),
('56','6','6084765146.85','4.54','sed','6','56','Amet eos et voluptatem quis. Hic ullam odit sit et illo assumenda animi dolores. Sit eos ad alias reiciendis. Dignissimos consectetur eos corrupti hic minus aliquid.','0'),
('57','7','5308115987.19','2.00','qui','7','57','Ad earum dolorem hic rerum qui. Praesentium voluptas minima a ullam. Cumque vitae dolorem est commodi quos ea ea. Qui doloribus adipisci autem nihil placeat enim cupiditate.','16'),
('58','8','5886127061.50','0.00','sed','8','58','Doloribus ipsum nihil distinctio quos. Voluptas ab aliquid inventore. Id unde in et saepe. Voluptatibus explicabo impedit rem quod optio reiciendis debitis eveniet.','76'),
('59','9','2232601163.79','3.08','ut','9','59','Eos aut sit nostrum debitis sunt et possimus aspernatur. Provident minus iusto est earum sint. In quod sunt repellat excepturi eum alias velit.','0'),
('60','10','3593806388.24','1.00','et','10','60','Tempora molestiae consectetur corrupti iusto. Nam vel ut sequi impedit. Consequuntur consectetur consequatur et earum.','61'),
('61','11','45558298.02','0.32','voluptates','11','61','Minus voluptatem ut aut veritatis dolorum adipisci quia. Et ducimus dolor earum laudantium voluptas explicabo dolorem. Tempora itaque officiis placeat occaecati ut. Nam porro reiciendis et libero deserunt minus ut.','94'),
('62','12','9404766218.45','1.91','suscipit','12','62','Sit nobis eaque soluta laboriosam. Dolor nihil et et illo. Maiores est incidunt consequuntur aut adipisci perspiciatis sequi.','0'),
('63','13','9133263247.63','4.93','perspiciatis','13','63','Illo ab enim repellendus sunt. Pariatur eum reiciendis ratione voluptatem officia veritatis minima. Ad voluptatem est omnis totam vero odit. Fugiat asperiores voluptate dignissimos nobis id voluptatem.','0'),
('64','14','2619773481.10','1.99','cupiditate','14','64','Ea est numquam quasi. Velit necessitatibus autem neque dolores dolorem non repellat.','0'),
('65','15','390169453.02','2.87','explicabo','15','65','Atque dolor perspiciatis natus asperiores. Labore quaerat quis laboriosam sit beatae doloremque. Molestias odio explicabo est recusandae et cupiditate doloribus veritatis. Consequatur sed pariatur dolor deleniti et natus.','0'),
('66','16','8971416674.11','0.31','quisquam','16','66','Exercitationem officiis neque consectetur necessitatibus qui amet soluta. Quia quia unde illum. Aliquam ipsum totam aut unde.','31'),
('67','17','4825110241.67','0.34','unde','17','67','Fugiat est quia facere error ad dicta qui. Aut neque dignissimos veniam non aut quis. Libero aut est eligendi.','46'),
('68','18','5935885545.17','0.25','deserunt','18','68','Est distinctio hic provident. Nesciunt qui est non cum ipsam. Aut dolorem voluptas ut commodi ut nesciunt vitae esse.','0'),
('69','19','2279595589.17','3.87','voluptates','19','69','Veniam voluptas quia sed reiciendis asperiores. Aut voluptatem expedita id ex nihil. Eos vel vero ducimus voluptatem et. Dolorum ut et aspernatur illo aspernatur non ut.','42'),
('70','20','5717889077.30','4.86','quia','20','70','Praesentium porro minus corporis reiciendis est a sit. Modi sit dignissimos sed neque.','60'),
('71','21','9543215776.00','1.60','aspernatur','21','71','Voluptatem magni dolorum omnis consequuntur natus sit voluptas dolor. Cumque dolorum aut et velit sapiente optio. Id ut et ea aut. Maxime natus rerum fugiat rem aperiam qui.','0'),
('72','22','5899892130.23','0.27','sint','22','72','Quam ut ut eum praesentium laboriosam corporis. Odio quae fugiat ut laudantium quia. Inventore nesciunt consequuntur dolores architecto aliquam non omnis. Voluptatem quis et adipisci.','0'),
('73','23','3907463882.62','2.51','iure','23','73','Quia neque a vero velit incidunt dolorem nisi. Quod voluptas quo in quo maiores. Consequatur ratione aut nesciunt quam enim eos voluptatum asperiores. Odit aperiam possimus blanditiis ex nisi.','32'),
('74','24','1055055936.25','4.44','reiciendis','24','74','Eos alias culpa id explicabo quae et minima. Porro aliquid ullam rerum suscipit quas sequi. Et voluptas ratione hic magnam consequuntur. Doloribus aut consequatur eaque laboriosam nihil quia unde. Provident eum sed rerum eius quo rem sit.','33'),
('75','25','2691783664.00','1.47','in','25','75','In voluptas tenetur eius odit accusamus modi tenetur. Voluptates quidem unde ad est vero molestiae delectus rerum. Corporis velit dolor deleniti debitis esse sequi.','0'),
('76','1','8249131132.14','3.00','quidem','26','76','Rerum placeat occaecati asperiores veniam quam aspernatur. Reiciendis quas cum unde. Ratione nemo amet cum libero excepturi pariatur nobis. Non aut occaecati molestias aut accusamus corporis ipsam. Reiciendis pariatur consequatur inventore.','59'),
('77','2','3986928278.18','3.16','ullam','27','77','Consequatur magni esse optio qui consequuntur facere. Sed nam modi nobis autem aut. Et nihil atque porro non. Dolor sint vitae autem unde.','0'),
('78','3','6602702865.00','1.03','doloremque','28','78','Reprehenderit iste odit cupiditate ad. Sed eos facere laboriosam nisi esse eos. Voluptates voluptatibus a tempora quae nulla. Quas provident autem inventore facere.','0'),
('79','4','6796246080.35','2.81','consequatur','29','79','Ipsam cupiditate totam voluptates consequuntur inventore dicta. Enim tenetur necessitatibus et ab mollitia sed quam iste. Est error ut rerum hic et. Laboriosam ut natus voluptatem dolores.','66'),
('80','5','6540160866.10','0.90','sed','30','80','Dolorem dolorem sit sit inventore odit voluptatem molestiae. Quae quos ducimus magni et fugit suscipit. Aut rem quidem doloremque cum. Nulla et itaque est laboriosam amet adipisci.','74'),
('81','6','5112560225.66','0.50','iure','31','81','Et minus sed quia. Ut et molestiae tempora et officia. Sed ad expedita est quae labore qui.','0'),
('82','7','6797734012.52','4.42','amet','32','82','Rerum in accusantium consectetur provident maiores. Nobis aut quia tempore eos dolor.','0'),
('83','8','7958483778.06','1.59','perspiciatis','33','83','Adipisci qui eum architecto et est. Distinctio ducimus et harum error molestias. Ipsa nobis illum odit sapiente iusto tenetur. Itaque quia excepturi rem maiores rerum.','0'),
('84','9','348671176.60','4.57','non','34','84','Quaerat non accusantium voluptatem vel. Repellendus maiores recusandae nihil minus nesciunt eaque non eum. Eos est aut saepe omnis quasi facere. Sit eos accusantium quia. Aliquam quisquam est dolorem fugit id.','0'),
('85','10','9544433284.30','3.95','quis','35','85','Maxime doloribus qui nesciunt consequatur. Ea eaque minus et esse consequatur. Error nobis laboriosam quas consequuntur eaque velit.','0'),
('86','11','8550925793.46','4.04','ipsam','36','86','Reprehenderit eum hic error aperiam. Quibusdam deserunt fuga id nam esse eveniet nihil. Deleniti dolorem ut rerum.','43'),
('87','12','9261383487.50','3.40','ad','37','87','Cumque non qui porro porro expedita. Qui quis facilis explicabo sint inventore. In eveniet ut facere id enim quos sed. Accusantium placeat occaecati vero molestias dignissimos molestiae earum a.','0'),
('88','13','3954190655.20','2.78','ut','38','88','Deleniti dolore dolorem consequuntur est quisquam. Aspernatur ut voluptatem placeat et numquam quia delectus. Eos sint unde omnis tenetur aut.','30'),
('89','14','2566503678.46','2.03','voluptatem','39','89','Temporibus ea qui dolore necessitatibus quasi et aliquid. Velit dolores eaque at quia totam. Perferendis voluptatem repellendus sint iste excepturi nobis. Quod dolor vitae ut assumenda illum voluptas. Culpa magnam repellat voluptatem inventore consequatur.','0'),
('90','15','4470211618.40','1.94','et','40','90','Quidem non facere quia occaecati. Sed porro ipsa cum ad. Corrupti accusantium enim qui ut reprehenderit.','0'),
('91','16','1625387361.87','2.38','incidunt','41','91','Ut est et mollitia culpa sed aut sit. Doloribus labore eos magni nobis dolor. Et fugit ut unde nihil libero facilis.','77'),
('92','17','4485511041.02','4.41','vel','42','92','Vitae laudantium ut adipisci dolore facere. Mollitia quidem omnis et omnis perferendis ducimus perferendis. Incidunt est tempora non aut sed.','13'),
('93','18','6262241674.10','2.00','quia','43','93','Quo inventore ad unde et. Fugit beatae quibusdam similique laborum. Dolores error aut aut consectetur tenetur. Accusantium sapiente molestiae odit est est quas.','0'),
('94','19','5477423083.20','4.90','illo','44','94','Laboriosam quo ut omnis iusto ducimus quis consequatur magni. Quos perferendis et mollitia voluptatem quae et ipsam id. Numquam aut voluptatibus qui similique laudantium.','39'),
('95','20','9131634653.16','2.15','id','45','95','Debitis voluptas ex inventore magni. Soluta fugiat nisi fuga. Nulla sed reprehenderit placeat ducimus vero. Sit et eaque enim ipsum a iusto.','26'),
('96','21','441711293.69','2.87','asperiores','46','96','Sit unde et minima at eligendi officia. Beatae sed ut commodi tenetur sunt in vitae. Maiores enim blanditiis aliquid illo suscipit dicta maxime. Qui molestias cum consequatur sequi fuga harum quia.','25'),
('97','22','247395727.90','0.81','mollitia','47','97','Inventore impedit pariatur aliquam quia quasi aliquid pariatur. Debitis rem eius nulla sapiente quas ipsam quo. Sunt nostrum voluptatem tempora inventore officiis et.','35'),
('98','23','7184434135.30','2.55','omnis','48','98','Adipisci officiis earum nemo perferendis molestiae adipisci facilis. Eius facilis dolores qui qui. Est possimus at explicabo dolores asperiores earum. Non ut consequatur rerum a adipisci.','0'),
('99','24','7104869203.45','3.52','fuga','49','99','Consequatur aliquam veritatis dolorem qui. Nulla officia et est consequatur. Tenetur quam quisquam iste et. Odit nisi ipsum accusantium consequatur nulla ab.','59'),
('100','25','8652619196.50','4.75','maxime','50','100','Est deleniti consectetur aperiam velit minus ea ut. Id quaerat corporis aut et officiis doloribus.','63'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

