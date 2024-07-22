-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 24, 2024 lúc 05:14 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tieuluan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `maanh` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `masp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`maanh`, `hinhanh`, `masp`) VALUES
(40, 'uploads/8/9_feb346c5ecd04cc2b3bf0609a279cdbe_master_1710721783.png', 8),
(41, 'uploads/8/10_27d8ee13b59e4d9c847b777e12dd9822_master_1710721796.png', 8),
(42, 'uploads/8/11_eefd84088086494da8572860320e5034_master_1710721796.png', 8),
(43, 'uploads/8/12_caf35bed281844e7a48dfcad6b90553c_master_1710721796.png', 8),
(44, 'uploads/8/13_17431f09993e484d8c44662b2340c613_master_1710721796.png', 8),
(45, 'uploads/8/14_186861f4e3ae4e72810b502619132645_master_1710721796.png', 8),
(46, 'uploads/8/17_6ce4298785d74618bb6c63c31e78bfef_master_1710721796.png', 8),
(70, 'uploads/12/51cbZW+9T-L._AC_SX425__1710722425.png', 12),
(71, 'uploads/12/51cbZW+9T-L._AC_SX425__1710722434.png', 12),
(72, 'uploads/12/51J0qEE6mcL._AC_SX425__1710722434.png', 12),
(73, 'uploads/12/71McmGmjLuL._AC_SX425__1710722434.png', 12),
(74, 'uploads/12/71wN1YLHSdL._AC_SX425__1710722434.png', 12),
(75, 'uploads/12/512eTK+cUNL._AC_SX425__1710722434.png', 12),
(76, 'uploads/12/619jw0jgJQL._AC_SX425__1710722434.png', 12),
(77, 'uploads/12/712OkEF++aL._AC_SX425__1710722434.png', 12),
(78, 'uploads/13/51q-PZkHMYL._AC_SX425__1710722517.png', 13),
(79, 'uploads/13/41oBX3kNrqL._AC_SX425__1710722526.png', 13),
(80, 'uploads/13/41Q0q4wNpqL._AC_SX425__1710722526.png', 13),
(81, 'uploads/13/51q-PZkHMYL._AC_SX425__1710722526.png', 13),
(82, 'uploads/13/51qxFiR8gGL._AC_SX425__1710722526.png', 13),
(83, 'uploads/13/51tsOmYxy+L._AC_SX425__1710722526.png', 13),
(84, 'uploads/13/51yrGldQNOL._AC_SX425__1710722526.png', 13),
(85, 'uploads/13/7137JqzZbjL._AC_SX425__1710722526.png', 13),
(86, 'uploads/14/61XCgN-EgTL._AC_SL1500__1710722566.png', 14),
(87, 'uploads/14/61iork2T8mL._AC_SL1500__1710722574.png', 14),
(88, 'uploads/14/61XCgN-EgTL._AC_SL1500__1710722574.png', 14),
(89, 'uploads/14/71jZ6ZBTjnL._AC_SL1500__1710722574.png', 14),
(90, 'uploads/14/81IsT9lAHML._AC_SL1500__1710722574.png', 14),
(91, 'uploads/15/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-do-2-1669090485180_1710722624.png', 15),
(92, 'uploads/15/1_1710722633.png', 15),
(93, 'uploads/15/2_1710722633.png', 15),
(94, 'uploads/15/3_1710722633.png', 15),
(95, 'uploads/15/4_1710722633.png', 15),
(96, 'uploads/15/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-do-2_1710722633.png', 15),
(97, 'uploads/15/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-do-2-1669090485180_1710722633.png', 15),
(98, 'uploads/15/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-do-3_1710722633.png', 15),
(99, 'uploads/15/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-do-4_1710722633.png', 15),
(100, 'uploads/16/0e29415e-0f1b-44b2-85ce-e810ef4cff83_1710722674.png', 16),
(101, 'uploads/16/0e29415e-0f1b-44b2-85ce-e810ef4cff83_1710722682.png', 16),
(102, 'uploads/16/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-trang-2_1710722682.png', 16),
(103, 'uploads/16/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-trang-3_1710722682.png', 16),
(104, 'uploads/16/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-trang-4_1710722682.png', 16),
(105, 'uploads/16/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-trang-5_1710722682.png', 16),
(106, 'uploads/16/ao-thi-dau-doi-tuyen-viet-nam-2023-grand-sport-38977-trang-7_1710722682.png', 16),
(107, 'uploads/17/5c6cdc7f169f4773a69524e28bce0509_0d15d98f52fe45f487f3a41f398cc009_1024x1024_1710722741.png', 17),
(108, 'uploads/17/5c6cdc7f169f4773a69524e28bce0509_0d15d98f52fe45f487f3a41f398cc009_1024x1024_1710722756.png', 17),
(109, 'uploads/17/nms02949_93843f56dde9450da2c97ec543627157_1024x1024_1710722756.png', 17),
(110, 'uploads/17/nms02950_aa8ba6dc6ace4a81aa604472a14b5e8b_1024x1024_1710722756.png', 17),
(111, 'uploads/17/nms02951_89ac93b9586249329816746b40eba3e6_1024x1024_1710722756.png', 17),
(112, 'uploads/17/nms02952_c982985cbd474601a481428e1fd1dc99_1024x1024_1710722756.png', 17),
(113, 'uploads/17/nms02953_ba28f3d1023f4b4c8388c5c5eb9869da_1024x1024_1710722756.png', 17),
(114, 'uploads/17/nms02955_af2f089f11b74b118568671c25fcd54c_1024x1024_1710722756.png', 17),
(115, 'uploads/18/ss1_1706723500_1708271519_1710728585.png', 18),
(116, 'uploads/18/ss1_1706723500_1708271519_1710728594.png', 18),
(117, 'uploads/18/ss2_1706723500_1708271519_1710728594.png', 18),
(118, 'uploads/18/ss3_1706723500_1708271519_1710728594.png', 18),
(119, 'uploads/18/ss4_1706723500_1708271519_1710728594.png', 18),
(120, 'uploads/18/ss5_1706723500_1708271519_1710728594.png', 18),
(121, 'uploads/18/ss6_1706723500_1708271519_1710728594.png', 18),
(122, 'uploads/19/s6_01750205_1708271646_1710854226.png', 19),
(123, 'uploads/19/s1_01750205_1708271646_1710854252.png', 19),
(124, 'uploads/19/s2_01750205_1708271646_1710854252.png', 19),
(125, 'uploads/19/s3_01750205_1708271646_1710854252.png', 19),
(126, 'uploads/19/s4_01750205_1708271646_1710854252.png', 19),
(127, 'uploads/19/s5_01750205_1708834024_1710854252.png', 19),
(128, 'uploads/19/s6_01750205_1708271646_1710854252.png', 19),
(129, 'uploads/20/1a6747d374159b97823_1709133181_1710999630.png', 20),
(130, 'uploads/20/1a6747d374159b97823_1709133181_1710999648.png', 20),
(131, 'uploads/20/2a6747d374159b97823_1709133181_1710999648.png', 20),
(132, 'uploads/20/3a6747d374159b97823_1709133181_1710999648.png', 20),
(133, 'uploads/20/4a6747d374159b97823_1709133181_1710999648.png', 20),
(134, 'uploads/20/5a6747d374159b97823_1709133181_1710999648.png', 20),
(135, 'uploads/21/d3c29988-b7c7-4fdf-8d15-31c597468bb8_e0b04be9dbbc446fba9b44049e42accb_master_1710999848.png', 21),
(136, 'uploads/21/10000998-a01_a_107x1_b23bb3f308ad4b5fbeeefe88dd61375c_master_1710999859.png', 21),
(137, 'uploads/21/d3c29988-b7c7-4fdf-8d15-31c597468bb8_e0b04be9dbbc446fba9b44049e42accb_master_1710999859.png', 21),
(138, 'uploads/21/day_giay_5f892624dccf4257bd768d2ea62e254e_master_1710999859.png', 21),
(139, 'uploads/22/img_2759_2_858f9976a92041ecb681afc73cd64408_1024x1024_1711000649.png', 22),
(140, 'uploads/22/img_2759_2_858f9976a92041ecb681afc73cd64408_1024x1024_1711000661.png', 22),
(141, 'uploads/23/kiotviet_db5903a4ef2ad15025b78bc896dc9ac4_1711000946.png', 23),
(142, 'uploads/23/kiotviet_2beec50eea7004ca7633662af61c14ec_1711000994.png', 23),
(143, 'uploads/23/kiotviet_adff44b4f12be95676b26c6aee577ac7_1711000994.png', 23),
(144, 'uploads/23/kiotviet_db5903a4ef2ad15025b78bc896dc9ac4_1711000994.png', 23),
(145, 'uploads/24/day-giay-eqt-xam-tron-phan-quang-125cm-500x333_1711001443.png', 24),
(146, 'uploads/24/day-giay-eqt-xam-tron-phan-quang-125cm-500x333_1711001453.png', 24),
(147, 'uploads/24/day-giay-eqt-xam-tron-phan-quang-500x333_1711001453.png', 24),
(148, 'uploads/25/upload_0ed75ff9fa84403eb279f22f207e8bf2_compact_1711001662.png', 25),
(149, 'uploads/25/upload_0ed75ff9fa84403eb279f22f207e8bf2_compact_1711001675.png', 25),
(150, 'uploads/25/upload_96aa73eeda804eb59207d182a19776d5_compact_1711001675.png', 25),
(151, 'uploads/25/upload_a7640d72d7364260a12a2cc1582c40f8_compact_1711001675.png', 25),
(152, 'uploads/25/upload_b793c54ecf394a3d951d3a802ff039e5_compact_1711001675.png', 25),
(153, 'uploads/25/upload_e79ead12896d4085b15a756dd7f44643_compact_1711001675.png', 25),
(163, 'uploads/27/upload_0ed75ff9fa84403eb279f22f207e8bf2_compact_1711001662_1711002062.png', 27),
(164, 'uploads/27/upload_0ed75ff9fa84403eb279f22f207e8bf2_compact_1711001662_1711002088.png', 27),
(165, 'uploads/27/upload_0ed75ff9fa84403eb279f22f207e8bf2_compact_1711001675_1711002088.png', 27),
(166, 'uploads/27/upload_96aa73eeda804eb59207d182a19776d5_compact_1711001675_1711002088.png', 27),
(167, 'uploads/27/upload_a7640d72d7364260a12a2cc1582c40f8_compact_1711001675_1711002088.png', 27),
(168, 'uploads/27/upload_b793c54ecf394a3d951d3a802ff039e5_compact_1711001675_1711002088.png', 27),
(169, 'uploads/27/upload_e79ead12896d4085b15a756dd7f44643_compact_1711001675_1711002088.png', 27),
(170, 'uploads/28/1_6b114b7dbfe_1709132742_1711002248.png', 28),
(171, 'uploads/28/1_6b114b7dbfe_1709132742_1711002263.png', 28),
(172, 'uploads/28/2_6b114b7dbfe_1709132742_1711002263.png', 28),
(173, 'uploads/28/3_6b114b7dbfe_1709132742_1711002263.png', 28),
(174, 'uploads/28/4_6b114b7dbfe_1709132742_1711002263.png', 28),
(175, 'uploads/28/5_6b114b7dbfe_1709132742_1711002263.png', 28),
(176, 'uploads/28/6_6b114b7dbfe_1709132742_1711002263.png', 28),
(177, 'uploads/29/1c71e5283d094abc_1709132542_1711002357.png', 29),
(178, 'uploads/29/1c71e5283d094abc_1709132542_1711002375.png', 29),
(179, 'uploads/29/3c71e5283d094abc_1709132542_1711002375.png', 29),
(180, 'uploads/29/4c71e5283d094abc_1709132542_1711002375.png', 29),
(181, 'uploads/29/5c71e5283d094abc_1709132542_1711002375.png', 29),
(182, 'uploads/29/6c71e5283d094abc_1709132542_1711002375.png', 29),
(183, 'uploads/29/7c71e5283d094abc_1709132542_1711002375.png', 29),
(184, 'uploads/30/1f5be19430b96402f3_1708979371_1711002469.png', 30),
(185, 'uploads/30/1f5be19430b96402f3_1708979371_1711002492.png', 30),
(186, 'uploads/30/3f5be19430b96402f3_1708979371_1711002492.png', 30),
(187, 'uploads/30/5f5be19430b96402f3_1708979371_1711002492.png', 30),
(188, 'uploads/30/6f5be19430b96402f3_1708979371_1711002492.png', 30),
(189, 'uploads/30/7f5be19430b96402f3_1708979371_1711002492.png', 30),
(190, 'uploads/31/1c552e384d878fac2f_1708979060_1711002553.png', 31),
(191, 'uploads/31/2c552e384d878fac2f_1708979060_1711002578.png', 31),
(192, 'uploads/31/3c552e384d878fac2f_1708979060_1711002578.png', 31),
(193, 'uploads/31/4c552e384d878fac2f_1708979060_1711002578.png', 31),
(194, 'uploads/32/3f97c3281d41a0b73d840a_1708839091_1711002764.png', 32),
(195, 'uploads/32/2f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(196, 'uploads/32/3f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(197, 'uploads/32/5f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(198, 'uploads/32/6f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(199, 'uploads/32/7f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(200, 'uploads/32/8f97c3281d41a0b73d840a_1708839091_1711002785.png', 32),
(201, 'uploads/9/s1_01750205_1708271646_1710854252_1711002918.png', 9),
(202, 'uploads/9/s1_01750205_1708271646_1710854252_1711002937.png', 9),
(203, 'uploads/9/s2_01750205_1708271646_1710854252_1711002937.png', 9),
(204, 'uploads/9/s3_01750205_1708271646_1710854252_1711002937.png', 9),
(205, 'uploads/9/s4_01750205_1708271646_1710854252_1711002937.png', 9),
(206, 'uploads/9/s5_01750205_1708834024_1710854252_1711002937.png', 9),
(207, 'uploads/9/s6_01750205_1708271646_1710854226_1711002937.png', 9),
(217, 'uploads/26/s1_01750205_1708271702_1711022297.png', 26),
(218, 'uploads/26/s1_01750205_1708271702_1711022315.png', 26),
(219, 'uploads/26/s2_01750205_1708271702_1711022315.png', 26),
(220, 'uploads/26/s3_01750205_1708271702_1711022315.png', 26),
(221, 'uploads/26/s4_01750205_1708271702_1711022315.png', 26),
(222, 'uploads/26/s5_01750205_1708271702_1711022315.png', 26),
(223, 'uploads/26/s5_01750205_1708834087_1711022315.png', 26),
(224, 'uploads/26/s6_01750205_1708271702_1711022315.png', 26),
(225, 'uploads/33/s1_01750205_1708271754_1711022376.png', 33),
(226, 'uploads/33/s1_01750205_1708271754_1711022394.png', 33),
(227, 'uploads/33/s2_01750205_1708271754_1711022394.png', 33),
(228, 'uploads/33/s3_01750205_1708271754_1711022394.png', 33),
(229, 'uploads/33/s4_01750205_1708271754_1711022394.png', 33),
(230, 'uploads/33/s5_01750205_1708271754_1711022394.png', 33),
(231, 'uploads/33/s5_01750205_1708834122_1711022394.png', 33),
(232, 'uploads/33/s6_01750205_1708271754_1711022394.png', 33),
(233, 'uploads/33/s6_01750205_1708834106_1711022394.png', 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `mactdh` int(11) NOT NULL,
  `madon` int(11) DEFAULT NULL,
  `masp` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` decimal(10,2) DEFAULT NULL,
  `masize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`mactdh`, `madon`, `masp`, `soluong`, `dongia`, `masize`) VALUES
(1, 5, 19, 2, 1500000.00, NULL),
(2, 5, 16, 2, 1500000.00, NULL),
(3, 6, 17, 4, 1500000.00, NULL),
(4, 7, 17, 2, 1500000.00, NULL),
(5, 8, 18, 1, 1500000.00, NULL),
(6, 9, 32, 1, 1400000.00, NULL),
(7, 10, 32, 1, 1400000.00, NULL),
(8, 11, 16, 1, 1500000.00, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `mactgh` int(11) NOT NULL,
  `magh` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,2) NOT NULL,
  `masize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`mactgh`, `magh`, `masp`, `soluong`, `dongia`, `masize`) VALUES
