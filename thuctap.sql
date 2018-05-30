-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2018 at 05:24 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuctap`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--
DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities` (`id`, `name`) VALUES
(3, 'An Giang'),
(4, 'Bà Rịa - Vũng Tàu'),
(5, 'Bắc Giang'),
(6, 'Bắc Kạn'),
(7, 'Bạc Liêu'),
(8, 'Bắc Ninh'),
(9, 'Bến Tre'),
(10, 'Bình Định'),
(11, 'Bình Dương'),
(12, 'Bình Phước'),
(13, 'Bình Thuận'),
(14, 'Cà Mau'),
(15, 'Cao Bằng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Tĩnh'),
(25, 'Hải Dương'),
(26, 'Hậu Giang'),
(27, 'Hòa Bình'),
(28, 'Hưng Yên'),
(29, 'Khánh Hòa'),
(30, 'Kiên Giang'),
(31, 'Kon Tum'),
(32, 'Lai Châu'),
(33, 'Lâm Đồng'),
(34, 'Lạng Sơn'),
(35, 'Lào Cai'),
(36, 'Long An'),
(37, 'Nam Định'),
(38, 'Nghệ An'),
(39, 'Ninh Bình'),
(40, 'Ninh Thuận'),
(41, 'Phú Thọ'),
(42, 'Quảng Bình'),
(43, 'Quảng Nam'),
(44, 'Quảng Ngãi'),
(45, 'Quảng Ninh'),
(46, 'Quảng Trị'),
(47, 'Sóc Trăng'),
(48, 'Sơn La'),
(49, 'Tây Ninh'),
(50, 'Thái Bình'),
(51, 'Thái Nguyên'),
(52, 'Thanh Hóa'),
(53, 'Thừa Thiên Huế'),
(54, 'Tiền Giang'),
(55, 'Trà Vinh'),
(56, 'Tuyên Quang'),
(57, 'Vĩnh Long'),
(58, 'Vĩnh Phúc'),
(59, 'Yên Bái'),
(60, 'Phú Yên'),
(61, 'Hà Nội'),
(62, 'TP HCM'),
(63, 'Đà Nẵng'),
(64, 'Cần Thơ'),
(65, 'Hải Phòng');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--
DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_city` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
INSERT INTO `districts` (`id`, `name`, `id_city`) VALUES
(1, 'Thành phố Long Xuyên', 3),
(2, 'Thị xã Châu Đốc', 3),
(3, 'Huyện An Phú', 3),
(4, 'Huyện Tân Châu', 3),
(5, 'Huyện Phú Tân', 3),
(6, 'Huyện Tịnh Biên', 3),
(7, 'Huyện Tri Tôn', 3),
(8, 'Huyện Châu Phú', 3),
(9, 'Huyện Chợ Mới', 3),
(10, 'Huyện Châu Thành', 3),
(11, 'Huyện Thoại Sơn', 3),
(12, 'Thành phố Vũng Tàu', 4),
(13, 'Thị xã Bà Rịa', 4),
(14, 'Huyện Xuyên Mộc', 4),
(15, 'Huyện Long Điền', 4),
(16, 'Huyện Côn Đảo', 4),
(17, 'Huyện Tân Thành', 4),
(18, 'Huyện Châu Đức', 4),
(19, 'Huyện Đất Đỏ', 4),
(20, 'Thành phố Bắc Giang', 5),
(21, 'Huyện Yên Thế', 5),
(22, 'Huyện Lục Ngạn', 5),
(23, 'Huyện Sơn Động', 5),
(24, 'Huyện Lục Nam', 5),
(25, 'Huyện Tân Yên', 5),
(26, 'Huyện Hiệp Hoà', 5),
(27, 'Huyện Lạng Giang', 5),
(28, 'Huyện Việt Yên', 5),
(29, 'Huyện Yên Dũng', 5),
(30, 'Thị xã Bắc Kạn', 6),
(31, 'Huyện Chợ Đồn', 6),
(32, 'Huyện Bạch Thông', 6),
(33, 'Huyện Na Rì', 6),
(34, 'Huyện Ngân Sơn', 6),
(35, 'Huyện Ba Bể', 6),
(36, 'Huyện Chợ Mới', 6),
(37, 'Huyện Pác Nặm', 6),
(38, 'Thị xã Bạc Liêu', 7),
(39, 'Huyện Vĩnh Lợi', 7),
(40, 'Huyện Hồng Dân', 7),
(41, 'Huyện Giá Rai', 7),
(42, 'Huyện Phước Long', 7),
(43, 'Huyện Đông Hải', 7),
(44, 'Huyện Hoà Bình', 7),
(48, 'Thành phố Bắc Ninh', 8),
(49, 'Huyện Yên Phong', 8),
(50, 'Huyện Quế Võ.', 8),
(51, 'Huyện Tiên Du', 8),
(52, 'Huyện Từ Sơn', 8),
(53, 'Huyện Thuận Thành', 8),
(54, 'Huyện Gia Bình', 8),
(55, 'Huyện Lương Tài', 8),
(56, 'Thị xã Bến Tre', 9),
(57, 'Huyện Châu Thành', 9),
(58, 'Huyện Chợ Lách', 9),
(59, 'Huyện Mỏ Cày', 9),
(60, 'Huyện Giồng Trôm', 9),
(61, 'Huyện Bình Đại', 9),
(62, 'Huyện Ba Tri', 9),
(63, 'Huyện Thạnh Phú', 9),
(64, 'Thành phố Quy Nhơn', 10),
(65, 'Huyện An Lão', 10),
(66, 'Huyện Hoài Ân', 10),
(67, 'Huyện Hoài Nhơn', 10),
(68, 'Huyện Phù Mỹ', 10),
(69, 'Huyện Phù Cát', 10),
(70, 'Huyện Vĩnh Thạnh', 10),
(71, 'Huyện Tây Sơn', 10),
(72, 'Huyện Vân Canh', 10),
(73, 'Huyện An Nhơn', 10),
(74, 'Huyện Tuy Phước', 10),
(75, 'Thị xã Thủ Dầu Một', 11),
(76, 'Huyện Bến Cát', 11),
(77, 'Huyện Tân Uyên', 11),
(78, 'Huyện Thuận An', 11),
(79, 'Huyện Dĩ An', 11),
(80, 'Huyện Phú Giáo', 11),
(81, 'Huyện Dầu Tiếng', 11),
(82, 'Thị xã Đồng Xoài', 12),
(83, 'Huyện Đồng Phú', 12),
(84, 'Huyện Chơn Thành', 12),
(85, 'Huyện Bình Long', 12),
(86, 'Huyện Lộc Ninh', 12),
(87, 'Huyện Bù Đốp', 12),
(88, 'Huyện Phước Long', 12),
(89, 'Huyện Bù Đăng', 12),
(90, 'Thành phố Phan Thiết', 13),
(91, 'Huyện Tuy Phong', 13),
(92, 'Huyện Bắc Bình', 13),
(93, 'Huyện Hàm Thuận Bắc', 13),
(94, 'Huyện Hàm Thuận Nam', 13),
(95, 'Huyện Hàm Tân', 13),
(96, 'Huyện Đức Linh', 13),
(97, 'Huyện Tánh Linh', 13),
(98, 'Huyện Phú Quý', 13),
(99, 'Thị xã LaGi', 13),
(100, 'Thành phố Cà Mau', 14),
(101, 'Huyện Thới Bình', 14),
(102, 'Huyện U Minh', 14),
(103, 'Huyện Trần Văn Thời', 14),
(104, 'Huyện Cái Nước', 14),
(105, 'Huyện Đầm Dơi', 14),
(106, 'Huyện Ngọc Hiển', 14),
(107, 'Huyện Năm Căn', 14),
(108, 'Huyện Phú Tân', 14),
(109, 'Thị xã Cao Bằng', 15),
(110, 'Huyện Bảo Lạc', 15),
(111, 'Huyện Thông Nông', 15),
(112, 'Huyện Hà Quảng', 15),
(113, 'Huyện Trà Lĩnh', 15),
(114, 'Huyện Trùng Khánh', 15),
(115, 'Huyện Nguyên Bình', 15),
(116, 'Huyện Hoà An', 15),
(117, 'Huyện Quảng Uyên', 15),
(118, 'Huyện Thạch An', 15),
(119, 'Huyện Hạ Lang', 15),
(120, 'Huyện Bảo Lâm', 15),
(121, 'Huyện Phục Hoà', 15),
(122, 'Thành phố Buôn Ma Thuột', 16),
(123, 'Huyện Ea H Leo', 16),
(124, 'Huyện Krông Buk', 16),
(125, 'Huyện Krông Năng', 16),
(126, 'Huyện Ea Súp', 16),
(127, 'Huyện Cư M gar', 16),
(128, 'Huyện Krông Pắc', 16),
(129, 'Huyện Ea Kar', 16),
(130, 'Huyện M`Đrăk', 16),
(131, 'Huyện Krông Ana', 16),
(132, 'Huyện Krông Bông', 16),
(133, 'Huyện Lăk', 16),
(134, 'Huyện Buôn Đôn', 16),
(135, 'Huyện Cư Kuin', 16),
(136, 'Thị xã Gia Nghĩa', 17),
(137, 'Huyện Dăk RLấp', 17),
(138, 'Huyện Dăk Mil', 17),
(139, 'Huyện Cư Jút', 17),
(140, 'Huyện Dăk Song', 17),
(141, 'Huyện Krông Nô', 17),
(142, 'Huyện Dăk GLong', 17),
(143, 'Huyện Tuy Đức', 17),
(144, 'TP. Điện Biên Phủ', 18),
(145, 'Thị xã Mường Lay', 18),
(146, 'Huyện Điện Biên', 18),
(147, 'Huyện Tuần Giáo', 18),
(148, 'Huyện Mường Chà', 18),
(149, 'Huyện Tủa Chùa', 18),
(150, 'Huyện Điện Biên Đông', 18),
(151, 'Huyện Mường Nhé', 18),
(152, 'Huyện Mường Ảng', 18),
(153, 'Thành phố Biên Hoà', 19),
(154, 'Huyện Vĩnh Cửu', 19),
(155, 'Huyện Tân Phú', 19),
(156, 'Huyện Định Quán', 19),
(157, 'Huyện Thống Nhất', 19),
(158, 'Thị xã Long Khánh', 19),
(159, 'Huyện Xuân Lộc', 19),
(160, 'Huyện Long Thành', 19),
(161, 'Huyện Nhơn Trạch', 19),
(162, 'Huyện Trảng Bom', 19),
(163, 'Huyện Cẩm Mỹ', 19),
(164, 'Thành phố Cao Lãnh', 20),
(165, 'Thị xã Sa Đéc', 20),
(166, 'Huyện Tân Hồng', 20),
(167, 'Huyện Hồng Ngự', 20),
(168, 'Huyện Tam Nông', 20),
(169, 'Huyện Thanh Bình', 20),
(170, 'Huyện Cao Lãnh', 20),
(171, 'Huyện Lấp Vò', 20),
(172, 'Huyện Tháp Mười', 20),
(173, 'Huyện Lai Vung', 20),
(174, 'Huyện Châu Thành', 20),
(175, 'Thành phố Pleiku', 21),
(176, 'Huyện Chư Păh', 21),
(177, 'Huyện Mang Yang', 21),
(178, 'Huyện Kbang', 21),
(179, 'Huyện An Khê', 21),
(180, 'Huyện Kông Chro', 21),
(181, 'Huyện Đức Cơ', 21),
(182, 'Huyện Chưprông', 21),
(183, 'Huyện Chư Sê', 21),
(184, 'Huyện Ayunpa', 21),
(185, 'Huyện Krông Pa', 21),
(186, 'Huyện La Grai', 21),
(187, 'Huyện Đăk Đoa', 21),
(188, 'Huyện La Pa', 21),
(189, 'Huyện Đăk Pơ', 21),
(190, 'Huyện Phú Thiện', 21),
(191, 'Thành phố Hà Giang', 22),
(192, 'Huyện Đồng Văn', 22),
(193, 'Huyện Mèo Vạc', 22),
(194, 'Huyện Yên Minh', 22),
(195, 'Huyện Quản Bạ', 22),
(196, 'Huyện Vị Xuyên', 22),
(197, 'Huyện Bắc Mê', 22),
(198, 'Huyện Hoàng Su Phì', 22),
(199, 'Huyện Xín Mần', 22),
(200, 'Huyện Bắc Quang', 22),
(201, 'Huyện Quang Bình', 22),
(202, 'Thị xã Phủ Lý', 23),
(203, 'Huyện Duy Tiên', 23),
(204, 'Huyện Kim Bảng', 23),
(205, 'Huyện Lý Nhân', 23),
(206, 'Huyện Thanh Liêm', 23),
(207, 'Huyện Bình Lục', 23),
(208, 'Thành phố Hà Tĩnh', 24),
(209, 'Thị xã Hồng Lĩnh', 24),
(210, 'Huyện Hương Sơn', 24),
(211, 'Huyện Đức Thọ', 24),
(212, 'Huyện Nghi Xuân', 24),
(213, 'Huyện Can Lộc', 24),
(214, 'Huyện Hương Khê', 24),
(215, 'Huyện Thạch Hà', 24),
(216, 'Huyện Cẩm Xuyên', 24),
(217, 'Huyện Kỳ Anh', 24),
(218, 'Huyện Vũ Quang', 24),
(219, 'Huyện Lộc Hà', 24),
(220, 'Thành phố Hải Dương', 25),
(221, 'Huyện Chí Linh', 25),
(222, 'Huyện Nam Sách', 25),
(223, 'Huyện Kinh Môn', 25),
(224, 'Huyện Gia Lộc', 25),
(225, 'Huyện Tứ Kỳ', 25),
(226, 'Huyện Thanh Miện', 25),
(227, 'Huyện Ninh Giang', 25),
(228, 'Huyện Cẩm Giàng', 25),
(229, 'Huyện Thanh Hà', 25),
(230, 'Huyện Kim Thành', 25),
(231, 'Huyện Bình Giang', 25),
(232, 'Thành phố Vị Thanh', 26),
(233, 'Huyện Vị Thuỷ', 26),
(234, 'Huyện Long Mỹ', 26),
(235, 'Huyện Phụng Hiệp', 26),
(236, 'Huyện Châu Thành', 26),
(237, 'Huyện Châu Thành A', 26),
(238, 'Thị xã Ngã Bảy', 26),
(239, 'Thành phố Hoà Bình', 27),
(240, 'Huyện Đà Bắc', 27),
(241, 'Huyện Mai Châu', 27),
(242, 'Huyện Tân Lạc', 27),
(243, 'Huyện Lạc Sơn', 27),
(244, 'Huyện Kỳ Sơn', 27),
(245, 'Huyện Lương Sơn', 27),
(246, 'Huyện Kim Bôi', 27),
(247, 'Huyện Lạc Thuỷ', 27),
(248, 'Huyện Yên Thuỷ', 27),
(249, 'Huyện Cao Phong', 27),
(250, 'Thị xã Hưng Yên', 28),
(251, 'Huyện Kim Động', 28),
(252, 'Huyện Ân Thi', 28),
(253, 'Huyện Khoái Châu', 28),
(254, 'Huyện Yên Mỹ', 28),
(255, 'Huyện Tiên Lữ', 28),
(256, 'Huyện Phù Cừ', 28),
(257, 'Huyện Mỹ Hào', 28),
(258, 'Huyện Văn Lâm', 28),
(259, 'Huyện Văn Giang', 28),
(260, 'Thành phố Nha Trang', 29),
(261, 'Huyện Vạn Ninh', 29),
(262, 'Huyện Ninh Hoà', 29),
(263, 'Huyện Diên Khánh', 29),
(264, 'Huyện Khánh Vĩnh', 29),
(265, 'Thị xã Cam Ranh', 29),
(266, 'Huyện Khánh Sơn', 29),
(267, 'Huyện Trường Sa', 29),
(268, 'Huyện Cam Lâm', 29),
(269, 'Thành phố Rạch Giá', 30),
(270, 'Thị xã Hà Tiên', 30),
(271, 'Huyện Kiên Lương', 30),
(272, 'Huyện Hòn Đất', 30),
(273, 'Huyện Tân Hiệp', 30),
(274, 'Huyện Châu Thành', 30),
(275, 'Huyện Giồng Riềng', 30),
(276, 'Huyện Gò Quao', 30),
(277, 'Huyện An Biên', 30),
(278, 'Huyện An Minh', 30),
(279, 'Huyện Vĩnh Thuận', 30),
(280, 'Huyện Phú Quốc', 30),
(281, 'Huyện Kiên Hải', 30),
(282, 'Huyện U minh Thượng', 30),
(283, 'Thị xã KonTum', 31),
(284, 'Huyện Đăk Glei', 31),
(285, 'Huyện Ngọc Hồi', 31),
(286, 'Huyện Đăk Tô', 31),
(287, 'Huyện Sa Thầy', 31),
(288, 'Huyện Kon Plong', 31),
(289, 'Huyện Đăk Hà', 31),
(290, 'Huyện Kon Rộy', 31),
(291, 'Huyện Tu Mơ Rông', 31),
(292, 'Huyện Thị xã Lai Châu', 32),
(293, 'Huyện Tam Đường', 32),
(294, 'Huyện Phong Thổ', 32),
(295, 'Huyện Sìn Hồ', 32),
(296, 'Huyện Mường Tè', 32),
(297, 'Huyện Than Uyên', 32),
(298, 'Huyện Thành phố Đà Lạt', 33),
(299, 'Thị xã. Bảo Lộc', 33),
(300, 'Huyện Đức Trọng', 33),
(301, 'Huyện Di Linh', 33),
(302, 'Huyện Đơn Dương', 33),
(303, 'Huyện Lạc Dương', 33),
(304, 'Huyện Đạ Huoai', 33),
(305, 'Huyện Đạ Tẻh', 33),
(306, 'Huyện Cát Tiên', 33),
(307, 'Huyện Lâm Hà', 33),
(308, 'Huyện Bảo Lâm', 33),
(309, 'Huyện Đam Rông', 33),
(310, 'Thành phố Lạng Sơn', 34),
(311, 'Huyện Tràng Định', 34),
(312, 'Huyện Bình Gia', 34),
(313, 'Huyện Văn Lãng', 34),
(314, 'Huyện Bắc Sơn', 34),
(315, 'Huyện Văn Quan', 34),
(316, 'Huyện Cao Lộc', 34),
(317, 'Huyện Lộc Bình', 34),
(318, 'Huyện Chi Lăng', 34),
(319, 'Huyện Đình Lập', 34),
(320, 'Huyện Hữu Lũng', 34),
(321, 'Thành phố Lào Cai', 35),
(322, 'Huyện Xi Ma Cai', 35),
(323, 'Huyện Bát Xát', 35),
(324, 'Huyện Bảo Thắng', 35),
(325, 'Huyện Sa Pa', 35),
(326, 'Huyện Văn Bàn', 35),
(327, 'Huyện Bảo Yên', 35),
(328, 'Huyện Bắc Hà', 35),
(329, 'Huyện Mường Khương', 35),
(330, 'Thị xã Tân An', 36),
(331, 'Huyện Vĩnh Hưng', 36),
(332, 'Huyện Mộc Hoá', 36),
(333, 'Huyện Tân Thạnh', 36),
(334, 'Huyện Thạnh Hoá', 36),
(335, 'Huyện Đức Huệ', 36),
(336, 'Huyện Đức Hoà', 36),
(337, 'Huyện Bến Lức', 36),
(338, 'Huyện Thủ Thừa', 36),
(339, 'Huyện Châu Thành', 36),
(340, 'Huyện Tân Trụ', 36),
(341, 'Huyện Cần Đước', 36),
(342, 'Huyện Cần Giuộc', 36),
(343, 'Huyện Tân Hưng', 36),
(344, 'TP. Nam Định', 37),
(345, 'Huyện Mỹ Lộc', 37),
(346, 'Huyện Xuân Trường', 37),
(347, 'Huyện Giao Thủy', 37),
(348, 'Huyện Ý Yên', 37),
(349, 'Huyện Vụ Bản', 37),
(350, 'Huyện Nam Trực', 37),
(351, 'Huyện Trực Ninh', 37),
(352, 'Huyện Nghĩa Hưng', 37),
(353, 'Huyện Hải Hậu', 37),
(354, 'Thành phố Vinh', 38),
(355, 'Thị xã Cửa Lò', 38),
(356, 'Huyện Quỳ Châu', 38),
(357, 'Huyện Quỳ Hợp', 38),
(358, 'Huyện Nghĩa Đàn', 38),
(359, 'Huyện Quỳnh Lưu', 38),
(360, 'Huyện Kỳ Sơn', 38),
(361, 'Huyện Tương Dương', 38),
(362, 'Huyện Con Cuông', 38),
(363, 'Huyện Tân Kỳ', 38),
(364, 'Huyện Yên Thành', 38),
(365, 'Huyện Diễn Châu', 38),
(366, 'Huyện Anh Sơn', 38),
(367, 'Huyện Đô Lương', 38),
(368, 'Huyện Thanh Chương', 38),
(369, 'Huyện Nghi Lộc', 38),
(370, 'Huyện Nam Đàn', 38),
(371, 'Huyện Hưng Nguyên', 38),
(372, 'Huyện Quế Phong', 38),
(373, 'Thành phố Ninh Bình', 39),
(374, 'Thị xã Tam Điệp', 39),
(375, 'Huyện Nho Quan', 39),
(376, 'Huyện Gia Viễn', 39),
(377, 'Huyện Hoa Lư', 39),
(378, 'Huyện Yên Mô', 39),
(379, 'Huyện Kim Sơn', 39),
(380, 'Huyện Yên Khánh', 39),
(381, 'Thành phố Phan Rang-Tháp Chàm', 40),
(382, 'Huyện Ninh Sơn', 40),
(383, 'Huyện Ninh Phước', 40),
(384, 'Huyện Bác Ái', 40),
(385, 'Huyện Thuận Bắc', 40),
(386, 'Huyện Ninh Hải', 40),
(387, 'TP. Việt Trì', 41),
(388, 'Thị xã Phú Thọ', 41),
(389, 'Huyện Đoan Hùng', 41),
(390, 'Huyện Thanh Ba', 41),
(391, 'Huyện Hạ Hoà', 41),
(392, 'Huyện Cẩm Khê', 41),
(393, 'Huyện Yên Lập', 41),
(394, 'Huyện Thanh Sơn', 41),
(395, 'Huyện Phù Ninh', 41),
(396, 'Huyện Lâm Thao', 41),
(397, 'Huyện Tam Nông', 41),
(398, 'Huyện Thanh Thủy', 41),
(399, 'Huyện Tân Sơn', 41),
(400, 'Thành phố Đồng Hới', 42),
(401, 'Huyện Tuyên Hoá', 42),
(402, 'Huyện Minh Hoá', 42),
(403, 'Huyện Quảng Trạch', 42),
(404, 'Huyện Bố Trạch', 42),
(405, 'Huyện Quảng Ninh', 42),
(406, 'Huyện Lệ Thuỷ', 42),
(407, 'Thành phố Tam Kỳ', 43),
(408, 'Thị xã Hội An', 43),
(409, 'Huyện Duy Xuyên', 43),
(410, 'Huyện Điện Bàn', 43),
(411, 'Huyện Đại Lộc', 43),
(412, 'Huyện Quế Sơn', 43),
(413, 'Huyện Hiệp Đức', 43),
(414, 'Huyện Thăng Bình', 43),
(415, 'Huyện Núi Thành', 43),
(416, 'Huyện Tiên Phước', 43),
(417, 'Huyện Bắc Trà My', 43),
(418, 'Huyện Đông Giang', 43),
(419, 'Huyện Nam Giang', 43),
(420, 'Huyện Phước Sơn', 43),
(421, 'Huyện Nam Trà My', 43),
(422, 'Huyện Tây Giang', 43),
(423, 'Huyện Phú Ninh', 43),
(424, 'Thành phố Quảng Ngãi', 44),
(425, 'Huyện Lý Sơn', 44),
(426, 'Huyện Bình Sơn', 44),
(427, 'Huyện Trà Bồng', 44),
(428, 'Huyện Sơn Tịnh', 44),
(429, 'Huyện Sơn Hà', 44),
(430, 'Huyện Tư Nghĩa', 44),
(431, 'Huyện Nghĩa Hành', 44),
(432, 'Huyện Minh Long', 44),
(433, 'Huyện Mộ Đức', 44),
(434, 'Huyện Đức Phổ', 44),
(435, 'Huyện Ba Tơ', 44),
(436, 'Huyện Sơn Tây', 44),
(437, 'Huyện Tây Trà', 44),
(438, 'TP. Hạ Long', 45),
(439, 'Thị xã Cẩm Phả', 45),
(440, 'Thị xã Uông Bí', 45),
(441, 'Thị xã Móng Cái', 45),
(442, 'Huyện Bình Liêu', 45),
(443, 'Huyện Đầm Hà', 45),
(444, 'Huyện Hải Hà', 45),
(445, 'Huyện Tiên Yên', 45),
(446, 'Huyện Ba Chẽ', 45),
(447, 'Huyện Đông Triều', 45),
(448, 'Huyện Yên Hưng', 45),
(449, 'Huyện Hoành Bồ', 45),
(450, 'Huyện Vân Đồn', 45),
(451, 'Huyện Cô Tô', 45),
(452, 'Thị xã Đông Hà', 46),
(453, 'Thị xã Quảng Trị', 46),
(454, 'Huyện Vĩnh Linh', 46),
(455, 'Huyện Gio Linh', 46),
(456, 'Huyện Cam Lộ', 46),
(457, 'Huyện Triệu Phong', 46),
(458, 'Huyện Hải Lăng', 46),
(459, 'Huyện Hướng Hoá', 46),
(460, 'Huyện Đăk Rông', 46),
(461, 'Huyện Cồn cỏ', 46),
(462, 'Thành phố Sóc Trăng', 47),
(463, 'Huyện Kế Sách', 47),
(464, 'Huyện Mỹ Tú', 47),
(465, 'Huyện Mỹ Xuyên', 47),
(466, 'Huyện Thạnh Trị', 47),
(467, 'Huyện Long Phú', 47),
(468, 'Huyện Vĩnh Châu', 47),
(469, 'Huyện Cù Lao Dung', 47),
(470, 'Huyện Ngã Năm', 47),
(471, 'Huyện Châu Thành', 47),
(472, 'Huyện Trần Đề', 47),
(473, 'Thị xã Sơn La', 48),
(474, 'Huyện Quỳnh Nhai', 48),
(475, 'Huyện Mường La', 48),
(476, 'Huyện Thuận Châu', 48),
(477, 'Huyện Bắc Yên', 48),
(478, 'Huyện Phù Yên', 48),
(479, 'Huyện Mai Sơn', 48),
(480, 'Huyện Yên Châu', 48),
(481, 'Huyện Sông Mã', 48),
(482, 'Huyện Mộc Châu', 48),
(483, 'Huyện Sốp Cộp', 48),
(484, 'Thị xã Tây Ninh', 49),
(485, 'Huyện Tân Biên', 49),
(486, 'Huyện Tân Châu', 49),
(487, 'Huyện Dương Minh Châu', 49),
(488, 'Huyện Châu Thành', 49),
(489, 'Huyện Hoà Thành', 49),
(490, 'Huyện Bến Cầu', 49),
(491, 'Huyện Gò Dầu', 49),
(492, 'Huyện Trảng Bàng', 49),
(493, 'Thành phố Thái Bình', 50),
(494, 'Huyện Quỳnh Phụ', 50),
(495, 'Huyện Hưng Hà', 50),
(496, 'Huyện Đông Hưng', 50),
(497, 'Huyện Vũ Thư', 50),
(498, 'Huyện Kiến Xương', 50),
(499, 'Huyện Tiền Hải', 50),
(500, 'Huyện Thái Thuỵ', 50),
(501, 'TP.Thái Nguyên', 51),
(502, 'Thị xã Sông Công', 51),
(503, 'Huyện Định Hoá', 51),
(504, 'Huyện Phú Lương', 51),
(505, 'Huyện Võ Nhai', 51),
(506, 'Huyện Đại Từ', 51),
(507, 'Huyện Đồng Hỷ', 51),
(508, 'Huyện Phú Bình', 51),
(509, 'Huyện Phổ Yên', 51),
(510, 'Thành phố Thanh Hoá', 52),
(511, 'Thị xã Bỉm Sơn', 52),
(512, 'Thị xã Sầm Sơn', 52),
(513, 'Huyện Quan Hoá', 52),
(514, 'Huyện Quan Sơn', 52),
(515, 'Huyện Mường Lát', 52),
(516, 'Huyện Bá Thước', 52),
(517, 'Huyện Thường Xuân', 52),
(518, 'Huyện Như Xuân', 52),
(519, 'Huyện Như Thanh', 52),
(520, 'Huyện Lang Chánh', 52),
(521, 'Huyện Ngọc Lặc', 52),
(522, 'Huyện Thạch Thành', 52),
(523, 'Huyện Cẩm Thủy', 52),
(524, 'Huyện Thọ Xuân', 52),
(525, 'Huyện Vĩnh Lộc', 52),
(526, 'Huyện Thiệu Hoá', 52),
(527, 'Huyện Triệu Sơn', 52),
(528, 'Huyện Nông Cống', 52),
(529, 'Huyện Đông Sơn', 52),
(530, 'Huyện Hà Trung', 52),
(531, 'Huyện Hoằng Hoá', 52),
(532, 'Huyện Nga Sơn', 52),
(533, 'Huyện Hậu Lộc', 52),
(534, 'Huyện Quảng Xương', 52),
(535, 'Huyện Tĩnh Gia', 52),
(536, 'Huyện Yên Định', 52),
(537, 'TP. Huế', 53),
(538, 'Huyện Phong Điền', 53),
(539, 'Huyện Quảng Điền', 53),
(540, 'Huyện Hương Trà', 53),
(541, 'Huyện Phú Vang', 53),
(542, 'Huyện Hương Thuỷ', 53),
(543, 'Huyện Phú Lộc', 53),
(544, 'Huyện Nam Đông', 53),
(545, 'Huyện A Lưới', 53),
(546, 'Thành phố Mỹ Tho', 54),
(547, 'Thị xã Gò Công', 54),
(548, 'Huyện Cái Bè', 54),
(549, 'Huyện Cai Lậy', 54),
(550, 'Huyện Châu Thành', 54),
(551, 'Huyện Chợ Gạo', 54),
(552, 'Huyện Gò Công Tây', 54),
(553, 'Huyện Gò Công Đông', 54),
(554, 'Huyện Tân Phước', 54),
(555, 'Thị xã Trà Vinh', 55),
(556, 'Huyện Càng Long', 55),
(557, 'Huyện Cầu Kè', 55),
(558, 'Huyện Tiểu Cần', 55),
(559, 'Huyện Châu Thành', 55),
(560, 'Huyện Trà Cú', 55),
(561, 'Huyện Cầu Ngang', 55),
(562, 'Huyện Duyên Hải', 55),
(563, 'Thành phố Tuyên Quang', 56),
(564, 'Huyện Na Hang', 56),
(565, 'Huyện Chiêm Hoá', 56),
(566, 'Huyện Hàm Yên', 56),
(567, 'Huyện Yên Sơn', 56),
(568, 'Huyện Sơn Dương', 56),
(569, 'Thị xã Vĩnh Long', 57),
(570, 'Huyện Long Hồ', 57),
(571, 'Huyện Mang Thít', 57),
(572, 'Huyện Bình Minh', 57),
(573, 'Huyện Tam Bình', 57),
(574, 'Huyện Trà Ôn', 57),
(575, 'Huyện Vũng Liêm', 57),
(576, 'Huyện Bình Tân', 57),
(577, 'Thành phố Vĩnh Yên', 58),
(578, 'Huyện Tam Dương', 58),
(579, 'Huyện Lập Thạch', 58),
(580, 'Huyện Vĩnh Tường', 58),
(581, 'Huyện Yên Lạc', 58),
(582, 'Huyện Bình Xuyên', 58),
(583, 'Huyện Mê Linh', 58),
(584, 'Huyện Phúc Yên', 58),
(585, 'Huyện Tam Đảo', 58),
(586, 'Thành phố Yên Bái', 59),
(587, 'Thị xã Nghĩa Lộ', 59),
(588, 'Huyện Văn Yên', 59),
(589, 'Huyện Yên Bình', 59),
(590, 'Huyện Mù Cang Chải', 59),
(591, 'Huyện Văn Chấn', 59),
(592, 'Huyện Trấn Yên', 59),
(593, 'Huyện Trạm Tấu', 59),
(594, 'Huyện Lục Yên', 59),
(595, 'Thị xã Tuy Hoà', 60),
(596, 'Huyện Đồng Xuân', 60),
(597, 'Huyện Sông Cầu', 60),
(598, 'Huyện Tuy An', 60),
(599, 'Huyện Sơn Hoà', 60),
(600, 'Huyện Sông Hinh', 60),
(601, 'Huyện Đông Hoà', 60),
(602, 'Huyện Phú Hoà', 60),
(603, 'Huyện Tây Hoà', 60),
(604, 'Quận Ba Đình', 61),
(605, 'Quận Hoàn Kiếm', 61),
(606, 'Quận Hai Bà Trưng', 61),
(607, 'Quận Đống Đa', 61),
(608, 'Quận Tây Hồ', 61),
(609, 'Quận Cầu Giấy', 61),
(610, 'Quận Thanh Xuân', 61),
(611, 'Quận Hoàng Mai', 61),
(612, 'Quận Long Biên', 61),
(613, 'Huyện Từ Liêm', 61),
(614, 'Huyện Thanh Trì', 61),
(615, 'Huyện Gia Lâm', 61),
(616, 'Huyện Đông Anh', 61),
(617, 'Huyện Sóc Sơn', 61),
(618, 'Quận Hà Đông', 61),
(619, 'Thị xã Sơn Tây', 61),
(620, 'Huyện Ba Vì', 61),
(621, 'Huyện Phúc Thọ', 61),
(622, 'Huyện Thạch Thất', 61),
(623, 'Huyện Quốc Oai', 61),
(624, 'Huyện Chương Mỹ', 61),
(625, 'Huyện Đan Phượng', 61),
(626, 'Huyện Hoài Đức', 61),
(627, 'Huyện Thanh Oai', 61),
(628, 'Huyện Mỹ Đức', 61),
(629, 'Huyện Ứng Hoà', 61),
(630, 'Huyện Thường Tín', 61),
(631, 'Huyện Phú Xuyên', 61),
(632, 'Huyện Mê Linh', 61),
(633, 'Quận Một', 62),
(634, 'Quận Hai', 62),
(635, 'Huyện Quận Ba', 62),
(636, 'Quận Bốn', 62),
(637, 'Quận Năm', 62),
(638, 'Quận Sáu', 62),
(639, 'Quận Bảy', 62),
(640, 'Quận Tám', 62),
(641, 'Quận Chín', 62),
(642, 'Quận Mười', 62),
(643, 'Quận Mười một', 62),
(644, 'Quận Mười hai', 62),
(645, 'Quận Gò Vấp', 62),
(646, 'Quận Tân Bình', 62),
(647, 'Quận Tân Phú', 62),
(648, 'Quận Bình Thạnh', 62),
(649, 'Quận Phú Nhuận', 62),
(650, 'Quận Thủ Đức', 62),
(651, 'Quận Bình Tân', 62),
(652, 'Huyện Bình Chánh', 62),
(653, 'Huyện Củ Chi', 62),
(654, 'Huyện Hóc Môn', 62),
(655, 'Huyện Nhà Bè', 62),
(656, 'Huyện Cần Giờ', 62),
(657, 'Quận Hải Châu', 63),
(658, 'Quận Thanh Khê', 63),
(659, 'Quận Sơn Trà', 63),
(660, 'Quận Ngũ Hành Sơn', 63),
(661, 'Quận Liên Chiểu', 63),
(662, 'Huyện Hoà Vang', 63),
(663, 'Quận Cẩm Lệ', 63),
(664, 'Quận Ninh Kiều', 64),
(665, 'Quận Bình Thuỷ', 64),
(666, 'Quận Cái Răng', 64),
(667, 'Quận Ô Môn', 64),
(668, 'Huyện Phong Điền', 64),
(669, 'Huyện Cờ Đỏ', 64),
(670, 'Huyện Vĩnh Thạnh', 64),
(671, 'Huyện Thốt Nốt', 64),
(672, 'Quận Hồng Bàng', 65),
(673, 'Quận Lê Chân', 65),
(674, 'Quận Ngô Quyền', 65),
(675, 'Quận Kiến An', 65),
(676, 'Quận Hải An', 65),
(677, 'Quận Đồ Sơn', 65),
(678, 'Huyện An Lão', 65),
(679, 'Huyện Kiến Thuỵ', 65),
(680, 'Huyện Thủy Nguyên', 65),
(681, 'Huyện An Dương', 65),
(682, 'Huyện Tiên Lãng', 65),
(683, 'Huyện Vĩnh Bảo', 65),
(684, 'Huyện Cát Hải', 65),
(685, 'Huyện Bạch Long Vĩ', 65),
(686, 'Quận Dương Kinh', 65);
--
-- Table structure for table `feedbacks`
--
DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `feedbacks` VALUES ('1', '1', '2.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('2', '2', '4.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('3', '3', '3.50', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('4', '4', '2.50', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('5', '5', '1.50', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('6', '6', '5.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('7', '7', '4.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('8', '8', '1.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('9', '9', '2.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('10', '10', '3.50', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('11', '11', '3.50', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('12', '12', '5.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('13', '13', '3.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('14', '14', '2.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `feedbacks` VALUES ('15', '15', '1.00', '2018-05-21 00:00:00', '2018-05-24 00:00:00');

--
-- Table structure for table `migrations`
--
DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_05_30_031954_cities', 1),
(3, '2018_05_30_032010_districts', 1),
(4, '2018_05_30_032019_place_type', 1),
(5, '2018_05_30_032027_places', 1),
(6, '2018_05_30_032034_place_image', 1),
(7, '2018_05_30_032041_place_location', 1),
(8, '2018_05_30_032050_feedbacks', 1),
(9, '2018_05_30_032056_travel', 1),
(10, '2018_05_30_032107_user_location', 1);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--
DROP TABLE IF EXISTS `places`;

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_district` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `places` VALUES ('1', '1', '1', 'Chợ nổi Cái Răng', '<i>Chợ nổi Cái Răng</i> là chợ nổi chuyên trao đổi, mua bán nông sản, các loại trái cây, hàng hóa, thực phẩm, ăn uống ở trên sông và là điểm tham quan đặc sắc của quận Cái Răng, thành phố Cần Thơ.', '<i>Chợ nổi Cái Răng</i> cách trung tâm Thành phố Cần Thơ khoảng 6 km đường bộ và mất 30 phút khi chúng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, tên gọi Cái Răng xuất phát từ câu chuyện hồi đầu thời khẩn hoang có con cá sấu rất lớn dạt vào đây, răng của nó cắm vào miệng đất này. Sở dĩ nơi đây gọi là chợ nổi vì nó trôi nổi trên sông.</br>\r\n					Đến đây du khách sẽ được cảm nhận hết những nét văn hóa đặc trưng, độc đáo của vùng sông nước. Và chợ nổi như là một phần không thể thiếu trong nét văn hóa miệt vườn của người miền Tây Nam Bộ. Mỗi sáng, hàng trăm chiếc thuyền lớn bé đậu san sát, trên thuyền treo bán sản vật bán không cần phải rao hàng như các chợ trên đất liền. Đến với chợ vào mỗi sáng, ngoài những đặc sản nơi đây muốn mua, du khách còn có thể ăn sáng, trải nghiệm cuộc sống lênh đênh thú vị trên thuyền.\r\n						', 'https://www.google.com/maps/place/Ch%E1%BB%A3+N%E1%BB%95i+C%C3%A1i+R%C4%83ng/@10.0019717,105.7419353,17z/data=!3m1!4b1!4m5!3m4!1s0x31a089afb6342d8d:0xcdb2b569f5f13898!8m2!3d10.0019664!4d105.744124', 'Lê Bình, Cái Răng, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('2', '1', '1', 'Bến Ninh Kiều', 'Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19', 'Ca dao từng có cầu: \"Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19.Bến Ninh Kiều, nơi nhìn ra dòng Hậu Giang dạt dào phù sa, nằm ở vị trí đắc địa, giao thoa hữu ngạn sông Hậu, ngay ngã ba sông Hậu và sông Cần Thơ, gần trung tâm thành phố Cần Thơ.</br>\r\n\r\n					Điều hấp dẫn du khách của bến là nhà thủy tạ trên sông. Nhà thủy tạ là một con tàu nổi bồng bềnh nối bờ bằng một đoạn cầu, hai bên cầu có lan can, khách có thể dừng chân đứng hóng gió. Nhà nổi này chính là nhà hàng ăn uống có hai tầng với hàng trăm chỗ ngồi. Khách tới nhà nổi, gọi ly nước ngọt, hoặc một xị rượu nếp than nhắm với món lẩu lươn đặc sản địa phương. Vừa ăn uống, vừa ngắm cảnh sông Hậu. Trên sông đủ loại thuyền ngược thuyền xuôi tấp nập. Bến còn có công viên với nhiều loại cây quý, xanh mướt, là nơi vui chơi và sinh hoạt của người dân.', 'https://www.google.com/maps/place/B%E1%BA%BFn+Ninh+Ki%E1%BB%81u/@10.0321875,105.7858675,17z/data=!4m5!3m4!1s0x31a06298aae43e71:0xc6a64bdac582285d!8m2!3d10.0321822!4d105.7880562', '106 Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('3', '1', '1', 'Làng du lịch Mỹ Khánh', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.\r\n\r\nNhững trải nghiệm du khách không thể bỏ qua ở đây là thưởng thức hơn 20 chủng loại trái cây trong miệt vườn rộng lớn, tham quan làng nghề truyền thống, nấu rượu, tráng bánh với người dân bản địa, thưởng thức những món ăn đặc sản, tham quan nhà cổ Nam Bộ và được nghe những bài hát vọng cổ giao duyên từ máy hát đĩa quay có tuổi thọ đã 80 năm.</br>\r\nĐến với Làng Du Lịch Mỹ Khánh, quý khách thỏa sức khám phá, tìm hiểu về đời sống cư dân miệt vườn như: tham quan Nhà cổ Nam bộ, thưởng thức chương trình văn nghệ “đờn ca tài tử”, “một ngày làm Điền Chủ” với bữa cơm điền chủ, “một ngày làm nông dân”, “tát mương bắt cá…”, tham quan làng nghề văn hóa truyền thống, vườn cây ăn trái, các dịch vụ tại chỗ như đi xe ngựa, bơi thuyền, taxi điện, đua heo, đua chó, xiếc khỉ, câu cá sấu…và nhiều chương trình khác theo yêu cầu của quý khách.', 'https://www.google.com/maps/place/L%C3%A0ng+Du+l%E1%BB%8Bch+M%E1%BB%B9+Kh%C3%A1nh/@9.9891139,105.7043455,17z/data=!3m1!4b1!4m7!3m6!1s0x31a089ae6c592dbb:0x5475c9775633f9fe!5m1!1s2018-05-29!8m2!3d9.9891139!4d105.7065342', '335 Lộ Vòng Cung, Mỹ Khánh, Phong Điền, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('4', '1', '1', 'Vườn cò Bằng Lăng', 'Vườn cò Bằng Lăng thuộc ấp Thới Bình, huyện Thốt Nốt, Tp Cần Thơ. Vườn cò Bằng Lăng hiện đang là một trong những sân chim lớn nhất nơi miệt vườn này.', 'Trên đường từ Cần Thơ về thành phố Long Xuyên, qua khỏi thị trấn Thốt Nốt chừng 5 km là đến vườn cò Bằng Lăng. Du khách đến thăm vườn cò này sẽ được chiêm ngưỡng thỏa thích vô số các loại cò (cò trắng, cò xám, cò đen, cồng cộc…) đang chao cánh và sà xuống đậu trắng xóa những những cành trúc, đong đưa theo chiều gió. Khi chiều về, quanh khu vực này có âm thanh văng vẳng tiếng những con cò đang rối rít gọi đàn…', 'https://www.google.com/maps/place/V%C6%B0%E1%BB%9Dn+c%C3%B2+B%E1%BA%B1ng+L%C4%83ng/@10.2820387,105.5030853,17z/data=!3m1!4b1!4m5!3m4!1s0x310a767e831c7399:0xf1d584c069d473eb!8m2!3d10.2820387!4d105.505274', 'Thuận An, Thốt Nốt, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('5', '1', '1', 'Chùa Ông', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993. Chùa được xây dựng năm 1894 – 1896, với lối kiến trúc độc đáo. Mái chùa lợp ngói âm dương với các gờ bó mái bằng những hàng ngói ống men xanh thẫm, trên bờ nóc có vô số hình nhân đủ màu bằng gốm sứ, lưỡng long chầu nguyệt, chim phụng, ở hai đầu có hai tượng người cầm mặt trời, mặt trăng. Trong chùa thờ Quan Công – một tấm gương về lòng trung hiếu tiết nghĩa và các vị Quan Âm Nam Hải, Thái Bạch tinh quân, Thổ Địa, Đổng Vĩnh,…', 'https://www.google.com/maps/place/Ch%C3%B9a+%C3%94ng/@10.0341776,105.7862689,17z/data=!3m1!4b1!4m5!3m4!1s0x31a0629e9e0072c5:0x45ff04519813c779!8m2!3d10.0341776!4d105.7884576', ' 32, Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('6', '2', '1', 'Quán ăn Hàn Quốc Sam', 'Không gian ấm cúng, tinh tế\r\n								Đa dạng các món ăn mang hương vị Hàn Quốc\r\n								Phục vụ vhu đáo, nhiệt tình', 'Đồ ăn ở dạ đa dạng với nhiều món khác nhau cho khách hàng lựa chọn. Một phần lẩu 2 người đồ ăn cũng tương đối chứ không hẳn là nhiều, nhưng nước lẩu thì khá là ngon, còn có món mì tương đen nữa. Kêu 1phần mà ăn cả 2 người mới hết\r\nCó dịp sẽ ghé lại quán ủng hộ tiếp', 'https://www.google.com/maps/place/Qu%C3%A1n+%C4%83n+H%C3%A0n+Qu%E1%BB%91c+Sam/@10.0186497,105.7648397,17z/data=!3m1!4b1!4m5!3m4!1s0x31a08831098958e9:0x83a667d12440f794!8m2!3d10.0186444!4d105.7670284', '474 Đường 30 Tháng 4, Hưng Lợi, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('7', '2', '1', 'Quán Hồi Đó', 'Quán có không gian kiểu xưa \r\nĐồ ăn khá ngon\r\nGiá ổn\r\nNằm trong hẻm nhưng cũng dễ tìm\r\nCó món lẩu mắn theo cá nhân thì ngon', 'Quán Hồi Đó có kiến trúc xây dựng kiểu nhà Nam Bộ xưa. Nếu là một người thành thị bạn sẽ thích với không gian nơi đây. Ngoài ra quán bán thức ăn khá phong phú, phục vụ cơm trưa và cả lẩu.\r\n            	Nếu bạn muốn một vé về tuổi thơ. Thưởng thức những món ăn ngon của thời xưa, được chế biến theo phong cách truyền thống, và ăn bằn những dụng cụ truyền thống của những quán ăn 1975 sang trọng. Thì hãy đến nơi này.', 'https://www.google.com/maps/place/Qu%C3%A1n+H%E1%BB%93i+%C4%90%C3%B3/@10.0345553,105.7739478,17z/data=!3m1!4b1!4m5!3m4!1s0x31a0881f3bcce005:0x89d28cf688a6e80b!8m2!3d10.03455!4d105.7761365', '54, Trần Bình Trọng, An Phú, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('8', '2', '1', 'Bún Đậu Mắm Tôm 3 Hiền', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người.', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người. Bí quyết tạo nên sự khác biệt của quán chính là cách pha mắm tôm độc quyền. Không quá mặn nồng cũng không quá ngọt, vừa ăn mà mùi thơm của mắm tôm dù chưa ăn nhưng nghe qua đã thấy thèm thuồng. Quán ăn đậm chất Bắc Bộ, theo đánh giá của thực khách. Còn chần chờ gì mà không đến với 3 Hiền để nhanh tay thưởng thức cái cảm giác mới mẻ mà bún đậu mang lại, hòa quyện với vị mắm tôm đậm đà, để lại dư vị khó phai trong lòng khách hàng.', 'https://www.google.com/maps/place/B%C3%BAn+%C4%90%E1%BA%ADu+M%E1%BA%AFm+T%C3%B4m+3+Hi%E1%BB%81n/@10.0274302,105.7679623,17z/data=!3m1!4b1!4m5!3m4!1s0x31a0883b537f9f5f:0xaba627c09d0c9623!8m2!3d10.0274249!4d105.770151', '146A Ba Tháng Hai, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('9', '2', '1', 'Nước Mía Mỹ Tho MT68', 'Trời nóng thì uống gì, ừ thì nước mía chứ còn gì nữa.\r\nLy nước mía ngọt lịm, có thạch khóm, rau câu, mít và không thể nào thiếu được đậu phộng. Tưởng như những thứ đó không hề liên quan nhau, nhưng khí kết hợp lại thì thật tuyệt vời. Nước mía ngọ lịm, chua chua của tắc, mít lại thơm thơm cùng cái vị béo bùi của đậu phộng. Thật tuyệt vời.\r\nNgoài ra ở quán còn có những món ăn vặt nhà quê như: bánh chuối, bánh lá.....', '', 'https://www.google.com/maps/place/N%C6%B0%E1%BB%9Bc+M%C3%ADa+M%E1%BB%B9+Tho+MT68/@10.0287067,105.7720223,17z/data=!3m1!4b1!4m5!3m4!1s0x31a0882396e43b3d:0x717ec2a4db3f7952!8m2!3d10.0287014!4d105.774211', 'Mạc Thiên Tích, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('10', '2', '1', 'Quán Bánh xèo 7 Tới', 'Nhắc tới bánh xèo ở Cần Thơ thì phải nói tới bánh xèo đường Cái Sơn Hàng Bàng – Bánh Xèo 7 Tới. Không gian quán rộng, với món bánh xèo thịt vịt ngon có tiếng.', 'Bánh Xèo là một trong những nét đặc trưng nổi bật của ẩm thực miền Tây. Chính vì vậy,về với vùng đất trập trùng sông nước, cây trái xanh tốt bốn mùa này, thực khách khó mà có thể bỏ qua món ăn dân dã mà đậm đà hương vị miền quê này.\r\n            	<br>Quán mang phong cách rất bình dân, bước chân vào quán, thực khách như có cảm giác được về thăm nhà của một người bạn nơi chốn quê bình dị. Quán vẫn sử dụng bếp than củi và bếp trấu. Ta có cảm giác hồn quê vương vấn trên từng vật dụng mộc mạc trên bàn, ta như thấy được hòa lẫn trong cái mùi thơm của bánh, mùi thơm của nhân thịt là mùi bếp lửa ấm nồng của những chái bếp mang bóng hình những người bà, người mẹ chốn thôn quê.\r\n            	</br>Gọi là món ăn dân dã, vì tất cả nguyên liệu làm bánh đều bắt nguồn từ những thứ có sẵn trong nhà, ngoài vườn như: gạo làm bột, bột nghệ, các loại rau, nấm… Tùy theo sở thích mà người ta cho vào bánh những loại nhân khác nhau: tôm, thịt heo, thịt vịt,…\r\n\r\n					Dù nằm cách trung tâm thành phố Cần Thơ hơn 7 km nhưng quán Bánh xèo 7 Tới luôn là lựa chọn hàng đầu của người dân Cần Thơ cũng như du khách đến với thành phố này mỗi khi muốn thưởng thức món bánh xèo, đặc biệt là bánh xèo củ hũ dừa thịt vịt.\r\n\r\n					Một nét đặc biệt nữa khi thưởng thức món bánh xèo ở đây là các loại rau để cuốn và ăn kèm. Rau để cuốn vẫn là xà lách và cải bẹ xanh. Rau ăn kèm lại phong phú, đa dạng đến bất ngờ. Ngoài các loại rau sống phổ biến trong các món cuốn của người miền Tây như rau thơm, diếp cá, tía tô, húng, quế… đĩa rau ở đây còn có thêm nhiều loại rau ít gặp như lá chiết, bằng lăng, cát lồi…', 'https://www.google.com/maps/place/Qu%C3%A1n+B%C3%A1nh+x%C3%A8o+7+T%E1%BB%9Bi/@10.0096501,105.7450766,17z/data=!3m1!4b1!4m5!3m4!1s0x31a0885d175a92d9:0xbf9dc5fa0d07329f!8m2!3d10.0096448!4d105.7472653', '45 Hoàng Quốc Việt, An Bình, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('11', '3', '1', 'Khách sạn Mường Thanh Luxury Cần Thơ', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.\r\n					Mỗi phòng tại đây đều được trang bị máy điều hòa không khí và TV màn hình phẳng. Một số phòng có khu vực tiếp khách để thư giãn sau một ngày bận rộn và tầm nhìn ra quang cảnh dòng sông hoặc thành phố. Các phòng đi kèm phòng tắm riêng với bồn rửa vệ sinh (bidet), vòi sen, dép, áo choàng tắm và đồ vệ sinh cá nhân miễn phí.\r\n\r\n					Khách sạn có quầy lễ tân 24 giờ, sảnh khách chung và tiệm làm tóc.\r\n\r\n					Quý khách có thể chơi tennis tại khách sạn. Muong Thanh Luxury Can Tho Hotel nằm trong bán kính 1,2 km từ Bến Ninh Kiều và 7 km từ Chợ nổi Cái Răng. Sân bay gần nhất là Sân bay Cần Thơ, cách khách sạn 13 km. \r\n\r\n					Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.\r\n\r\n					Chúng tôi sử dụng ngôn ngữ của bạn!', 'https://www.google.com/maps/place/Kh%C3%A1ch+s%E1%BA%A1n+M%C6%B0%E1%BB%9Dng+Thanh+Luxury+C%E1%BA%A7n+Th%C6%A1/@10.0423138,105.7882277,17z/data=!3m1!4b1!4m7!3m6!1s0x31a062a5846ab293:0xc849fa3f328edd91!5m1!1s2018-05-24!8m2!3d10.0423085!4d105.7904164', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('12', '3', '1', 'Victoria Can Tho Resort ', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.\r\n			Các phòng lắp máy điều hòa tại đây được trang trí với sắc be nhạt của vải và nâu của đồ nội thất gỗ sẫm màu. Trong phòng trang bị khu vực ghế ngồi, truyền hình vệ tinh màn hình phẳng và tủ lạnh mini. Một số phòng có ban công riêng. Phòng tắm riêng đi kèm bồn tắm, vòi sen và đồ vệ sinh cá nhân miễn phí.\r\n\r\n			Victoria Can Tho Resort có 7 phòng trị liệu với nhiều liệu pháp mát-xa, bao gồm từ mát-xa kiểu Việt Nam truyền thống cho tới mát-xa chữa bệnh toàn thân. Resort có quầy lễ tân 24 giờ và bàn đặt tour để hỗ trợ khách với nhiều dịch vụ, bao gồm dịch vụ nhận/trả phòng cấp tốc, giữ hành lý và đưa đón sân bay.\r\n\r\n			Victoria Can Tho Resort cách Cầu đi bộ Bến Ninh Kiều 700 m và Sân vận động Cần Thơ cũng như Bảo tàng Cần Thơ 1 km. Sân bay gần nhất là sân bay quốc tế Cần Thơ, cách đó 12 km.\r\n\r\n		Nhà hàng Spices trong khuôn viên nhìn ra Sông Hậu và có khu vực ghế ngồi trong nhà lẫn ngoài trời. Tại đây phục vụ ẩm thực Âu và Việt, được chuẩn bị bởi đầu bếp người Pháp của khách sạn. \r\n\r\n		Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n	Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,5 cho kỳ nghỉ dành cho 2 người.\r\n\r\n	Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', 'https://www.google.com/maps/place/Kh%C3%A1ch+s%E1%BA%A1n+Victoria+C%E1%BA%A7n+Th%C6%A1/@10.039353,105.7913456,17z/data=!3m1!4b1!4m7!3m6!1s0x31a062a4cdb540cd:0x62f4b50f8a858d2a!5m1!1s2018-05-29!8m2!3d10.0393477!4d105.7935343', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('13', '3', '1', 'Vinpearl Can Tho Hotel', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.\r\n				Các phòng nghỉ lắp máy điều hòa tại đây cho tầm nhìn ra dòng sông và/hoặc thành phố. Trong phòng còn được trang bị TV truyền hình cáp và tủ lạnh mini. Phòng tắm riêng đi kèm bồn tắm và vòi sen. Áo choàng tắm và dép cũng được cung cấp trong phòng.\r\n\r\n				Những khách muốn chăm sóc bản thân có thể đến trung tâm chăm sóc sức khỏe và spa cũng như tiệm làm tóc trong khuôn viên. Khách sạn còn có trung tâm thể dục, CLB trẻ em và bàn đặt tour.\r\n\r\n				Nhân viên nói được 2 thứ tiếng tại lễ tân có thể trợ giúp khách với việc thu xếp dịch vụ đưa đón, dịch vụ giặt là, dịch vụ thu đổi ngoại tệ và những yêu cầu khác.\r\n\r\n				Khách sạn còn có dịch vụ cho thuê xe hơi. Vinpearl Can Tho Hotel cách Chợ nổi Cái Răng 3,8 km và Bảo tàng Cần Thơ 2,3 km. Sân bay Rạch Giá cách đó 70 km. \r\n\r\n				Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n			Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.\r\n\r\n			Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', 'https://www.google.com/maps/place/Vinpearl+C%E1%BA%A7n+Th%C6%A1+Hotel/@10.0244216,105.772641,17z/data=!3m1!4b1!4m7!3m6!1s0x31a08833f000f11f:0x7eabead940802b56!5m1!1s2018-06-17!8m2!3d10.0244163!4d105.7748297', '209 Đường 30 Tháng 4, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('14', '3', '1', 'Ninh Kieu Riverside Hotel', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.\r\nTất cả các phòng nghỉ tại đây đều được trang bị truyền hình cáp màn hình phẳng, ấm đun nước và phòng tắm riêng kèm vòi sen. Những tiện nghi khác bao gồm dép và đồ vệ sinh cá nhân miễn phí.\r\n\r\nNhân viên song ngữ tại quầy lễ tân 24 giờ có thể hỗ trợ khách với các dịch vụ nhận phòng và trả phòng riêng, thu đổi ngoại tệ cũng như giữ hành lý.\r\n\r\nNinh Kieu Riverside Hotel cách Chợ Đêm 400 m, Bảo tàng Cần Thơ 500 m, Chợ nổi Cái Răng 7 km và sân bay gần nhất là sân bay Rạch Giá 72 km. \r\n\r\nChỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.', 'https://www.google.com/maps/place/Ninh+Kieu+Riverside+Hotel/@10.036343,105.787455,17z/data=!3m1!4b1!4m7!3m6!1s0x31a062a3c85bbcc5:0x3f70fa9b4ba0895e!5m1!1s2018-05-29!8m2!3d10.0363377!4d105.7896437', '2 Hai Bà Trưng st, Tân An, Ninh Kiều, Cần Thơ 900000, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `places` VALUES ('15', '3', '1', 'Ninh Kieu 2 Hotel', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.\r\n			Tất cả các phòng nghỉ tại Ninh Kieu 2 Hotel đều có khu vực ghế ngồi và TV truyền hình cáp màn hình phẳng. Các phòng cũng có phòng tắm riêng, tầm nhìn ra quang cảnh thành phố, máy điều hòa và bàn làm việc.\r\n\r\n			Khách sạn cung cấp bữa sáng kiểu Mỹ hàng ngày. Tại đây có nhà hàng ngay trong khuôn viên phục vụ hải sản và ẩm thực Việt Nam.\r\n\r\n			Ninh Kieu 2 Hotel có sân hiên.\r\n\r\n		Gần khách sạn có các điểm tham quan nổi tiếng như trung tâm thương mại Vincom Plaza Hùng Vương, trung tâm thương mại Vincom Plaza Xuân Khánh và Bảo tàng Cần Thơ. Sân bay gần nhất là Sân bay Rạch Giá, cách chỗ nghỉ 72 km. ', 'https://www.google.com/maps/place/Kh%C3%A1ch+S%E1%BA%A1n+Ninh+Ki%E1%BB%81u+2/@10.0349686,105.783874,17z/data=!3m1!4b1!4m7!3m6!1s0x31a062a3c85bbcc5:0x386bdb632835e00e!5m1!1s2018-05-27!8m2!3d10.0349686!4d105.7860627', '03 Đại lộ Hoà Bình, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Table structure for table `place_image`
--
DROP TABLE IF EXISTS `place_image`;

CREATE TABLE `place_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `place_image` VALUES ('1', '1', 'cho-noi.jpg');
INSERT INTO `place_image` VALUES ('2', '1', 'cho-noi-1.jpg');
INSERT INTO `place_image` VALUES ('3', '1', 'cho-noi-2.jpg');
INSERT INTO `place_image` VALUES ('4', '2', 'ben-ninh-kieu.jpg');
INSERT INTO `place_image` VALUES ('5', '2', 'ben-ninh-kieu-du-thuyen.jpg');
INSERT INTO `place_image` VALUES ('6', '2', 'ben-ninh-kieu-can-tho.jpg');
INSERT INTO `place_image` VALUES ('7', '3', 'Lang-du-lich-My-khanh.jpg');
INSERT INTO `place_image` VALUES ('8', '3', 'Lang-du-lich-My-Khanh-1.jpg');
INSERT INTO `place_image` VALUES ('9', '3', 'Lang-du-lich-My-Khanh-2.jpg');
INSERT INTO `place_image` VALUES ('10', '4', 'vuon-co-bang-lang.jpg');
INSERT INTO `place_image` VALUES ('11', '4', 'vuon-co-bang-lang-1.jpg');
INSERT INTO `place_image` VALUES ('12', '4', 'vuon-co-bang-lang-2.jpg');
INSERT INTO `place_image` VALUES ('13', '5', 'chua-ong.jpg');
INSERT INTO `place_image` VALUES ('14', '5', 'chua-ong-1.jpg');
INSERT INTO `place_image` VALUES ('15', '5', 'chua-ong-2.jpg');
INSERT INTO `place_image` VALUES ('16', '6', 'sam-quan-an-han-quoc.jpg');
INSERT INTO `place_image` VALUES ('17', '6', 'sam-quan-an-han-quoc-1.jpg');
INSERT INTO `place_image` VALUES ('18', '6', 'sam-quan-an-han-quoc-2.jpg');
INSERT INTO `place_image` VALUES ('19', '7', 'hoi-do-quan.jpg');
INSERT INTO `place_image` VALUES ('20', '7', 'hoi-do-quan-1.jpg');
INSERT INTO `place_image` VALUES ('21', '7', 'hoi-do-quan-2.jpg');
INSERT INTO `place_image` VALUES ('22', '8', 'bun-dau-mam-tom-3-hien.jpg');
INSERT INTO `place_image` VALUES ('23', '8', 'bun-dau-mam-tom-3-hien-1.jpg');
INSERT INTO `place_image` VALUES ('24', '8', 'bun-dau-mam-tom-3-hien-2.jpg');
INSERT INTO `place_image` VALUES ('25', '9', 'nuoc-mia-my-tho.jpg');
INSERT INTO `place_image` VALUES ('26', '9', 'nuoc-mia-my-tho-mt68-1.jpg');
INSERT INTO `place_image` VALUES ('27', '9', 'nuoc-mia-my-tho-mt68-2.jpg');
INSERT INTO `place_image` VALUES ('28', '10', 'banh-xeo-7-toi.jpg');
INSERT INTO `place_image` VALUES ('29', '10', 'banh-xeo-7-toi-1.jpg');
INSERT INTO `place_image` VALUES ('30', '10', 'banh-xeo-7-toi-2.jpg');
INSERT INTO `place_image` VALUES ('31', '11', 'muong-thanh.jpeg');
INSERT INTO `place_image` VALUES ('32', '11', 'muong-thanh-1.jpeg');
INSERT INTO `place_image` VALUES ('33', '11', 'muong-thanh-2.jpeg');
INSERT INTO `place_image` VALUES ('34', '12', 'victoria-can-tho-resort.jpg');
INSERT INTO `place_image` VALUES ('35', '12', 'victoria-can-tho-resort-1.jpg');
INSERT INTO `place_image` VALUES ('36', '12', 'victoria-can-tho-resort-2.jpg');
INSERT INTO `place_image` VALUES ('37', '13', 'Vinpearl-can-tho-hotel.jpg');
INSERT INTO `place_image` VALUES ('38', '13', 'Vinpearl-can-tho-hotel-1.jpg');
INSERT INTO `place_image` VALUES ('39', '13', 'Vinpearl-can-tho-hotel-1.jpg');
INSERT INTO `place_image` VALUES ('40', '14', 'Ninh-kieu-riverside-hotel.jpg');
INSERT INTO `place_image` VALUES ('41', '14', 'Ninh-kieu-riverside-hotel-1.jpg');
INSERT INTO `place_image` VALUES ('42', '14', 'Ninh-kieu-riverside-hotel-2.jpg');
INSERT INTO `place_image` VALUES ('43', '15', 'Ninh-kieu-2-hotel.jpg');
INSERT INTO `place_image` VALUES ('44', '15', 'Ninh-kieu-2-hotel-1.jpg');
INSERT INTO `place_image` VALUES ('45', '15', 'Ninh-kieu-2-hotel-2.jpg');
--
-- Table structure for table `place_location`
--
DROP TABLE IF EXISTS `place_location`;

CREATE TABLE `place_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `x` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `place_location` VALUES ('1', '1', '260', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('2', '2', '120', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('3', '3', '230', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('4', '4', '450', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('5', '5', '430', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('6', '6', '330', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('7', '7', '670', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('8', '8', '780', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('9', '9', '870', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('10', '10', '390', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('11', '11', '660', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('12', '12', '560', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('13', '13', '900', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('14', '14', '870', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `place_location` VALUES ('15', '15', '880', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Table structure for table `place_type`
--
DROP TABLE IF EXISTS `place_type`;

CREATE TABLE `place_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
INSERT INTO `place_type` VALUES ('1', 'Địa điểm du lịch', 'Các địa danh tham quan du lịch');
INSERT INTO `place_type` VALUES ('2', 'Ăn uống', 'Các địa điểm ăn uống hấp dẫn');
INSERT INTO `place_type` VALUES ('3', 'Khách sạn', 'Các địa điểm nghỉ ngơi thoải mái');

--
-- Table structure for table `travel`
--
DROP TABLE IF EXISTS `travel`;

CREATE TABLE `travel` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
INSERT INTO `travel` VALUES ('1', '1', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('2', '2', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('3', '3', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('4', '4', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('5', '5', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('6', '1', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('7', '1', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('8', '4', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('9', '5', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('10', '10', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `travel` VALUES ('11', '11', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--
DROP TABLE IF EXISTS `user_location`;

CREATE TABLE `user_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--
INSERT INTO `user_location` VALUES ('1', '260', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('2', '270', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('3', '760', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('4', '760', '356', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('5', '230', '545', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('6', '160', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_id_city_foreign` (`id_city`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_id_place_foreign` (`id_place`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_id_type_foreign` (`id_type`),
  ADD KEY `places_id_district_foreign` (`id_district`);

--
-- Indexes for table `place_image`
--
ALTER TABLE `place_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_image_id_place_foreign` (`id_place`);

--
-- Indexes for table `place_location`
--
ALTER TABLE `place_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_location_id_place_foreign` (`id_place`);

--
-- Indexes for table `place_type`
--
ALTER TABLE `place_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_id_place_foreign` (`id_place`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place_image`
--
ALTER TABLE `place_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place_location`
--
ALTER TABLE `place_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place_type`
--
ALTER TABLE `place_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_location`
--
ALTER TABLE `user_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_id_city_foreign` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`);

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`);

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_id_district_foreign` FOREIGN KEY (`id_district`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `places_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `place_type` (`id`);

--
-- Constraints for table `place_image`
--
ALTER TABLE `place_image`
  ADD CONSTRAINT `place_image_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`);

--
-- Constraints for table `place_location`
--
ALTER TABLE `place_location`
  ADD CONSTRAINT `place_location_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
