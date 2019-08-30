-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 03:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keuangan_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id_deposit` int(11) NOT NULL,
  `no_rawat` int(11) NOT NULL,
  `tgl_deposit` date NOT NULL,
  `besar_deposit` int(11) NOT NULL,
  `nip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id_deposit`, `no_rawat`, `tgl_deposit`, `besar_deposit`, `nip`) VALUES
(8, 4000, '2019-08-19', 12312, 1232134324),
(9, 8888888, '2019-08-13', 23000, 888888),
(10, 3, '2019-08-21', 4, 234),
(11, 999999999, '2019-08-28', 4, 234),
(12, 151201, '2019-08-28', 30000, 2132),
(13, 3000, '2019-08-28', 20001, 64481615);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_lengkap`, `email`, `no_hp`, `foto`) VALUES
(2, 'Karyawan Ke- 2', 'karyawan-2@gmil.com', '089699935552', 'foto-karyawan-2.jpg'),
(3, 'Karyawan Ke-', 'karyawan-3@gmil.com', '089699935552', 'foto-karyawan-3.jpg'),
(4, 'Karyawan Ke-', 'karyawan-4@gmil.com', '089699935552', 'foto-karyawan-4.jpg'),
(5, 'Karyawan Ke-', 'karyawan-5@gmil.com', '089699935552', 'foto-karyawan-5.jpg'),
(6, 'Karyawan Ke-', 'karyawan-6@gmil.com', '089699935552', 'foto-karyawan-6.jpg'),
(7, 'Karyawan Ke-', 'karyawan-7@gmil.com', '089699935552', 'foto-karyawan-7.jpg'),
(8, 'Karyawan Ke-', 'karyawan-8@gmil.com', '089699935552', 'foto-karyawan-8.jpg'),
(9, 'Karyawan Ke-', 'karyawan-9@gmil.com', '089699935552', 'foto-karyawan-9.jpg'),
(10, 'Karyawan Ke-', 'karyawan-10@gmil.com', '089699935552', 'foto-karyawan-10.jpg'),
(11, 'Karyawan Ke-', 'karyawan-11@gmil.com', '089699935552', 'foto-karyawan-11.jpg'),
(12, 'Karyawan Ke-', 'karyawan-12@gmil.com', '089699935552', 'foto-karyawan-12.jpg'),
(13, 'Karyawan Ke-', 'karyawan-13@gmil.com', '089699935552', 'foto-karyawan-13.jpg'),
(14, 'Karyawan Ke-', 'karyawan-14@gmil.com', '089699935552', 'foto-karyawan-14.jpg'),
(15, 'Karyawan Ke-', 'karyawan-15@gmil.com', '089699935552', 'foto-karyawan-15.jpg'),
(16, 'Karyawan Ke-', 'karyawan-16@gmil.com', '089699935552', 'foto-karyawan-16.jpg'),
(17, 'Karyawan Ke-', 'karyawan-17@gmil.com', '089699935552', 'foto-karyawan-17.jpg'),
(18, 'Karyawan Ke-', 'karyawan-18@gmil.com', '089699935552', 'foto-karyawan-18.jpg'),
(19, 'Karyawan Ke-', 'karyawan-19@gmil.com', '089699935552', 'foto-karyawan-19.jpg'),
(20, 'Karyawan Ke-', 'karyawan-20@gmil.com', '089699935552', 'foto-karyawan-20.jpg'),
(21, 'Karyawan Ke-', 'karyawan-21@gmil.com', '089699935552', 'foto-karyawan-21.jpg'),
(22, 'Karyawan Ke-', 'karyawan-22@gmil.com', '089699935552', 'foto-karyawan-22.jpg'),
(23, 'Karyawan Ke-', 'karyawan-23@gmil.com', '089699935552', 'foto-karyawan-23.jpg'),
(24, 'Karyawan Ke-', 'karyawan-24@gmil.com', '089699935552', 'foto-karyawan-24.jpg'),
(25, 'Karyawan Ke-', 'karyawan-25@gmil.com', '089699935552', 'foto-karyawan-25.jpg'),
(26, 'Karyawan Ke-', 'karyawan-26@gmil.com', '089699935552', 'foto-karyawan-26.jpg'),
(27, 'Karyawan Ke-', 'karyawan-27@gmil.com', '089699935552', 'foto-karyawan-27.jpg'),
(28, 'Karyawan Ke-', 'karyawan-28@gmil.com', '089699935552', 'foto-karyawan-28.jpg'),
(29, 'Karyawan Ke-', 'karyawan-29@gmil.com', '089699935552', 'foto-karyawan-29.jpg'),
(30, 'Karyawan Ke-', 'karyawan-30@gmil.com', '089699935552', 'foto-karyawan-30.jpg'),
(31, 'Karyawan Ke-', 'karyawan-31@gmil.com', '089699935552', 'foto-karyawan-31.jpg'),
(32, 'Karyawan Ke-', 'karyawan-32@gmil.com', '089699935552', 'foto-karyawan-32.jpg'),
(33, 'Karyawan Ke-', 'karyawan-33@gmil.com', '089699935552', 'foto-karyawan-33.jpg'),
(34, 'Karyawan Ke-', 'karyawan-34@gmil.com', '089699935552', 'foto-karyawan-34.jpg'),
(35, 'Karyawan Ke-', 'karyawan-35@gmil.com', '089699935552', 'foto-karyawan-35.jpg'),
(36, 'Karyawan Ke-', 'karyawan-36@gmil.com', '089699935552', 'foto-karyawan-36.jpg'),
(37, 'Karyawan Ke-', 'karyawan-37@gmil.com', '089699935552', 'foto-karyawan-37.jpg'),
(38, 'Karyawan Ke-', 'karyawan-38@gmil.com', '089699935552', 'foto-karyawan-38.jpg'),
(39, 'Karyawan Ke-', 'karyawan-39@gmil.com', '089699935552', 'foto-karyawan-39.jpg'),
(40, 'Karyawan Ke-', 'karyawan-40@gmil.com', '089699935552', 'foto-karyawan-40.jpg'),
(41, 'Karyawan Ke-', 'karyawan-41@gmil.com', '089699935552', 'foto-karyawan-41.jpg'),
(42, 'Karyawan Ke-', 'karyawan-42@gmil.com', '089699935552', 'foto-karyawan-42.jpg'),
(43, 'Karyawan Ke-', 'karyawan-43@gmil.com', '089699935552', 'foto-karyawan-43.jpg'),
(44, 'Karyawan Ke-', 'karyawan-44@gmil.com', '089699935552', 'foto-karyawan-44.jpg'),
(45, 'Karyawan Ke-', 'karyawan-45@gmil.com', '089699935552', 'foto-karyawan-45.jpg'),
(46, 'Karyawan Ke-', 'karyawan-46@gmil.com', '089699935552', 'foto-karyawan-46.jpg'),
(47, 'Karyawan Ke-', 'karyawan-47@gmil.com', '089699935552', 'foto-karyawan-47.jpg'),
(48, 'Karyawan Ke-', 'karyawan-48@gmil.com', '089699935552', 'foto-karyawan-48.jpg'),
(49, 'Karyawan Ke-', 'karyawan-49@gmil.com', '089699935552', 'foto-karyawan-49.jpg'),
(50, 'Karyawan Ke-', 'karyawan-50@gmil.com', '089699935552', 'foto-karyawan-50.jpg'),
(51, 'Karyawan Ke-', 'karyawan-51@gmil.com', '089699935552', 'foto-karyawan-51.jpg'),
(52, 'Karyawan Ke-', 'karyawan-52@gmil.com', '089699935552', 'foto-karyawan-52.jpg'),
(53, 'Karyawan Ke-', 'karyawan-53@gmil.com', '089699935552', 'foto-karyawan-53.jpg'),
(54, 'Karyawan Ke-', 'karyawan-54@gmil.com', '089699935552', 'foto-karyawan-54.jpg'),
(55, 'Karyawan Ke-', 'karyawan-55@gmil.com', '089699935552', 'foto-karyawan-55.jpg'),
(56, 'Karyawan Ke-', 'karyawan-56@gmil.com', '089699935552', 'foto-karyawan-56.jpg'),
(57, 'Karyawan Ke-', 'karyawan-57@gmil.com', '089699935552', 'foto-karyawan-57.jpg'),
(58, 'Karyawan Ke-', 'karyawan-58@gmil.com', '089699935552', 'foto-karyawan-58.jpg'),
(59, 'Karyawan Ke-', 'karyawan-59@gmil.com', '089699935552', 'foto-karyawan-59.jpg'),
(60, 'Karyawan Ke-', 'karyawan-60@gmil.com', '089699935552', 'foto-karyawan-60.jpg'),
(61, 'Karyawan Ke-', 'karyawan-61@gmil.com', '089699935552', 'foto-karyawan-61.jpg'),
(62, 'Karyawan Ke-', 'karyawan-62@gmil.com', '089699935552', 'foto-karyawan-62.jpg'),
(63, 'Karyawan Ke-', 'karyawan-63@gmil.com', '089699935552', 'foto-karyawan-63.jpg'),
(64, 'Karyawan Ke-', 'karyawan-64@gmil.com', '089699935552', 'foto-karyawan-64.jpg'),
(65, 'Karyawan Ke-', 'karyawan-65@gmil.com', '089699935552', 'foto-karyawan-65.jpg'),
(66, 'Karyawan Ke-', 'karyawan-66@gmil.com', '089699935552', 'foto-karyawan-66.jpg'),
(67, 'Karyawan Ke-', 'karyawan-67@gmil.com', '089699935552', 'foto-karyawan-67.jpg'),
(68, 'Karyawan Ke-', 'karyawan-68@gmil.com', '089699935552', 'foto-karyawan-68.jpg'),
(69, 'Karyawan Ke-', 'karyawan-69@gmil.com', '089699935552', 'foto-karyawan-69.jpg'),
(70, 'Karyawan Ke-', 'karyawan-70@gmil.com', '089699935552', 'foto-karyawan-70.jpg'),
(71, 'Karyawan Ke-', 'karyawan-71@gmil.com', '089699935552', 'foto-karyawan-71.jpg'),
(72, 'Karyawan Ke-', 'karyawan-72@gmil.com', '089699935552', 'foto-karyawan-72.jpg'),
(73, 'Karyawan Ke-', 'karyawan-73@gmil.com', '089699935552', 'foto-karyawan-73.jpg'),
(74, 'Karyawan Ke-', 'karyawan-74@gmil.com', '089699935552', 'foto-karyawan-74.jpg'),
(75, 'Karyawan Ke-', 'karyawan-75@gmil.com', '089699935552', 'foto-karyawan-75.jpg'),
(76, 'Karyawan Ke-', 'karyawan-76@gmil.com', '089699935552', 'foto-karyawan-76.jpg'),
(77, 'Karyawan Ke-', 'karyawan-77@gmil.com', '089699935552', 'foto-karyawan-77.jpg'),
(78, 'Karyawan Ke-', 'karyawan-78@gmil.com', '089699935552', 'foto-karyawan-78.jpg'),
(79, 'Karyawan Ke-', 'karyawan-79@gmil.com', '089699935552', 'foto-karyawan-79.jpg'),
(80, 'Karyawan Ke-', 'karyawan-80@gmil.com', '089699935552', 'foto-karyawan-80.jpg'),
(81, 'Karyawan Ke-', 'karyawan-81@gmil.com', '089699935552', 'foto-karyawan-81.jpg'),
(82, 'Karyawan Ke-', 'karyawan-82@gmil.com', '089699935552', 'foto-karyawan-82.jpg'),
(83, 'Karyawan Ke-', 'karyawan-83@gmil.com', '089699935552', 'foto-karyawan-83.jpg'),
(84, 'Karyawan Ke-', 'karyawan-84@gmil.com', '089699935552', 'foto-karyawan-84.jpg'),
(85, 'Karyawan Ke-', 'karyawan-85@gmil.com', '089699935552', 'foto-karyawan-85.jpg'),
(86, 'Karyawan Ke-', 'karyawan-86@gmil.com', '089699935552', 'foto-karyawan-86.jpg'),
(87, 'Karyawan Ke-', 'karyawan-87@gmil.com', '089699935552', 'foto-karyawan-87.jpg'),
(88, 'Karyawan Ke-', 'karyawan-88@gmil.com', '089699935552', 'foto-karyawan-88.jpg'),
(89, 'Karyawan Ke-', 'karyawan-89@gmil.com', '089699935552', 'foto-karyawan-89.jpg'),
(90, 'Karyawan Ke-', 'karyawan-90@gmil.com', '089699935552', 'foto-karyawan-90.jpg'),
(91, 'Karyawan Ke-', 'karyawan-91@gmil.com', '089699935552', 'foto-karyawan-91.jpg'),
(92, 'Karyawan Ke-', 'karyawan-92@gmil.com', '089699935552', 'foto-karyawan-92.jpg'),
(93, 'Karyawan Ke-', 'karyawan-93@gmil.com', '089699935552', 'foto-karyawan-93.jpg'),
(94, 'Karyawan Ke-', 'karyawan-94@gmil.com', '089699935552', 'foto-karyawan-94.jpg'),
(95, 'Karyawan Ke-', 'karyawan-95@gmil.com', '089699935552', 'foto-karyawan-95.jpg'),
(96, 'Karyawan Ke-', 'karyawan-96@gmil.com', '089699935552', 'foto-karyawan-96.jpg'),
(97, 'Karyawan Ke-', 'karyawan-97@gmil.com', '089699935552', 'foto-karyawan-97.jpg'),
(98, 'Karyawan Ke-', 'karyawan-98@gmil.com', '089699935552', 'foto-karyawan-98.jpg'),
(99, 'Karyawan Ke-', 'karyawan-99@gmil.com', '089699935552', 'foto-karyawan-99.jpg'),
(100, 'Karyawan Ke-', 'karyawan-100@gmil.com', '089699935552', 'foto-karyawan-100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `no_faktur` varchar(20) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `besar_bayar` double DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `nama_bayar` varchar(50) DEFAULT NULL,
  `no_bukti` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `tgl_bayar`, `no_faktur`, `nip`, `besar_bayar`, `keterangan`, `nama_bayar`, `no_bukti`) VALUES
