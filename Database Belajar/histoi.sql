/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : histoi

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:24:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for anime
-- ----------------------------
DROP TABLE IF EXISTS `anime`;
CREATE TABLE `anime`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `season` int(10) NOT NULL,
  `genre` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `eps` int(10) NOT NULL,
  `jenis` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `terakhir_nonton` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anime
-- ----------------------------
INSERT INTO `anime` VALUES (1, 'One Piece', 1, 'Adventure', 978, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (2, 'Kuma Kuma Bear', 1, 'Adventure', 12, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (3, 'Naruto', 1, 'Adventure', 500, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (4, 'Demon Slayer : Kimetsu No Yaiba The Movie : Mugen Train', 1, 'Action', 1, 'Movie', '2022-04-02');
INSERT INTO `anime` VALUES (5, 'Arifureta Shokugyou De Sekai Saikyou ', 1, 'Adventure', 13, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (6, 'Boruto: Naruto Next Generations', 1, 'Adventure', 78, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (7, 'Kimetsu No Yaiba', 1, 'Action', 26, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (8, 'Shingeki No Kyojin', 4, 'Action', 12, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (9, 'Absolute Duo', 1, 'Action', 12, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (10, 'Accel World', 1, 'Action', 24, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (11, 'Himouto! Umaru-Chan', 2, 'Comedy', 12, 'Series', '2022-04-02');
INSERT INTO `anime` VALUES (12, 'Hunter X Hunter', 1, 'Adventure', 148, 'Series', '2022-04-02');

-- ----------------------------
-- Table structure for anime_genre
-- ----------------------------
DROP TABLE IF EXISTS `anime_genre`;
CREATE TABLE `anime_genre`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anime_genre
-- ----------------------------
INSERT INTO `anime_genre` VALUES (1, 'Action');
INSERT INTO `anime_genre` VALUES (2, 'Horor');
INSERT INTO `anime_genre` VALUES (3, 'Adventure');
INSERT INTO `anime_genre` VALUES (4, 'Echi');
INSERT INTO `anime_genre` VALUES (5, 'Harem');
INSERT INTO `anime_genre` VALUES (6, 'Mecha');
INSERT INTO `anime_genre` VALUES (7, 'Comedy');

-- ----------------------------
-- Table structure for film
-- ----------------------------
DROP TABLE IF EXISTS `film`;
CREATE TABLE `film`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `genre` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `negara` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` int(4) NOT NULL,
  `jenis` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `terakhir_nonton` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film
-- ----------------------------
INSERT INTO `film` VALUES (1, 'Captain America : The First Avenger', 'hero', 'USA', 2011, 'movie', '2022-02-04');
INSERT INTO `film` VALUES (2, 'Captain America : The Winter Soldier', 'hero', 'USA', 2014, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (3, 'Captain America : Civil War', 'hero', 'USA', 2016, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (4, 'The Falcon And The Winter Soldier', 'hero', 'US', 2021, 'series', '2022-02-05');
INSERT INTO `film` VALUES (5, 'Captain Marvel', 'hero', 'Australia, USA', 2019, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (6, 'Iron Man', 'hero', 'USA', 2008, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (7, 'Iron Man 2', 'hero', 'USA', 2010, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (8, 'Iron Man 3', 'hero', 'USA', 2013, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (9, 'The Avengers', 'hero', 'USA', 2012, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (10, 'Avengers End Game', 'hero', 'USA', 2019, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (11, 'Avengers : Age Of Ultron', 'hero', 'USA', 2015, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (12, 'Avengers Infinity War', 'hero', 'USA', 2018, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (13, 'Guardian Of The Galaxy', 'hero', 'USA', 2014, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (14, 'Guardian Of The Galaxy Vol. 2', 'hero', 'USA', 2017, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (15, 'Doctor Strange', 'hero', 'USA', 2016, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (16, 'Hulk', 'hero', 'USA', 2003, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (17, 'The Incridible Hulk', 'hero', 'USA', 2008, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (18, 'Thor', 'hero', 'USA', 2011, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (19, 'Thor : The Dark World', 'hero', 'USA', 2013, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (20, 'Thor : Ragnarok', 'hero', 'USA', 2017, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (21, 'Ant-Man', 'hero', 'USA', 2015, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (22, 'Ant-Man And The Wasp', 'hero', 'USA', 2018, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (23, 'Black Widow', 'hero', 'USA', 2021, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (24, 'Hawkeye', 'hero', 'US', 2021, 'series', '2022-02-05');
INSERT INTO `film` VALUES (25, 'Spider-Man', 'hero', 'USA', 2002, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (26, 'Spider-Man 2', 'hero', 'USA', 2004, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (27, 'Spider-Man 3', 'hero', 'USA', 2007, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (28, 'The Amazing Spider-Man', 'hero', 'USA', 2012, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (29, 'The Amazing Spider-Man 2', 'hero', 'USA', 2014, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (30, 'Spider-Man : Homecoming', 'hero', 'USA', 2017, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (31, 'Spider-Man : Far From Home', 'hero', 'USA', 2019, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (32, 'Black Panther', 'hero', 'USA', 2018, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (33, 'Venom', 'hero', 'USA', 2018, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (34, 'Venom : Let There Be Carnage', 'hero', 'USA', 2021, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (35, 'Loki : Season 1', 'hero', 'USA', 2021, 'series', '2022-02-05');
INSERT INTO `film` VALUES (36, 'Mortal Kombat', 'action', 'USA', 2021, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (37, 'Shang-Chi And The Legend Of The Ten Rings', 'hero', 'Australia, USA', 2021, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (38, 'Eternals', 'hero', 'USA', 2021, 'movie', '2022-02-05');
INSERT INTO `film` VALUES (39, 'Red Notice', 'adventure', 'USA', 2021, 'movie', '2022-02-06');
INSERT INTO `film` VALUES (40, 'Harry Potter And The Philospoher\'s Stone', 'action', 'United Kingdom, USA', 2001, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (41, 'Harry Potter And The Cha,ber Of Secrets', 'action', 'United Kingdom, USA', 2002, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (42, 'Harry Potter And The Prisoner Of Azkaban', 'action', 'United Kingdom, USA', 2004, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (43, 'Harry Potter And The Goblet Of Fire', 'action', 'United Kingdom, USA', 2005, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (44, 'Harry Potter And The Order Of The Phoenix', 'action', 'United Kingdom, USA', 2007, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (45, 'Harry Potter And The Half-Blood Prince', 'action', 'United Kingdom, USA', 2009, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (46, 'Harry Potter And The Deathly Hollows : Part 1', 'action', 'United Kingdom, USA', 2010, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (47, 'Harry Potter And The Deathly Hollow : Part 2', 'action', 'United Kingdom, USA', 2011, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (48, 'Pirates Of The Caribbean : The Curse Of The Black Pearl', 'adventure', 'USA', 2003, 'Movie', '2022-02-07');
INSERT INTO `film` VALUES (49, 'Pirates Of The Caribbean : Dead Man\'s Chest', 'adventure', 'USA', 2006, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (50, 'Pirates Of The Caribbean : At World\'s End', 'adventure', 'USA', 2007, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (51, 'Pirates Of The Caribbean : On Stranger Tides', 'adventure', 'USA', 2011, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (52, 'Pirates Of The Caribbean : Dead Men Tell No Tales', 'adventure', 'USA', 2017, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (53, 'Free Guy', 'comedy', 'USA', 2021, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (54, 'The Fast And The Furious', 'action', 'USA', 2001, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (55, '2 Fast 2 Furious', 'action', 'USA', 2003, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (56, 'The Fast And The Furious : Tokyo Drift', 'action', 'USA', 2006, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (57, 'Fast & Furious', 'action', 'USA', 2009, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (58, 'Fast Five', 'action', 'USA', 2011, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (59, 'Fast & Furious 6', 'action', 'USA', 2013, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (60, 'Fast & Furious 9', 'action', 'USA', 2020, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (61, 'Fast & Furious Precents : Hobbs And Shaw', 'action', 'USA', 2019, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (62, 'Furious 7', 'action', 'USA', 2015, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (63, 'The Fate Of The Forious', 'action', 'USA', 2017, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (64, 'Green Lantern', 'hero', 'USA', 2011, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (65, 'Shazam', 'hero', 'Canada, USA', 2019, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (66, 'Aquaman', 'hero', 'USA', 2018, 'hero', '2022-02-07');
INSERT INTO `film` VALUES (67, 'Wonder Woman 1984', 'hero', 'USA', 2020, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (68, 'Wonde Woman', 'hero', 'USA', 2017, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (69, 'Superman Returns', 'hero', 'USA', 2006, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (70, 'Batman v Superman : Dawn Of Justice', 'hero', 'USA', 2016, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (71, 'Man Of Steel', 'hero', 'USA', 2013, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (72, 'Suicide Squad', 'hero', 'USA', 2016, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (73, 'The Suicide Squad', 'hero', 'USA', 2021, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (74, 'Birds Of Prey', 'hero', 'USA', 2020, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (75, 'Zack Snyder\'s Justice League', 'hero', '-', 2021, 'movie', '2022-02-07');
INSERT INTO `film` VALUES (76, 'X - Men', 'hero', 'USA', 2000, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (77, 'X - Men : The Last Stand', 'hero', 'USA', 2006, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (78, 'X - Men 2', 'hero', 'USA', 2003, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (79, 'X - Men Origins : Wolverine', 'hero', 'USA', 2009, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (80, 'X - Men : First Class', 'hero', 'USA', 2011, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (81, 'X - Men : Days Of Future Past', 'hero', 'USA', 2014, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (82, 'X - Men : Apocalypse', 'hero', 'USA', 2016, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (83, 'X - Men : Dark Phoenix', 'hero', 'USA', 2019, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (84, 'Logan', 'hero', 'USA', 2017, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (85, 'Deadpool', 'hero', 'USA', 2016, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (86, 'Deadpool 2', 'hero', 'USA', 2018, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (87, 'The Wolverine', 'hero', 'USA', 2013, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (88, 'Frozen', 'adventure', '-', 2013, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (89, 'Frozen II', 'adventure', '-', 2019, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (90, 'Finding Nemo', 'adventure', 'USA', 2003, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (91, 'Finding Dory', 'adventure', 'USA', 2016, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (92, 'Up', 'adventure', 'USA', 2009, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (93, 'Brave', 'adventure', 'USA', 2013, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (94, 'Robots', 'adventure', 'USA', 2005, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (95, 'The Incredibles', 'hero', 'USA', 2004, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (96, 'Incredibles 2', 'hero', 'USA', 2018, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (97, 'Monsters University', 'adventure', 'USA', 2013, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (98, 'Monsters Inc', 'adventure', 'USA', 2001, 'kartun', '2022-02-14');
INSERT INTO `film` VALUES (99, 'Clash Of The Titans', 'adventure', 'Australia, United Ki', 2010, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (100, 'The Chronicles Of Narnia: The Lion, The Witch And The Wardrobe', 'adventure', 'USA', 2005, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (101, 'The Chronicles Of Narnia : Prince Caspian', 'adventure', 'USA', 2008, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (102, 'The Chronicles Of Narnia : The Voyage Of The Dawn Treader', 'adventure', 'USA', 2010, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (103, 'Twilight', 'action', 'USA', 2008, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (104, '  The Twilight Saga: New Moon', 'action', 'USA', 2009, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (105, 'The Twilight Saga : Eclipse', 'action', 'USA', 2010, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (106, 'The Twilight Saga : Breaking Dawn Part 1', 'action', 'USA', 2011, 'action', '2022-02-14');
INSERT INTO `film` VALUES (107, 'The Twilight Saga : Breaking Dawn Part 2', 'action', 'USA', 2012, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (108, 'The Meg', 'action', 'China', 2018, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (109, 'Jurassic Park', 'adventure', 'USA', 1993, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (110, 'The Lost World : Jurassic Park', 'adventure', 'USA', 1997, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (111, 'Jurassic Park III', 'action', 'USA', 2001, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (112, 'Jurassic World ', 'adventure', 'USA', 2015, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (113, 'Jurassic World : Fallen Kingdom', 'adventure', 'USA', 2018, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (114, 'The Dictator', 'comedy', 'USA', 2012, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (115, 'The Conjuring', 'horor', 'USA', 2013, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (116, 'The Conjuring 2', 'horor', 'USA', 2016, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (117, 'It Chapter Two', 'horor', 'USA', 2019, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (118, 'It', 'horor', 'USA', 2010, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (119, 'Fantasy Island', 'horor', 'USA', 2020, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (120, 'Fullmetal Alchemist', 'action', 'Jepang', 2017, 'movie', '2022-02-14');
INSERT INTO `film` VALUES (121, 'Ip Man', 'action', 'China', 2008, 'movie', '2022-03-03');
INSERT INTO `film` VALUES (122, 'Ip Man 2', 'action', 'China', 2010, 'movie', '2022-03-03');
INSERT INTO `film` VALUES (123, 'Ip Man 3', 'action', 'China', 2015, 'movie', '2022-03-03');
INSERT INTO `film` VALUES (124, 'Ip Man 4 : The Finale', 'action', 'China', 2019, 'movie', '2022-03-03');
INSERT INTO `film` VALUES (125, 'Wreck-It Ralph', 'adventure', 'USA', 2012, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (126, 'Ralph Breaks The Internet', 'adventure', 'USA', 2018, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (127, 'Wrath Of The Titans', 'action', 'Spain', 2012, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (128, 'Raya And The Last Dragon', 'adventure', 'USA', 2021, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (129, 'Turbo', 'adventure', 'USA', 2013, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (130, 'Power Rangers', 'hero', 'USA', 2017, 'movie', '2022-03-08');
INSERT INTO `film` VALUES (131, 'Moon Knight', 'Hero', 'USA', 2022, 'Series', '2022-05-06');

-- ----------------------------
-- Table structure for film_genre
-- ----------------------------
DROP TABLE IF EXISTS `film_genre`;
CREATE TABLE `film_genre`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_genre
-- ----------------------------
INSERT INTO `film_genre` VALUES (1, 'Hero');
INSERT INTO `film_genre` VALUES (2, 'Action');

-- ----------------------------
-- Table structure for film_negara
-- ----------------------------
DROP TABLE IF EXISTS `film_negara`;
CREATE TABLE `film_negara`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `negara` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of film_negara
-- ----------------------------
INSERT INTO `film_negara` VALUES (1, 'USA');
INSERT INTO `film_negara` VALUES (2, 'Australia');

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_game` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lvl` int(5) NOT NULL,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `login` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `terakhir_main` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (1, 'Mobile Legend', '38335567 (2060)', 66, 'WandiRayandra', 'RawamA327', 'fb dan gp', '2022-02-04');
INSERT INTO `game` VALUES (2, 'Mobile Legend', '878826368 (12483)', 16, 'wandirayandra@gmail.com', '-', 'lainnya', '2022-03-07');
INSERT INTO `game` VALUES (3, 'IDLE GOG', '37691258600175652', 37, 'wandirayandra@gmail.com', '-', 'fb dan gp', '2022-03-07');
INSERT INTO `game` VALUES (4, 'Idle Heroes', '98595983655', 55, 'wandirayandra@gmail.com', 'RawamA327', 'lainnya', '2022-02-06');
INSERT INTO `game` VALUES (5, 'Forge Of Empires', '-', 0, 'WandiRayandra', 'WandiRayandra', 'googleplay', '2022-03-07');
INSERT INTO `game` VALUES (6, 'Mythic Heroes', '1242905226', 39, 'wandirayandra@gmail.com', '-', 'fb dan gp', '2022-03-07');
INSERT INTO `game` VALUES (7, 'Higgs Domino', '189594454', 6, 'WandiRayandra (No HP)', 'WandiRayandra (No HP)', 'lainnya', '2022-02-11');
INSERT INTO `game` VALUES (8, 'Magic Rush : Heroes', '62736729', 16, '-', '-', 'facebook', '2022-02-14');
INSERT INTO `game` VALUES (9, 'Knight\'s Raid : Lost Skytopia', 'a0029v', 65, 'wandirayandra@gmail.com', '-', 'googleplay', '2022-03-07');
INSERT INTO `game` VALUES (10, 'Let\'s Domino', '1773283', 23, 'wandirayandra@gmail.com', '-', 'fb dan gp', '2022-03-07');
INSERT INTO `game` VALUES (11, 'Anggry Birds 2', '169392133226', 0, 'wandirayandra@gmail.com', '-', 'googleplay', '2022-03-07');
INSERT INTO `game` VALUES (12, 'Dragon Mania Legend', '-', 53, 'wandirayandra@gmail.com / kakawwandi27@gmail.com', '-', 'googleplay', '2022-03-07');
INSERT INTO `game` VALUES (13, 'Dragon City', '100006701051676', 51, '-', '-', 'facebook', '2022-03-05');
INSERT INTO `game` VALUES (14, 'Tap Titans 2', '3685d6q', 0, 'wandirayandra@gmail.com', '-', 'googleplay', '2022-03-07');
INSERT INTO `game` VALUES (15, 'Clash Of Clans', 'VLYY8JRC', 133, 'kakawwandi27@gmail.com', '-', 'fb dan gp', '2022-03-07');
INSERT INTO `game` VALUES (16, 'Clash Of Clans', '9RUY9YOCV', 50, 'wandirayandra@gmail.com', '-', 'fb dan gp', '2022-03-07');
INSERT INTO `game` VALUES (17, 'Honkai Impak', '13927962', 78, 'wandi27', 'rawama327', 'lainnya', '2022-04-06');

-- ----------------------------
-- Table structure for komik
-- ----------------------------
DROP TABLE IF EXISTS `komik`;
CREATE TABLE `komik`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_chapter` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `terakhir_baca` date NOT NULL,
  `status` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tingkat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `situs` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of komik
-- ----------------------------
INSERT INTO `komik` VALUES (10, 'Maxed Out Leveling', 'Manhwa', '28', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (11, 'White Dragon Duke : Pendragon', 'Manhwa', '50', '2022-08-24', 'On Going', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (12, 'Trigger', 'Manhwa', '50', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (13, 'Guard Pass', 'Manhwa', '29', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (14, 'Limit Breaker', 'Manhwa', '74', '2022-04-06', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (15, 'Lightning Degree', 'Manhwa', '42', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (16, 'Dungeon House', 'Manhwa', '43', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (17, 'The Tutorial Tower Of The Advanced Player', 'Manhwa', '93', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (19, 'Leveling With The Gods', 'Manhwa', '56', '2022-07-02', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (20, 'Archmage Streamer', 'Manhwa', '23', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (21, 'Tale Of A Scribe Who Retires To The Countryside', 'Manhwa', '88', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (22, 'Dungeon Reset', 'Manhwa', '109', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (24, 'I Reincarnated As The Crazed Heir', 'Manhwa', '34', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (25, 'The Undefeatable Swordsman', 'Manhwa', '102', '2022-04-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (27, 'The Villain', 'Manhwa', '145', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (28, 'Arcane Sniper', 'manhwa', '60', '2022-04-02', 'On Going', 'Biasa', 'komikcastid.com');
INSERT INTO `komik` VALUES (29, 'A Disaster-Class Hero Has Returned', 'Manhwa', '38', '2022-06-08', 'On Going', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (30, 'Legend Of The Northern Blade', 'Manhwa', '130', '2022-05-06', 'Season End', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (31, 'Heavenly Martial God ', 'Manhwa', '53', '2022-05-30', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (32, 'The Beginning After The End', 'Manhwa', '155', '2022-08-14', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (33, 'Talent-Swallowing Magician', 'Manhwa', '42', '2022-08-24', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (34, 'The Girl Who See It', 'Manga', '41', '2022-04-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (35, 'Black Clover', 'Manga', '334', '2022-08-24', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (36, 'Tokyo Revenge', 'Manga', '266', '2022-08-24', 'On Going', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (37, 'Isekai Putin', 'Manga', '35', '2022-04-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (38, 'My Wife Is A Demon Queen', 'Manhua', '261', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (39, 'One Piece', 'Manga', '1052', '2022-07-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (40, 'God of Martial Arts', 'Manhua', '145', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (41, 'Apotheosis', 'Manhua', '896', '2022-04-20', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (42, 'Battle Through The Heaven', 'Manhua', '368', '2022-05-30', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (43, 'Tales Of Demon And Gods', 'Manhua', '382', '2022-06-08', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (44, 'Yigret', 'Manhwa', '36', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (45, 'Spirit Sword Sorvereign', 'Manhua', '470', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (46, 'Worlds Apocalypse Online', 'Manhua', '64', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (47, 'Weak Hero', 'Manhwa', '169', '2022-04-02', 'Gantung', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (48, 'Tensei Shitara Slime Datta Ken', 'Manga', '97', '2022-07-02', 'On Going', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (49, 'To Be Castellan King', 'Manhua', '340', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (50, 'Rebirth Of The Urban Immortal Cultivation', 'Manhua', '674', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (51, 'I Have A Dragon On My Body', 'Manhua', '440', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (52, 'Super System', 'Manhua', '215', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (53, 'Rebirth I Am The Great God', 'Manhua', '126', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (54, 'Immortal Daddy Xianzun', 'Manhua', '281', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (55, 'Star Martial God Technique', 'Manhua', '513', '2022-04-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (56, 'Zui Qiang Shen Wang', 'Manhua', '113', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (57, 'Dr Stone', 'Manga', '161', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (58, 'Release That Witch', 'Manhua', '334', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (59, 'I Am Daxianzun', 'Manhua', '377', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (60, 'City Of Heaven Time Stamp', 'Manhua', '246', '2022-04-18', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (61, 'The First Sequence', 'Manhua', '5', '2022-04-02', 'Gantung', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (62, 'Magic Emperor', 'Manhua', '310', '2022-08-14', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (63, 'Gangnam Dokkaebi', 'Manhwa', '24', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (64, 'Get Live', 'Manhwa', '79', '2022-05-06', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (65, 'Auto Hunting', 'Manhwa', '92', '2022-04-02', 'Gantung', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (66, 'Cultivation Return On Campus', 'Manhua', '248', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (67, 'Medical Martial Arts', 'Manhua', '198', '2022-04-02', 'On Going', 'Biasa', 'komiku (APK)');
INSERT INTO `komik` VALUES (68, 'Rich Player', 'Manhua', '92', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (69, 'Trail Notice', 'Manhua', '155', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (70, 'I Am An Invicible Genius', 'Manhua', '146', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (71, 'Shingeki No Kyojin', 'Manga', '139', '2022-04-02', 'End', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (72, 'Dark Mortal', 'Manhwa', '79', '2022-04-02', 'End', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (73, 'God Slayer', 'Manhua', '175', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (74, 'The Crazy Adventures Of Mystical Doctor', 'Manhua', '157', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (75, 'Rise Of The Demon King', 'Manhua', '90', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (76, 'Martial Master', 'Manhua', '416', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (77, 'The Last Human', 'Manhua', '311', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (78, 'Greatest Outcast', 'Manhwa', '69', '2022-04-02', 'End', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (79, 'Wu Dong Qian Kun', 'Manhua', '129', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (80, 'Strongest Anti M.E.T.A', 'Manhua', '347', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (81, 'Reawaken Man', 'Manhwa', '175', '2022-04-02', 'End', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (82, 'The Hunter', 'Manhua', '226', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (83, 'Master Of Gu', 'Manhua', '96', '2022-04-02', 'Gantung', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (84, 'Reborn Big Player', 'Manhua', '194', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (85, 'King Of Apocalypse', 'Manhua', '256', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (86, 'The Live', 'Manhwa', '74', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (87, 'First Dragon', 'Manhua', '71', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (88, 'The Second Coming Of Gluttony', 'Manhwa', '84', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (89, 'Highest Level Returnee (Max Level Returner)', 'Manhwa', '148', '2022-04-05', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (90, 'Solo Leveling', 'Manhwa', '179', '2022-04-02', 'End', 'Hot', 'komikcastid.com');
INSERT INTO `komik` VALUES (91, 'SSS-Class Suicide Hunter', 'Manhwa', '78', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (93, 'Taming Master', 'Manhwa', '63', '2022-04-02', 'On Going', 'Biasa', 'komikmama.co');
INSERT INTO `komik` VALUES (94, 'Hero Has Returned', 'Manhwa', '35', '2022-04-11', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (95, 'Overgeared', 'Manhwa', '120', '2022-04-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (96, 'Hoarding In Hell', 'Manhwa', '19', '2022-04-06', 'On Going', 'Biasa', 'komikmama.co');
INSERT INTO `komik` VALUES (97, 'Return Of The Legend', 'Manhwa', '53', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (98, 'The Great Mage Returns Afters 4000 Years', 'Manhwa', '138', '2022-08-24', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (99, 'Mook Hyang - The Origin', 'Manhwa', '47', '2022-04-02', 'End', 'Hot', 'komikcastid.com');
INSERT INTO `komik` VALUES (100, 'Please Have A Meal', 'Manhwa', '25', '2022-04-02', 'On Going', 'Biasa', 'komikcastid.com');
INSERT INTO `komik` VALUES (101, 'I Am Player Who Suck Alone', 'Manhwa', '81', '2022-04-06', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (102, 'Again My Life', 'Manhwa', '141', '2022-04-02', 'End', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (103, 'Return Of The 8th Class Magician', 'Manhwa', '65', '2022-08-14', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (104, 'Ranker Who Lives A Second Time', 'Manhwa', '130', '2022-08-24', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (105, 'Book Eater', 'Manhwa', '39', '2022-04-02', 'Season End', 'Biasa', 'komikcastid.com');
INSERT INTO `komik` VALUES (106, 'The World\'s Best Engineer', 'Manhwa', '40', '2022-05-06', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (107, 'Mook Hyang - Dark Lady', 'Manhwa', '110', '2022-04-02', 'On Going', 'Biasa', 'komikcastid.com');
INSERT INTO `komik` VALUES (108, 'The Legendary Moonlight Scluptor', 'Manhwa', '169', '2022-04-02', 'Season End', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (109, 'Reincarnation Of The Murim Clan\'s Former Ranker', 'Manhwa', '48', '2022-06-12', 'On Going', 'Rekomen', 'komikcast.me');
INSERT INTO `komik` VALUES (110, 'Heavenly Demon Instructor', 'Manhwa', '38', '2022-04-11', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (111, 'Return Of The Greatest Lancer', 'Manhwa', '57', '2022-08-16', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (112, 'Alone Necromancer', 'Manhwa', '17', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (113, 'Solo Max-Level Newbie', 'Manhwa', '52', '2022-07-02', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (114, 'The Dark Magician Transmigrates After 66666 Years', 'Manhwa', '56', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (115, 'Level 1 Player ', 'Manhwa', '28', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (116, 'Kill The Hero', 'Manhwa', '103', '2022-08-24', 'Season End', 'Hot', 'komikindo.id');
INSERT INTO `komik` VALUES (117, 'Return  Of The Broken Constellation', 'Manhwa', '42', '2022-08-16', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (118, 'SSS-Class Gacha Hunter', 'Manhwa', '37', '2022-04-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (119, 'Lazy Prince Becomes A Genius', 'Manhwa', '62', '2022-08-24', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (120, 'Ranker\'s Return (Remake)', 'Manhwa', '48', '2022-04-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (121, 'Kimetsu No Yaiba ', 'Manga', '205', '2022-04-02', 'End', 'Hot', 'komikindo.id');
INSERT INTO `komik` VALUES (122, 'Martial Peak', 'Manhua', '679', '2022-04-02', 'On Going', 'Biasa', 'komikindo.id');
INSERT INTO `komik` VALUES (123, 'Child Of Light', 'Manhua', '28', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (124, 'Slave B', 'Manhwa', '80', '2022-04-01', 'End', 'Rekomen', 'komiku (APK)');
INSERT INTO `komik` VALUES (125, 'Lord Of Money', 'Manhwa', '50', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (126, 'Shark', 'Manhwa', '76', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (127, 'Pathrifinder', 'Manhwa', '9', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (128, 'X Ash', 'Manhwa', '35', '2022-08-15', 'On Going', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (129, 'Movie Are Real ', 'Manhwa', '35', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (130, 'NSD Gaming', 'Manhua', '170', '2022-04-02', 'Gantung', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (131, 'The God Of High School', 'Manhwa', '256', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (132, 'Nanatsu No Taizai', 'Manga', '348', '2022-04-02', 'End', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (133, 'I Am The Sorcerer King', 'Manhwa', '143', '2022-04-01', 'End', 'Rekomen', 'komiku (APK)');
INSERT INTO `komik` VALUES (134, 'Tower Of God', 'Manhwa', '78', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (135, 'Volcanic Age', 'Manhwa', '195', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (136, 'Lord Of Goblins', 'Manhwa', '15', '2022-04-02', 'On Going', 'Rekomen', 'm.webtoons.com');
INSERT INTO `komik` VALUES (137, 'Return Of The Frozen Player', 'Manhwa', '49', '2022-04-02', 'Gantung', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (138, 'Second Life Of A Gangster', 'Manhwa', '83', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (139, 'God Of Blackfield', 'Manhwa', '130', '2022-06-08', 'On Going', 'Hot', 'komikcastid.com');
INSERT INTO `komik` VALUES (140, 'Leviathan', 'Manhwa', '203', '2022-05-30', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (141, 'Reverse Villain', 'Manhwa', '84', '2022-04-02', 'On Going', 'Rekomen', 'komikindo.id');
INSERT INTO `komik` VALUES (142, 'The Descent Of The Demonic Master', 'Manhwa', '113', '2022-04-02', 'Gantung', 'Rekomen', 'gudangkomik.com');
INSERT INTO `komik` VALUES (143, 'I Am Alone Genius DNA', 'Manhwa', '44', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (144, 'Return Survival', 'Manhwa', '76', '2022-04-02', 'On Going', 'Rekomen', 'Komiku (APK)');
INSERT INTO `komik` VALUES (145, 'Doctor\'s Rebirth', 'Manhwa', '66', '2022-04-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (146, 'Rooftop Sword Master', 'Manhwa', '79', '2022-04-02', 'Gantung', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (147, 'The Max Leveled Hero Will Return', 'Manhwa', '79', '2022-04-18', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (148, 'Nano Machine', 'Manhwa', '117', '2022-08-12', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (149, 'Return Of The Mad Demon', 'Manhwa', '51', '2022-07-02', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (150, 'Chronicles Of Heavenly Demon', 'Manhwa', '165', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (151, 'Regressor Instruction Manual', 'Manhwa', '50', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (152, 'Return Of The Flowery Mountain', 'Manhwa', '69', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (153, 'Villain To Kill', 'Manhwa', '34', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (154, 'Unbreakable', 'Manhwa', '9', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (155, 'Worn and Torn Newbie', 'Manhwa', '86', '2022-04-02', 'Season End', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (156, 'Mudang Association (Path Of The Shaman)', 'Manhwa', '76', '2022-06-08', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (157, 'Legend Of Asura - The Venom Dragon (Poison Dragon)', 'Manhwa', '81', '2022-06-08', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (158, 'Leveling Up, By Only Eating!', 'Manhwa', '93', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (159, 'How To Fight', 'Manhwa', '113', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (160, 'Player Who Can\'t Level Up', 'Manhwa', '48', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (161, 'Kenkyu Gurupu (Study Group)', 'Manhwa', '149', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (162, 'The Tutorial Is To Hard', 'Manhwa', '41', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (163, 'Rebirth Of The 8-Circled Mage', 'Manhwa', '73', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (164, 'Murim Login', 'Manhwa', '44', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (165, 'The Constellation That Returned From Hell', 'Manhwa', '52', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (166, 'Boss In School', 'Manhwa', '178', '2022-05-06', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (167, 'Omniscient Readers Viewpoints', 'Manhwa', '96', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (168, 'Player From Today Onwards', 'Manhwa', '41', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (169, 'Mercenary Endrollment', 'Manhwa', '97', '2022-08-14', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (170, 'The Lord\'s Coins Aren\'s Decreasing?!', 'Manhwa', '64', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (171, 'A Returner\'s Magic Should Be Special', 'Manhwa', '186', '2022-05-06', 'On Going', 'Rekomen', 'komiku.com');
INSERT INTO `komik` VALUES (172, 'Reincarnation Of The Suicideal', 'Manhwa', '35', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (173, 'The World After The Fall', 'Manhwa', '36', '2022-08-24', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (174, 'True Education', 'Manhwa', '96', '2022-08-16', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (175, 'Seoul Station Necromancer', 'Manhwa', '44', '2022-05-06', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (176, 'Ultra Alter', 'Manhwa', '26', '2022-04-11', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (177, 'Return To Player', 'Manhwa', '67', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (178, 'The Scholar Warrior', 'Manhwa', '34', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (179, 'Trash Of The Count\'s Family (Trash Noble)', 'Manhwa', '81', '2022-08-15', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (180, 'Memorize', 'Manhwa', '87', '2022-04-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (181, 'Reincarnation Of The Suicidal Battle God', 'Manhwa', '60', '2022-08-12', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (182, 'The Hero Returns', 'Manhwa', '20', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (183, 'My Civil Servant Life Reborn In The Strange World', 'Manhwa', '26', '2022-04-20', 'On Going', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (184, 'No Scope', 'Manhwa', '18', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (185, 'Ark', 'Manhwa', '2', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (186, 'Ha Buk Paeng\'s Youngest Son', 'Manhwa', '11', '2022-04-20', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (187, 'Perfect Surgeon', 'Manhwa', '1', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (188, 'The Returning Warior\'s Alley Restaurant', 'Manhwa', '1', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (189, 'Number One Star Instructor Master Baek', 'Manhwa', '4', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (190, 'The Heavenly Demon Destroys The Lich King\'s Murim', 'Manhwa', '22', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (191, 'The Challenger', 'Manhwa', '27', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (192, 'Otherworldly Sword King\'s Survival Records', 'Manhwa', '67', '2022-04-02', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (193, 'Millennium Spinning', 'Manhwa', '17', '2022-04-02', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (194, 'Legendary Youngest Son Of The Marquis House', 'Manhwa', '42', '2022-08-24', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (195, 'Above All God', 'Manhua', '162', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (196, 'Seoul Station Druid', 'Manhwa', '44', '2022-06-12', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (197, 'Estio', 'Manhwa', '11', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (198, 'Updater', 'Manhwa', '28', '2022-04-02', 'On Going', 'Biasa', 'Komiku (APK)');
INSERT INTO `komik` VALUES (199, 'Worthless Regression', 'Manhwa', '27', '2022-05-30', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (200, 'Is This Hero For Real?', 'Manhwa', '15', '2022-04-11', 'On Going', 'Biasa', 'komikmama.co');
INSERT INTO `komik` VALUES (201, 'Skeleton Soldier Couldn\'t Protect The Dungeon', 'Manhwa', '91', '2022-04-11', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (202, 'My Daughter Is The Final Boss', 'Manhwa', '23', '2022-05-06', 'On Going', 'Hot', 'komikcast.com');
INSERT INTO `komik` VALUES (203, 'Barbarian Quest', 'Manhwa', '38', '2022-08-14', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (204, 'The Grand Duchess Of The North Was Secretly A Villainess', 'Manhwa', '4', '2022-04-18', 'On Going', 'Biasa', 'komikcastid.com');
INSERT INTO `komik` VALUES (205, 'World Best Assassin', 'Manhwa', '6', '2022-04-18', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (206, 'Irregular Of 1 In 7 Billion', 'Manhwa', '1', '2022-04-18', 'On Going', 'Biasa', 'komikcast.com');
INSERT INTO `komik` VALUES (207, 'The Heavenly Demon Can\'t Live A Normal Life', 'Manhwa', '33', '2022-07-02', 'On Going', 'Hot', 'komikcast.me');
INSERT INTO `komik` VALUES (208, 'Swordmaster\'s Youngest Son', 'Manhwa', '33', '2022-08-14', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (209, 'I Regressed As The Duke', 'Manhwa', '23', '2022-05-30', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (210, 'Transmigrating To The Otherworld Once More', 'Manhwa', '5', '2022-05-06', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (211, 'Cystic Story', 'Manhwa', '61', '2022-05-06', 'On Going', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (212, 'I Have SSS-Rank Trait, But I Want A Normal Life', 'Manhwa', '17', '2022-05-30', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (213, 'Is The Demon King A Healer?', 'Manhwa', '12', '2022-05-20', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (214, 'The Breaker Eternal Force', 'Manhwa', '9', '2022-05-30', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (215, 'The Earth Savior Selection', 'Manhwa', '24', '2022-05-30', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (216, 'Overpowered Sword', 'Manhwa', '22', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (217, 'Heavenly Demon Cultivation Simulation', 'Manhwa', '17', '2022-06-08', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (218, 'One Punch Man', 'Manga', '224', '2022-08-24', 'On Going', 'Hot', 'Komiku (APK)');
INSERT INTO `komik` VALUES (219, 'Kanojo No Tomodachi', 'Manga', '33', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (220, 'Osananajimi Wa Yami Ochi Seijo!', 'Manga', '3', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (221, 'Damn Reincarnation', 'Manhwa', '21', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (222, 'I Obtained A Mythic Item', 'Manhwa', '9', '2022-07-02', 'On Going', 'Hot', 'komikmama.co');
INSERT INTO `komik` VALUES (223, 'Academy\'s Undercover Profesor', 'Manhwa', '17', '2022-08-12', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (224, 'Imaizumin Chi Wa Douyara Gal No Tamariba', 'Manhwa', '4', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (225, 'The Lazy Swordmaster', 'Manhwa', '16', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (226, 'Kanki Ou', 'Manga', '7', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (227, 'Hajirau Kimi Ga Mitanda', 'Manga', '5', '2022-07-02', 'On Going', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (228, 'The Newbie Too Strong', 'Manga', '5', '2022-07-02', 'On Going', 'Rekomen', 'komikmama.co');
INSERT INTO `komik` VALUES (229, 'Magical Shooting: Sniper Of Steel', 'Manhwa', '24', '2022-07-02', 'On Going', 'Rekomen', 'komikcastid.com');
INSERT INTO `komik` VALUES (230, 'Standard Of Reincarnation', 'Manhwa', '21', '2022-08-14', 'On Going', 'Rekomen', 'komikcast.com');
INSERT INTO `komik` VALUES (231, 'Kankin Ou', 'Manga', '9', '2022-08-14', 'On Going', 'Hot', 'komikcastid.com');
INSERT INTO `komik` VALUES (232, 'Player Who Returned 10000 Years Later', 'Manhwa', '19', '2022-08-16', 'On Going', 'Rekomen', 'komikcast.me');

-- ----------------------------
-- Table structure for situs_komik
-- ----------------------------
DROP TABLE IF EXISTS `situs_komik`;
CREATE TABLE `situs_komik`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of situs_komik
-- ----------------------------
INSERT INTO `situs_komik` VALUES (1, 'komikcast.com');
INSERT INTO `situs_komik` VALUES (2, 'Komiku (APK)');
INSERT INTO `situs_komik` VALUES (3, 'komikmama.co');
INSERT INTO `situs_komik` VALUES (4, 'komikcastid.com');
INSERT INTO `situs_komik` VALUES (5, 'komikindo.id');
INSERT INTO `situs_komik` VALUES (6, 'm.webtoons.com');
INSERT INTO `situs_komik` VALUES (7, 'gudangkomik.com');
INSERT INTO `situs_komik` VALUES (8, 'kakaopage.co.id');
INSERT INTO `situs_komik` VALUES (9, 'batotoo.com');
INSERT INTO `situs_komik` VALUES (10, 'komiku.com');
INSERT INTO `situs_komik` VALUES (11, 'komikcast.me');

SET FOREIGN_KEY_CHECKS = 1;
