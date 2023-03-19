/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : koperasi_pratama

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:25:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_barang
-- ----------------------------
DROP TABLE IF EXISTS `data_barang`;
CREATE TABLE `data_barang`  (
  `id` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_barang
-- ----------------------------
INSERT INTO `data_barang` VALUES ('ID.0001', '2018-02-05', 'LUX', 3000, 2800, 10);
INSERT INTO `data_barang` VALUES ('ID.0002', '2018-02-05', 'GIVE', 2000, 1800, 4);
INSERT INTO `data_barang` VALUES ('ID.0003', '2018-02-05', 'LIFEBOY', 3000, 2500, 4);
INSERT INTO `data_barang` VALUES ('ID.0004', '2018-02-05', 'DETTOL', 3500, 3000, 14);
INSERT INTO `data_barang` VALUES ('ID.0005', '2018-02-05', 'MEDIACARE', 2500, 2200, 20);
INSERT INTO `data_barang` VALUES ('ID.0006', '2018-02-05', 'HARMONY', 2000, 1600, 6);
INSERT INTO `data_barang` VALUES ('ID.0007', '2018-02-05', 'NUVO', 2300, 1800, 9);
INSERT INTO `data_barang` VALUES ('ID.0008', '2018-02-05', 'DOVE', 6500, 5900, 15);
INSERT INTO `data_barang` VALUES ('ID.0009', '2018-02-05', 'RINSO', 5500, 4900, 6);
INSERT INTO `data_barang` VALUES ('ID.0010', '2018-02-05', 'SOKLIN', 5500, 5000, 11);
INSERT INTO `data_barang` VALUES ('ID.0011', '2018-02-05', 'DAIA', 5000, 4600, 8);
INSERT INTO `data_barang` VALUES ('ID.0012', '2018-02-05', 'SURF', 5500, 5200, 14);
INSERT INTO `data_barang` VALUES ('ID.0013', '2018-02-05', 'ATTACK', 5500, 5000, 14);
INSERT INTO `data_barang` VALUES ('ID.0014', '2018-02-05', 'MOLTO', 10000, 9500, 11);
INSERT INTO `data_barang` VALUES ('ID.0015', '2018-02-05', 'SOFTENER SOKLIN', 5200, 4700, 11);
INSERT INTO `data_barang` VALUES ('ID.0016', '2018-02-05', 'SOKLIN LANTAI', 5500, 5000, 0);
INSERT INTO `data_barang` VALUES ('ID.0017', '2018-02-05', 'SABUN EKONOMI', 2200, 1800, 16);
INSERT INTO `data_barang` VALUES ('ID.0018', '2018-03-31', 'Biore Body Foam Daily 450ml', 16000, 12000, 25);
INSERT INTO `data_barang` VALUES ('ID.0019', '2018-03-31', 'Clean & Clear Oil Controlling Film 1\'s/ pink 50\'a', 17000, 15000, 50);
INSERT INTO `data_barang` VALUES ('ID.0020', '2018-03-31', 'Florida Orange Juice 360ml', 5000, 3500, 50);
INSERT INTO `data_barang` VALUES ('ID.0021', '2018-03-31', 'Promas Corned Beef ', 15000, 12000, 50);
INSERT INTO `data_barang` VALUES ('ID.0022', '2018-03-31', 'Baygon Aerosol Lavender 600ml', 26000, 20000, 10);
INSERT INTO `data_barang` VALUES ('ID.0023', '2018-03-31', 'MInyak Goreng Sania 2ltr ', 19000, 12500, 48);

-- ----------------------------
-- Table structure for data_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `data_karyawan`;
CREATE TABLE `data_karyawan`  (
  `id` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_karyawan` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gaji` int(100) NOT NULL,
  `total_kredit` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_karyawan
-- ----------------------------
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0001', 'Wahyu Purnawan', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0002', 'Tutik Nur Eni', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0003', 'Dimas Wisnu Wijaya', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0004', 'Agung Wardani', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0005', 'Adypa Risang Kurniawan', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0006', 'Heny Damayanti', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0007', 'Catur Agus Purnomo', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0008', 'Mochamad Arif Patria', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0009', 'Tri Tunggal Teguh Widodo', 'Bidang Keolahragaan', 'Tetap', 4400000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0010', 'Effendi Hari Marsudi Catur', 'Kabid Keolahragaan', 'Tetap', 5876000, NULL);
INSERT INTO `data_karyawan` VALUES ('DISPORAPAR.0011', 'Dwi Lestari', 'Bidang Kepemudaan ', 'Tetap', 4400000, NULL);

-- ----------------------------
-- Table structure for data_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `data_penjualan`;
CREATE TABLE `data_penjualan`  (
  `id` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nama_barang` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `untung` int(11) NOT NULL,
  `id_karyawan` int(88) NOT NULL,
  `nama_pembeli` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `payment_method` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_penjualan
-- ----------------------------

-- ----------------------------
-- Table structure for data_user
-- ----------------------------
DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(88) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_user
-- ----------------------------
INSERT INTO `data_user` VALUES (4, 'Agung', 'FEB', 'Admin', '1234', 'Admin');
INSERT INTO `data_user` VALUES (5, 'Sasa', 'Jaza', 'Sasa', '1234', 'Penjualan');

SET FOREIGN_KEY_CHECKS = 1;
