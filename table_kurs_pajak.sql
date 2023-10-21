/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.6.33-0ubuntu0.14.04.1-log : Database - classicmodels
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`classicmodels` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `classicmodels`;

/*Table structure for table `ksm_kurs_pajak` */

DROP TABLE IF EXISTS `ksm_kurs_pajak`;

CREATE TABLE `ksm_kurs_pajak` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'http://www.fiskal.kemenkeu.go.id/2010/edef-kurs-pajak-db.asp',
  `curr_id` int(11) NOT NULL,
  `kurs_rate` decimal(20,4) NOT NULL COMMENT 'kurs yang diakui ditjen pajak sesuai dengan keputusan kementrian keuangan',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `user_inputter` varchar(255) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kurs_pajak_standar` (`curr_id`),
  CONSTRAINT `fk_kurs_pajak_standar` FOREIGN KEY (`curr_id`) REFERENCES `ksm_standar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

/*Data for the table `ksm_kurs_pajak` */

insert  into `ksm_kurs_pajak`(`id`,`curr_id`,`kurs_rate`,`start_date`,`end_date`,`user_inputter`,`input_date`) values 
(1,8,12102.0000,'2014-01-22','2014-01-28','WEBSISTEM','2015-12-28 09:35:01'),
(2,8,12168.0000,'2014-01-29','2014-02-04','WEBSISTEM','2015-12-28 09:35:01'),
(3,8,12203.0000,'2014-02-05','2014-02-11','WEBSISTEM','2015-12-28 09:35:01'),
(4,8,12184.0000,'2014-02-12','2014-02-18','WEBSISTEM','2015-12-28 09:35:01'),
(5,8,11950.0000,'2014-02-19','2014-02-25','WEBSISTEM','2015-12-28 09:35:01'),
(6,8,11793.0000,'2014-02-26','2014-03-04','WEBSISTEM','2015-12-28 09:35:01'),
(7,8,11793.0000,'2014-03-05','2014-03-11','WEBSISTEM','2015-12-28 09:35:01'),
(8,8,11510.0000,'2014-03-12','2014-03-18','WEBSISTEM','2015-12-28 09:35:01'),
(9,8,11393.0000,'2014-03-19','2014-03-25','WEBSISTEM','2015-12-28 09:35:01'),
(10,8,11381.0000,'2014-03-26','2014-04-01','WEBSISTEM','2015-12-28 09:35:01'),
(11,8,11400.0000,'2014-04-02','2014-04-08','WEBSISTEM','2015-12-28 09:35:01'),
(12,8,11313.0000,'2014-04-09','2014-04-15','WEBSISTEM','2015-12-28 09:35:01'),
(13,8,11378.0000,'2014-04-16','2014-04-22','WEBSISTEM','2015-12-28 09:35:01'),
(14,8,11430.0000,'2014-04-23','2014-04-29','WEBSISTEM','2015-12-28 09:35:01'),
(15,8,11544.0000,'2014-04-30','2014-05-06','WEBSISTEM','2015-12-28 09:35:01'),
(16,8,11544.0000,'2014-05-07','2014-05-13','WEBSISTEM','2015-12-28 09:35:01'),
(17,8,11544.0000,'2014-05-14','2014-05-20','WEBSISTEM','2015-12-28 09:35:01'),
(18,8,11466.0000,'2014-05-21','2014-05-27','WEBSISTEM','2015-12-28 09:35:01'),
(19,8,11513.0000,'2014-05-28','2014-06-03','WEBSISTEM','2015-12-28 09:35:01'),
(20,8,11683.0000,'2014-06-04','2014-06-10','WEBSISTEM','2015-12-28 09:35:01'),
(21,8,11841.0000,'2014-06-11','2014-06-17','WEBSISTEM','2015-12-28 09:35:01'),
(22,8,11806.0000,'2014-06-18','2014-06-24','WEBSISTEM','2015-12-28 09:35:01'),
(23,8,11955.0000,'2014-06-25','2014-07-01','WEBSISTEM','2015-12-28 09:35:01'),
(24,8,12020.0000,'2014-07-02','2014-07-08','WEBSISTEM','2015-12-28 09:35:01'),
(25,8,11869.0000,'2014-07-09','2014-07-15','WEBSISTEM','2015-12-28 09:35:01'),
(26,8,11601.0000,'2014-07-16','2014-07-22','WEBSISTEM','2015-12-28 09:35:01'),
(27,8,11666.0000,'2014-07-23','2014-08-05','WEBSISTEM','2015-12-28 09:35:01'),
(28,8,11711.0000,'2014-08-06','2014-08-12','WEBSISTEM','2015-12-28 09:35:01'),
(29,8,11742.0000,'2014-08-13','2014-08-19','WEBSISTEM','2015-12-28 09:35:01'),
(30,8,11684.0000,'2014-08-20','2014-08-26','WEBSISTEM','2015-12-28 09:35:01'),
(31,8,11694.0000,'2014-08-27','2014-09-02','WEBSISTEM','2015-12-28 09:35:01'),
(32,8,11696.0000,'2014-09-03','2014-09-09','WEBSISTEM','2015-12-28 09:35:01'),
(33,8,11750.0000,'2014-09-10','2014-09-16','WEBSISTEM','2015-12-28 09:35:01'),
(34,8,11824.0000,'2014-09-17','2014-09-23','WEBSISTEM','2015-12-28 09:35:01'),
(35,8,11973.0000,'2014-09-24','2014-09-30','WEBSISTEM','2015-12-28 09:35:01'),
(36,8,12020.0000,'2014-10-01','2014-10-07','WEBSISTEM','2015-12-28 09:35:01'),
(37,8,12172.0000,'2014-10-08','2014-10-14','WEBSISTEM','2015-12-28 09:35:01'),
(38,8,12210.0000,'2014-10-15','2014-10-21','WEBSISTEM','2015-12-28 09:35:01'),
(39,8,12168.0000,'2014-10-22','2014-10-28','WEBSISTEM','2015-12-28 09:35:01'),
(40,8,12038.0000,'2014-10-29','2014-11-04','WEBSISTEM','2015-12-28 09:35:01'),
(41,8,12109.0000,'2014-11-05','2014-11-11','WEBSISTEM','2015-12-28 09:35:01'),
(42,8,12109.0000,'2014-11-12','2014-11-18','WEBSISTEM','2015-12-28 09:35:01'),
(43,8,12206.0000,'2014-11-19','2014-11-25','WEBSISTEM','2015-12-28 09:35:01'),
(44,8,12158.0000,'2014-11-26','2014-12-02','WEBSISTEM','2015-12-28 09:35:01'),
(45,8,12158.0000,'2014-12-03','2014-12-09','WEBSISTEM','2015-12-28 09:35:01'),
(46,8,12158.0000,'2014-12-10','2014-12-16','WEBSISTEM','2015-12-28 09:35:01'),
(47,8,12158.0000,'2014-12-17','2014-12-23','WEBSISTEM','2015-12-28 09:35:01'),
(48,8,12158.0000,'2014-12-24','2014-12-30','WEBSISTEM','2015-12-28 09:35:01'),
(50,8,12158.0000,'2014-12-31','2015-01-06','WEBSISTEM','2015-12-28 09:35:01'),
(51,8,12158.0000,'2015-01-07','2015-01-13','WEBSISTEM','2015-12-28 09:35:01'),
(52,8,12653.0000,'2015-01-14','2015-01-20','WEBSISTEM','2015-12-28 09:35:01'),
(53,8,12593.0000,'2015-01-21','2015-01-27','WEBSISTEM','2015-12-28 09:35:01'),
(54,8,13021.0000,'2015-01-28','2015-04-14','WEBSISTEM','2015-12-28 09:35:01'),
(55,8,12946.0000,'2015-04-15','2015-04-21','WEBSISTEM','2015-12-28 09:35:01'),
(56,8,12893.0000,'2015-04-22','2015-04-28','WEBSISTEM','2015-12-28 09:35:01'),
(57,8,12930.0000,'2015-04-29','2015-05-05','WEBSISTEM','2015-12-28 09:35:01'),
(58,8,12973.0000,'2015-05-06','2015-05-12','WEBSISTEM','2015-12-28 09:35:01'),
(59,8,12973.0000,'2015-05-13','2015-05-19','WEBSISTEM','2015-12-28 09:35:01'),
(60,8,12973.0000,'2015-05-20','2015-05-25','WEBSISTEM','2015-12-28 09:35:01'),
(61,8,13147.0000,'2015-05-26','2015-06-02','WEBSISTEM','2015-12-28 09:35:01'),
(62,8,13217.0000,'2015-06-03','2015-06-09','WEBSISTEM','2015-12-28 09:35:01'),
(66,8,13275.0000,'2015-06-10','2015-06-16','WEBSISTEM','2015-12-28 09:35:01'),
(67,8,13324.0000,'2015-06-17','2015-06-23','WEBSISTEM','2015-12-28 09:35:01'),
(68,8,13327.0000,'2015-06-24','2015-06-30','WEBSISTEM','2015-12-28 09:35:01'),
(69,8,13308.0000,'2015-07-01','2015-07-07','WEBSISTEM','2015-12-28 09:35:01'),
(70,8,13335.0000,'2015-07-08','2015-07-14','WEBSISTEM','2015-12-28 09:35:01'),
(71,8,13328.0000,'2015-07-15','2015-07-28','WEBSISTEM','2015-12-28 09:35:01'),
(72,8,13413.0000,'2015-07-29','2015-08-05','WEBSISTEM','2015-12-28 09:35:01'),
(74,8,13483.0000,'2015-08-06','2015-08-11','WEBSISTEM','2015-12-28 09:35:01'),
(75,8,13518.0000,'2015-08-12','2015-08-18','WEBSISTEM','2015-12-28 09:35:01'),
(76,8,13795.0000,'2015-08-19','2015-08-25','WEBSISTEM','2015-12-28 09:35:01'),
(77,8,13904.0000,'2015-08-26','2015-09-01','WEBSISTEM','2015-12-28 09:35:01'),
(78,8,14036.0000,'2015-09-02','2015-09-08','WEBSISTEM','2015-12-28 09:35:01'),
(79,8,14165.0000,'2015-09-09','2015-09-15','WEBSISTEM','2015-12-28 09:35:01'),
(80,8,14303.0000,'2015-09-16','2015-09-22','WEBSISTEM','2015-12-28 09:35:01'),
(81,8,14425.0000,'2015-09-23','2015-09-29','WEBSISTEM','2015-12-28 09:35:01'),
(82,8,14650.0000,'2015-09-30','2015-10-06','WEBSISTEM','2015-12-28 09:35:01'),
(83,8,14664.0000,'2015-10-07','2015-10-13','WEBSISTEM','2015-12-28 09:35:01'),
(84,8,13764.0000,'2015-10-14','2015-10-20','WEBSISTEM','2015-12-28 09:35:01'),
(85,8,13549.0000,'2015-10-21','2015-10-27','WEBSISTEM','2015-12-28 09:35:01'),
(86,8,13665.0000,'2015-10-28','2015-11-03','WEBSISTEM','2015-12-28 09:35:01'),
(87,8,13617.0000,'2015-11-04','2015-11-10','WEBSISTEM','2015-12-28 09:35:01'),
(88,8,13576.0000,'2015-11-11','2015-11-17','WEBSISTEM','2015-12-28 09:35:01'),
(89,8,13648.0000,'2015-11-18','2015-11-24','WEBSISTEM','2015-12-28 09:35:01'),
(90,8,13735.0000,'2015-11-25','2015-12-01','WEBSISTEM','2015-12-28 09:35:01'),
(91,8,13757.0000,'2015-12-02','2015-12-08','WEBSISTEM','2015-12-28 09:35:01'),
(92,8,13816.0000,'2015-12-09','2015-12-15','WEBSISTEM','2015-12-28 09:35:01'),
(93,8,13984.0000,'2015-12-16','2015-12-22','WEBSISTEM','2015-12-28 09:35:01'),
(94,8,13961.0000,'2015-12-23','2015-12-29','WEBSISTEM','2015-12-28 09:35:01'),
(95,8,13640.0000,'2015-12-30','2016-01-05','WEBSISTEM','2016-02-29 10:26:12'),
(96,8,13800.0000,'2016-01-06','2016-01-12','WEBSISTEM','2016-02-29 10:27:02'),
(97,8,13926.0000,'2016-01-13','2016-01-19','WEBSISTEM','2016-02-29 10:27:36'),
(98,8,13899.0000,'2016-01-20','2016-01-26','WEBSISTEM','2016-02-29 10:28:11'),
(99,8,13883.0000,'2016-01-27','2016-02-02','WEBSISTEM','2016-02-29 10:28:11'),
(100,8,13820.0000,'2016-02-03','2016-02-09','WEBSISTEM','2016-02-29 10:29:44'),
(101,8,13658.0000,'2016-02-10','2016-02-16','WEBSISTEM','2016-02-29 10:30:20'),
(102,8,13480.0000,'2016-02-17','2016-02-23','WEBSISTEM','2016-02-29 10:30:51'),
(103,8,13475.0000,'2016-02-24','2016-03-01','WEBSISTEM','2016-02-29 10:31:23'),
(104,8,13407.0000,'2016-03-02','2016-03-08','WEBSISTEM','2016-06-23 15:58:06'),
(105,8,13204.0000,'2016-03-09','2016-03-15','WEBSISTEM','2016-06-23 15:58:46');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
