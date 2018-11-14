/*
Navicat MySQL Data Transfer

Source Server         : Test
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : db_blog

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-11-14 10:04:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博主id',
  `username` varchar(50) NOT NULL COMMENT '博主姓名',
  `password` varchar(100) NOT NULL COMMENT '博主密码',
  `profile` text COMMENT '博主信息',
  `nickname` varchar(50) DEFAULT NULL COMMENT '博主昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '博主签名',
  `imagepath` varchar(100) DEFAULT NULL COMMENT '博主头像路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_blogtype
-- ----------------------------
DROP TABLE IF EXISTS `t_blogtype`;
CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客id',
  `typeName` varchar(30) DEFAULT NULL COMMENT '博客类别',
  `orderNum` int(11) DEFAULT NULL COMMENT '博客排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
