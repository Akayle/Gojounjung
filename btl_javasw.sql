-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 07:06 AM
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
-- Database: `btl_javasw`
--

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `maloaihinh` varchar(50) NOT NULL,
  `madichvu` varchar(50) NOT NULL,
  `tendichvu` varchar(100) NOT NULL,
  `giathanh` int(50) NOT NULL,
  `ghichu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`maloaihinh`, `madichvu`, `tendichvu`, `giathanh`, `ghichu`) VALUES
('CS', 'CS001', 'Vệ Sinh Thú Cưng', 50000, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `madonhang` varchar(50) NOT NULL,
  `tongtien` int(50) NOT NULL,
  `nhanvien` varchar(50) NOT NULL,
  `khachhang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`madonhang`, `tongtien`, `nhanvien`, `khachhang`) VALUES
('SP', 50000, 'Hà Quang Anh', '123'),
('SP', 25000, 'Hà Quang Anh', '123'),
('SP', 50000, 'Hà Quang Anh', '123'),
('SP', 25000, 'Hà Quang Anh', '1'),
('SP', 50000, 'Hà Quang Anh', 'test1'),
('SP', 0, '', ''),
('SP', 2, 'Hà Quang Anh', '132');

-- --------------------------------------------------------

--
-- Table structure for table `loaihinhdichvu`
--

CREATE TABLE `loaihinhdichvu` (
  `maloaihinh` varchar(50) NOT NULL,
  `tenloaihinh` varchar(50) NOT NULL,
  `ghichu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaihinhdichvu`
--

INSERT INTO `loaihinhdichvu` (`maloaihinh`, `tenloaihinh`, `ghichu`) VALUES
('CC', 'Chăm chỉ 1', '1234'),
('CS', 'Chăm sóc 23', 'Gồm các dịch vụ liên quan tới chăm sóc');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` varchar(50) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `soluong` int(100) NOT NULL,
  `gianhap` int(50) NOT NULL,
  `giaban` int(50) NOT NULL,
  `ghichu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `soluong`, `gianhap`, `giaban`, `ghichu`) VALUES
('SP001', 'Hạt thức ăn tổng hợp', 140, 18000, 25000, '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `role`) VALUES
(1, 'Hà Quang Anh', 'admin', '123456', 1),
(2, 'Bùi Sơn Dương', 'user1', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madichvu`);

--
-- Indexes for table `loaihinhdichvu`
--
ALTER TABLE `loaihinhdichvu`
  ADD PRIMARY KEY (`maloaihinh`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
