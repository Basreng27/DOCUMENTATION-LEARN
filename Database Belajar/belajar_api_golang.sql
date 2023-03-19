/*
 Navicat Premium Data Transfer

 Source Server         : LocalMySQL
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33)
 Source Host           : localhost:3306
 Source Schema         : belajar_api_golang

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33)
 File Encoding         : 65001

 Date: 07/12/2022 08:20:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hobby
-- ----------------------------
DROP TABLE IF EXISTS `hobby`;
CREATE TABLE `hobby`  (
  `id_hobby` int(11) NOT NULL,
  `hobby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_hobby`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hobby
-- ----------------------------
INSERT INTO `hobby` VALUES (1, 'Coding');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_hobby` int(11) NOT NULL,
  PRIMARY KEY (`nim`) USING BTREE,
  INDEX `id_hobby`(`id_hobby`) USING BTREE,
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_hobby`) REFERENCES `hobby` (`id_hobby`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_buktitransfer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_buktitransfer`;
CREATE TABLE `tbl_buktitransfer`  (
  `id_transfer` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengirim` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_transfer` date NOT NULL,
  `jam_transfer` time NOT NULL,
  `bank_transfer` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_bukti` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_penjualan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_transfer`) USING BTREE,
  INDEX `bkt_nopjl`(`no_penjualan`) USING BTREE,
  CONSTRAINT `bkt_nopjl` FOREIGN KEY (`no_penjualan`) REFERENCES `tbl_penjualan` (`no_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_buktitransfer
-- ----------------------------
INSERT INTO `tbl_buktitransfer` VALUES (5, 'Rangga Putra', '2020-06-20', '20:13:07', 'BRI', 'bkt-1592668874.jpg', 'PJL/20200601/001');

-- ----------------------------
-- Table structure for tbl_datapenerima
-- ----------------------------
DROP TABLE IF EXISTS `tbl_datapenerima`;
CREATE TABLE `tbl_datapenerima`  (
  `id_datapenerima` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerima` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nohp_penerima` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_penerima` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_pos` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi_penerima` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kabkota_penerima` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kurir_pengiriman` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paket_pengiriman` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `etd_paket` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ongkir_paket` int(11) NOT NULL,
  `berat_kiriman` int(11) NOT NULL,
  `no_penjualan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_plg` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_datapenerima`) USING BTREE,
  INDEX `pnrm_nopjl`(`no_penjualan`) USING BTREE,
  CONSTRAINT `pnrm_nopjl` FOREIGN KEY (`no_penjualan`) REFERENCES `tbl_penjualan` (`no_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_datapenerima
-- ----------------------------
INSERT INTO `tbl_datapenerima` VALUES (19, 'Rangga Putra', '085321404002', 'Jl. Paradise, Coldplay, Kota Mataram', '20477', 'Nusa Tenggara Barat (NTB)', 'Mataram', 'tiki', 'ECO', '4', 44000, 250, 'PJL/20200601/001', '2020032901');
INSERT INTO `tbl_datapenerima` VALUES (20, 'Haidar Baihaqi', '085239072433', 'Jl. Jendral Soedirman No 47, Kebun Tunggal, Semarang, Jawa Tengah.', '50227', 'Jawa Tengah', 'Semarang', 'jne', 'REG', '1-2', 15000, 750, 'PJL/20200622/001', '2020051201');

-- ----------------------------
-- Table structure for tbl_datapengiriman
-- ----------------------------
DROP TABLE IF EXISTS `tbl_datapengiriman`;
CREATE TABLE `tbl_datapengiriman`  (
  `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `no_resi` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jasa_kirim` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_kirim` date NOT NULL,
  `lama_kirim` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `catatan_kirim` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tgl_record` date NOT NULL,
  `no_penjualan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_pgw` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengiriman`) USING BTREE,
  INDEX `pngrmn_nopjl`(`no_penjualan`) USING BTREE,
  CONSTRAINT `pngrmn_nopjl` FOREIGN KEY (`no_penjualan`) REFERENCES `tbl_penjualan` (`no_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_datapengiriman
-- ----------------------------
INSERT INTO `tbl_datapengiriman` VALUES (6, 'MTR200620KB', 'Tiki', '2020-06-21', '3-5', 'Mohon segera konfirmasi kami jika barang telah diterima, Terima kasih telah berbelanja dan kami tunggu orderan selanjutnya.', '2020-06-20', 'PJL/20200601/001', 'PGW001');

-- ----------------------------
-- Table structure for tbl_keranjang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keranjang`;
CREATE TABLE `tbl_keranjang`  (
  `id_keranjang` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_krj` date NOT NULL,
  `jam_krj` time NOT NULL,
  `kode_plg` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_keranjang`) USING BTREE,
  INDEX `krj_kodeplg`(`kode_plg`) USING BTREE,
  CONSTRAINT `krj_kodeplg` FOREIGN KEY (`kode_plg`) REFERENCES `tbl_pelanggan` (`kode_plg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_keranjang
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_keranjangdetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keranjangdetail`;
CREATE TABLE `tbl_keranjangdetail`  (
  `id_krjdt` int(11) NOT NULL AUTO_INCREMENT,
  `id_prd` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_ukuran` int(11) NOT NULL,
  `jml_prd` int(11) NOT NULL,
  `id_keranjang` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_krjdt`) USING BTREE,
  INDEX `krjd_idprd`(`id_prd`) USING BTREE,
  INDEX `krjd_idkrj`(`id_keranjang`) USING BTREE,
  CONSTRAINT `krjd_idkrj` FOREIGN KEY (`id_keranjang`) REFERENCES `tbl_keranjang` (`id_keranjang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `krjd_idprd` FOREIGN KEY (`id_prd`) REFERENCES `tbl_produk` (`id_prd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_keranjangdetail
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pegawai`;
CREATE TABLE `tbl_pegawai`  (
  `id_pgw` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pgw` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender_pgw` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lahir_pgw` date NOT NULL,
  `posisi_pgw` enum('Manager','Kasir') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_pgw` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_pgw` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_pgw` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pgw`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pegawai
-- ----------------------------
INSERT INTO `tbl_pegawai` VALUES ('PGW001', 'Aslan Kemal', 'Laki-laki', '1996-02-01', 'Manager', 'Kosan Alif, Mlati, Sleman, Yogyakarta', 'aslankemal', 'aslankemal');
INSERT INTO `tbl_pegawai` VALUES ('PGW002', 'Heri Prasetyo', 'Laki-laki', '1994-04-17', 'Manager', 'Jalan Siliwangi, Jl. Ring Road Utara Jl. Jombor Lor, Mlati Krajan, Sendangadi, Kec. Mlati, Kabupaten Sleman.', 'bapakheri', 'bapakheri');

-- ----------------------------
-- Table structure for tbl_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pelanggan`;
CREATE TABLE `tbl_pelanggan`  (
  `kode_plg` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_plg` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender_plg` enum('Laki-laki','Perempuan') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email_plg` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username_plg` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_plg` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tglregis_plg` date NOT NULL,
  PRIMARY KEY (`kode_plg`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pelanggan
-- ----------------------------
INSERT INTO `tbl_pelanggan` VALUES ('2020032901', 'Rangga Putra Rizdillah', 'Laki-laki', 'ranggaputra@gmail.com', 'rangga', 'rangga', '2020-03-29');
INSERT INTO `tbl_pelanggan` VALUES ('2020040401', 'Arif Setyo', 'Laki-laki', 'arifsetyo@gmail.com', 'arif', 'arif', '2020-04-04');
INSERT INTO `tbl_pelanggan` VALUES ('2020051201', 'Haidar Baihaqi', 'Laki-laki', 'haidarbaihaqi@gmail.com', 'haidar', 'haidar', '2020-05-12');

-- ----------------------------
-- Table structure for tbl_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penjualan`;
CREATE TABLE `tbl_penjualan`  (
  `no_penjualan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `jam_penjualan` time NOT NULL,
  `total_penjualan` int(11) NOT NULL,
  `diskon_penjualan` int(11) NOT NULL,
  `bayar_penjualan` int(11) NOT NULL,
  `metode_penjualan` enum('Offline','Online') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lunas_penjualan` enum('Lunas','Pending') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_penjualan` enum('Belum Bayar','Menunggu Verifikasi','Verifikasi','Dikirim','Selesai') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_plg` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pgw` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no_penjualan`) USING BTREE,
  INDEX `pjl_idpgw`(`id_pgw`) USING BTREE,
  INDEX `pjl_kdplg`(`kode_plg`) USING BTREE,
  CONSTRAINT `pjl_idpgw` FOREIGN KEY (`id_pgw`) REFERENCES `tbl_pegawai` (`id_pgw`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pjl_kdplg` FOREIGN KEY (`kode_plg`) REFERENCES `tbl_pelanggan` (`kode_plg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penjualan
-- ----------------------------
INSERT INTO `tbl_penjualan` VALUES ('PJL/20200522/001', '2020-05-22', '12:33:46', 90000, 0, 90000, 'Offline', 'Lunas', 'Selesai', NULL, 'PGW001');
INSERT INTO `tbl_penjualan` VALUES ('PJL/20200527/001', '2020-05-27', '11:59:56', 234000, 10, 250000, 'Offline', 'Lunas', 'Selesai', NULL, 'PGW001');
INSERT INTO `tbl_penjualan` VALUES ('PJL/20200601/001', '2020-06-02', '00:10:35', 90000, 0, 0, 'Online', 'Lunas', 'Dikirim', '2020032901', NULL);
INSERT INTO `tbl_penjualan` VALUES ('PJL/20200602/002', '2020-06-02', '20:23:31', 220000, 0, 250000, 'Offline', 'Lunas', 'Selesai', NULL, 'PGW001');
INSERT INTO `tbl_penjualan` VALUES ('PJL/20200622/001', '2020-06-22', '18:58:07', 260000, 0, 0, 'Online', 'Pending', 'Belum Bayar', '2020051201', NULL);

-- ----------------------------
-- Table structure for tbl_penjualandetail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_penjualandetail`;
CREATE TABLE `tbl_penjualandetail`  (
  `no_pjl_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_prd` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_ukuran` int(11) NOT NULL,
  `harga_prd` int(11) NOT NULL,
  `diskon_prd` int(11) NOT NULL,
  `jml_prd` int(11) NOT NULL,
  `subtotal_prd` int(11) NOT NULL,
  `no_penjualan` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`no_pjl_detail`) USING BTREE,
  INDEX `pjld_idprd`(`id_prd`) USING BTREE,
  INDEX `pjld_nopjl`(`no_penjualan`) USING BTREE,
  CONSTRAINT `pjld_idprd` FOREIGN KEY (`id_prd`) REFERENCES `tbl_produk` (`id_prd`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pjld_nopjl` FOREIGN KEY (`no_penjualan`) REFERENCES `tbl_penjualan` (`no_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_penjualandetail
-- ----------------------------
INSERT INTO `tbl_penjualandetail` VALUES (19, 'PRD003', 87, 90000, 0, 1, 90000, 'PJL/20200522/001');
INSERT INTO `tbl_penjualandetail` VALUES (26, 'PRD014', 132, 170000, 0, 1, 170000, 'PJL/20200527/001');
INSERT INTO `tbl_penjualandetail` VALUES (27, 'PRD013', 128, 90000, 0, 1, 90000, 'PJL/20200527/001');
INSERT INTO `tbl_penjualandetail` VALUES (28, 'PRD003', 87, 90000, 0, 1, 90000, 'PJL/20200601/001');
INSERT INTO `tbl_penjualandetail` VALUES (29, 'PRD013', 127, 90000, 0, 1, 90000, 'PJL/20200602/002');
INSERT INTO `tbl_penjualandetail` VALUES (30, 'PRD016', 139, 130000, 0, 1, 130000, 'PJL/20200602/002');
INSERT INTO `tbl_penjualandetail` VALUES (31, 'PRD012', 124, 170000, 0, 1, 170000, 'PJL/20200622/001');
INSERT INTO `tbl_penjualandetail` VALUES (32, 'PRD013', 127, 90000, 0, 1, 90000, 'PJL/20200622/001');

-- ----------------------------
-- Table structure for tbl_produk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk`  (
  `id_prd` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_prd` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori_prd` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga_prd` int(11) NOT NULL,
  `diskon_prd` int(11) NOT NULL,
  `stok_prd` int(11) NOT NULL,
  `berat_prd` int(11) NOT NULL,
  `deskripsi_prd` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar_prd` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_prd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_produk
-- ----------------------------
INSERT INTO `tbl_produk` VALUES ('PRD001', 'Turbidity Black', 'Kaus', 90000, 0, 55, 250, '', 'prd-1589990222.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD002', 'Aester Earthshaker Black', 'Kaus', 90000, 0, 42, 250, '', 'prd-1589990332.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD003', 'Noxa Grind Viruses Black', 'Kaus', 90000, 0, 38, 250, '', 'prd-1589990388.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD005', 'Death Vertical Black', 'Kaus', 90000, 0, 26, 250, '', 'prd-1589990584.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD006', 'Death Vomit Black Orange', 'Kaus', 90000, 0, 28, 250, '', 'prd-1589990639.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD007', 'Jihad Black', 'Kaus', 90000, 0, 13, 250, '', 'prd-1589990686.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD008', 'Turbidity Knife Black', 'Kaus', 90000, 0, 27, 250, '', 'prd-1589990742.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD009', 'Gerogot Skull Black', 'Kaus', 90000, 0, 30, 250, '', 'prd-1589990859.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD010', 'Noxa Propaganda', 'Kaus', 90000, 0, 44, 250, '', 'prd-1589990919.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD011', 'BLCKSDW Hoodie C1', 'Jaket', 170000, 0, 41, 500, '', 'prd-1589991113.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD012', 'Black Shadow UFO Hoodie', 'Jaket', 170000, 0, 15, 500, '', 'prd-1589991249.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD013', 'BLCKSDW Tricolor', 'Kaus', 90000, 0, 44, 250, '', 'prd-1589991304.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD014', 'Black Shadow est013 Hoodie', 'Jaket', 170000, 0, 30, 500, '', 'prd-1590124908.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD015', 'Black Shadow Flannel C1', 'Kemeja', 130000, 0, 17, 250, '', 'prd-1590125004.jpg');
INSERT INTO `tbl_produk` VALUES ('PRD016', 'Black Shadow Flannel C2', 'Kemeja', 130000, 0, 16, 250, '', 'prd-1590125068.jpg');

-- ----------------------------
-- Table structure for tbl_ukuranprd
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ukuranprd`;
CREATE TABLE `tbl_ukuranprd`  (
  `id_ukuran` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan_ukr` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok_ukr` int(11) NOT NULL,
  `id_prd` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_ukuran`) USING BTREE,
  INDEX `ukuran_idprd`(`id_prd`) USING BTREE,
  CONSTRAINT `ukuran_idprd` FOREIGN KEY (`id_prd`) REFERENCES `tbl_produk` (`id_prd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_ukuranprd
-- ----------------------------
INSERT INTO `tbl_ukuranprd` VALUES (78, 'S', 12, 'PRD001');
INSERT INTO `tbl_ukuranprd` VALUES (79, 'M', 18, 'PRD001');
INSERT INTO `tbl_ukuranprd` VALUES (80, 'L', 17, 'PRD001');
INSERT INTO `tbl_ukuranprd` VALUES (81, 'XL', 8, 'PRD001');
INSERT INTO `tbl_ukuranprd` VALUES (82, 'S', 8, 'PRD002');
INSERT INTO `tbl_ukuranprd` VALUES (83, 'M', 12, 'PRD002');
INSERT INTO `tbl_ukuranprd` VALUES (84, 'L', 19, 'PRD002');
INSERT INTO `tbl_ukuranprd` VALUES (85, 'XL', 3, 'PRD002');
INSERT INTO `tbl_ukuranprd` VALUES (86, 'S', 18, 'PRD003');
INSERT INTO `tbl_ukuranprd` VALUES (87, 'M', 6, 'PRD003');
INSERT INTO `tbl_ukuranprd` VALUES (88, 'L', 4, 'PRD003');
INSERT INTO `tbl_ukuranprd` VALUES (89, 'XL', 10, 'PRD003');
INSERT INTO `tbl_ukuranprd` VALUES (94, 'S', 6, 'PRD005');
INSERT INTO `tbl_ukuranprd` VALUES (95, 'M', 7, 'PRD005');
INSERT INTO `tbl_ukuranprd` VALUES (96, 'L', 3, 'PRD005');
INSERT INTO `tbl_ukuranprd` VALUES (97, 'XL', 10, 'PRD005');
INSERT INTO `tbl_ukuranprd` VALUES (98, 'S', 3, 'PRD006');
INSERT INTO `tbl_ukuranprd` VALUES (99, 'M', 14, 'PRD006');
INSERT INTO `tbl_ukuranprd` VALUES (100, 'L', 10, 'PRD006');
INSERT INTO `tbl_ukuranprd` VALUES (101, 'XL', 1, 'PRD006');
INSERT INTO `tbl_ukuranprd` VALUES (102, 'S', 2, 'PRD007');
INSERT INTO `tbl_ukuranprd` VALUES (103, 'M', 3, 'PRD007');
INSERT INTO `tbl_ukuranprd` VALUES (104, 'L', 2, 'PRD007');
INSERT INTO `tbl_ukuranprd` VALUES (105, 'XL', 6, 'PRD007');
INSERT INTO `tbl_ukuranprd` VALUES (106, 'S', 14, 'PRD008');
INSERT INTO `tbl_ukuranprd` VALUES (107, 'M', 8, 'PRD008');
INSERT INTO `tbl_ukuranprd` VALUES (108, 'L', 4, 'PRD008');
INSERT INTO `tbl_ukuranprd` VALUES (109, 'XL', 1, 'PRD008');
INSERT INTO `tbl_ukuranprd` VALUES (110, 'S', 4, 'PRD009');
INSERT INTO `tbl_ukuranprd` VALUES (111, 'M', 12, 'PRD009');
INSERT INTO `tbl_ukuranprd` VALUES (112, 'L', 11, 'PRD009');
INSERT INTO `tbl_ukuranprd` VALUES (113, 'XL', 3, 'PRD009');
INSERT INTO `tbl_ukuranprd` VALUES (114, 'S', 12, 'PRD010');
INSERT INTO `tbl_ukuranprd` VALUES (115, 'M', 23, 'PRD010');
INSERT INTO `tbl_ukuranprd` VALUES (116, 'L', 7, 'PRD010');
INSERT INTO `tbl_ukuranprd` VALUES (117, 'XL', 2, 'PRD010');
INSERT INTO `tbl_ukuranprd` VALUES (118, 'S', 0, 'PRD011');
INSERT INTO `tbl_ukuranprd` VALUES (119, 'M', 12, 'PRD011');
INSERT INTO `tbl_ukuranprd` VALUES (120, 'L', 18, 'PRD011');
INSERT INTO `tbl_ukuranprd` VALUES (121, 'XL', 11, 'PRD011');
INSERT INTO `tbl_ukuranprd` VALUES (122, 'S', 3, 'PRD012');
INSERT INTO `tbl_ukuranprd` VALUES (123, 'M', 2, 'PRD012');
INSERT INTO `tbl_ukuranprd` VALUES (124, 'L', 9, 'PRD012');
INSERT INTO `tbl_ukuranprd` VALUES (125, 'XL', 1, 'PRD012');
INSERT INTO `tbl_ukuranprd` VALUES (126, 'S', 17, 'PRD013');
INSERT INTO `tbl_ukuranprd` VALUES (127, 'M', 10, 'PRD013');
INSERT INTO `tbl_ukuranprd` VALUES (128, 'L', 15, 'PRD013');
INSERT INTO `tbl_ukuranprd` VALUES (129, 'XL', 2, 'PRD013');
INSERT INTO `tbl_ukuranprd` VALUES (130, 'S', 6, 'PRD014');
INSERT INTO `tbl_ukuranprd` VALUES (131, 'M', 9, 'PRD014');
INSERT INTO `tbl_ukuranprd` VALUES (132, 'L', 11, 'PRD014');
INSERT INTO `tbl_ukuranprd` VALUES (133, 'XL', 4, 'PRD014');
INSERT INTO `tbl_ukuranprd` VALUES (134, 'S', 3, 'PRD015');
INSERT INTO `tbl_ukuranprd` VALUES (135, 'M', 7, 'PRD015');
INSERT INTO `tbl_ukuranprd` VALUES (136, 'L', 5, 'PRD015');
INSERT INTO `tbl_ukuranprd` VALUES (137, 'XL', 2, 'PRD015');
INSERT INTO `tbl_ukuranprd` VALUES (138, 'S', 2, 'PRD016');
INSERT INTO `tbl_ukuranprd` VALUES (139, 'M', 7, 'PRD016');
INSERT INTO `tbl_ukuranprd` VALUES (140, 'L', 4, 'PRD016');
INSERT INTO `tbl_ukuranprd` VALUES (141, 'XL', 3, 'PRD016');

SET FOREIGN_KEY_CHECKS = 1;
