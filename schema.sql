-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `blog`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blog`;

--
-- Table structure for table `maihehe_note`
--

DROP TABLE IF EXISTS `maihehe_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maihehe_note` (
  `id` varchar(64) NOT NULL COMMENT '主键（UUID）',
  `topic_path` varchar(64) NOT NULL COMMENT '所属的 topic 的 path',
  `current_path` text NOT NULL COMMENT '笔记相对路径，如 java/core/thread.md',
  `is_folder` tinyint(1) NOT NULL COMMENT '是否为目录',
  `view_count` int(11) DEFAULT '0',
  `parent_path` text COMMENT '父级路径',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `visible` tinyint(1) NOT NULL COMMENT '是否可见',
  `name` varchar(255) NOT NULL COMMENT '专题名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='笔记内容表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `maihehe_topic`
--

DROP TABLE IF EXISTS `maihehe_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maihehe_topic` (
  `id` varchar(64) NOT NULL COMMENT '主键（UUID）',
  `path` varchar(255) NOT NULL COMMENT '从 /data/ 开始的路径',
  `category` varchar(100) DEFAULT NULL COMMENT '分类类别',
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `visible` tinyint(1) NOT NULL COMMENT '是否可见',
  `name` varchar(255) NOT NULL COMMENT '专题名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `maihehe_user`
--

DROP TABLE IF EXISTS `maihehe_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maihehe_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称，展示用',
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'blog'
--

--
-- Dumping routines for database 'blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-27  8:52:21
