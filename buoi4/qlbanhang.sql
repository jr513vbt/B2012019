-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 13, 2023 lúc 02:39 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(6) UNSIGNED NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(50) NOT NULL,
  `img_profile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `fullname`, `email`, `Birthday`, `reg_date`, `password`, `img_profile`) VALUES
(0, 'huy', 'huy@gmail.com', '2023-02-12', '2023-02-13 11:10:58', '11967d5e9addc5416ea9224eee0e91fc', 'images.png'),
(0, 'b2012019', 'huyb@gmail.com', '2023-02-12', '2023-02-13 11:10:58', '11967d5e9addc5416ea9224eee0e91fc', 'images.png'),
(0, 'test', 'test@g.c', '2023-02-12', '2023-02-13 11:10:58', 'd41d8cd98f00b204e9800998ecf8427e', 'images.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
