/*
MySQL Data Transfer
Source Host: localhost
Source Database: cquery
Target Host: localhost
Target Database: cquery
Date: 06-Nov-17 4:42:14 PM
*/

create database cquery;

use cquery;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `uid` int(11) NOT NULL auto_increment,
  `aname` varchar(60) default NULL,
  `password` varchar(60) default NULL,
  `email` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `location` varchar(60) default NULL,
  `dob` varchar(60) default NULL,
  `address` varchar(100) default NULL,
  `gender` varchar(60) default NULL,
  `pincode` varchar(60) default NULL,
  `sk` varchar(60) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `id` int(11) NOT NULL auto_increment,
  `dtitle` varchar(45) default NULL,
  `ddesc` varchar(100) default NULL,
  `dauthor` varchar(45) default NULL,
  `dlaunchedby` varchar(45) default NULL,
  `ddt` varchar(45) default NULL,
  `fname` varchar(45) default NULL,
  `doc` longtext,
  `count` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ratio
-- ----------------------------
DROP TABLE IF EXISTS `ratio`;
CREATE TABLE `ratio` (
  `id` int(11) NOT NULL auto_increment,
  `search_on` varchar(45) default NULL,
  `keyword` varchar(45) default NULL,
  `total` double default NULL,
  `available` double default NULL,
  `matched_data` double default NULL,
  `unmatched_data` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL auto_increment,
  `uname` varchar(45) default NULL,
  `keyword` varchar(45) default NULL,
  `dt` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(60) default NULL,
  `password` varchar(60) default NULL,
  `email` varchar(60) default NULL,
  `mobile` varchar(60) default NULL,
  `location` varchar(60) default NULL,
  `dob` varchar(60) default NULL,
  `address` varchar(100) default NULL,
  `gender` varchar(60) default NULL,
  `pincode` varchar(60) default NULL,
  `sk` varchar(60) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `author` VALUES ('1', 'author', 'author', 'author@gmal.com', '9988556622', 'Bangalore', '14/03/1990', 'Rajajinagar, Bangalore', 'Male', '560042', '7859625');
INSERT INTO `author` VALUES ('2', 'a', 'a', 'a', 'a', 'a', 'aaa', 'a', 'Male', 'a', '3660784');
INSERT INTO `author` VALUES ('3', 'kiran', 'kiran', 'kiran@gmail.com', '9955662233', 'Bangalore', '14/03/1990', 'Banglore', 'Male', '562044', '4803450');
INSERT INTO `author` VALUES ('4', 'Author1', 'Author1', 'tmksmanju13@gmail.com', '9535866270', 'Bangalore', '05/06/1987', '#8827,Rajajinagar', 'Male', '560021', '2069114');
INSERT INTO `document` VALUES ('8', 'Java', 'Java is OOP', 'Herbetz Shield', 'TATA', '05/08/2007', 'Java.txt', 'Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented,and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere, meaning that compiled Java code can run on all platforms that support Java without the need for recompilation.Java applications are typically compiled to bytecode that can run on any Java virtual machine  regardless of computer architecture. As of 2016, Java is one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers. Java was originally developed by James Gosling at Sun Microsystems which has since been acquired by Oracle Corporation and released in 1995 as a core component of Sun Microsystems Java platform. The language derives much of its syntax from C and Cpp, but it has fewer low-level facilities than either of them.', '8');
INSERT INTO `document` VALUES ('9', 'Dot Net', 'Dot net is programming language', 'Microsoft', 'Microsoft', '20/08/2000', 'dotnet.txt', 'DOT NET Framework as pronounced dot net is a software framework developed by Microsoft that runs primarily on Microsoft Windows. It includes a large class library named Framework Class Library FCL and provides language interoperability each language can use code written in other languages across several programming languages. Programs written for .NET Framework execute in a software environment in contrast to a hardware environment named Common Language Runtime CLR, an application virtual machine that provides services such as security, memory management, and exception handling. As such, computer code written using DOT NET Framework is called managed code FCL and CLR together constitute DOT NET Framework.', '2');
INSERT INTO `document` VALUES ('10', 'Bigdata', 'It is software programming language', 'Herbetz Shield', 'TATA', '12/02/2011', 'Bigdata.txt', 'Big data is a term for data sets that are so large or complex that traditional big data processing application software is inadequate to deal with them. Big data challenges include capturing data, data storage, data analysis, search, sharing, transfer, visualization, querying, updating and information privacy.', '4');
INSERT INTO `document` VALUES ('11', 'Android', 'This is mobile apps language', 'Herbetz Shield', 'TATA', '20/08/2012', 'Android.txt', 'Android is a mobile operating system developed by Google, based on the Linux kernel and designed primarily for touchscreen mobile devices such as smartphones and tablets. Android user interface is mainly based on direct manipulation, using touch gestures that loosely correspond to real-world actions, such as swiping, tapping and pinching, to manipulate on-screen objects, along with a virtual keyboard for text input. In addition to touchscreen devices, Google has further developed Android TV for televisions, Android Auto for cars, and Android Wear for wrist watches, each with a specialized user interface. Variants of Android are also used on game consoles, digital cameras, PCs and other electronics.', '5');
INSERT INTO `document` VALUES ('12', 'PHP', 'IT is used for web based application development', 'Rozariyo', 'TATA', '23/08/2011', 'PHP.txt', 'PHP is a server side scripting language designed primarily for web development but also used as a general purpose programming language. Originally created by Rasmus Lerdorf in 1994,the PHP reference implementation is now produced by The PHP Development Team. PHP originally stood for Personal Home Page, but it now stands for the recursive acronym PHP Hypertext Preprocessor.', '3');
INSERT INTO `document` VALUES ('13', 'Angular_JS', 'It is used for developing scripting application', 'Deverov', 'TATA', '12/12/2016', 'Angular_JS.txt', 'AngularJS  is a Java Script based open-source front end web application framework mainly maintained by Google and by a community of individuals and corporations to address many of the challenges encountered in developing single-page applications. The JavaScript components complement Apache Cordova, the framework used for developing cross-platform mobile apps.', '2');
INSERT INTO `ratio` VALUES ('30', 'Title', 'Java', '4', '1', '25', '75.0');
INSERT INTO `ratio` VALUES ('31', 'Author', 'Herbetz Shield', '4', '3', '75', '25.0');
INSERT INTO `ratio` VALUES ('32', 'Date', '12/12/2012', '4', '0', '0', '100.0');
INSERT INTO `ratio` VALUES ('33', 'Date', '05/08/2007', '4', '1', '25', '75.0');
INSERT INTO `ratio` VALUES ('34', 'Title', 'Java', '6', '1', '16.6666666666667', '83.33333333333334');
INSERT INTO `ratio` VALUES ('35', 'Title', 'PHP', '6', '1', '16.6666666666667', '83.33333333333334');
INSERT INTO `ratio` VALUES ('36', 'Title', 'Android', '6', '1', '16.6666666666667', '83.33333333333334');
INSERT INTO `ratio` VALUES ('37', 'Author', 'Herbetz Shildth', '6', '0', '0', '100.0');
INSERT INTO `ratio` VALUES ('38', 'Author', 'Herbetz Shield', '6', '3', '50', '50.0');
INSERT INTO `ratio` VALUES ('39', 'Date', '05/08/2007', '6', '1', '16.6666666666667', '83.33333333333334');
INSERT INTO `ratio` VALUES ('40', 'Content', 'java', '6', '0', '0', '100.0');
INSERT INTO `ratio` VALUES ('41', 'Content', 'Java', '6', '2', '33.3333333333333', '66.66666666666667');
INSERT INTO `search` VALUES ('44', 'Raju', 'Java', '06/11/2017   16:10:03');
INSERT INTO `search` VALUES ('45', 'Raju', 'Herbetz Shield', '06/11/2017   16:10:21');
INSERT INTO `search` VALUES ('46', 'Raju', '12/12/2012', '06/11/2017   16:10:34');
INSERT INTO `search` VALUES ('47', 'Raju', '05/08/2007', '06/11/2017   16:10:49');
INSERT INTO `search` VALUES ('48', 'tmksmanju', 'Java', '06/11/2017   16:33:59');
INSERT INTO `search` VALUES ('49', 'tmksmanju', 'PHP', '06/11/2017   16:34:29');
INSERT INTO `search` VALUES ('50', 'tmksmanju', 'Android', '06/11/2017   16:34:37');
INSERT INTO `search` VALUES ('51', 'tmksmanju', 'Herbetz Shildth', '06/11/2017   16:34:52');
INSERT INTO `search` VALUES ('52', 'tmksmanju', 'Herbetz Shield', '06/11/2017   16:35:15');
INSERT INTO `search` VALUES ('53', 'tmksmanju', '05/08/2007', '06/11/2017   16:36:03');
INSERT INTO `search` VALUES ('54', 'tmksmanju', 'java', '06/11/2017   16:37:06');
INSERT INTO `search` VALUES ('55', 'tmksmanju', 'Java', '06/11/2017   16:37:15');
INSERT INTO `user` VALUES ('1', 'Raju', 'raju', 'raju@gmail.com', '9988556622', 'Bangalore', '14/03/1990', 'Bangalore', 'Male', '560040', '6665552');
INSERT INTO `user` VALUES ('2', 'h', 'h', 'h', 'h', 'h', 'h', 'h', 'Male', 'h', '8731474');
INSERT INTO `user` VALUES ('3', 'tmksmanju', 'tmksmanju', 'tmksmanju13@gmail.com', '9535866270', 'Bangalore', '05/06/1987', '#8938,Vijayangar', 'Male', '560040', '5892537');
