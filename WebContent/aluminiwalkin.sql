/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.36-community : Database - alumini_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alumini_data` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alumini_data`;

/*Table structure for table `admin_details` */

DROP TABLE IF EXISTS `admin_details`;

CREATE TABLE `admin_details` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `admin_details` */

insert  into `admin_details`(`id`,`admin_name`,`admin_pass`) values (1,'admin','admin');

/*Table structure for table `alu_msg_details` */

DROP TABLE IF EXISTS `alu_msg_details`;

CREATE TABLE `alu_msg_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `alu_msg_details` */

insert  into `alu_msg_details`(`id`,`sid`,`rid`,`msg`,`date`,`fro`) values (5,8,9,'hi','2017-03-22 10:02:31','santosh'),(6,8,9,'hi ','2017-03-22 10:04:40','santosh'),(7,11,11,'DM','2017-04-03 18:24:43','DM'),(8,14,12,'hi ramesh','2017-04-05 17:46:14','dhareppa');

/*Table structure for table `alumni_details` */

DROP TABLE IF EXISTS `alumni_details`;

CREATE TABLE `alumni_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `yop` varchar(10) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `mob` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `alumni_details` */

insert  into `alumni_details`(`id`,`name`,`pass`,`branch`,`yop`,`add1`,`mob`,`email`) values (14,'dhareppa','dhareppa','Computer','1980','vijayapur','9611181186','dhareppa.madari021@gmail.com'),(12,'ramesh','ramesh','Computer','2015','vijayapur','9611181186','patilrb@gmail.com');

/*Table structure for table `friend_list` */

DROP TABLE IF EXISTS `friend_list`;

CREATE TABLE `friend_list` (
  `sno` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `u_type` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `friend_list` */

insert  into `friend_list`(`sno`,`u_id`,`f_id`,`u_type`) values (1,1,2,'S'),(2,1,3,'S');

/*Table structure for table `invitation` */

DROP TABLE IF EXISTS `invitation`;

CREATE TABLE `invitation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `heading` varchar(40) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `invitation` */

insert  into `invitation`(`id`,`heading`,`msg`,`date`) values (1,'call to function','calling all to function','2010-02-24 22:04:50'),(4,'regarding_event','Hi\r\nThis is from Dr P G Hallakatti Engineering college ,we are conduting Technical program event on 30th march so interested candidates register your name in our website or contact us :7338430814 for more details','2017-03-22 10:13:31'),(5,'Event','hi alumini,we are conducting event on sunday,u can attend','2017-04-05 18:03:17');

/*Table structure for table `msg_details` */

DROP TABLE IF EXISTS `msg_details`;

CREATE TABLE `msg_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `fro` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `msg_details` */

insert  into `msg_details`(`id`,`sid`,`rid`,`msg`,`date`,`fro`) values (13,3,1,'hi raju','2017-04-05 17:52:57','vishu'),(12,2,1,'hi','2017-03-22 10:00:14','kartik'),(10,1,2,'hi i am raju','2017-03-22 09:50:52','raju'),(11,1,2,'hi this is raju','2017-03-22 09:59:23','raju');

/*Table structure for table `student_details` */

DROP TABLE IF EXISTS `student_details`;

CREATE TABLE `student_details` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(40) NOT NULL,
  `s_pass` varchar(25) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `year` varchar(5) NOT NULL,
  `s_address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_lock` varchar(1) NOT NULL,
  `is_login` varchar(1) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `student_details` */

insert  into `student_details`(`sid`,`s_name`,`s_pass`,`branch_name`,`year`,`s_address`,`mobile`,`email`,`is_lock`,`is_login`) values (1,'raju','raju','Computer','3','vijayapur','9611181186','raju@gmail.com','N','N'),(3,'vishu','vishu','Computer','4','vijayapur','9611181186','dhareppa.madari021@gmail.com','N','N');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
