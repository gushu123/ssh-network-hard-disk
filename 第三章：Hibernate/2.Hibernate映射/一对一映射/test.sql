/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-10 11:42:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '中药');

-- ----------------------------
-- Table structure for `product_details`
-- ----------------------------
DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `detatil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKcscr72rj6vt8qktp2k9ny3uae` FOREIGN KEY (`id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_details
-- ----------------------------
INSERT INTO `product_details` VALUES ('1', '中药非常号');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '2222', '2');
INSERT INTO `user` VALUES ('3', 'test', 'jimi');
INSERT INTO `user` VALUES ('4', 'lisi', 'lisi');
INSERT INTO `user` VALUES ('6', 'jimisun', 'jimisun');
INSERT INTO `user` VALUES ('7', 'jimisun', 'jimisun');
INSERT INTO `user` VALUES ('8', 'jimisun1', 'jimisun');
INSERT INTO `user` VALUES ('9', 'jimisun111', 'jimisun');
INSERT INTO `user` VALUES ('10', 'j', 'jimisun');
INSERT INTO `user` VALUES ('11', 'j1', 'jimisun');
INSERT INTO `user` VALUES ('12', 'jimisunl', 'jimisun');
