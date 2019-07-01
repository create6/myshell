-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: aphorism
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add area',7,'add_area'),(20,'Can change area',7,'change_area'),(21,'Can delete area',7,'delete_area'),(22,'Can add aphorism',7,'add_aphorism'),(23,'Can change aphorism',7,'change_aphorism'),(24,'Can delete aphorism',7,'delete_aphorism');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'aphorism_001','aphorism'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-25 03:15:26.960280'),(2,'auth','0001_initial','2019-06-25 03:15:27.568396'),(3,'admin','0001_initial','2019-06-25 03:15:27.677982'),(4,'admin','0002_logentry_remove_auto_add','2019-06-25 03:15:27.715366'),(5,'aphorism_001','0001_initial','2019-06-25 03:15:27.743204'),(6,'contenttypes','0002_remove_content_type_name','2019-06-25 03:15:27.845347'),(7,'auth','0002_alter_permission_name_max_length','2019-06-25 03:15:27.898435'),(8,'auth','0003_alter_user_email_max_length','2019-06-25 03:15:27.980081'),(9,'auth','0004_alter_user_username_opts','2019-06-25 03:15:27.998178'),(10,'auth','0005_alter_user_last_login_null','2019-06-25 03:15:28.052253'),(11,'auth','0006_require_contenttypes_0002','2019-06-25 03:15:28.058980'),(12,'auth','0007_alter_validators_add_error_messages','2019-06-25 03:15:28.093237'),(13,'auth','0008_alter_user_username_max_length','2019-06-25 03:15:28.203454'),(14,'sessions','0001_initial','2019-06-25 03:15:28.255617'),(15,'aphorism_001','0002_auto_20190625_0321','2019-06-25 03:21:37.271998'),(16,'aphorism_001','0003_auto_20190625_1134','2019-06-25 11:34:24.219237');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_aphorism`
--

DROP TABLE IF EXISTS `tb_aphorism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_aphorism` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_aphorism`
--

