/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : belajar-golang-database

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:21:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'wandirayandra@gmail.com', 'Hallo Gaiz');
INSERT INTO `comment` VALUES (2, 'wandirayandra@gmail.com', 'Hallo Gaiz');
INSERT INTO `comment` VALUES (3, 'wandi0@gmail.com', 'Ini Komen Ke-0');
INSERT INTO `comment` VALUES (4, 'wandi1@gmail.com', 'Ini Komen Ke-1');
INSERT INTO `comment` VALUES (5, 'wandi2@gmail.com', 'Ini Komen Ke-2');
INSERT INTO `comment` VALUES (6, 'wandi3@gmail.com', 'Ini Komen Ke-3');
INSERT INTO `comment` VALUES (7, 'wandi4@gmail.com', 'Ini Komen Ke-4');
INSERT INTO `comment` VALUES (8, 'wandi5@gmail.com', 'Ini Komen Ke-5');
INSERT INTO `comment` VALUES (9, 'wandi6@gmail.com', 'Ini Komen Ke-6');
INSERT INTO `comment` VALUES (10, 'wandi7@gmail.com', 'Ini Komen Ke-7');
INSERT INTO `comment` VALUES (11, 'wandi8@gmail.com', 'Ini Komen Ke-8');
INSERT INTO `comment` VALUES (12, 'wandi9@gmail.com', 'Ini Komen Ke-9');
INSERT INTO `comment` VALUES (13, 'repository@test.com', 'Test Repository');

-- ----------------------------
-- Table structure for costumer
-- ----------------------------
DROP TABLE IF EXISTS `costumer`;
CREATE TABLE `costumer`  (
  `id` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of costumer
-- ----------------------------
INSERT INTO `costumer` VALUES ('1218015', 'Adrian Nugraha');
INSERT INTO `costumer` VALUES ('1218022', 'Rayandra Wandi Marselana');

-- ----------------------------
-- Table structure for costummer
-- ----------------------------
DROP TABLE IF EXISTS `costummer`;
CREATE TABLE `costummer`  (
  `id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `rating` double NOT NULL,
  `birth_date` date NOT NULL,
  `maried` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of costummer
-- ----------------------------
INSERT INTO `costummer` VALUES ('1218001', 'yayu', '', 123213, 2, '2022-09-01', 0);
INSERT INTO `costummer` VALUES ('1218022', 'Rayandra Wandi Marselana', 'wandirayandra@gmail.com', 4000000, 5, '1999-01-01', 1);
INSERT INTO `costummer` VALUES ('1218023', 'Raya Lil Ayunda', 'lilraya@gmail.com', 2000000, 3, '2010-10-10', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
