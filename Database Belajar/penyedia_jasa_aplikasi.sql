/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : penyedia_jasa_aplikasi

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:25:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departement
-- ----------------------------
DROP TABLE IF EXISTS `departement`;
CREATE TABLE `departement`  (
  `id_departement` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_departement` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_departement`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departement
-- ----------------------------
INSERT INTO `departement` VALUES ('123', 'Management Resiko');

-- ----------------------------
-- Table structure for kalkulator
-- ----------------------------
DROP TABLE IF EXISTS `kalkulator`;
CREATE TABLE `kalkulator`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai1` int(11) NOT NULL,
  `oprasi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai2` int(11) NOT NULL,
  `hasil` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kalkulator
-- ----------------------------
INSERT INTO `kalkulator` VALUES (1, 1, 'tambah', 2, 3);
INSERT INTO `kalkulator` VALUES (2, 1, 'tambah', 2, 3);
INSERT INTO `kalkulator` VALUES (3, 5, 'tambah', 3, 8);
INSERT INTO `kalkulator` VALUES (4, 3, 'tambah', 2, 5);
INSERT INTO `kalkulator` VALUES (5, 3, 'tambah', 2, 5);
INSERT INTO `kalkulator` VALUES (6, 3, 'tambah', 2, 5);
INSERT INTO `kalkulator` VALUES (7, 2, 'tambah', 3, 5);
INSERT INTO `kalkulator` VALUES (8, 3, 'bagi', 1, 3);
INSERT INTO `kalkulator` VALUES (9, 4, 'bagi', 1, 4);
INSERT INTO `kalkulator` VALUES (10, 5, 'tambah', 0, 5);
INSERT INTO `kalkulator` VALUES (11, 0, 'tambah', 8, 8);
INSERT INTO `kalkulator` VALUES (12, 0, 'bagi', 8, 0);

-- ----------------------------
-- Table structure for management
-- ----------------------------
DROP TABLE IF EXISTS `management`;
CREATE TABLE `management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_departement` varchar(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_project` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_project`(`id_project`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `id_departement`(`id_departement`) USING BTREE,
  CONSTRAINT `management_ibfk_2` FOREIGN KEY (`id_project`) REFERENCES `project` (`id_project`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `management_ibfk_3` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `management_ibfk_4` FOREIGN KEY (`id_departement`) REFERENCES `departement` (`id_departement`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of management
-- ----------------------------
INSERT INTO `management` VALUES (6, 'a', '123', '123');
INSERT INTO `management` VALUES (7, 'aa', '123', '123');
INSERT INTO `management` VALUES (8, 'a', '123', '321');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id_project` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_project` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_project`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('123', 'Bangun Rancang Aplikasi');
INSERT INTO `project` VALUES ('321', 'Web dinamis');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('a', 'a', 'a');
INSERT INTO `user` VALUES ('Rayandra', 'aa', 'rayandra');
INSERT INTO `user` VALUES ('q', 'q', 'q');

SET FOREIGN_KEY_CHECKS = 1;