LOCK TABLES `tb_aphorism` WRITE;
/*!40000 ALTER TABLE `tb_aphorism` DISABLE KEYS */;
INSERT INTO `tb_aphorism` VALUES (1,'无风不起浪 (There is no smoke without fire）'),(2,'预防为主，治疗为辅(An ounce of prevention is worth a pound of cure)'),(3,'不要把鸡蛋都放在一个篮子(Don\'t put all your eggs in one basket)'),(4,'种瓜得瓜,种豆得豆（As you sow,so shoul you reap）'),(5,'欲速则不达（Great haste makes great waste）'),(6,'三思而后行( Look before you leap。Think first, Program later)'),(7,'当你仅有的一把工具是锤子，所有的东西看起来都像是钉子（When the only tool you have is a hammer, everything looks like a nail）'),(8,'沉默就是赞同 （Silence is construed as approval）'),(9,'成功就是当洋溢的生命力突然冲决堤坝而汇入一条合适的渠道。——何怀宏'),(10,'如果你浪费了自己的年龄，那是挺可悲的。因为你的青春只能持续一点儿时间——很短的一点儿时间。——王尔德'),(11,'在重视劳动和尊重劳动者的基础上，我们有可能来创造自己的新的道德。劳动和科学是世界上最伟大的两种力量。——高尔基'),(12,'使意志获得自由的唯一途径，就是让意志摆脱任性。——黑尔'),(13,'业余生活要有意义，不要越轨。——华盛顿'),(14,'时间乃是最大的革新家。——培根'),(15,'让我们享受人生的滋味吧，如果我们感受得越多，我们就会生活得越长久。——法朗士'),(16,'意志坚强的人能把世界放在手中像泥块一样任意揉捏。——歌德'),(17,'节制使快乐增加并使享受加强。——德谟克利特'),(18,'较高级复杂的劳动，是这样一种劳动力的表现，这种劳动力比较普通的劳动力需要较高的教育费用，它的生产需要花费较多的劳动时间。因此，具有较高的价值。——马克思'),(19,'不要垂头丧气，即使失去一切，明天仍在你的手里。——王尔德'),(20,'没有感恩就没有真正的美德。——卢梭'),(21,'生活的苦难压不垮我。我心中的欢乐不是我自己的，我把欢乐注进音乐，为的是让全世界感到欢乐。——莫扎特'),(22,'奢侈是舒适的，否则就不是奢侈。——CocoChanel'),(23,'青年时代太放纵就会失去心灵的滋润，太节制就会变成死脑筋。——圣堤布福'),(24,'青春时光转眼即逝。——贺拉斯'),(25,'无论是美女的歌声，还是鬣狗的狂吠，无论是鳄鱼的眼泪，还是恶狼的嚎叫，都不会使我动摇。——恰普曼'),(26,'关于成长的名人名言'),(27,'真正的科学家应当是个幻想家；谁不是幻想家，谁就只能把自己称为实践家。——巴尔扎克'),(28,'有百折不挠的信念的所支持的人的意志，比那些似乎是无敌的物质力量有更强大的威力。——爱因斯坦'),(29,'成功大易，而获实丰于斯所期，浅人喜焉，而深识者方以为吊。——梁启超'),(30,'把时间用在思考上是最能节省时间的事情。——卡曾斯'),(31,'世上最可贵的是时间，世上最奢靡的是挥霍时光。——莫扎特'),(32,'从不浪费时间的人，没有工夫抱怨时间不够。——杰弗逊'),(33,'任何事物都无法抗拒吞食一切的时间。——泰戈尔'),(34,'如果你想获得幸福和安宁，那就要越过层层的障壁，敲起真理的钟前进。——卡拉维洛夫'),(35,'创造者才是真正的享受者。——富尔克'),(36,'友谊是一棵可以庇荫的树。——柯尔律治'),(37,'自信和希望是青年的特权。——大仲马'),(38,'沉沉的黑夜都是白天的前奏。——郭小川'),(39,'既然我已经踏上这条道路，那么，任何东西都不应妨碍我沿着这条路走下去。——康德'),(40,'青春像只唱着歌的鸟儿，已从残冬窗里闯出来，驶放宝蓝的穹窿里去了。——闻一多'),(41,'当你希望成功，当以恒心为良友。——爱迪生'),(42,'不达成功誓不休。——陈潭秋'),(43,'科学总是革命的'),(44,'科学家的成果是全人类的财产，而科学是最无私的领域。——高尔基'),(45,'让我们继续以此闻名：「这家代理商，花了大部分时间在改进它的理念，而不是在辩解它的正确性」。——李奥贝纳'),(46,'两个恋人当中总是一方爱另一方，而另一方只是听任接受对方的爱而已。这一点对我们大多数人来说，都是一条必须服从的痛苦的真理。可是偶尔也会有两个彼此热恋而同时又彼此被热恋的情况。——毛姆'),(47,'最成功的说谎者是那些使最少量的谎言发挥最大的作用的人。——塞·巴特勒'),(48,'热情是美丽的秘密。没有热情的美丽是没有吸引力的。——ChristianDior'),(49,'书籍把我们引入最美好的社会，使我们认识各个时代的伟大智者。——史美尔斯'),(50,'成功的秘诀，在永不改变既定的目的。——卢梭'),(51,'科学技术是第一生产力。——邓小平'),(52,'题诗寄汝非无意，莫负青春取自惭。——于谦'),(53,'不用相当的独立功夫，不论在哪个严重的问题上都不能找出真理；谁怕用功夫，谁就无法找到真理。——列宁'),(54,'友谊有许多名字，然而一旦有青春和美貌介入，友谊便被称作爱情，而且被神化为最美丽的天使。——克里索斯尔'),(55,'幸福，就在于创造新的生活，就在于改造和重新教育那个已经成了国家主人的'),(56,'谬误越大，真理取得的胜利就越大。——席勒'),(57,'科学的宗旨就是提供宇宙的真正写真。——列宁'),(58,'认识了生活的全部意义的人，才不会随便死去，哪怕只有一点机会，就不会放弃生活。——海涅'),(59,'在任何一个成功的后面都有着十五年到二十年的生活经验，都有着丰富的生活经验，要是没有这些经验，任何才思敏捷恐怕也不会有，而且在这里，恐怕任何天才也都无济于事。——巴甫连柯'),(60,'不论是老人，还是青年，航行对我们来说都是最后一次。——斯蒂文森'),(61,'科学需要人的全部生命。——巴甫洛夫'),(62,'只有人们的社会实践，才是人们对于外界认识的真理性的标准。真理的标准只能是社会的实践。——毛泽东'),(63,'书籍并不是没有生命的东西，它包藏着一种生命的潜力，与作者同样地活跃。不仅如此，它还像一个宝瓶，把作者生机勃勃的智慧中最纯净的精华保存起来。——弥尔顿'),(64,'忍耐和坚持虽是痛苦的事情，但却能渐渐地为你带来好处。——奥维德'),(65,'近代科学的目标是什么？就是探求真理。科学方法可以随时随地而改换，这科学目标，蕲求真理也就是科学的精神，是永远不改变的。——竺可桢'),(66,'向前跨一步，可能会发现一条意外的小路。生活如山路，向前跨一步，便可发现一条更好的路，使生活更充实，更有乐趣。——松下幸之助'),(67,'一个人即使已登上顶峰，也仍要自强不息。——罗素·贝克'),(68,'青春，就像受赞美的春天。——勃特勒'),(69,'时间像奔腾澎湃的急湍，它一去无还，毫不留恋。——塞万提斯'),(70,'教育儿童通过周围世界的美，人的关系的美而看到的精神的高尚'),(71,'我们不应该不惜任何代价地去保持友谊，从而使它受到玷污。如果为了那更伟大的爱，必须牺牲友谊，那也是没有办法的事；不过如果能够保持下去，那么，它就能真的达到完美的境界了。——泰戈尔'),(72,'科学是到处为家的，不过，在任何不播种的地方，是决不会得到丰收的。——赫尔岑'),(73,'科学的永恒性就在于坚持不懈地寻求之中，科学就其容量而言，是不枯竭的，就其目标而言，是永远不可企及的。——卡·冯·伯尔'),(74,'人类第一个国王乃是一名成功的士兵，国家的功臣无需有荣耀的祖先。——伏尔泰'),(75,'当科学达到某个高峰的时候，它的面前会出现通向新的高峰的广阔前景，通向进一步发展的崭新道路。——瓦维洛夫'),(76,'命运是一件很不可思议的东西。虽人各有志，往往在实现理想时会遭遇到许多困难，反而会使自己走向与志趣相反的路，而一举成功。我想我就是这样。——松下幸之助'),(77,'在科学的入口处，正象在地狱的入口处一样，必须提出这样的要求：“这里必须根绝一切犹豫；这里任何怯懦都无济于事。”。——马克思'),(78,'要从容地着手去做一件事，但一旦开始，就要坚持到底。——比阿斯'),(79,'意志是一个强壮的盲人，倚靠在明眼的跛子肩上。——叔本华'),(80,'坚持意志伟大的事业需要始终不渝的精神。——伏尔泰'),(81,'如果有一天，我能够对我们的公共利益有所贡献，我就会认为自己是世界上最幸福的人了。——果戈理'),(82,'书不仅是生活，而且是现在'),(83,'把友谊限于两人范围之内的人，似乎把明智的友谊的安全感与爱的妒嫉和蠢举相混淆。——亚当·斯密'),(84,'教育者的个性'),(85,'只有受过一种合适的教育之后，人才能成为一个人。——夸美纽斯'),(86,'乐观的人永葆青春。——拜伦'),(87,'一个人有无成就，决定于他青年时期是不是有志气。——谢觉哉'),(88,'教育的目的在于能让青年人毕生进行自我教育。——哈钦斯'),(89,'生活是一场艰苦的斗争，永远不能休息一下，要不然，你一寸一尺苦苦挣来的，就可能在一刹那间前功尽弃。——罗曼·罗兰'),(90,'人在意志力和斗争性方面的长处或短处，往往是导致他们成功或失败的重要原因之一。——哈代'),(91,'要在这个世界上获得成功，就必须坚持到底：至死都不能放手。——伏尔泰'),(92,'人的一生就是这样，先把人生变成一个科学的梦，然后再把梦变成现实。——法国'),(93,'我深信卓越的创意作品，永远是一个成功代理商前进巨轮的中轴——过去是，现在是，未来亦如是。——李奥贝纳'),(94,'书籍便是这种改造灵魂的工具。人类所需要的，是富有启发性的养料。而阅读，则正是这种养料。——雨果'),(95,'人生恰恰像马拉松赛跑一样……只有坚持到最后的人，才能称为胜利者。——池田大作'),(96,'这世界除了心理上的失败，实际上并不存在什么失败，只要不是一败涂地，你一定会取得胜利的。——亨·奥斯汀'),(97,'零星的时间，如果能敏捷地加以利用，可成为完整的时间。所谓“积土成山”是也，失去一日甚易，欲得回已无途。——卡耐基'),(98,'经过费力才得到的东西要比不费力就得到的东西叫能另人喜爱。一目了然的真理不费力就可以懂，懂了也感到暂时的愉快，但是很快就被遗忘了。——薄伽丘'),(99,'永远不要因承认错误而感到羞耻，因为承认错误也可以解释作你今天更聪敏。——马罗'),(100,'每一个人都嘲笑陈旧的时尚，却虔诚地追求新的时尚。——梭罗'),(101,'上帝绝不会只赋予你使命，而不给你时间去完成。——约·罗斯金'),(102,'往往有这样的情形：为科学和技术开拓新道路的，有时并不是科学界的著名人物，而是科学界毫不知名的人物，平凡的人物，实践家，工作革新者。——斯大林'),(103,'你因成功而内心充满喜悦的时候，就没有时间颓废。——弗兰克·迈耶'),(104,'不要心平气和，不要容你自己昏睡！趁你还年轻，强壮'),(105,'成功并不是重要的事，重要的是努力。——加费罗'),(106,'生活的道路一旦选定，就要勇敢地走到底，决不回头。——左拉'),(107,'青年总是年青的，只有老年才会变老。——杰克·伦敦'),(108,'时髦把低劣抬到了讨人喜欢的水平，继而把坏的和好的变得十分相像。——本特利'),(109,'意志是独一无二的个体所拥有的'),(110,'我需要三件东西：爱情友谊和图书。然而这三者之间何其相通！炽热的爱情可以充实图书的内容，图书又是人们最忠实的朋友。——蒙田'),(111,'友谊像清晨的雾一样纯洁，奉承并不能得到友谊，友谊只能用忠实去巩固它。——马克思'),(112,'事业常成于坚忍，毁于急躁。我在沙漠中曾亲眼看见，匆忙的旅人落在从容的后边；疾驰的骏马落在后头，缓步的骆驼继续向前。——萨迪'),(113,'你要知道科学方法的实质，不要去听一个科学家对你说些什么，而要仔细看他在做什么。——爱因斯坦'),(114,'给青年人最好的忠告是让他们谦逊谨慎，孝敬父母，爱戴亲友。——西塞罗'),(115,'教育不能创造什么，但它能启发儿童创造力以从事于创造工作。——陶行知'),(116,'友谊是灵魂的结合，这个结合是可以离异的，这是两个敏感，正直的人之间心照不宣的契约。——伏尔泰'),(117,'时间是一切财富中最宝贵的财富。——德奥弗拉斯多'),(118,'能忍受自己的人才能享受空闲。——葛瑞伯'),(119,'真理只能和永久的服役甚至与有力的牺牲相接近。——屠格涅夫'),(120,'懒人无法享受休息之乐。——拉布克'),(121,'意志命运往往背道而驰，决心到最后会全部推倒。——莎士比亚'),(122,'一个人事业上的成功，只有15%是由于他的专业技术，另外的85%要依依耐人际关系'),(123,'时间是真理的挚友。——科尔顿'),(124,'无中不能生有，无缝的石头流不出水来。谁不能燃烧，就只有冒烟——这就是定理。生活的烈火万岁。——奥斯特洛夫斯基'),(125,'真正的友谊无论从正反看都应一样，不可能从前面看是蔷薇而从后面看是刺。——吕克特'),(126,'每一种恩惠都有一枚倒钩，它将钩住吞食那份恩惠的嘴巴，施恩者想把他拖到哪里就得到那里。——堂恩'),(127,'关于挫折的名人名言'),(128,'成功=艰苦的劳动+正确的方法+少说空话。——爱因斯坦'),(129,'谁和我一样用功，谁就会和我一样成功。——莫扎特'),(130,'酒杯里竟能蹦出友谊来。——盖伊'),(131,'只有永远躺在泥坑里的人，才不会再掉进坑里。——黑格尔'),(132,'初恋——那是一场革命：单调'),(133,'没有人不爱惜他的生命，但很少人珍视他的时间。——梁实秋'),(134,'一个好的教师，是一个懂得心理学和教育学的人。——苏霍姆林斯基'),(135,'人只有献身于社会，才能找出那短暂而有风险的生命的意义。——爱因斯坦'),(136,'修养的花儿在寂静中开过去了，成功的果子便要在光明里结实。——冰心'),(137,'教育植根于爱。——鲁迅'),(138,'为进入天国而奋斗固然是崇高的，但是活在这凡世也美妙无比。那就让我们做人吧。——莫扎特'),(139,'攻克科学堡垒，就像打仗一样，总会有人牺牲，有人受伤，我要为科学而献身。——罗蒙诺索夫'),(140,'温和比强暴更有希望获得成功。——拉封丹'),(141,'谦逊和服从使他们更适于受教导；所以事先尽可以不必过于注意自信的养成。最该花时间，下功夫和努力的，是使他们获得德行的原则'),(142,'上天赋予的生命，就是要为人类的繁荣和平和幸福而奉献。——松下幸之助'),(143,'如果你被置于某种地位的时间足够长久，你的行为就会开始适应那种地位的要求。——兰德尔·贾雷尔'),(144,'我曾经认为自己是个太空人，我花了好长一段时间，才发现我只是一名星球之间的寂寞舞者。——前苏联的宇航员'),(145,'一个人最怕不老实，青年人最可贵的是老实作风。\"老实\"就是不自欺欺人，做到不欺骗人家容易，不欺骗自己最难。\"老实作风\"就是脚踏实地，不占便宜。世界上没有便宜的事，谁想占便宜水就会吃亏。——徐特立'),(146,'温顺的青年人在图书馆里长大，他们相信他们的责任是应当接受西塞罗，洛克，培根发表的意见；他们忘了西塞罗，洛克与培根写这些书的时候，也不过是在图书馆里的青年人。——爱默生'),(147,'山有木兮木有枝，心悦君兮君不知。'),(148,'人生若只如初见，何事秋风悲画扇。'),(149,'十年生死两茫茫，不思量，自难忘。'),(150,'曾经沧海难为水，除却巫山不是云。'),(151,'玲珑骰子安红豆，入骨相思知不知。'),(152,'只愿君心似我心，定不负相思意。'),(153,'平生不会相思，才会相思，便害相思。'),(154,'入我相思门，知我相思苦。'),(155,'两情若是久长时，又岂在朝朝暮暮。'),(156,'山无陵，江水为竭。冬雷震震，夏雨雪。天地合，乃敢与君绝。'),(157,'愿得一心人，白头不相离。'),(158,'人生自是有情痴，此恨不关风与月。'),(159,'花自飘零水自流。一种相思，两处闲愁。'),(160,'一日不见兮，思之如狂。'),(161,'少年不识愁滋味，爱上层楼。爱上层楼。为赋新词强说愁。'),(162,'身无彩凤双飞翼，心有灵犀一点通。'),(163,'世间无限丹青手，一片伤心画不成。'),(164,'问世间，情为何物，直教生死相许？'),(165,'一往情深深几许？深山夕照深秋雨。'),(166,'执子之手，与子偕老。'),(167,'自在飞花轻似梦，无边丝雨细如愁。'),(168,'春风得意马蹄疾，一日看尽长安花。'),(169,'一生大笑能几回，斗酒相逢须醉倒。'),(170,'此情可待成追忆，只是当时已惘然。'),(171,'一声梧叶一声秋，一点芭蕉一点愁，三更归梦三更后。'),(172,'思悠悠，恨悠悠，恨到归时方始休。'),(173,'人面不知何处去，桃花依旧笑春风。'),(174,'时光只解催人老，不信多情，长恨离亭，泪滴春衫酒易醒。'),(175,'昨夜西风凋碧树，独上高楼，望尽天涯路。'),(176,'浮云一别后，流水十年间。'),(177,'疏影横斜水清浅，暗香浮动月黄昏。'),(178,'若是前生未有缘，待重结'),(179,'抽刀断水水更流，举杯消愁愁更愁。'),(180,'君埋泉下泥销骨，我寄人间雪满头。'),(181,'取次花丛懒回顾，半缘修道半缘君。'),(182,'休对故人思故国，且将新火试新茶。诗酒趁年华。'),(183,'似此星辰非昨夜，为谁风露立中宵。'),(184,'夜月一帘幽梦，春风十里柔情。'),(185,'怕相思，已相思，轮到相思没处辞，眉间露一丝。'),(186,'仰天大笑出门去，我辈岂是蓬蒿人。'),(187,'还君明珠双泪垂，何不相逢未嫁时。'),(188,'落花人独立，微雨燕双飞。'),(189,'问君能有几多愁？恰似一江春水向东流。'),(190,'醉后不知天在水，满船清梦压星河。'),(191,'一骑红尘妃子笑，无人知是荔枝来。'),(192,'天涯地角有穷时，只有相思无尽处。'),(193,'黄沙百战穿金甲，不破楼兰终不还。'),(194,'凤凰台上凤凰游，凤去台空江自流。'),(195,'桃李春风一杯酒，江湖夜雨十年灯。'),(196,'直道相思了无益，未妨惆怅是清狂。'),(197,'人言落日是天涯，望极天涯不见家。'),(198,'被酒莫惊春睡重，赌书消得泼茶香，当时只道是寻常。'),(199,'同是天涯沦落人，相逢何必曾相识！'),(200,'海上生明月，天涯共此时。'),(201,'寂寞空庭春欲晚，梨花满地不开门。'),(202,'换我心，为你心，始知相忆深。'),(203,'男儿何不带吴钩，收取关山五十州。'),(204,'闻君有两意，故来相决绝。'),(205,'春蚕到死丝方尽，蜡炬成灰泪始干。'),(206,'莫愁前路无知己，天下谁人不识君。'),(207,'多情自古伤离别，更那堪冷落清秋节！'),(208,'醉卧沙场君莫笑，古来征战几人回？'),(209,'生当复来归，死当长相思。'),(210,'夜来幽梦忽还乡。小轩窗。正梳妆。相顾无言，惟有泪千行。'),(211,'泪眼问花花不语，乱红飞过秋千去。'),(212,'心似双丝网，中有千千结。'),(213,'独自莫凭栏，无限江山，别时容易见时难。'),(214,'日日思君不见君，共饮长江水。'),(215,'月有盈亏花有开谢，想人生最苦离别。'),(216,'美人自刎乌江岸，战火曾烧赤壁山，将军空老玉门关。'),(217,'风萧萧兮易水寒，壮士一去兮不复还。'),(218,'渺万里层云，千山暮雪，只影向谁去？'),(219,'无可奈何花落去，似曾相识燕归来。'),(220,'落红不是无情物，化作春泥更护花。'),(221,'苟利国家生死以，岂因祸福避趋之！'),(222,'美人卷珠帘，深坐颦蛾眉。'),(223,'盈盈一水间，脉脉不得语。'),(224,'相思相见知何日？此时此夜难为情！'),(225,'人到情多情转薄，而今真个不多情。'),(226,'衰兰送客咸阳道。天若有情天亦老。'),(227,'天长地久有时尽，此恨绵绵无绝期。'),(228,'呜呼！楚虽三户能亡秦，岂有堂堂中国空无人！'),(229,'大江东去，浪淘尽，千古风流人物。'),(230,'白日放歌须纵酒，青春作伴好还乡。'),(231,'物是人非事事休，欲语泪先流。'),(232,'海水梦悠悠，君愁我亦愁。'),(233,'露从今夜白，月是故乡明。'),(234,'夕阳无限好，只是近黄昏。'),(235,'世人结交须黄金，黄金不多交不深。'),(236,'酒入愁肠，化作相思泪。'),(237,'晓看天色暮看云，行也思君，坐也思君。'),(238,'系我一生心，负你千行泪。'),(239,'试问岭南应不好。却道。此心安处是吾乡。'),(240,'欲把相思说似谁，浅情人不知。'),(241,'伤心桥下春波绿，曾是惊鸿照影来。'),(242,'相思只在：丁香枝上，豆蔻梢头。'),(243,'相见时难别亦难，东风无力百花残。'),(244,'寻寻觅觅，冷冷清清，凄凄惨惨戚戚。'),(245,'曾与美人桥上别，恨无消息到今朝。'),(246,'人间四月芳菲尽，山寺桃花始盛开。');
/*!40000 ALTER TABLE `tb_aphorism` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-01 18:15:01