(6, '2019-08-07', '1234', '234212', 100000, 'sakit kaki', 'kredit', '1002'),
(7, '2019-08-27', '1234', '123124324535', 90000, 'sakit jantung', 'cash', '10022'),
(8, '2019-08-09', '123455', '1232134324', 90000, 'sakit jantung', 'kredit', '1321');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(20) NOT NULL,
  `no_faktur` varchar(20) NOT NULL,
  `no_order` varchar(20) NOT NULL,
  `kode_suplier` char(5) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_faktur` date DEFAULT NULL,
  `tgl_tempo` date DEFAULT NULL,
  `total1` double NOT NULL,
  `potongan` double NOT NULL,
  `total2` double NOT NULL,
  `ppn` double NOT NULL,
  `meterai` double DEFAULT NULL,
  `tagihan` double NOT NULL,
  `kd_bangsal` char(5) NOT NULL,
  `status` enum('Sudah Dibayar','Belum Dibayar','Belum Lunas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `no_faktur`, `no_order`, `kode_suplier`, `nip`, `tgl_pesan`, `tgl_faktur`, `tgl_tempo`, `total1`, `potongan`, `total2`, `ppn`, `meterai`, `tagihan`, `kd_bangsal`, `status`) VALUES
(4, '1234', '5453453453', '12356', '1232134324', '2019-08-07', '2019-08-07', '2019-08-07', 4454545, 99999999999, 0, 211132132, 6000, 4500, '23123', 'Sudah Dibayar'),
(5, '123455', '5453453453', '12356', '22121213232', '2019-08-27', '2019-08-27', '2019-08-27', 1111111111111, 99999999999, 5677, 2.222222111111111e15, 98768677, 222222222222, '21322', 'Sudah Dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`id`, `judul`, `foto`, `caption`) VALUES
(2, 'Viral', 'default.jpg', 'dsfdsfwfew'),
(3, 'bahaya', 'default.jpg', '223344'),
(4, 'Sepeda', 'default.jpg', 'jasdjasdjkasd asdbkjasdnkasdkjasdjkn'),
(5, 'sas', 'default.jpg', 'osas'),
(6, 'jatuh 33', '.png', 'asasasa'),
(7, '2212', '.jpg', 'dsvdsvd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(14, 'akbar johansyah', 'jangandibaca@gmail.com', 'default.jpg', '$2y$10$C6Yw.tY/vSAZcv5CfRFt0.c8WDSDH1o7NhuZEUg/yh3y.17jqoZGG', 2, 1, 1566823997),
(15, 'Nando Akbar', 'nandoakbar42@gmail.com', 'default.jpg', '$2y$10$lVk7Kom4l2dxJ7f/3jyYuO/573nxaZhg4Bhy6MzRG9hILp3ruCXAG', 1, 1, 1566824035),
(16, 'reza', 'reza@gmail.com', 'default.jpg', '$2y$10$/MXen10skgjjyxNBTUa/xOfGVQoeESV6QkvJIdIUFDeMOS/kplTyK', 1, 1, 1566827968),
(17, 'muhamad excel', 'excel713@gmail.com', 'default.jpg', '$2y$10$T6QwHGrNlp6H/wDyhQCQyu53UtNNaLGdLnA2KdhLohOpB/ra.JA.q', 2, 1, 1566877843);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'adiministrator'),
(2, 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id_deposit`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id_deposit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
