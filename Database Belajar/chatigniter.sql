/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : chatigniter

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:23:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for block_user
-- ----------------------------
DROP TABLE IF EXISTS `block_user`;
CREATE TABLE `block_user`  (
  `blocked_from` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `blocked_to` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of block_user
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_fname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_lname` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bio` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dob` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_pass` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_avtar` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_logout` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`unique_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2bc812', 'Sample', 'Account', 'sample@gmail.com', 'Just a dummy account', '20-6-2021', '12-12-1980', '7410000000', '69 Dummy Address', 'password', '9b1a8f8c.jpg', 'active', '');
INSERT INTO `user` VALUES (2, '2c3831', 'test', 'test', 't@gmail.com', '', '6-11-2022', '', '', '', 'test1234', 'dbc36ed9.jpg', 'active', '');
INSERT INTO `user` VALUES (3, '533541', 'user', 'user', 'user1234@gmail.com', '', '5-11-2022', '', '', '', 'user1234', 'dc520f00.jpg', 'active', '');
INSERT INTO `user` VALUES (4, '56ca89', 'user', 'user', 'user@gmail', '', '5-11-2022', '', '', '', 'user', '690c4777.jpg', 'active', '');
INSERT INTO `user` VALUES (5, '61230f', 'test', 'test', 'te@gmail.com', '', '6-11-2022', '', '', '', 'test123', '39d89166.jpg', 'active', '');
INSERT INTO `user` VALUES (6, '7058b9', 'test', 'test', 'test@gmail.com', '', '6-11-2022', '', '', '', 'test', '2bd2caab.jpg', 'active', '');
INSERT INTO `user` VALUES (7, '72e3aa', 'admin', 'admin', 'admin@gmail.com', '', '5-11-2022', '', '', '', 'admin1234', '411445c9.jpg', 'active', '');
INSERT INTO `user` VALUES (8, 'dbfb3d', 'user', 'user', 'user@gmail.com', '', '5-11-2022', '', '', '', 'user', '278992e2.jpg', 'active', '');
INSERT INTO `user` VALUES (9, 'f45703', 'testing', 'testing', 'testing@gmail.com', '', '6-11-2022', '', '', '', 'testing1234', '12277af6.jpg', 'active', '');

-- ----------------------------
-- Table structure for user_messages
-- ----------------------------
DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE `user_messages`  (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receiver_message_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `message` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_messages
-- ----------------------------
INSERT INTO `user_messages` VALUES ('2022-11-05 20:50:06.000000', '533541', 'dbfb3d', 'hi');
INSERT INTO `user_messages` VALUES ('2022-11-05 20:50:26.000000', '533541', 'dbfb3d', 'tayo');
INSERT INTO `user_messages` VALUES ('2022-11-05 20:50:28.000000', '533541', 'dbfb3d', '');
INSERT INTO `user_messages` VALUES ('2022-11-05 20:52:28.000000', '72e3aa', '533541', 'hi bro');
INSERT INTO `user_messages` VALUES ('2022-11-05 20:52:41.000000', '533541', '72e3aa', 'hii');

SET FOREIGN_KEY_CHECKS = 1;
