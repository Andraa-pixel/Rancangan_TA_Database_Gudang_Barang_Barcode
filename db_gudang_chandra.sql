-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2026 at 06:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang_chandra`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_chandra`
--

CREATE TABLE `tbl_activity_chandra` (
  `id_activity_chandra` int(11) NOT NULL,
  `id_user_chandra` int(11) DEFAULT NULL,
  `username_chandra` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `waktu_login` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activity_chandra`
--

INSERT INTO `tbl_activity_chandra` (`id_activity_chandra`, `id_user_chandra`, `username_chandra`, `status`, `waktu_login`) VALUES
(1, 7, 'raffa', 'SUCCESS', '2026-02-08 11:14:20'),
(2, 1, 'chandra', 'SUCCESS', '2026-02-08 11:29:44'),
(3, 7, 'raffa', 'SUCCESS', '2026-02-08 11:30:24'),
(4, 1, 'chandra', 'SUCCESS', '2026-02-08 11:42:23'),
(5, 7, 'raffa', 'SUCCESS', '2026-02-08 11:51:16'),
(6, 7, 'raffa', 'SUCCESS', '2026-02-08 11:53:49'),
(7, 1, 'chandra', 'SUCCESS', '2026-02-08 11:54:04'),
(8, 1, 'chandra', 'SUCCESS', '2026-02-08 11:57:50'),
(9, 1, 'chandra', 'SUCCESS', '2026-02-08 12:05:56'),
(10, 7, 'raffa', 'SUCCESS', '2026-02-08 12:15:50'),
(11, 1, 'chandra', 'SUCCESS', '2026-02-08 12:38:07'),
(12, 7, 'raffa', 'SUCCESS', '2026-02-08 12:42:56'),
(13, 1, 'chandra', 'SUCCESS', '2026-02-08 12:43:08'),
(14, 7, 'raffa', 'SUCCESS', '2026-02-08 12:47:24'),
(15, 1, 'chandra', 'SUCCESS', '2026-02-08 12:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_chandra`
--

CREATE TABLE `tbl_barang_chandra` (
  `id_barang_chandra` int(11) NOT NULL,
  `nama_barang_chandra` varchar(100) DEFAULT NULL,
  `barcode_chandra` varchar(50) DEFAULT NULL,
  `stok_chandra` int(11) DEFAULT 0,
  `jenis_barang_chandra` enum('makanan','minuman','pakaian','elektronik') NOT NULL,
  `status_barang_chandra` enum('AKTIF','NONAKTIF') DEFAULT 'AKTIF',
  `created_at_chandra` datetime DEFAULT current_timestamp(),
  `tanggal_chandra` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_barang_chandra`
--

INSERT INTO `tbl_barang_chandra` (`id_barang_chandra`, `nama_barang_chandra`, `barcode_chandra`, `stok_chandra`, `jenis_barang_chandra`, `status_barang_chandra`, `created_at_chandra`, `tanggal_chandra`) VALUES
(8, 'Monde Snack Cheese', '8888166351127', 70, 'makanan', 'AKTIF', '2026-02-08 10:41:32', '2026-02-08'),
(11, 'Pesta Snack', 'BRG-7B8D912E', 0, 'makanan', 'NONAKTIF', '2026-02-08 10:41:32', '2026-02-08'),
(12, 'Monde Snack Cheese', 'BRG-CF9BDE70', 0, 'makanan', 'NONAKTIF', '2026-02-08 10:44:10', '2026-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grafik_transaksi_chandra`
--

CREATE TABLE `tbl_grafik_transaksi_chandra` (
  `id_chandra` int(11) NOT NULL,
  `periode_chandra` enum('minggu','bulan','tahun') NOT NULL,
  `labels_chandra` text NOT NULL,
  `masuk_chandra` text NOT NULL,
  `keluar_chandra` text NOT NULL,
  `created_at_chandra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_activity`
--

CREATE TABLE `tbl_login_activity` (
  `id_activity` int(11) NOT NULL,
  `id_user_chandra` int(11) NOT NULL,
  `username_chandra` varchar(50) NOT NULL,
  `waktu_login` datetime DEFAULT current_timestamp(),
  `status` enum('SUCCESS','FAILED') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login_activity`
--

INSERT INTO `tbl_login_activity` (`id_activity`, `id_user_chandra`, `username_chandra`, `waktu_login`, `status`) VALUES
(1, 0, 'raffa', '2026-02-07 15:39:52', 'FAILED'),
(2, 1, 'chandra', '2026-02-07 15:39:56', 'SUCCESS'),
(3, 0, 'raffa', '2026-02-07 15:42:19', 'FAILED'),
(4, 1, 'chandra', '2026-02-07 15:42:22', 'SUCCESS'),
(5, 4, 'raffa', '2026-02-07 15:50:08', 'SUCCESS'),
(6, 1, 'chandra', '2026-02-07 15:50:25', 'SUCCESS'),
(7, 4, 'raffa', '2026-02-07 15:53:31', 'SUCCESS'),
(8, 0, 'chan', '2026-02-07 15:53:48', 'FAILED'),
(9, 1, 'chandra', '2026-02-07 15:53:52', 'SUCCESS'),
(10, 1, 'chandra', '2026-02-07 16:15:33', 'SUCCESS'),
(11, 8, 'hanif', '2026-02-07 21:05:16', 'SUCCESS'),
(12, 1, 'chandra', '2026-02-07 21:05:28', 'SUCCESS'),
(13, 1, 'chandra', '2026-02-07 22:20:12', 'SUCCESS'),
(14, 1, 'chandra', '2026-02-07 22:20:39', 'SUCCESS'),
(15, 1, 'chandra', '2026-02-08 00:00:54', 'SUCCESS'),
(16, 8, 'hanif', '2026-02-08 00:01:02', 'SUCCESS'),
(17, 7, 'raffa', '2026-02-08 00:01:15', 'SUCCESS'),
(18, 7, 'raffa', '2026-02-08 00:02:12', 'SUCCESS'),
(19, 1, 'chandra', '2026-02-08 00:02:29', 'SUCCESS'),
(20, 1, 'chandra', '2026-02-08 00:05:32', 'SUCCESS'),
(21, 1, 'chandra', '2026-02-08 00:09:26', 'SUCCESS'),
(22, 7, 'raffa', '2026-02-08 00:10:46', 'SUCCESS'),
(23, 1, 'chandra', '2026-02-08 00:10:56', 'SUCCESS'),
(24, 7, 'raffa', '2026-02-08 00:11:48', 'SUCCESS'),
(25, 1, 'chandra', '2026-02-08 00:11:59', 'SUCCESS'),
(26, 1, 'chandra', '2026-02-08 09:35:30', 'SUCCESS'),
(27, 1, 'chandra', '2026-02-08 10:43:24', 'SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi_chandra`
--

CREATE TABLE `tbl_transaksi_chandra` (
  `id_transaksi_chandra` int(11) NOT NULL,
  `id_barang_chandra` int(11) DEFAULT NULL,
  `jenis_chandra` varchar(10) DEFAULT NULL,
  `jumlah_chandra` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal_chandra` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi_chandra`
--

INSERT INTO `tbl_transaksi_chandra` (`id_transaksi_chandra`, `id_barang_chandra`, `jenis_chandra`, `jumlah_chandra`, `created_at`, `tanggal_chandra`) VALUES
(10, 8, 'MASUK', 50, '2026-02-07 14:32:41', '2026-02-07'),
(11, 8, 'KELUAR', 20, '2026-02-07 14:46:21', '2026-02-07'),
(12, 8, 'MASUK', 40, '2026-02-08 04:41:34', '2026-02-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_chandra`
--

CREATE TABLE `tbl_user_chandra` (
  `id_user_chandra` int(11) NOT NULL,
  `username_chandra` varchar(50) NOT NULL,
  `password_chandra` varchar(50) NOT NULL,
  `role_chandra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_chandra`
--

INSERT INTO `tbl_user_chandra` (`id_user_chandra`, `username_chandra`, `password_chandra`, `role_chandra`) VALUES
(1, 'chandra', '123', 'admin'),
(7, 'raffa', '123', 'user'),
(8, 'hanif', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_chandra`
--
ALTER TABLE `tbl_activity_chandra`
  ADD PRIMARY KEY (`id_activity_chandra`),
  ADD KEY `fk_activity_user` (`id_user_chandra`);

--
-- Indexes for table `tbl_barang_chandra`
--
ALTER TABLE `tbl_barang_chandra`
  ADD PRIMARY KEY (`id_barang_chandra`),
  ADD UNIQUE KEY `barcode_chandra` (`barcode_chandra`);

--
-- Indexes for table `tbl_grafik_transaksi_chandra`
--
ALTER TABLE `tbl_grafik_transaksi_chandra`
  ADD PRIMARY KEY (`id_chandra`);

--
-- Indexes for table `tbl_login_activity`
--
ALTER TABLE `tbl_login_activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `tbl_transaksi_chandra`
--
ALTER TABLE `tbl_transaksi_chandra`
  ADD PRIMARY KEY (`id_transaksi_chandra`),
  ADD KEY `id_barang_chandra` (`id_barang_chandra`);

--
-- Indexes for table `tbl_user_chandra`
--
ALTER TABLE `tbl_user_chandra`
  ADD PRIMARY KEY (`id_user_chandra`),
  ADD UNIQUE KEY `username_chandra` (`username_chandra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_chandra`
--
ALTER TABLE `tbl_activity_chandra`
  MODIFY `id_activity_chandra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_barang_chandra`
--
ALTER TABLE `tbl_barang_chandra`
  MODIFY `id_barang_chandra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_grafik_transaksi_chandra`
--
ALTER TABLE `tbl_grafik_transaksi_chandra`
  MODIFY `id_chandra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login_activity`
--
ALTER TABLE `tbl_login_activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_transaksi_chandra`
--
ALTER TABLE `tbl_transaksi_chandra`
  MODIFY `id_transaksi_chandra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user_chandra`
--
ALTER TABLE `tbl_user_chandra`
  MODIFY `id_user_chandra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_activity_chandra`
--
ALTER TABLE `tbl_activity_chandra`
  ADD CONSTRAINT `fk_activity_user` FOREIGN KEY (`id_user_chandra`) REFERENCES `tbl_user_chandra` (`id_user_chandra`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_transaksi_chandra`
--
ALTER TABLE `tbl_transaksi_chandra`
  ADD CONSTRAINT `tbl_transaksi_chandra_ibfk_1` FOREIGN KEY (`id_barang_chandra`) REFERENCES `tbl_barang_chandra` (`id_barang_chandra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