(39, 1, 19, 2, 1500000.00, 6),
(40, 1, 16, 2, 1500000.00, 7),
(41, 2, 17, 4, 1500000.00, 8),
(44, 3, 17, 2, 1500000.00, 7),
(45, 4, 18, 1, 1500000.00, 2),
(54, 5, 32, 1, 1400000.00, 19),
(55, 6, 30, 1, 500000.00, 11),
(56, 7, 32, 1, 1400000.00, 20),
(58, 8, 16, 1, 1500000.00, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettrangthai`
--

CREATE TABLE `chitiettrangthai` (
  `machitiet` int(11) NOT NULL,
  `madon` int(11) NOT NULL,
  `matt` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaytao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiettrangthai`
--

INSERT INTO `chitiettrangthai` (`machitiet`, `madon`, `matt`, `manv`, `ngaytao`) VALUES
(1, 5, 1, 3, '2024-03-21 19:56:05'),
(2, 6, 2, 3, '2024-03-21 19:56:25'),
(3, 7, 2, 3, '2024-03-21 19:56:44'),
(4, 7, 4, 3, '2024-03-21 19:56:48'),
(5, 8, 5, 3, '2024-03-21 19:57:03'),
(6, 9, 6, 3, '2024-03-21 19:57:17'),
(7, 10, 2, 3, '2024-03-23 12:04:59'),
(8, 10, 7, 3, '2024-03-23 12:05:12'),
(9, 10, 1, 3, '2024-03-23 12:05:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madon` int(11) NOT NULL,
  `ngaythem` datetime NOT NULL DEFAULT current_timestamp(),
  `makh` int(11) NOT NULL,
  `tongdh` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madon`, `ngaythem`, `makh`, `tongdh`) VALUES
(5, '2024-03-20 11:28:53', 3, 6000000),
(6, '2024-03-20 11:41:30', 3, 6000000),
(7, '2024-03-20 14:26:18', 3, 3000000),
(8, '2024-03-21 07:31:10', 3, 1500000),
(9, '2024-03-21 13:42:10', 3, 1400000),
(10, '2024-03-23 12:03:52', 4, 1400000),
(11, '2024-03-24 08:44:26', 4, 1500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `magh` int(11) NOT NULL,
  `ngaythem` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` int(11) NOT NULL,
  `makh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`magh`, `ngaythem`, `trangthai`, `makh`) VALUES
(1, '2024-03-19 17:08:56', 0, 3),
(2, '2024-03-20 11:41:13', 0, 3),
(3, '2024-03-20 11:42:48', 0, 3),
(4, '2024-03-21 07:31:05', 0, 3),
(5, '2024-03-21 12:33:18', 0, 3),
(6, '2024-03-21 13:54:14', 1, 3),
(7, '2024-03-23 12:03:31', 0, 4),
(8, '2024-03-23 12:05:55', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngaysinh` date NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `gioitinh`, `ngaysinh`, `sodienthoai`, `diachi`, `email`, `password`, `trangthai`) VALUES
(1, 'Khách hàng 1', 0, '2000-08-01', '1234567890', 'tt', 'kh1@gmail.com', '123456', 1),
(2, 'Khách hàng 2', 0, '2000-02-03', '0112233445', 'Soc Trang', 'kh2@gmail.com', '123456', 1),
(3, 'thu', 0, '2006-03-01', '1234567890', 'tt', 'thu@gmail.com', '123456', 1),
(4, 'hận', 0, '2006-03-04', '1234567890', 'ct', 'han@gmail.com', '123456', 1),
(5, 'khanh', 0, '2006-02-28', '1234567890', 'st', 'khanh@gmail.com', '123456', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`, `mota`, `trangthai`) VALUES
(1, '	Giày', '	Giày', 1),
(2, 'Áo đấu', 'Áo đấu', 1),
(3, 'Tất', 'Tất', 1),
(4, 'Phụ kiện', 'Phụ kiện', 1),
(5, '	Bóng', 'Bóng', 1),
(6, '	Găng tay', 'Găng tay', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `tennv` varchar(255) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: nam, 1:nữ',
  `ngaysinh` date NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `phanquyen` int(11) NOT NULL DEFAULT 1 COMMENT '0:admin, 1: manager 2:nhân viên, 3: khách hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `tennv`, `gioitinh`, `ngaysinh`, `sodienthoai`, `diachi`, `email`, `password`, `trangthai`, `phanquyen`) VALUES
(1, 'admin', 0, '2024-01-30', '0000000000', 'sys', 'admin@gmail.com', '123456', 1, 0),
(2, 'manager', 0, '2006-03-09', '1234567890', 'ct', 'manager@gmail.com', '123456', 1, 1),
(3, 'Nhân viên', 0, '2006-03-03', '1234567890', 'ct', 'nv@gmail.com', '123456', 1, 2),
(4, 'khanh', 0, '2006-03-02', '1234567890', 'st', 'khanh@gmail.com', '123456', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `dongia` decimal(10,2) NOT NULL,
  `mota` text NOT NULL,
  `ngaythem` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `luotmua` int(11) NOT NULL DEFAULT 0,
  `math` int(11) NOT NULL,
  `maloai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `dongia`, `mota`, `ngaythem`, `trangthai`, `luotmua`, `math`, `maloai`) VALUES
(8, 'Tất vớ bóng đá cổ trung UPPER YOU', 45000.00, '<p>- Tất đ&aacute; b&oacute;ng chống trượt Upper You 8 m&agrave;u thời trang:&nbsp;<br />\r\n✔️ Freesize: Ch&acirc;n Nam từ 26 &ndash; 28&nbsp;<br />\r\n✔️ Thương hiệu: Upper You&nbsp;<br />\r\n✔️ Xuất xứ: Việt Nam&nbsp;<br />\r\nĐẶC ĐIỂM NỔI BẬT&nbsp;<br />\r\nT&acirc;́t b&oacute;ng đ&aacute; Nam chống trượt - Upper You:&nbsp;<br />\r\n✔️ Mềm mại, thấm h&uacute;t mồ h&ocirc;i, hạn ch&ecirc;́ n&acirc;́m m&ocirc;́c phát tri&ecirc;̉n, mang lại cảm gi&aacute;c m&aacute;t mẻ kh&ocirc; tho&aacute;ng suốt 4 m&ugrave;a.&nbsp;<br />\r\n✔️ Chất liệu: Vớ thể thao được gia c&ocirc;ng với 80% Nylon, 20% cotton &amp; spandex&nbsp;<br />\r\n✔️ Phần đế cotton dệt x&ugrave; - c&oacute; đường v&acirc;n chống trượt&nbsp;<br />\r\n✔️ Co d&atilde;n mạnh gi&uacute;p &ocirc;m s&aacute;t ch&acirc;n</p>\r\n', '2024-03-18 07:29:43', 1, 0, 16, 3),
(9, 'Giày EAR V', 1500000.00, '<p>Sản phẩm được thiết kế với phong c&aacute;ch hiện đại ph&ugrave; hợp với mọi lứa tuổi</p>\r\n', '2024-03-21 13:34:49', 1, 0, 12, 1),
(12, 'Nike 2023-2024 Barcelona Home Football Soccer T-Shirt Jersey', 1500000.00, '<p>Về mặt h&agrave;ng n&agrave;y<br />\r\n100% Polyester (PES)<br />\r\nThương hiệu mới với thẻ<br />\r\nMặc trong m&ugrave;a giải 2023-2024<br />\r\nKh&ocirc;ng n&ecirc;n rửa tr&ecirc;n 30 độ<br />\r\nTh&iacute;ch hợp cho người lớn - c&oacute; sẵn trong nhiều k&iacute;ch cỡ<br />\r\nK&iacute;ch thước: Ngực nhỏ 34-36&quot; (88/96cm)</p>\r\n', '2024-03-18 07:40:25', 1, 0, 12, 2),
(13, 'Nike 2023-2024 PSG Home Football Soccer T-Shirt Jersey', 150000.00, '<p>Về mặt h&agrave;ng n&agrave;y<br />\r\n100% Polyester (PES)<br />\r\nThương hiệu mới với thẻ<br />\r\nMặc trong m&ugrave;a giải 2023-2024<br />\r\nKh&ocirc;ng n&ecirc;n rửa tr&ecirc;n 30 độ<br />\r\nTh&iacute;ch hợp cho người lớn - c&oacute; sẵn trong nhiều k&iacute;ch cỡ<br />\r\nK&iacute;ch thước: XS Người lớn 30-32 &quot;Ngực&quot;</p>\r\n', '2024-03-18 07:41:57', 1, 0, 12, 2),
(14, 'Nike Bồ Đào Nha Áo đấu bóng đá nam World Cup 22/23', 1500000.00, '<p>Về mặt h&agrave;ng n&agrave;y<br />\r\nPh&ugrave; hợp thường xuy&ecirc;n<br />\r\nĐược cấp ph&eacute;p ch&iacute;nh thức<br />\r\nM&agrave;o đội dệt tr&ecirc;n ngực tr&aacute;i<br />\r\nNh&agrave; t&agrave;i trợ đội tr&ecirc;n mặt trận<br />\r\nX&acirc;y dựng thương hiệu tr&ecirc;n mặt trận</p>\r\n', '2024-03-18 07:42:46', 1, 0, 12, 2),
(15, 'Áo Thi Đấu Đội Tuyển Việt Nam 2023 Grand Sport 038977 Đỏ', 1500000.00, '<p>&bull; Thiết kế đặc biệt d&agrave;nh ri&ecirc;ng cho Đội Tuyển Việt Nam<br />\r\n&bull; Chất liệu Premium Recycle Polyester si&ecirc;u nhẹ<br />\r\n&bull; C&ocirc;ng nghệ kh&aacute;ng khuẩn Anti-Bacterial.<br />\r\n&bull; Cờ Việt Nam v&agrave; logo Grand Sport sử dụng c&ocirc;ng nghệ in 3D Bagde cao cấp&nbsp;<br />\r\n&bull; Form &aacute;o Regular Fit<br />\r\n&bull; C&ocirc;ng nghệ in chuyển nhiệt Sublimation cao cấp<br />\r\n&bull; Dải in Poly-Urethane cao cấp chạy dọc tay &aacute;o<br />\r\n&bull; Huy hiệu &quot;CHIẾN BINH SAO V&Agrave;NG&quot; ở cổ &aacute;o<br />\r\n&bull; Tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt</p>\r\n', '2024-03-18 07:43:44', 1, 0, 15, 2),
(16, 'Áo Thi Đấu Đội Tuyển Việt Nam 2023 Grand Sport 038977 Trắng', 1500000.00, '<p>&bull; Thiết kế đặc biệt d&agrave;nh ri&ecirc;ng cho Đội Tuyển Việt Nam<br />\r\n&bull; Chất liệu Premium Recycle Polyester si&ecirc;u nhẹ.<br />\r\n&bull; C&ocirc;ng nghệ kh&aacute;ng khuẩn Anti-Bacterial<br />\r\n&bull; Cờ Việt Nam v&agrave; logo Grand Sport sử dụng c&ocirc;ng nghệ in 3D Bagde cao cấp .<br />\r\n&bull; Form &aacute;o Regular Fit<br />\r\n&bull; C&ocirc;ng nghệ in chuyển nhiệt Sublimation cao cấp<br />\r\n&bull; Cổ &aacute;o c&aacute;ch điệu với ng&ocirc;i sao v&agrave;ng<br />\r\n&bull; Huy hiệu &quot;CHIẾN BINH SAO V&Agrave;NG&quot; ở sau cổ &aacute;o<br />\r\n&bull; Tho&aacute;ng kh&iacute;, thấm h&uacute;t mồ h&ocirc;i tốt</p>\r\n', '2024-03-18 07:44:34', 1, 2, 15, 2),
(17, 'ÁO BÓNG ĐÁ CHÍNH HÃNG MANCHESTER UNITED SÂN NHÀ 2021/22', 1500000.00, '<p>&Aacute;O THI ĐẤU TR&Aacute;I NH&Agrave; 21/22 MANCHESTER UNITED<br />\r\n&Aacute;O THUN FAN LẤY CẢM HỨNG BỘ SẢN PHẨM MU HUYỀN THOẠI.<br />\r\nSức trẻ. L&ograve;ng can đảm. Th&agrave;nh c&ocirc;ng. Đ&acirc;y l&agrave; phương ch&acirc;m của Manchester United v&agrave; n&oacute; đ&atilde; mang lại cho c&acirc;u lạc bộ hơn một thế kỷ chiến thắng. Với thiết kế đơn giản m&agrave;u đỏ v&agrave; cổ &aacute;o c&oacute; g&acirc;n m&agrave;u trắng, chiếc &aacute;o đấu adidas n&agrave;y được lấy cảm hứng từ bộ đồ biểu tượng m&agrave; c&aacute;c cầu thủ Manchester United mặc trong những chiến thắng vĩ đại nhất của họ. Chất liệu vải mềm mại, mịn m&agrave;ng với c&ocirc;ng nghệ AEROREADY h&uacute;t ẩm v&agrave; mang lại cho bạn cảm gi&aacute;c thoải m&aacute;i. Miếng vải dệt ở ngực v&agrave; biểu tượng h&igrave;nh quỷ dữ ở ph&iacute;a sau cổ &aacute;o l&agrave;m nổi bật l&ograve;ng trung th&agrave;nh với b&oacute;ng đ&aacute; của bạn.<br />\r\nChất liệu h&uacute;t ẩm<br />\r\nTay &aacute;o c&oacute; g&acirc;n<br />\r\nCổ tr&ograve;n c&oacute; g&acirc;n<br />\r\nPh&ugrave; hợp ti&ecirc;u chuẩn<br />\r\nVải Pique: 100% polyester t&aacute;i chế<br />\r\nLogo ph&iacute;a sau dưới cổ &aacute;o ph&iacute;a trong<br />\r\nLogo quỷ ở ph&iacute;a sau cổ &aacute;o<br />\r\nBiểu tượng của Manchester United<br />\r\nChất liệu xanh h&agrave;ng đầu<br />\r\nMẫu m&agrave;u: Đỏ thật<br />\r\nSố m&ocirc; h&igrave;nh: H31447<br />\r\nHướng dẫn bảo quản:<br />\r\n- D&ugrave;ng nước lạnh hay nước ấm dưới 40 độ C v&agrave; kh&ocirc;ng giặt chung với quần &aacute;o kh&aacute;c.<br />\r\n- Kh&ocirc;ng sử dụng thuốc tẩy hoặc bột giặt c&oacute; độ tẩy cao<br />\r\n- Kh&ocirc;ng ng&acirc;m trong nước hay nước x&agrave; ph&ograve;ng qu&aacute; một giờ trước khi giặt.<br />\r\n- Kh&ocirc;ng được giặt hoặc sấy kh&ocirc; bằng m&aacute;y.<br />\r\n- Ủi với nhiệt độ th&iacute;ch hợp cho từng loại vải, tuyệt đối kh&ocirc;ng ủi l&ecirc;n h&igrave;nh in, th&ecirc;u.<br />\r\n- Tranh phơi dưới nắng gắt để bảo quản m&agrave;u sắc.</p>\r\n', '2024-03-18 07:45:41', 1, 2, 11, 2),
(18, 'PUMA ULTRA ULTIMATE CAGE CAGE \'BREAKTHROUGH\' PACK', 1500000.00, '<p><strong>T&ecirc;n sản phẩm</strong>: Puma Ultra Ultimate Cage TT (Gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n cỏ nh&acirc;n tạo)</p>\r\n\r\n<p><strong>H&atilde;ng</strong>: Puma</p>\r\n\r\n<p><strong>Bộ sưu tập</strong>: Breakthrough Pack (2023)</p>\r\n\r\n<p><strong>M&atilde; sản phẩm</strong>: 107502 01 Loại đế gi&agrave;y: Turf (TF d&agrave;nh cho mặt s&acirc;n cỏ nh&acirc;n tạo)</p>\r\n\r\n<p><strong>Ph&acirc;n kh&uacute;c</strong>: Ultimate (Cao cấp)</p>\r\n\r\n<p><strong>Thời điểm ra mắt</strong>: 2023 Phong c&aacute;ch thi đấu: Tốc độ, Dứt điểm, Ph&ograve;ng ngự (Tiền đạo c&aacute;nh, Hậu vệ) Những cầu thủ đại diện: Maguire, Walker, Antoine Griezmann..</p>\r\n', '2024-03-18 09:23:05', 1, 2, 13, 1),
(19, 'Đang cập nhật', 1500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-19 20:17:06', 1, 1, 12, 1),
(20, 'Tât trắng', 50000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 12:40:30', 1, 0, 12, 3),
(21, 'Dây Giày Classic Trắng / Đen', 50000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 12:44:08', 1, 0, 19, 4),
(22, 'Dây giày Converse Chuck 1970', 100000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 12:57:29', 1, 0, 20, 4),
(23, 'Dây Giày Ultraboost Trắng Chính Hãng', 50000.00, '<p>D&acirc;y gi&agrave;y ch&iacute;nh h&atilde;ng Kh&ocirc;ng bị phai m&agrave;u, chất d&acirc;y d&agrave;y dặn mịn m&agrave;ng, chuẩn d&acirc;y gi&agrave;y Gi&agrave;y đẹp nhờ d&acirc;y nh&eacute; c&aacute;c bạn ???</p>\r\n\r\n<p>Chất liệu: &ndash; Bền, đẹp, sợi cực k&igrave; chắc chắn. &ndash; Kh&ocirc;ng bai d&atilde;o, kh&ocirc;ng x&ugrave;.</p>\r\n\r\n<p>CAM KẾT ĐẸP NHẤT THỊ TRƯỜNG!!!</p>\r\n\r\n<p>✔️&nbsp;L&agrave; phụ kiện khiến đ&ocirc;i gi&agrave;y trở n&ecirc;n tr&ocirc;ng c&aacute; t&iacute;nh, bắt mắt hơn rất nhiều.</p>\r\n\r\n<p>✔️&nbsp;Shop b&aacute;n theo đ&ocirc;i. 1 đ&ocirc;i (2 d&acirc;y)</p>\r\n\r\n<p>D&Acirc;Y GI&Agrave;Y &ndash; PHỤ KIỆN B&Eacute; NHỎ TẠO N&Ecirc;N C&Aacute; T&Iacute;NH CHO RI&Ecirc;NG BẠN L&agrave; một chi tiết rất nhỏ tạo n&ecirc;n sự ho&agrave;n thiện của những đ&ocirc;i gi&agrave;y thể thao, thế nhưng tầm quan trọng của những chiếc d&acirc;y gi&agrave;y l&agrave; kh&ocirc;ng thể phủ nhận.</p>\r\n\r\n<p>Ch&uacute;ng kh&ocirc;ng chỉ l&agrave; phụ kiện gi&uacute;p cho ch&uacute;ng ta đi đ&ocirc;i gi&agrave;y thể thao được vừa vặn, chắc chắn hơn m&agrave; c&ograve;n thể hiện c&aacute; t&iacute;nh chủ nh&acirc;n của n&oacute;.</p>\r\n\r\n<p>C&oacute; h&agrave;ng ng&agrave;n sản phẩm d&acirc;y gi&agrave;y với đủ loại mẫu m&atilde; v&agrave; chất liệu, gi&uacute;p bạn c&oacute; thể biến h&oacute;a ch&uacute;ng th&agrave;nh những phụ kiện v&ocirc; c&ugrave;ng độc đ&aacute;o, t&ocirc; điểm cho đ&ocirc;i gi&agrave;y của m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2024-03-21 13:09:07', 1, 0, 21, 4),
(24, 'Dây giày EQT xám tròn phản quang', 50000.00, '<p>D&acirc;y gi&agrave;y ch&iacute;nh h&atilde;ng Kh&ocirc;ng bị phai m&agrave;u, chất d&acirc;y d&agrave;y dặn mịn m&agrave;ng, chuẩn d&acirc;y gi&agrave;y Gi&agrave;y đẹp nhờ d&acirc;y nh&eacute; c&aacute;c bạn ???</p>\r\n\r\n<p>Chất liệu: &ndash; Bền, đẹp, sợi cực k&igrave; chắc chắn. &ndash; Kh&ocirc;ng bai d&atilde;o, kh&ocirc;ng x&ugrave;.</p>\r\n\r\n<p>CAM KẾT ĐẸP NHẤT THỊ TRƯỜNG!!!</p>\r\n\r\n<p>✔️ L&agrave; phụ kiện khiến đ&ocirc;i gi&agrave;y trở n&ecirc;n tr&ocirc;ng c&aacute; t&iacute;nh, bắt mắt hơn rất nhiều.</p>\r\n\r\n<p>✔️ Shop b&aacute;n theo đ&ocirc;i. 1 đ&ocirc;i (2 d&acirc;y)</p>\r\n\r\n<p>D&Acirc;Y GI&Agrave;Y &ndash; PHỤ KIỆN B&Eacute; NHỎ TẠO N&Ecirc;N C&Aacute; T&Iacute;NH CHO RI&Ecirc;NG BẠN L&agrave; một chi tiết rất nhỏ tạo n&ecirc;n sự ho&agrave;n thiện của những đ&ocirc;i gi&agrave;y thể thao, thế nhưng tầm quan trọng của những chiếc d&acirc;y gi&agrave;y l&agrave; kh&ocirc;ng thể phủ nhận.</p>\r\n\r\n<p>Ch&uacute;ng kh&ocirc;ng chỉ l&agrave; phụ kiện gi&uacute;p cho ch&uacute;ng ta đi đ&ocirc;i gi&agrave;y thể thao được vừa vặn, chắc chắn hơn m&agrave; c&ograve;n thể hiện c&aacute; t&iacute;nh chủ nh&acirc;n của n&oacute;.</p>\r\n\r\n<p>C&oacute; h&agrave;ng ng&agrave;n sản phẩm d&acirc;y gi&agrave;y với đủ loại mẫu m&atilde; v&agrave; chất liệu, gi&uacute;p bạn c&oacute; thể biến h&oacute;a ch&uacute;ng th&agrave;nh những phụ kiện v&ocirc; c&ugrave;ng độc đ&aacute;o, t&ocirc; điểm cho đ&ocirc;i gi&agrave;y của m&igrave;nh.</p>\r\n', '2024-03-21 13:10:43', 1, 0, 19, 4),
(25, 'DÂY GIÀY - Cặp', 30000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:14:22', 1, 0, 19, 4),
(26, 'Giày Adidas-Trắng', 1500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 18:57:57', 1, 0, 11, 1),
(27, 'Dây Giày Classic Trắng / Đen', 50000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:21:02', 1, 0, 21, 4),
(28, 'Giày Puma', 1500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:24:08', 1, 0, 13, 1),
(29, 'Giày MSO', 1500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:25:57', 1, 0, 23, 1),
(30, 'Găng tay AF1', 500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:27:49', 1, 0, 12, 6),
(31, 'Găng tay CF', 500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:29:13', 1, 0, 11, 6),
(32, 'Bóng FC', 1400000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 13:32:44', 1, 2, 12, 5),
(33, 'Giày Nike-cyan', 1500000.00, '<p>Đang cập nhật</p>\r\n', '2024-03-21 18:59:36', 1, 0, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `masize` int(11) NOT NULL,
  `tensize` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`masize`, `tensize`) VALUES
(1, '39'),
(2, '40'),
(3, '41'),
(4, '42'),
(5, '43'),
(6, '44'),
(7, 'S'),
(8, 'M'),
(9, 'L'),
(10, 'XL'),
(11, '6'),
(12, '7'),
(13, '8'),
(14, '9'),
(15, '10'),
(16, '1m'),
(17, '1,2m'),
(18, 'khong co'),
(19, 'lớn'),
(20, 'nhỏ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_sp`
--

CREATE TABLE `size_sp` (
  `id` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `masize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size_sp`
--

INSERT INTO `size_sp` (`id`, `masp`, `masize`) VALUES
(1, 18, 15),
(2, 8, 7),
(3, 18, 1),
(4, 18, 2),
(5, 18, 6),
(6, 18, 1),
(7, 17, 7),
(8, 18, 2),
(9, 19, 6),
(10, 16, 7),
(11, 17, 8),
(12, 16, 7),
(13, 19, 6),
(14, 17, 7),
(15, 18, 2),
(16, 16, 7),
(17, 8, 8),
(18, 23, 16),
(19, 30, 12),
(20, 30, 11),
(21, 32, 19),
(22, 30, 11),
(23, 32, 20),
(24, 32, 19),
(25, 16, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `math` int(11) NOT NULL,
  `tenth` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`math`, `tenth`, `mota`, `trangthai`) VALUES
(11, '	Adidas', '<table id=\"table_js\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Adidas</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(12, '	Nike', '<table id=\"table_js\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Nike</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(13, '	Puma', '<table id=\"table_js\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Puma</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(14, '	Spotify', '<table id=\"table_js\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Spotify</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(15, '	Vietnam', '<table id=\"table_js\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Vietnam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(16, 'UPPER YOU', '<p>UPPER YOU</p>\r\n', 1),
(17, 'PROTECT', 'PROTECT\r\n\r\n', 1),
(19, 'Aolikes', '<p>Aolikes</p>\r\n', 1),
(20, 'Converse Chuck', 'Converse Chuck\r\n', 1),
(21, 'Ultraboost', 'Ultraboost\r\n', 1),
(22, 'KAFD', '<p>KAFD</p>\r\n', 1),
(23, 'MSO', '<p>MSO</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthai`
--

CREATE TABLE `trangthai` (
  `matt` int(11) NOT NULL,
  `tentt` varchar(255) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `trangthai`
--

INSERT INTO `trangthai` (`matt`, `tentt`, `mota`) VALUES
(1, 'Đơn bị từ chối bởi người bán', 'Đơn bị từ chối bởi người bán'),
(2, 'Đã tiếp nhận đơn', 'Đã tiếp nhận đơn'),
(3, 'Đơn đang xử lý', 'Đơn đang xử lý'),
(4, 'Đã xác nhận có hàng', 'Đã xác nhận có hàng'),
(5, 'Đang vận chuyển', 'Đang vận chuyển'),
(6, 'Đã giao thành công', 'Đã giao thành công'),
(7, 'Giao hàng thất bại', 'Giao hàng thất bại');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`maanh`) USING BTREE,
  ADD KEY `FK_anhsp_sanpham` (`masp`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`mactdh`),
  ADD KEY `FK_chitietdonhang_donhang` (`madon`),
  ADD KEY `FK_chitietdonhang_sanpham` (`masp`),
  ADD KEY `masize` (`masize`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`mactgh`),
  ADD KEY `FK_chitietgiohang_sanpham` (`masp`),
  ADD KEY `FK_chitietgiohang_giohang` (`magh`),
  ADD KEY `masize` (`masize`);

--
-- Chỉ mục cho bảng `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD PRIMARY KEY (`machitiet`),
  ADD KEY `FK_chitiettrangthai_donhang` (`madon`),
  ADD KEY `FK_chitiettrangthai_nhanvien` (`manv`),
  ADD KEY `FK_chitiettrangthai_trangthai` (`matt`) USING BTREE;

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madon`) USING BTREE,
  ADD KEY `FK_donhang_khachhang` (`makh`) USING BTREE;

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`magh`) USING BTREE,
  ADD KEY `FK_giohang_khachhang` (`makh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`maloai`) USING BTREE;

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `FK_sanpham_thuonghieu` (`math`),
  ADD KEY `FK_sanpham_loaisp` (`maloai`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`masize`);

--
-- Chỉ mục cho bảng `size_sp`
--
ALTER TABLE `size_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `masp` (`masp`),
  ADD KEY `masize` (`masize`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`math`) USING BTREE;

--
-- Chỉ mục cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  ADD PRIMARY KEY (`matt`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `maanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `mactdh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `mactgh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  MODIFY `machitiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `magh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `masize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `size_sp`
--
ALTER TABLE `size_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `math` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `trangthai`
--
ALTER TABLE `trangthai`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `FK_anhsp_sanpham` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_chitietdonhang_donhang` FOREIGN KEY (`madon`) REFERENCES `donhang` (`madon`),
  ADD CONSTRAINT `FK_chitietdonhang_sanpham` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `FK_chitietdonhang_size` FOREIGN KEY (`masize`) REFERENCES `size` (`masize`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `FK_chitietgiohang_size` FOREIGN KEY (`masize`) REFERENCES `size` (`masize`);

--
-- Các ràng buộc cho bảng `chitiettrangthai`
--
ALTER TABLE `chitiettrangthai`
  ADD CONSTRAINT `FK_chitiettrangthai_donhang` FOREIGN KEY (`madon`) REFERENCES `donhang` (`madon`),
  ADD CONSTRAINT `FK_chitiettrangthai_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `FK_chitiettrangthai_trangthai` FOREIGN KEY (`matt`) REFERENCES `trangthai` (`matt`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_donhang_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK_giohang_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sanpham_loaisp` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`),
  ADD CONSTRAINT `FK_sanpham_thuonghieu` FOREIGN KEY (`math`) REFERENCES `thuonghieu` (`math`);

--
-- Các ràng buộc cho bảng `size_sp`
--
ALTER TABLE `size_sp`
  ADD CONSTRAINT `FK_size_sp_sanpham` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `FK_size_sp_size` FOREIGN KEY (`masize`) REFERENCES `size` (`masize`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
