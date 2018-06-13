<<<<<<< HEAD
-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 13, 2018 lúc 09:47 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3
=======
/*
Navicat MySQL Data Transfer
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0

Source Server         : conn
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : thuctap

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-13 08:41:12
*/

<<<<<<< HEAD
--
-- Cơ sở dữ liệu: `thuctap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--
=======
SET FOREIGN_KEY_CHECKS=0;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
<<<<<<< HEAD
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

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

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_city` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `districts` (`id`, `id_city`, `name`) VALUES
(1, 3, 'Thành phố Long Xuyên'),
(2, 3, 'Thị xã Châu Đốc'),
(3, 3, 'Huyện An Phú'),
(4, 3, 'Huyện Tân Châu'),
(5, 3, 'Huyện Phú Tân'),
(6, 3, 'Huyện Tịnh Biên'),
(7, 3, 'Huyện Tri Tôn'),
(8, 3, 'Huyện Châu Phú'),
(9, 3, 'Huyện Chợ Mới'),
(10, 3, 'Huyện Châu Thành'),
(11, 3, 'Huyện Thoại Sơn'),
(12, 4, 'Thành phố Vũng Tàu'),
(13, 4, 'Thị xã Bà Rịa'),
(14, 4, 'Huyện Xuyên Mộc'),
(15, 4, 'Huyện Long Điền'),
(16, 4, 'Huyện Côn Đảo'),
(17, 4, 'Huyện Tân Thành'),
(18, 4, 'Huyện Châu Đức'),
(19, 4, 'Huyện Đất Đỏ'),
(20, 5, 'Thành phố Bắc Giang'),
(21, 5, 'Huyện Yên Thế'),
(22, 5, 'Huyện Lục Ngạn'),
(23, 5, 'Huyện Sơn Động'),
(24, 5, 'Huyện Lục Nam'),
(25, 5, 'Huyện Tân Yên'),
(26, 5, 'Huyện Hiệp Hoà'),
(27, 5, 'Huyện Lạng Giang'),
(28, 5, 'Huyện Việt Yên'),
(29, 5, 'Huyện Yên Dũng'),
(30, 6, 'Thị xã Bắc Kạn'),
(31, 6, 'Huyện Chợ Đồn'),
(32, 6, 'Huyện Bạch Thông'),
(33, 6, 'Huyện Na Rì'),
(34, 6, 'Huyện Ngân Sơn'),
(35, 6, 'Huyện Ba Bể'),
(36, 6, 'Huyện Chợ Mới'),
(37, 6, 'Huyện Pác Nặm'),
(38, 7, 'Thị xã Bạc Liêu'),
(39, 7, 'Huyện Vĩnh Lợi'),
(40, 7, 'Huyện Hồng Dân'),
(41, 7, 'Huyện Giá Rai'),
(42, 7, 'Huyện Phước Long'),
(43, 7, 'Huyện Đông Hải'),
(44, 7, 'Huyện Hoà Bình'),
(48, 8, 'Thành phố Bắc Ninh'),
(49, 8, 'Huyện Yên Phong'),
(50, 8, 'Huyện Quế Võ.'),
(51, 8, 'Huyện Tiên Du'),
(52, 8, 'Huyện Từ Sơn'),
(53, 8, 'Huyện Thuận Thành'),
(54, 8, 'Huyện Gia Bình'),
(55, 8, 'Huyện Lương Tài'),
(56, 9, 'Thị xã Bến Tre'),
(57, 9, 'Huyện Châu Thành'),
(58, 9, 'Huyện Chợ Lách'),
(59, 9, 'Huyện Mỏ Cày'),
(60, 9, 'Huyện Giồng Trôm'),
(61, 9, 'Huyện Bình Đại'),
(62, 9, 'Huyện Ba Tri'),
(63, 9, 'Huyện Thạnh Phú'),
(64, 10, 'Thành phố Quy Nhơn'),
(65, 10, 'Huyện An Lão'),
(66, 10, 'Huyện Hoài Ân'),
(67, 10, 'Huyện Hoài Nhơn'),
(68, 10, 'Huyện Phù Mỹ'),
(69, 10, 'Huyện Phù Cát'),
(70, 10, 'Huyện Vĩnh Thạnh'),
(71, 10, 'Huyện Tây Sơn'),
(72, 10, 'Huyện Vân Canh'),
(73, 10, 'Huyện An Nhơn'),
(74, 10, 'Huyện Tuy Phước'),
(75, 11, 'Thị xã Thủ Dầu Một'),
(76, 11, 'Huyện Bến Cát'),
(77, 11, 'Huyện Tân Uyên'),
(78, 11, 'Huyện Thuận An'),
(79, 11, 'Huyện Dĩ An'),
(80, 11, 'Huyện Phú Giáo'),
(81, 11, 'Huyện Dầu Tiếng'),
(82, 12, 'Thị xã Đồng Xoài'),
(83, 12, 'Huyện Đồng Phú'),
(84, 12, 'Huyện Chơn Thành'),
(85, 12, 'Huyện Bình Long'),
(86, 12, 'Huyện Lộc Ninh'),
(87, 12, 'Huyện Bù Đốp'),
(88, 12, 'Huyện Phước Long'),
(89, 12, 'Huyện Bù Đăng'),
(90, 13, 'Thành phố Phan Thiết'),
(91, 13, 'Huyện Tuy Phong'),
(92, 13, 'Huyện Bắc Bình'),
(93, 13, 'Huyện Hàm Thuận Bắc'),
(94, 13, 'Huyện Hàm Thuận Nam'),
(95, 13, 'Huyện Hàm Tân'),
(96, 13, 'Huyện Đức Linh'),
(97, 13, 'Huyện Tánh Linh'),
(98, 13, 'Huyện Phú Quý'),
(99, 13, 'Thị xã LaGi'),
(100, 14, 'Thành phố Cà Mau'),
(101, 14, 'Huyện Thới Bình'),
(102, 14, 'Huyện U Minh'),
(103, 14, 'Huyện Trần Văn Thời'),
(104, 14, 'Huyện Cái Nước'),
(105, 14, 'Huyện Đầm Dơi'),
(106, 14, 'Huyện Ngọc Hiển'),
(107, 14, 'Huyện Năm Căn'),
(108, 14, 'Huyện Phú Tân'),
(109, 15, 'Thị xã Cao Bằng'),
(110, 15, 'Huyện Bảo Lạc'),
(111, 15, 'Huyện Thông Nông'),
(112, 15, 'Huyện Hà Quảng'),
(113, 15, 'Huyện Trà Lĩnh'),
(114, 15, 'Huyện Trùng Khánh'),
(115, 15, 'Huyện Nguyên Bình'),
(116, 15, 'Huyện Hoà An'),
(117, 15, 'Huyện Quảng Uyên'),
(118, 15, 'Huyện Thạch An'),
(119, 15, 'Huyện Hạ Lang'),
(120, 15, 'Huyện Bảo Lâm'),
(121, 15, 'Huyện Phục Hoà'),
(122, 16, 'Thành phố Buôn Ma Thuột'),
(123, 16, 'Huyện Ea H Leo'),
(124, 16, 'Huyện Krông Buk'),
(125, 16, 'Huyện Krông Năng'),
(126, 16, 'Huyện Ea Súp'),
(127, 16, 'Huyện Cư M gar'),
(128, 16, 'Huyện Krông Pắc'),
(129, 16, 'Huyện Ea Kar'),
(130, 16, 'Huyện M`Đrăk'),
(131, 16, 'Huyện Krông Ana'),
(132, 16, 'Huyện Krông Bông'),
(133, 16, 'Huyện Lăk'),
(134, 16, 'Huyện Buôn Đôn'),
(135, 16, 'Huyện Cư Kuin'),
(136, 17, 'Thị xã Gia Nghĩa'),
(137, 17, 'Huyện Dăk RLấp'),
(138, 17, 'Huyện Dăk Mil'),
(139, 17, 'Huyện Cư Jút'),
(140, 17, 'Huyện Dăk Song'),
(141, 17, 'Huyện Krông Nô'),
(142, 17, 'Huyện Dăk GLong'),
(143, 17, 'Huyện Tuy Đức'),
(144, 18, 'TP. Điện Biên Phủ'),
(145, 18, 'Thị xã Mường Lay'),
(146, 18, 'Huyện Điện Biên'),
(147, 18, 'Huyện Tuần Giáo'),
(148, 18, 'Huyện Mường Chà'),
(149, 18, 'Huyện Tủa Chùa'),
(150, 18, 'Huyện Điện Biên Đông'),
(151, 18, 'Huyện Mường Nhé'),
(152, 18, 'Huyện Mường Ảng'),
(153, 19, 'Thành phố Biên Hoà'),
(154, 19, 'Huyện Vĩnh Cửu'),
(155, 19, 'Huyện Tân Phú'),
(156, 19, 'Huyện Định Quán'),
(157, 19, 'Huyện Thống Nhất'),
(158, 19, 'Thị xã Long Khánh'),
(159, 19, 'Huyện Xuân Lộc'),
(160, 19, 'Huyện Long Thành'),
(161, 19, 'Huyện Nhơn Trạch'),
(162, 19, 'Huyện Trảng Bom'),
(163, 19, 'Huyện Cẩm Mỹ'),
(164, 20, 'Thành phố Cao Lãnh'),
(165, 20, 'Thị xã Sa Đéc'),
(166, 20, 'Huyện Tân Hồng'),
(167, 20, 'Huyện Hồng Ngự'),
(168, 20, 'Huyện Tam Nông'),
(169, 20, 'Huyện Thanh Bình'),
(170, 20, 'Huyện Cao Lãnh'),
(171, 20, 'Huyện Lấp Vò'),
(172, 20, 'Huyện Tháp Mười'),
(173, 20, 'Huyện Lai Vung'),
(174, 20, 'Huyện Châu Thành'),
(175, 21, 'Thành phố Pleiku'),
(176, 21, 'Huyện Chư Păh'),
(177, 21, 'Huyện Mang Yang'),
(178, 21, 'Huyện Kbang'),
(179, 21, 'Huyện An Khê'),
(180, 21, 'Huyện Kông Chro'),
(181, 21, 'Huyện Đức Cơ'),
(182, 21, 'Huyện Chưprông'),
(183, 21, 'Huyện Chư Sê'),
(184, 21, 'Huyện Ayunpa'),
(185, 21, 'Huyện Krông Pa'),
(186, 21, 'Huyện La Grai'),
(187, 21, 'Huyện Đăk Đoa'),
(188, 21, 'Huyện La Pa'),
(189, 21, 'Huyện Đăk Pơ'),
(190, 21, 'Huyện Phú Thiện'),
(191, 22, 'Thành phố Hà Giang'),
(192, 22, 'Huyện Đồng Văn'),
(193, 22, 'Huyện Mèo Vạc'),
(194, 22, 'Huyện Yên Minh'),
(195, 22, 'Huyện Quản Bạ'),
(196, 22, 'Huyện Vị Xuyên'),
(197, 22, 'Huyện Bắc Mê'),
(198, 22, 'Huyện Hoàng Su Phì'),
(199, 22, 'Huyện Xín Mần'),
(200, 22, 'Huyện Bắc Quang'),
(201, 22, 'Huyện Quang Bình'),
(202, 23, 'Thị xã Phủ Lý'),
(203, 23, 'Huyện Duy Tiên'),
(204, 23, 'Huyện Kim Bảng'),
(205, 23, 'Huyện Lý Nhân'),
(206, 23, 'Huyện Thanh Liêm'),
(207, 23, 'Huyện Bình Lục'),
(208, 24, 'Thành phố Hà Tĩnh'),
(209, 24, 'Thị xã Hồng Lĩnh'),
(210, 24, 'Huyện Hương Sơn'),
(211, 24, 'Huyện Đức Thọ'),
(212, 24, 'Huyện Nghi Xuân'),
(213, 24, 'Huyện Can Lộc'),
(214, 24, 'Huyện Hương Khê'),
(215, 24, 'Huyện Thạch Hà'),
(216, 24, 'Huyện Cẩm Xuyên'),
(217, 24, 'Huyện Kỳ Anh'),
(218, 24, 'Huyện Vũ Quang'),
(219, 24, 'Huyện Lộc Hà'),
(220, 25, 'Thành phố Hải Dương'),
(221, 25, 'Huyện Chí Linh'),
(222, 25, 'Huyện Nam Sách'),
(223, 25, 'Huyện Kinh Môn'),
(224, 25, 'Huyện Gia Lộc'),
(225, 25, 'Huyện Tứ Kỳ'),
(226, 25, 'Huyện Thanh Miện'),
(227, 25, 'Huyện Ninh Giang'),
(228, 25, 'Huyện Cẩm Giàng'),
(229, 25, 'Huyện Thanh Hà'),
(230, 25, 'Huyện Kim Thành'),
(231, 25, 'Huyện Bình Giang'),
(232, 26, 'Thành phố Vị Thanh'),
(233, 26, 'Huyện Vị Thuỷ'),
(234, 26, 'Huyện Long Mỹ'),
(235, 26, 'Huyện Phụng Hiệp'),
(236, 26, 'Huyện Châu Thành'),
(237, 26, 'Huyện Châu Thành A'),
(238, 26, 'Thị xã Ngã Bảy'),
(239, 27, 'Thành phố Hoà Bình'),
(240, 27, 'Huyện Đà Bắc'),
(241, 27, 'Huyện Mai Châu'),
(242, 27, 'Huyện Tân Lạc'),
(243, 27, 'Huyện Lạc Sơn'),
(244, 27, 'Huyện Kỳ Sơn'),
(245, 27, 'Huyện Lương Sơn'),
(246, 27, 'Huyện Kim Bôi'),
(247, 27, 'Huyện Lạc Thuỷ'),
(248, 27, 'Huyện Yên Thuỷ'),
(249, 27, 'Huyện Cao Phong'),
(250, 28, 'Thị xã Hưng Yên'),
(251, 28, 'Huyện Kim Động'),
(252, 28, 'Huyện Ân Thi'),
(253, 28, 'Huyện Khoái Châu'),
(254, 28, 'Huyện Yên Mỹ'),
(255, 28, 'Huyện Tiên Lữ'),
(256, 28, 'Huyện Phù Cừ'),
(257, 28, 'Huyện Mỹ Hào'),
(258, 28, 'Huyện Văn Lâm'),
(259, 28, 'Huyện Văn Giang'),
(260, 29, 'Thành phố Nha Trang'),
(261, 29, 'Huyện Vạn Ninh'),
(262, 29, 'Huyện Ninh Hoà'),
(263, 29, 'Huyện Diên Khánh'),
(264, 29, 'Huyện Khánh Vĩnh'),
(265, 29, 'Thị xã Cam Ranh'),
(266, 29, 'Huyện Khánh Sơn'),
(267, 29, 'Huyện Trường Sa'),
(268, 29, 'Huyện Cam Lâm'),
(269, 30, 'Thành phố Rạch Giá'),
(270, 30, 'Thị xã Hà Tiên'),
(271, 30, 'Huyện Kiên Lương'),
(272, 30, 'Huyện Hòn Đất'),
(273, 30, 'Huyện Tân Hiệp'),
(274, 30, 'Huyện Châu Thành'),
(275, 30, 'Huyện Giồng Riềng'),
(276, 30, 'Huyện Gò Quao'),
(277, 30, 'Huyện An Biên'),
(278, 30, 'Huyện An Minh'),
(279, 30, 'Huyện Vĩnh Thuận'),
(280, 30, 'Huyện Phú Quốc'),
(281, 30, 'Huyện Kiên Hải'),
(282, 30, 'Huyện U minh Thượng'),
(283, 31, 'Thị xã KonTum'),
(284, 31, 'Huyện Đăk Glei'),
(285, 31, 'Huyện Ngọc Hồi'),
(286, 31, 'Huyện Đăk Tô'),
(287, 31, 'Huyện Sa Thầy'),
(288, 31, 'Huyện Kon Plong'),
(289, 31, 'Huyện Đăk Hà'),
(290, 31, 'Huyện Kon Rộy'),
(291, 31, 'Huyện Tu Mơ Rông'),
(292, 32, 'Huyện Thị xã Lai Châu'),
(293, 32, 'Huyện Tam Đường'),
(294, 32, 'Huyện Phong Thổ'),
(295, 32, 'Huyện Sìn Hồ'),
(296, 32, 'Huyện Mường Tè'),
(297, 32, 'Huyện Than Uyên'),
(298, 33, 'Huyện Thành phố Đà Lạt'),
(299, 33, 'Thị xã. Bảo Lộc'),
(300, 33, 'Huyện Đức Trọng'),
(301, 33, 'Huyện Di Linh'),
(302, 33, 'Huyện Đơn Dương'),
(303, 33, 'Huyện Lạc Dương'),
(304, 33, 'Huyện Đạ Huoai'),
(305, 33, 'Huyện Đạ Tẻh'),
(306, 33, 'Huyện Cát Tiên'),
(307, 33, 'Huyện Lâm Hà'),
(308, 33, 'Huyện Bảo Lâm'),
(309, 33, 'Huyện Đam Rông'),
(310, 34, 'Thành phố Lạng Sơn'),
(311, 34, 'Huyện Tràng Định'),
(312, 34, 'Huyện Bình Gia'),
(313, 34, 'Huyện Văn Lãng'),
(314, 34, 'Huyện Bắc Sơn'),
(315, 34, 'Huyện Văn Quan'),
(316, 34, 'Huyện Cao Lộc'),
(317, 34, 'Huyện Lộc Bình'),
(318, 34, 'Huyện Chi Lăng'),
(319, 34, 'Huyện Đình Lập'),
(320, 34, 'Huyện Hữu Lũng'),
(321, 35, 'Thành phố Lào Cai'),
(322, 35, 'Huyện Xi Ma Cai'),
(323, 35, 'Huyện Bát Xát'),
(324, 35, 'Huyện Bảo Thắng'),
(325, 35, 'Huyện Sa Pa'),
(326, 35, 'Huyện Văn Bàn'),
(327, 35, 'Huyện Bảo Yên'),
(328, 35, 'Huyện Bắc Hà'),
(329, 35, 'Huyện Mường Khương'),
(330, 36, 'Thị xã Tân An'),
(331, 36, 'Huyện Vĩnh Hưng'),
(332, 36, 'Huyện Mộc Hoá'),
(333, 36, 'Huyện Tân Thạnh'),
(334, 36, 'Huyện Thạnh Hoá'),
(335, 36, 'Huyện Đức Huệ'),
(336, 36, 'Huyện Đức Hoà'),
(337, 36, 'Huyện Bến Lức'),
(338, 36, 'Huyện Thủ Thừa'),
(339, 36, 'Huyện Châu Thành'),
(340, 36, 'Huyện Tân Trụ'),
(341, 36, 'Huyện Cần Đước'),
(342, 36, 'Huyện Cần Giuộc'),
(343, 36, 'Huyện Tân Hưng'),
(344, 37, 'TP. Nam Định'),
(345, 37, 'Huyện Mỹ Lộc'),
(346, 37, 'Huyện Xuân Trường'),
(347, 37, 'Huyện Giao Thủy'),
(348, 37, 'Huyện Ý Yên'),
(349, 37, 'Huyện Vụ Bản'),
(350, 37, 'Huyện Nam Trực'),
(351, 37, 'Huyện Trực Ninh'),
(352, 37, 'Huyện Nghĩa Hưng'),
(353, 37, 'Huyện Hải Hậu'),
(354, 38, 'Thành phố Vinh'),
(355, 38, 'Thị xã Cửa Lò'),
(356, 38, 'Huyện Quỳ Châu'),
(357, 38, 'Huyện Quỳ Hợp'),
(358, 38, 'Huyện Nghĩa Đàn'),
(359, 38, 'Huyện Quỳnh Lưu'),
(360, 38, 'Huyện Kỳ Sơn'),
(361, 38, 'Huyện Tương Dương'),
(362, 38, 'Huyện Con Cuông'),
(363, 38, 'Huyện Tân Kỳ'),
(364, 38, 'Huyện Yên Thành'),
(365, 38, 'Huyện Diễn Châu'),
(366, 38, 'Huyện Anh Sơn'),
(367, 38, 'Huyện Đô Lương'),
(368, 38, 'Huyện Thanh Chương'),
(369, 38, 'Huyện Nghi Lộc'),
(370, 38, 'Huyện Nam Đàn'),
(371, 38, 'Huyện Hưng Nguyên'),
(372, 38, 'Huyện Quế Phong'),
(373, 39, 'Thành phố Ninh Bình'),
(374, 39, 'Thị xã Tam Điệp'),
(375, 39, 'Huyện Nho Quan'),
(376, 39, 'Huyện Gia Viễn'),
(377, 39, 'Huyện Hoa Lư'),
(378, 39, 'Huyện Yên Mô'),
(379, 39, 'Huyện Kim Sơn'),
(380, 39, 'Huyện Yên Khánh'),
(381, 40, 'Thành phố Phan Rang-Tháp Chàm'),
(382, 40, 'Huyện Ninh Sơn'),
(383, 40, 'Huyện Ninh Phước'),
(384, 40, 'Huyện Bác Ái'),
(385, 40, 'Huyện Thuận Bắc'),
(386, 40, 'Huyện Ninh Hải'),
(387, 41, 'TP. Việt Trì'),
(388, 41, 'Thị xã Phú Thọ'),
(389, 41, 'Huyện Đoan Hùng'),
(390, 41, 'Huyện Thanh Ba'),
(391, 41, 'Huyện Hạ Hoà'),
(392, 41, 'Huyện Cẩm Khê'),
(393, 41, 'Huyện Yên Lập'),
(394, 41, 'Huyện Thanh Sơn'),
(395, 41, 'Huyện Phù Ninh'),
(396, 41, 'Huyện Lâm Thao'),
(397, 41, 'Huyện Tam Nông'),
(398, 41, 'Huyện Thanh Thủy'),
(399, 41, 'Huyện Tân Sơn'),
(400, 42, 'Thành phố Đồng Hới'),
(401, 42, 'Huyện Tuyên Hoá'),
(402, 42, 'Huyện Minh Hoá'),
(403, 42, 'Huyện Quảng Trạch'),
(404, 42, 'Huyện Bố Trạch'),
(405, 42, 'Huyện Quảng Ninh'),
(406, 42, 'Huyện Lệ Thuỷ'),
(407, 43, 'Thành phố Tam Kỳ'),
(408, 43, 'Thị xã Hội An'),
(409, 43, 'Huyện Duy Xuyên'),
(410, 43, 'Huyện Điện Bàn'),
(411, 43, 'Huyện Đại Lộc'),
(412, 43, 'Huyện Quế Sơn'),
(413, 43, 'Huyện Hiệp Đức'),
(414, 43, 'Huyện Thăng Bình'),
(415, 43, 'Huyện Núi Thành'),
(416, 43, 'Huyện Tiên Phước'),
(417, 43, 'Huyện Bắc Trà My'),
(418, 43, 'Huyện Đông Giang'),
(419, 43, 'Huyện Nam Giang'),
(420, 43, 'Huyện Phước Sơn'),
(421, 43, 'Huyện Nam Trà My'),
(422, 43, 'Huyện Tây Giang'),
(423, 43, 'Huyện Phú Ninh'),
(424, 44, 'Thành phố Quảng Ngãi'),
(425, 44, 'Huyện Lý Sơn'),
(426, 44, 'Huyện Bình Sơn'),
(427, 44, 'Huyện Trà Bồng'),
(428, 44, 'Huyện Sơn Tịnh'),
(429, 44, 'Huyện Sơn Hà'),
(430, 44, 'Huyện Tư Nghĩa'),
(431, 44, 'Huyện Nghĩa Hành'),
(432, 44, 'Huyện Minh Long'),
(433, 44, 'Huyện Mộ Đức'),
(434, 44, 'Huyện Đức Phổ'),
(435, 44, 'Huyện Ba Tơ'),
(436, 44, 'Huyện Sơn Tây'),
(437, 44, 'Huyện Tây Trà'),
(438, 45, 'TP. Hạ Long'),
(439, 45, 'Thị xã Cẩm Phả'),
(440, 45, 'Thị xã Uông Bí'),
(441, 45, 'Thị xã Móng Cái'),
(442, 45, 'Huyện Bình Liêu'),
(443, 45, 'Huyện Đầm Hà'),
(444, 45, 'Huyện Hải Hà'),
(445, 45, 'Huyện Tiên Yên'),
(446, 45, 'Huyện Ba Chẽ'),
(447, 45, 'Huyện Đông Triều'),
(448, 45, 'Huyện Yên Hưng'),
(449, 45, 'Huyện Hoành Bồ'),
(450, 45, 'Huyện Vân Đồn'),
(451, 45, 'Huyện Cô Tô'),
(452, 46, 'Thị xã Đông Hà'),
(453, 46, 'Thị xã Quảng Trị'),
(454, 46, 'Huyện Vĩnh Linh'),
(455, 46, 'Huyện Gio Linh'),
(456, 46, 'Huyện Cam Lộ'),
(457, 46, 'Huyện Triệu Phong'),
(458, 46, 'Huyện Hải Lăng'),
(459, 46, 'Huyện Hướng Hoá'),
(460, 46, 'Huyện Đăk Rông'),
(461, 46, 'Huyện Cồn cỏ'),
(462, 47, 'Thành phố Sóc Trăng'),
(463, 47, 'Huyện Kế Sách'),
(464, 47, 'Huyện Mỹ Tú'),
(465, 47, 'Huyện Mỹ Xuyên'),
(466, 47, 'Huyện Thạnh Trị'),
(467, 47, 'Huyện Long Phú'),
(468, 47, 'Huyện Vĩnh Châu'),
(469, 47, 'Huyện Cù Lao Dung'),
(470, 47, 'Huyện Ngã Năm'),
(471, 47, 'Huyện Châu Thành'),
(472, 47, 'Huyện Trần Đề'),
(473, 48, 'Thị xã Sơn La'),
(474, 48, 'Huyện Quỳnh Nhai'),
(475, 48, 'Huyện Mường La'),
(476, 48, 'Huyện Thuận Châu'),
(477, 48, 'Huyện Bắc Yên'),
(478, 48, 'Huyện Phù Yên'),
(479, 48, 'Huyện Mai Sơn'),
(480, 48, 'Huyện Yên Châu'),
(481, 48, 'Huyện Sông Mã'),
(482, 48, 'Huyện Mộc Châu'),
(483, 48, 'Huyện Sốp Cộp'),
(484, 49, 'Thị xã Tây Ninh'),
(485, 49, 'Huyện Tân Biên'),
(486, 49, 'Huyện Tân Châu'),
(487, 49, 'Huyện Dương Minh Châu'),
(488, 49, 'Huyện Châu Thành'),
(489, 49, 'Huyện Hoà Thành'),
(490, 49, 'Huyện Bến Cầu'),
(491, 49, 'Huyện Gò Dầu'),
(492, 49, 'Huyện Trảng Bàng'),
(493, 50, 'Thành phố Thái Bình'),
(494, 50, 'Huyện Quỳnh Phụ'),
(495, 50, 'Huyện Hưng Hà'),
(496, 50, 'Huyện Đông Hưng'),
(497, 50, 'Huyện Vũ Thư'),
(498, 50, 'Huyện Kiến Xương'),
(499, 50, 'Huyện Tiền Hải'),
(500, 50, 'Huyện Thái Thuỵ'),
(501, 51, 'TP.Thái Nguyên'),
(502, 51, 'Thị xã Sông Công'),
(503, 51, 'Huyện Định Hoá'),
(504, 51, 'Huyện Phú Lương'),
(505, 51, 'Huyện Võ Nhai'),
(506, 51, 'Huyện Đại Từ'),
(507, 51, 'Huyện Đồng Hỷ'),
(508, 51, 'Huyện Phú Bình'),
(509, 51, 'Huyện Phổ Yên'),
(510, 52, 'Thành phố Thanh Hoá'),
(511, 52, 'Thị xã Bỉm Sơn'),
(512, 52, 'Thị xã Sầm Sơn'),
(513, 52, 'Huyện Quan Hoá'),
(514, 52, 'Huyện Quan Sơn'),
(515, 52, 'Huyện Mường Lát'),
(516, 52, 'Huyện Bá Thước'),
(517, 52, 'Huyện Thường Xuân'),
(518, 52, 'Huyện Như Xuân'),
(519, 52, 'Huyện Như Thanh'),
(520, 52, 'Huyện Lang Chánh'),
(521, 52, 'Huyện Ngọc Lặc'),
(522, 52, 'Huyện Thạch Thành'),
(523, 52, 'Huyện Cẩm Thủy'),
(524, 52, 'Huyện Thọ Xuân'),
(525, 52, 'Huyện Vĩnh Lộc'),
(526, 52, 'Huyện Thiệu Hoá'),
(527, 52, 'Huyện Triệu Sơn'),
(528, 52, 'Huyện Nông Cống'),
(529, 52, 'Huyện Đông Sơn'),
(530, 52, 'Huyện Hà Trung'),
(531, 52, 'Huyện Hoằng Hoá'),
(532, 52, 'Huyện Nga Sơn'),
(533, 52, 'Huyện Hậu Lộc'),
(534, 52, 'Huyện Quảng Xương'),
(535, 52, 'Huyện Tĩnh Gia'),
(536, 52, 'Huyện Yên Định'),
(537, 53, 'TP. Huế'),
(538, 53, 'Huyện Phong Điền'),
(539, 53, 'Huyện Quảng Điền'),
(540, 53, 'Huyện Hương Trà'),
(541, 53, 'Huyện Phú Vang'),
(542, 53, 'Huyện Hương Thuỷ'),
(543, 53, 'Huyện Phú Lộc'),
(544, 53, 'Huyện Nam Đông'),
(545, 53, 'Huyện A Lưới'),
(546, 54, 'Thành phố Mỹ Tho'),
(547, 54, 'Thị xã Gò Công'),
(548, 54, 'Huyện Cái Bè'),
(549, 54, 'Huyện Cai Lậy'),
(550, 54, 'Huyện Châu Thành'),
(551, 54, 'Huyện Chợ Gạo'),
(552, 54, 'Huyện Gò Công Tây'),
(553, 54, 'Huyện Gò Công Đông'),
(554, 54, 'Huyện Tân Phước'),
(555, 55, 'Thị xã Trà Vinh'),
(556, 55, 'Huyện Càng Long'),
(557, 55, 'Huyện Cầu Kè'),
(558, 55, 'Huyện Tiểu Cần'),
(559, 55, 'Huyện Châu Thành'),
(560, 55, 'Huyện Trà Cú'),
(561, 55, 'Huyện Cầu Ngang'),
(562, 55, 'Huyện Duyên Hải'),
(563, 56, 'Thành phố Tuyên Quang'),
(564, 56, 'Huyện Na Hang'),
(565, 56, 'Huyện Chiêm Hoá'),
(566, 56, 'Huyện Hàm Yên'),
(567, 56, 'Huyện Yên Sơn'),
(568, 56, 'Huyện Sơn Dương'),
(569, 57, 'Thị xã Vĩnh Long'),
(570, 57, 'Huyện Long Hồ'),
(571, 57, 'Huyện Mang Thít'),
(572, 57, 'Huyện Bình Minh'),
(573, 57, 'Huyện Tam Bình'),
(574, 57, 'Huyện Trà Ôn'),
(575, 57, 'Huyện Vũng Liêm'),
(576, 57, 'Huyện Bình Tân'),
(577, 58, 'Thành phố Vĩnh Yên'),
(578, 58, 'Huyện Tam Dương'),
(579, 58, 'Huyện Lập Thạch'),
(580, 58, 'Huyện Vĩnh Tường'),
(581, 58, 'Huyện Yên Lạc'),
(582, 58, 'Huyện Bình Xuyên'),
(583, 58, 'Huyện Mê Linh'),
(584, 58, 'Huyện Phúc Yên'),
(585, 58, 'Huyện Tam Đảo'),
(586, 59, 'Thành phố Yên Bái'),
(587, 59, 'Thị xã Nghĩa Lộ'),
(588, 59, 'Huyện Văn Yên'),
(589, 59, 'Huyện Yên Bình'),
(590, 59, 'Huyện Mù Cang Chải'),
(591, 59, 'Huyện Văn Chấn'),
(592, 59, 'Huyện Trấn Yên'),
(593, 59, 'Huyện Trạm Tấu'),
(594, 59, 'Huyện Lục Yên'),
(595, 60, 'Thị xã Tuy Hoà'),
(596, 60, 'Huyện Đồng Xuân'),
(597, 60, 'Huyện Sông Cầu'),
(598, 60, 'Huyện Tuy An'),
(599, 60, 'Huyện Sơn Hoà'),
(600, 60, 'Huyện Sông Hinh'),
(601, 60, 'Huyện Đông Hoà'),
(602, 60, 'Huyện Phú Hoà'),
(603, 60, 'Huyện Tây Hoà'),
(604, 61, 'Quận Ba Đình'),
(605, 61, 'Quận Hoàn Kiếm'),
(606, 61, 'Quận Hai Bà Trưng'),
(607, 61, 'Quận Đống Đa'),
(608, 61, 'Quận Tây Hồ'),
(609, 61, 'Quận Cầu Giấy'),
(610, 61, 'Quận Thanh Xuân'),
(611, 61, 'Quận Hoàng Mai'),
(612, 61, 'Quận Long Biên'),
(613, 61, 'Huyện Từ Liêm'),
(614, 61, 'Huyện Thanh Trì'),
(615, 61, 'Huyện Gia Lâm'),
(616, 61, 'Huyện Đông Anh'),
(617, 61, 'Huyện Sóc Sơn'),
(618, 61, 'Quận Hà Đông'),
(619, 61, 'Thị xã Sơn Tây'),
(620, 61, 'Huyện Ba Vì'),
(621, 61, 'Huyện Phúc Thọ'),
(622, 61, 'Huyện Thạch Thất'),
(623, 61, 'Huyện Quốc Oai'),
(624, 61, 'Huyện Chương Mỹ'),
(625, 61, 'Huyện Đan Phượng'),
(626, 61, 'Huyện Hoài Đức'),
(627, 61, 'Huyện Thanh Oai'),
(628, 61, 'Huyện Mỹ Đức'),
(629, 61, 'Huyện Ứng Hoà'),
(630, 61, 'Huyện Thường Tín'),
(631, 61, 'Huyện Phú Xuyên'),
(632, 61, 'Huyện Mê Linh'),
(633, 62, 'Quận Một'),
(634, 62, 'Quận Hai'),
(635, 62, 'Huyện Quận Ba'),
(636, 62, 'Quận Bốn'),
(637, 62, 'Quận Năm'),
(638, 62, 'Quận Sáu'),
(639, 62, 'Quận Bảy'),
(640, 62, 'Quận Tám'),
(641, 62, 'Quận Chín'),
(642, 62, 'Quận Mười'),
(643, 62, 'Quận Mười một'),
(644, 62, 'Quận Mười hai'),
(645, 62, 'Quận Gò Vấp'),
(646, 62, 'Quận Tân Bình'),
(647, 62, 'Quận Tân Phú'),
(648, 62, 'Quận Bình Thạnh'),
(649, 62, 'Quận Phú Nhuận'),
(650, 62, 'Quận Thủ Đức'),
(651, 62, 'Quận Bình Tân'),
(652, 62, 'Huyện Bình Chánh'),
(653, 62, 'Huyện Củ Chi'),
(654, 62, 'Huyện Hóc Môn'),
(655, 62, 'Huyện Nhà Bè'),
(656, 62, 'Huyện Cần Giờ'),
(657, 63, 'Quận Hải Châu'),
(658, 63, 'Quận Thanh Khê'),
(659, 63, 'Quận Sơn Trà'),
(660, 63, 'Quận Ngũ Hành Sơn'),
(661, 63, 'Quận Liên Chiểu'),
(662, 63, 'Huyện Hoà Vang'),
(663, 63, 'Quận Cẩm Lệ'),
(664, 64, 'Quận Ninh Kiều'),
(665, 64, 'Quận Bình Thuỷ'),
(666, 64, 'Quận Cái Răng'),
(667, 64, 'Quận Ô Môn'),
(668, 64, 'Huyện Phong Điền'),
(669, 64, 'Huyện Cờ Đỏ'),
(670, 64, 'Huyện Vĩnh Thạnh'),
(671, 64, 'Huyện Thốt Nốt'),
(672, 65, 'Quận Hồng Bàng'),
(673, 65, 'Quận Lê Chân'),
(674, 65, 'Quận Ngô Quyền'),
(675, 65, 'Quận Kiến An'),
(676, 65, 'Quận Hải An'),
(677, 65, 'Quận Đồ Sơn'),
(678, 65, 'Huyện An Lão'),
(679, 65, 'Huyện Kiến Thuỵ'),
(680, 65, 'Huyện Thủy Nguyên'),
(681, 65, 'Huyện An Dương'),
(682, 65, 'Huyện Tiên Lãng'),
(683, 65, 'Huyện Vĩnh Bảo'),
(684, 65, 'Huyện Cát Hải'),
(685, 65, 'Huyện Bạch Long Vĩ'),
(686, 65, 'Quận Dương Kinh');

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

=======
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('3', 'An Giang');
INSERT INTO `cities` VALUES ('4', 'Bà Rịa - Vũng Tàu');
INSERT INTO `cities` VALUES ('5', 'Bắc Giang');
INSERT INTO `cities` VALUES ('6', 'Bắc Kạn');
INSERT INTO `cities` VALUES ('7', 'Bạc Liêu');
INSERT INTO `cities` VALUES ('8', 'Bắc Ninh');
INSERT INTO `cities` VALUES ('9', 'Bến Tre');
INSERT INTO `cities` VALUES ('10', 'Bình Định');
INSERT INTO `cities` VALUES ('11', 'Bình Dương');
INSERT INTO `cities` VALUES ('12', 'Bình Phước');
INSERT INTO `cities` VALUES ('13', 'Bình Thuận');
INSERT INTO `cities` VALUES ('14', 'Cà Mau');
INSERT INTO `cities` VALUES ('15', 'Cao Bằng');
INSERT INTO `cities` VALUES ('16', 'Đắk Lắk');
INSERT INTO `cities` VALUES ('17', 'Đắk Nông');
INSERT INTO `cities` VALUES ('18', 'Điện Biên');
INSERT INTO `cities` VALUES ('19', 'Đồng Nai');
INSERT INTO `cities` VALUES ('20', 'Đồng Tháp');
INSERT INTO `cities` VALUES ('21', 'Gia Lai');
INSERT INTO `cities` VALUES ('22', 'Hà Giang');
INSERT INTO `cities` VALUES ('23', 'Hà Nam');
INSERT INTO `cities` VALUES ('24', 'Hà Tĩnh');
INSERT INTO `cities` VALUES ('25', 'Hải Dương');
INSERT INTO `cities` VALUES ('26', 'Hậu Giang');
INSERT INTO `cities` VALUES ('27', 'Hòa Bình');
INSERT INTO `cities` VALUES ('28', 'Hưng Yên');
INSERT INTO `cities` VALUES ('29', 'Khánh Hòa');
INSERT INTO `cities` VALUES ('30', 'Kiên Giang');
INSERT INTO `cities` VALUES ('31', 'Kon Tum');
INSERT INTO `cities` VALUES ('32', 'Lai Châu');
INSERT INTO `cities` VALUES ('33', 'Lâm Đồng');
INSERT INTO `cities` VALUES ('34', 'Lạng Sơn');
INSERT INTO `cities` VALUES ('35', 'Lào Cai');
INSERT INTO `cities` VALUES ('36', 'Long An');
INSERT INTO `cities` VALUES ('37', 'Nam Định');
INSERT INTO `cities` VALUES ('38', 'Nghệ An');
INSERT INTO `cities` VALUES ('39', 'Ninh Bình');
INSERT INTO `cities` VALUES ('40', 'Ninh Thuận');
INSERT INTO `cities` VALUES ('41', 'Phú Thọ');
INSERT INTO `cities` VALUES ('42', 'Quảng Bình');
INSERT INTO `cities` VALUES ('43', 'Quảng Nam');
INSERT INTO `cities` VALUES ('44', 'Quảng Ngãi');
INSERT INTO `cities` VALUES ('45', 'Quảng Ninh');
INSERT INTO `cities` VALUES ('46', 'Quảng Trị');
INSERT INTO `cities` VALUES ('47', 'Sóc Trăng');
INSERT INTO `cities` VALUES ('48', 'Sơn La');
INSERT INTO `cities` VALUES ('49', 'Tây Ninh');
INSERT INTO `cities` VALUES ('50', 'Thái Bình');
INSERT INTO `cities` VALUES ('51', 'Thái Nguyên');
INSERT INTO `cities` VALUES ('52', 'Thanh Hóa');
INSERT INTO `cities` VALUES ('53', 'Thừa Thiên Huế');
INSERT INTO `cities` VALUES ('54', 'Tiền Giang');
INSERT INTO `cities` VALUES ('55', 'Trà Vinh');
INSERT INTO `cities` VALUES ('56', 'Tuyên Quang');
INSERT INTO `cities` VALUES ('57', 'Vĩnh Long');
INSERT INTO `cities` VALUES ('58', 'Vĩnh Phúc');
INSERT INTO `cities` VALUES ('59', 'Yên Bái');
INSERT INTO `cities` VALUES ('60', 'Phú Yên');
INSERT INTO `cities` VALUES ('61', 'Hà Nội');
INSERT INTO `cities` VALUES ('62', 'TP HCM');
INSERT INTO `cities` VALUES ('63', 'Đà Nẵng');
INSERT INTO `cities` VALUES ('64', 'Cần Thơ');
INSERT INTO `cities` VALUES ('65', 'Hải Phòng');

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_city` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `districts_id_city_foreign` (`id_city`),
  CONSTRAINT `districts_id_city_foreign` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of districts
-- ----------------------------
INSERT INTO `districts` VALUES ('1', '3', 'Thành phố Long Xuyên');
INSERT INTO `districts` VALUES ('2', '3', 'Thị xã Châu Đốc');
INSERT INTO `districts` VALUES ('3', '3', 'Huyện An Phú');
INSERT INTO `districts` VALUES ('4', '3', 'Huyện Tân Châu');
INSERT INTO `districts` VALUES ('5', '3', 'Huyện Phú Tân');
INSERT INTO `districts` VALUES ('6', '3', 'Huyện Tịnh Biên');
INSERT INTO `districts` VALUES ('7', '3', 'Huyện Tri Tôn');
INSERT INTO `districts` VALUES ('8', '3', 'Huyện Châu Phú');
INSERT INTO `districts` VALUES ('9', '3', 'Huyện Chợ Mới');
INSERT INTO `districts` VALUES ('10', '3', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('11', '3', 'Huyện Thoại Sơn');
INSERT INTO `districts` VALUES ('12', '4', 'Thành phố Vũng Tàu');
INSERT INTO `districts` VALUES ('13', '4', 'Thị xã Bà Rịa');
INSERT INTO `districts` VALUES ('14', '4', 'Huyện Xuyên Mộc');
INSERT INTO `districts` VALUES ('15', '4', 'Huyện Long Điền');
INSERT INTO `districts` VALUES ('16', '4', 'Huyện Côn Đảo');
INSERT INTO `districts` VALUES ('17', '4', 'Huyện Tân Thành');
INSERT INTO `districts` VALUES ('18', '4', 'Huyện Châu Đức');
INSERT INTO `districts` VALUES ('19', '4', 'Huyện Đất Đỏ');
INSERT INTO `districts` VALUES ('20', '5', 'Thành phố Bắc Giang');
INSERT INTO `districts` VALUES ('21', '5', 'Huyện Yên Thế');
INSERT INTO `districts` VALUES ('22', '5', 'Huyện Lục Ngạn');
INSERT INTO `districts` VALUES ('23', '5', 'Huyện Sơn Động');
INSERT INTO `districts` VALUES ('24', '5', 'Huyện Lục Nam');
INSERT INTO `districts` VALUES ('25', '5', 'Huyện Tân Yên');
INSERT INTO `districts` VALUES ('26', '5', 'Huyện Hiệp Hoà');
INSERT INTO `districts` VALUES ('27', '5', 'Huyện Lạng Giang');
INSERT INTO `districts` VALUES ('28', '5', 'Huyện Việt Yên');
INSERT INTO `districts` VALUES ('29', '5', 'Huyện Yên Dũng');
INSERT INTO `districts` VALUES ('30', '6', 'Thị xã Bắc Kạn');
INSERT INTO `districts` VALUES ('31', '6', 'Huyện Chợ Đồn');
INSERT INTO `districts` VALUES ('32', '6', 'Huyện Bạch Thông');
INSERT INTO `districts` VALUES ('33', '6', 'Huyện Na Rì');
INSERT INTO `districts` VALUES ('34', '6', 'Huyện Ngân Sơn');
INSERT INTO `districts` VALUES ('35', '6', 'Huyện Ba Bể');
INSERT INTO `districts` VALUES ('36', '6', 'Huyện Chợ Mới');
INSERT INTO `districts` VALUES ('37', '6', 'Huyện Pác Nặm');
INSERT INTO `districts` VALUES ('38', '7', 'Thị xã Bạc Liêu');
INSERT INTO `districts` VALUES ('39', '7', 'Huyện Vĩnh Lợi');
INSERT INTO `districts` VALUES ('40', '7', 'Huyện Hồng Dân');
INSERT INTO `districts` VALUES ('41', '7', 'Huyện Giá Rai');
INSERT INTO `districts` VALUES ('42', '7', 'Huyện Phước Long');
INSERT INTO `districts` VALUES ('43', '7', 'Huyện Đông Hải');
INSERT INTO `districts` VALUES ('44', '7', 'Huyện Hoà Bình');
INSERT INTO `districts` VALUES ('48', '8', 'Thành phố Bắc Ninh');
INSERT INTO `districts` VALUES ('49', '8', 'Huyện Yên Phong');
INSERT INTO `districts` VALUES ('50', '8', 'Huyện Quế Võ.');
INSERT INTO `districts` VALUES ('51', '8', 'Huyện Tiên Du');
INSERT INTO `districts` VALUES ('52', '8', 'Huyện Từ Sơn');
INSERT INTO `districts` VALUES ('53', '8', 'Huyện Thuận Thành');
INSERT INTO `districts` VALUES ('54', '8', 'Huyện Gia Bình');
INSERT INTO `districts` VALUES ('55', '8', 'Huyện Lương Tài');
INSERT INTO `districts` VALUES ('56', '9', 'Thị xã Bến Tre');
INSERT INTO `districts` VALUES ('57', '9', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('58', '9', 'Huyện Chợ Lách');
INSERT INTO `districts` VALUES ('59', '9', 'Huyện Mỏ Cày');
INSERT INTO `districts` VALUES ('60', '9', 'Huyện Giồng Trôm');
INSERT INTO `districts` VALUES ('61', '9', 'Huyện Bình Đại');
INSERT INTO `districts` VALUES ('62', '9', 'Huyện Ba Tri');
INSERT INTO `districts` VALUES ('63', '9', 'Huyện Thạnh Phú');
INSERT INTO `districts` VALUES ('64', '10', 'Thành phố Quy Nhơn');
INSERT INTO `districts` VALUES ('65', '10', 'Huyện An Lão');
INSERT INTO `districts` VALUES ('66', '10', 'Huyện Hoài Ân');
INSERT INTO `districts` VALUES ('67', '10', 'Huyện Hoài Nhơn');
INSERT INTO `districts` VALUES ('68', '10', 'Huyện Phù Mỹ');
INSERT INTO `districts` VALUES ('69', '10', 'Huyện Phù Cát');
INSERT INTO `districts` VALUES ('70', '10', 'Huyện Vĩnh Thạnh');
INSERT INTO `districts` VALUES ('71', '10', 'Huyện Tây Sơn');
INSERT INTO `districts` VALUES ('72', '10', 'Huyện Vân Canh');
INSERT INTO `districts` VALUES ('73', '10', 'Huyện An Nhơn');
INSERT INTO `districts` VALUES ('74', '10', 'Huyện Tuy Phước');
INSERT INTO `districts` VALUES ('75', '11', 'Thị xã Thủ Dầu Một');
INSERT INTO `districts` VALUES ('76', '11', 'Huyện Bến Cát');
INSERT INTO `districts` VALUES ('77', '11', 'Huyện Tân Uyên');
INSERT INTO `districts` VALUES ('78', '11', 'Huyện Thuận An');
INSERT INTO `districts` VALUES ('79', '11', 'Huyện Dĩ An');
INSERT INTO `districts` VALUES ('80', '11', 'Huyện Phú Giáo');
INSERT INTO `districts` VALUES ('81', '11', 'Huyện Dầu Tiếng');
INSERT INTO `districts` VALUES ('82', '12', 'Thị xã Đồng Xoài');
INSERT INTO `districts` VALUES ('83', '12', 'Huyện Đồng Phú');
INSERT INTO `districts` VALUES ('84', '12', 'Huyện Chơn Thành');
INSERT INTO `districts` VALUES ('85', '12', 'Huyện Bình Long');
INSERT INTO `districts` VALUES ('86', '12', 'Huyện Lộc Ninh');
INSERT INTO `districts` VALUES ('87', '12', 'Huyện Bù Đốp');
INSERT INTO `districts` VALUES ('88', '12', 'Huyện Phước Long');
INSERT INTO `districts` VALUES ('89', '12', 'Huyện Bù Đăng');
INSERT INTO `districts` VALUES ('90', '13', 'Thành phố Phan Thiết');
INSERT INTO `districts` VALUES ('91', '13', 'Huyện Tuy Phong');
INSERT INTO `districts` VALUES ('92', '13', 'Huyện Bắc Bình');
INSERT INTO `districts` VALUES ('93', '13', 'Huyện Hàm Thuận Bắc');
INSERT INTO `districts` VALUES ('94', '13', 'Huyện Hàm Thuận Nam');
INSERT INTO `districts` VALUES ('95', '13', 'Huyện Hàm Tân');
INSERT INTO `districts` VALUES ('96', '13', 'Huyện Đức Linh');
INSERT INTO `districts` VALUES ('97', '13', 'Huyện Tánh Linh');
INSERT INTO `districts` VALUES ('98', '13', 'Huyện Phú Quý');
INSERT INTO `districts` VALUES ('99', '13', 'Thị xã LaGi');
INSERT INTO `districts` VALUES ('100', '14', 'Thành phố Cà Mau');
INSERT INTO `districts` VALUES ('101', '14', 'Huyện Thới Bình');
INSERT INTO `districts` VALUES ('102', '14', 'Huyện U Minh');
INSERT INTO `districts` VALUES ('103', '14', 'Huyện Trần Văn Thời');
INSERT INTO `districts` VALUES ('104', '14', 'Huyện Cái Nước');
INSERT INTO `districts` VALUES ('105', '14', 'Huyện Đầm Dơi');
INSERT INTO `districts` VALUES ('106', '14', 'Huyện Ngọc Hiển');
INSERT INTO `districts` VALUES ('107', '14', 'Huyện Năm Căn');
INSERT INTO `districts` VALUES ('108', '14', 'Huyện Phú Tân');
INSERT INTO `districts` VALUES ('109', '15', 'Thị xã Cao Bằng');
INSERT INTO `districts` VALUES ('110', '15', 'Huyện Bảo Lạc');
INSERT INTO `districts` VALUES ('111', '15', 'Huyện Thông Nông');
INSERT INTO `districts` VALUES ('112', '15', 'Huyện Hà Quảng');
INSERT INTO `districts` VALUES ('113', '15', 'Huyện Trà Lĩnh');
INSERT INTO `districts` VALUES ('114', '15', 'Huyện Trùng Khánh');
INSERT INTO `districts` VALUES ('115', '15', 'Huyện Nguyên Bình');
INSERT INTO `districts` VALUES ('116', '15', 'Huyện Hoà An');
INSERT INTO `districts` VALUES ('117', '15', 'Huyện Quảng Uyên');
INSERT INTO `districts` VALUES ('118', '15', 'Huyện Thạch An');
INSERT INTO `districts` VALUES ('119', '15', 'Huyện Hạ Lang');
INSERT INTO `districts` VALUES ('120', '15', 'Huyện Bảo Lâm');
INSERT INTO `districts` VALUES ('121', '15', 'Huyện Phục Hoà');
INSERT INTO `districts` VALUES ('122', '16', 'Thành phố Buôn Ma Thuột');
INSERT INTO `districts` VALUES ('123', '16', 'Huyện Ea H Leo');
INSERT INTO `districts` VALUES ('124', '16', 'Huyện Krông Buk');
INSERT INTO `districts` VALUES ('125', '16', 'Huyện Krông Năng');
INSERT INTO `districts` VALUES ('126', '16', 'Huyện Ea Súp');
INSERT INTO `districts` VALUES ('127', '16', 'Huyện Cư M gar');
INSERT INTO `districts` VALUES ('128', '16', 'Huyện Krông Pắc');
INSERT INTO `districts` VALUES ('129', '16', 'Huyện Ea Kar');
INSERT INTO `districts` VALUES ('130', '16', 'Huyện M`Đrăk');
INSERT INTO `districts` VALUES ('131', '16', 'Huyện Krông Ana');
INSERT INTO `districts` VALUES ('132', '16', 'Huyện Krông Bông');
INSERT INTO `districts` VALUES ('133', '16', 'Huyện Lăk');
INSERT INTO `districts` VALUES ('134', '16', 'Huyện Buôn Đôn');
INSERT INTO `districts` VALUES ('135', '16', 'Huyện Cư Kuin');
INSERT INTO `districts` VALUES ('136', '17', 'Thị xã Gia Nghĩa');
INSERT INTO `districts` VALUES ('137', '17', 'Huyện Dăk RLấp');
INSERT INTO `districts` VALUES ('138', '17', 'Huyện Dăk Mil');
INSERT INTO `districts` VALUES ('139', '17', 'Huyện Cư Jút');
INSERT INTO `districts` VALUES ('140', '17', 'Huyện Dăk Song');
INSERT INTO `districts` VALUES ('141', '17', 'Huyện Krông Nô');
INSERT INTO `districts` VALUES ('142', '17', 'Huyện Dăk GLong');
INSERT INTO `districts` VALUES ('143', '17', 'Huyện Tuy Đức');
INSERT INTO `districts` VALUES ('144', '18', 'TP. Điện Biên Phủ');
INSERT INTO `districts` VALUES ('145', '18', 'Thị xã Mường Lay');
INSERT INTO `districts` VALUES ('146', '18', 'Huyện Điện Biên');
INSERT INTO `districts` VALUES ('147', '18', 'Huyện Tuần Giáo');
INSERT INTO `districts` VALUES ('148', '18', 'Huyện Mường Chà');
INSERT INTO `districts` VALUES ('149', '18', 'Huyện Tủa Chùa');
INSERT INTO `districts` VALUES ('150', '18', 'Huyện Điện Biên Đông');
INSERT INTO `districts` VALUES ('151', '18', 'Huyện Mường Nhé');
INSERT INTO `districts` VALUES ('152', '18', 'Huyện Mường Ảng');
INSERT INTO `districts` VALUES ('153', '19', 'Thành phố Biên Hoà');
INSERT INTO `districts` VALUES ('154', '19', 'Huyện Vĩnh Cửu');
INSERT INTO `districts` VALUES ('155', '19', 'Huyện Tân Phú');
INSERT INTO `districts` VALUES ('156', '19', 'Huyện Định Quán');
INSERT INTO `districts` VALUES ('157', '19', 'Huyện Thống Nhất');
INSERT INTO `districts` VALUES ('158', '19', 'Thị xã Long Khánh');
INSERT INTO `districts` VALUES ('159', '19', 'Huyện Xuân Lộc');
INSERT INTO `districts` VALUES ('160', '19', 'Huyện Long Thành');
INSERT INTO `districts` VALUES ('161', '19', 'Huyện Nhơn Trạch');
INSERT INTO `districts` VALUES ('162', '19', 'Huyện Trảng Bom');
INSERT INTO `districts` VALUES ('163', '19', 'Huyện Cẩm Mỹ');
INSERT INTO `districts` VALUES ('164', '20', 'Thành phố Cao Lãnh');
INSERT INTO `districts` VALUES ('165', '20', 'Thị xã Sa Đéc');
INSERT INTO `districts` VALUES ('166', '20', 'Huyện Tân Hồng');
INSERT INTO `districts` VALUES ('167', '20', 'Huyện Hồng Ngự');
INSERT INTO `districts` VALUES ('168', '20', 'Huyện Tam Nông');
INSERT INTO `districts` VALUES ('169', '20', 'Huyện Thanh Bình');
INSERT INTO `districts` VALUES ('170', '20', 'Huyện Cao Lãnh');
INSERT INTO `districts` VALUES ('171', '20', 'Huyện Lấp Vò');
INSERT INTO `districts` VALUES ('172', '20', 'Huyện Tháp Mười');
INSERT INTO `districts` VALUES ('173', '20', 'Huyện Lai Vung');
INSERT INTO `districts` VALUES ('174', '20', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('175', '21', 'Thành phố Pleiku');
INSERT INTO `districts` VALUES ('176', '21', 'Huyện Chư Păh');
INSERT INTO `districts` VALUES ('177', '21', 'Huyện Mang Yang');
INSERT INTO `districts` VALUES ('178', '21', 'Huyện Kbang');
INSERT INTO `districts` VALUES ('179', '21', 'Huyện An Khê');
INSERT INTO `districts` VALUES ('180', '21', 'Huyện Kông Chro');
INSERT INTO `districts` VALUES ('181', '21', 'Huyện Đức Cơ');
INSERT INTO `districts` VALUES ('182', '21', 'Huyện Chưprông');
INSERT INTO `districts` VALUES ('183', '21', 'Huyện Chư Sê');
INSERT INTO `districts` VALUES ('184', '21', 'Huyện Ayunpa');
INSERT INTO `districts` VALUES ('185', '21', 'Huyện Krông Pa');
INSERT INTO `districts` VALUES ('186', '21', 'Huyện La Grai');
INSERT INTO `districts` VALUES ('187', '21', 'Huyện Đăk Đoa');
INSERT INTO `districts` VALUES ('188', '21', 'Huyện La Pa');
INSERT INTO `districts` VALUES ('189', '21', 'Huyện Đăk Pơ');
INSERT INTO `districts` VALUES ('190', '21', 'Huyện Phú Thiện');
INSERT INTO `districts` VALUES ('191', '22', 'Thành phố Hà Giang');
INSERT INTO `districts` VALUES ('192', '22', 'Huyện Đồng Văn');
INSERT INTO `districts` VALUES ('193', '22', 'Huyện Mèo Vạc');
INSERT INTO `districts` VALUES ('194', '22', 'Huyện Yên Minh');
INSERT INTO `districts` VALUES ('195', '22', 'Huyện Quản Bạ');
INSERT INTO `districts` VALUES ('196', '22', 'Huyện Vị Xuyên');
INSERT INTO `districts` VALUES ('197', '22', 'Huyện Bắc Mê');
INSERT INTO `districts` VALUES ('198', '22', 'Huyện Hoàng Su Phì');
INSERT INTO `districts` VALUES ('199', '22', 'Huyện Xín Mần');
INSERT INTO `districts` VALUES ('200', '22', 'Huyện Bắc Quang');
INSERT INTO `districts` VALUES ('201', '22', 'Huyện Quang Bình');
INSERT INTO `districts` VALUES ('202', '23', 'Thị xã Phủ Lý');
INSERT INTO `districts` VALUES ('203', '23', 'Huyện Duy Tiên');
INSERT INTO `districts` VALUES ('204', '23', 'Huyện Kim Bảng');
INSERT INTO `districts` VALUES ('205', '23', 'Huyện Lý Nhân');
INSERT INTO `districts` VALUES ('206', '23', 'Huyện Thanh Liêm');
INSERT INTO `districts` VALUES ('207', '23', 'Huyện Bình Lục');
INSERT INTO `districts` VALUES ('208', '24', 'Thành phố Hà Tĩnh');
INSERT INTO `districts` VALUES ('209', '24', 'Thị xã Hồng Lĩnh');
INSERT INTO `districts` VALUES ('210', '24', 'Huyện Hương Sơn');
INSERT INTO `districts` VALUES ('211', '24', 'Huyện Đức Thọ');
INSERT INTO `districts` VALUES ('212', '24', 'Huyện Nghi Xuân');
INSERT INTO `districts` VALUES ('213', '24', 'Huyện Can Lộc');
INSERT INTO `districts` VALUES ('214', '24', 'Huyện Hương Khê');
INSERT INTO `districts` VALUES ('215', '24', 'Huyện Thạch Hà');
INSERT INTO `districts` VALUES ('216', '24', 'Huyện Cẩm Xuyên');
INSERT INTO `districts` VALUES ('217', '24', 'Huyện Kỳ Anh');
INSERT INTO `districts` VALUES ('218', '24', 'Huyện Vũ Quang');
INSERT INTO `districts` VALUES ('219', '24', 'Huyện Lộc Hà');
INSERT INTO `districts` VALUES ('220', '25', 'Thành phố Hải Dương');
INSERT INTO `districts` VALUES ('221', '25', 'Huyện Chí Linh');
INSERT INTO `districts` VALUES ('222', '25', 'Huyện Nam Sách');
INSERT INTO `districts` VALUES ('223', '25', 'Huyện Kinh Môn');
INSERT INTO `districts` VALUES ('224', '25', 'Huyện Gia Lộc');
INSERT INTO `districts` VALUES ('225', '25', 'Huyện Tứ Kỳ');
INSERT INTO `districts` VALUES ('226', '25', 'Huyện Thanh Miện');
INSERT INTO `districts` VALUES ('227', '25', 'Huyện Ninh Giang');
INSERT INTO `districts` VALUES ('228', '25', 'Huyện Cẩm Giàng');
INSERT INTO `districts` VALUES ('229', '25', 'Huyện Thanh Hà');
INSERT INTO `districts` VALUES ('230', '25', 'Huyện Kim Thành');
INSERT INTO `districts` VALUES ('231', '25', 'Huyện Bình Giang');
INSERT INTO `districts` VALUES ('232', '26', 'Thành phố Vị Thanh');
INSERT INTO `districts` VALUES ('233', '26', 'Huyện Vị Thuỷ');
INSERT INTO `districts` VALUES ('234', '26', 'Huyện Long Mỹ');
INSERT INTO `districts` VALUES ('235', '26', 'Huyện Phụng Hiệp');
INSERT INTO `districts` VALUES ('236', '26', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('237', '26', 'Huyện Châu Thành A');
INSERT INTO `districts` VALUES ('238', '26', 'Thị xã Ngã Bảy');
INSERT INTO `districts` VALUES ('239', '27', 'Thành phố Hoà Bình');
INSERT INTO `districts` VALUES ('240', '27', 'Huyện Đà Bắc');
INSERT INTO `districts` VALUES ('241', '27', 'Huyện Mai Châu');
INSERT INTO `districts` VALUES ('242', '27', 'Huyện Tân Lạc');
INSERT INTO `districts` VALUES ('243', '27', 'Huyện Lạc Sơn');
INSERT INTO `districts` VALUES ('244', '27', 'Huyện Kỳ Sơn');
INSERT INTO `districts` VALUES ('245', '27', 'Huyện Lương Sơn');
INSERT INTO `districts` VALUES ('246', '27', 'Huyện Kim Bôi');
INSERT INTO `districts` VALUES ('247', '27', 'Huyện Lạc Thuỷ');
INSERT INTO `districts` VALUES ('248', '27', 'Huyện Yên Thuỷ');
INSERT INTO `districts` VALUES ('249', '27', 'Huyện Cao Phong');
INSERT INTO `districts` VALUES ('250', '28', 'Thị xã Hưng Yên');
INSERT INTO `districts` VALUES ('251', '28', 'Huyện Kim Động');
INSERT INTO `districts` VALUES ('252', '28', 'Huyện Ân Thi');
INSERT INTO `districts` VALUES ('253', '28', 'Huyện Khoái Châu');
INSERT INTO `districts` VALUES ('254', '28', 'Huyện Yên Mỹ');
INSERT INTO `districts` VALUES ('255', '28', 'Huyện Tiên Lữ');
INSERT INTO `districts` VALUES ('256', '28', 'Huyện Phù Cừ');
INSERT INTO `districts` VALUES ('257', '28', 'Huyện Mỹ Hào');
INSERT INTO `districts` VALUES ('258', '28', 'Huyện Văn Lâm');
INSERT INTO `districts` VALUES ('259', '28', 'Huyện Văn Giang');
INSERT INTO `districts` VALUES ('260', '29', 'Thành phố Nha Trang');
INSERT INTO `districts` VALUES ('261', '29', 'Huyện Vạn Ninh');
INSERT INTO `districts` VALUES ('262', '29', 'Huyện Ninh Hoà');
INSERT INTO `districts` VALUES ('263', '29', 'Huyện Diên Khánh');
INSERT INTO `districts` VALUES ('264', '29', 'Huyện Khánh Vĩnh');
INSERT INTO `districts` VALUES ('265', '29', 'Thị xã Cam Ranh');
INSERT INTO `districts` VALUES ('266', '29', 'Huyện Khánh Sơn');
INSERT INTO `districts` VALUES ('267', '29', 'Huyện Trường Sa');
INSERT INTO `districts` VALUES ('268', '29', 'Huyện Cam Lâm');
INSERT INTO `districts` VALUES ('269', '30', 'Thành phố Rạch Giá');
INSERT INTO `districts` VALUES ('270', '30', 'Thị xã Hà Tiên');
INSERT INTO `districts` VALUES ('271', '30', 'Huyện Kiên Lương');
INSERT INTO `districts` VALUES ('272', '30', 'Huyện Hòn Đất');
INSERT INTO `districts` VALUES ('273', '30', 'Huyện Tân Hiệp');
INSERT INTO `districts` VALUES ('274', '30', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('275', '30', 'Huyện Giồng Riềng');
INSERT INTO `districts` VALUES ('276', '30', 'Huyện Gò Quao');
INSERT INTO `districts` VALUES ('277', '30', 'Huyện An Biên');
INSERT INTO `districts` VALUES ('278', '30', 'Huyện An Minh');
INSERT INTO `districts` VALUES ('279', '30', 'Huyện Vĩnh Thuận');
INSERT INTO `districts` VALUES ('280', '30', 'Huyện Phú Quốc');
INSERT INTO `districts` VALUES ('281', '30', 'Huyện Kiên Hải');
INSERT INTO `districts` VALUES ('282', '30', 'Huyện U minh Thượng');
INSERT INTO `districts` VALUES ('283', '31', 'Thị xã KonTum');
INSERT INTO `districts` VALUES ('284', '31', 'Huyện Đăk Glei');
INSERT INTO `districts` VALUES ('285', '31', 'Huyện Ngọc Hồi');
INSERT INTO `districts` VALUES ('286', '31', 'Huyện Đăk Tô');
INSERT INTO `districts` VALUES ('287', '31', 'Huyện Sa Thầy');
INSERT INTO `districts` VALUES ('288', '31', 'Huyện Kon Plong');
INSERT INTO `districts` VALUES ('289', '31', 'Huyện Đăk Hà');
INSERT INTO `districts` VALUES ('290', '31', 'Huyện Kon Rộy');
INSERT INTO `districts` VALUES ('291', '31', 'Huyện Tu Mơ Rông');
INSERT INTO `districts` VALUES ('292', '32', 'Huyện Thị xã Lai Châu');
INSERT INTO `districts` VALUES ('293', '32', 'Huyện Tam Đường');
INSERT INTO `districts` VALUES ('294', '32', 'Huyện Phong Thổ');
INSERT INTO `districts` VALUES ('295', '32', 'Huyện Sìn Hồ');
INSERT INTO `districts` VALUES ('296', '32', 'Huyện Mường Tè');
INSERT INTO `districts` VALUES ('297', '32', 'Huyện Than Uyên');
INSERT INTO `districts` VALUES ('298', '33', 'Huyện Thành phố Đà Lạt');
INSERT INTO `districts` VALUES ('299', '33', 'Thị xã. Bảo Lộc');
INSERT INTO `districts` VALUES ('300', '33', 'Huyện Đức Trọng');
INSERT INTO `districts` VALUES ('301', '33', 'Huyện Di Linh');
INSERT INTO `districts` VALUES ('302', '33', 'Huyện Đơn Dương');
INSERT INTO `districts` VALUES ('303', '33', 'Huyện Lạc Dương');
INSERT INTO `districts` VALUES ('304', '33', 'Huyện Đạ Huoai');
INSERT INTO `districts` VALUES ('305', '33', 'Huyện Đạ Tẻh');
INSERT INTO `districts` VALUES ('306', '33', 'Huyện Cát Tiên');
INSERT INTO `districts` VALUES ('307', '33', 'Huyện Lâm Hà');
INSERT INTO `districts` VALUES ('308', '33', 'Huyện Bảo Lâm');
INSERT INTO `districts` VALUES ('309', '33', 'Huyện Đam Rông');
INSERT INTO `districts` VALUES ('310', '34', 'Thành phố Lạng Sơn');
INSERT INTO `districts` VALUES ('311', '34', 'Huyện Tràng Định');
INSERT INTO `districts` VALUES ('312', '34', 'Huyện Bình Gia');
INSERT INTO `districts` VALUES ('313', '34', 'Huyện Văn Lãng');
INSERT INTO `districts` VALUES ('314', '34', 'Huyện Bắc Sơn');
INSERT INTO `districts` VALUES ('315', '34', 'Huyện Văn Quan');
INSERT INTO `districts` VALUES ('316', '34', 'Huyện Cao Lộc');
INSERT INTO `districts` VALUES ('317', '34', 'Huyện Lộc Bình');
INSERT INTO `districts` VALUES ('318', '34', 'Huyện Chi Lăng');
INSERT INTO `districts` VALUES ('319', '34', 'Huyện Đình Lập');
INSERT INTO `districts` VALUES ('320', '34', 'Huyện Hữu Lũng');
INSERT INTO `districts` VALUES ('321', '35', 'Thành phố Lào Cai');
INSERT INTO `districts` VALUES ('322', '35', 'Huyện Xi Ma Cai');
INSERT INTO `districts` VALUES ('323', '35', 'Huyện Bát Xát');
INSERT INTO `districts` VALUES ('324', '35', 'Huyện Bảo Thắng');
INSERT INTO `districts` VALUES ('325', '35', 'Huyện Sa Pa');
INSERT INTO `districts` VALUES ('326', '35', 'Huyện Văn Bàn');
INSERT INTO `districts` VALUES ('327', '35', 'Huyện Bảo Yên');
INSERT INTO `districts` VALUES ('328', '35', 'Huyện Bắc Hà');
INSERT INTO `districts` VALUES ('329', '35', 'Huyện Mường Khương');
INSERT INTO `districts` VALUES ('330', '36', 'Thị xã Tân An');
INSERT INTO `districts` VALUES ('331', '36', 'Huyện Vĩnh Hưng');
INSERT INTO `districts` VALUES ('332', '36', 'Huyện Mộc Hoá');
INSERT INTO `districts` VALUES ('333', '36', 'Huyện Tân Thạnh');
INSERT INTO `districts` VALUES ('334', '36', 'Huyện Thạnh Hoá');
INSERT INTO `districts` VALUES ('335', '36', 'Huyện Đức Huệ');
INSERT INTO `districts` VALUES ('336', '36', 'Huyện Đức Hoà');
INSERT INTO `districts` VALUES ('337', '36', 'Huyện Bến Lức');
INSERT INTO `districts` VALUES ('338', '36', 'Huyện Thủ Thừa');
INSERT INTO `districts` VALUES ('339', '36', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('340', '36', 'Huyện Tân Trụ');
INSERT INTO `districts` VALUES ('341', '36', 'Huyện Cần Đước');
INSERT INTO `districts` VALUES ('342', '36', 'Huyện Cần Giuộc');
INSERT INTO `districts` VALUES ('343', '36', 'Huyện Tân Hưng');
INSERT INTO `districts` VALUES ('344', '37', 'TP. Nam Định');
INSERT INTO `districts` VALUES ('345', '37', 'Huyện Mỹ Lộc');
INSERT INTO `districts` VALUES ('346', '37', 'Huyện Xuân Trường');
INSERT INTO `districts` VALUES ('347', '37', 'Huyện Giao Thủy');
INSERT INTO `districts` VALUES ('348', '37', 'Huyện Ý Yên');
INSERT INTO `districts` VALUES ('349', '37', 'Huyện Vụ Bản');
INSERT INTO `districts` VALUES ('350', '37', 'Huyện Nam Trực');
INSERT INTO `districts` VALUES ('351', '37', 'Huyện Trực Ninh');
INSERT INTO `districts` VALUES ('352', '37', 'Huyện Nghĩa Hưng');
INSERT INTO `districts` VALUES ('353', '37', 'Huyện Hải Hậu');
INSERT INTO `districts` VALUES ('354', '38', 'Thành phố Vinh');
INSERT INTO `districts` VALUES ('355', '38', 'Thị xã Cửa Lò');
INSERT INTO `districts` VALUES ('356', '38', 'Huyện Quỳ Châu');
INSERT INTO `districts` VALUES ('357', '38', 'Huyện Quỳ Hợp');
INSERT INTO `districts` VALUES ('358', '38', 'Huyện Nghĩa Đàn');
INSERT INTO `districts` VALUES ('359', '38', 'Huyện Quỳnh Lưu');
INSERT INTO `districts` VALUES ('360', '38', 'Huyện Kỳ Sơn');
INSERT INTO `districts` VALUES ('361', '38', 'Huyện Tương Dương');
INSERT INTO `districts` VALUES ('362', '38', 'Huyện Con Cuông');
INSERT INTO `districts` VALUES ('363', '38', 'Huyện Tân Kỳ');
INSERT INTO `districts` VALUES ('364', '38', 'Huyện Yên Thành');
INSERT INTO `districts` VALUES ('365', '38', 'Huyện Diễn Châu');
INSERT INTO `districts` VALUES ('366', '38', 'Huyện Anh Sơn');
INSERT INTO `districts` VALUES ('367', '38', 'Huyện Đô Lương');
INSERT INTO `districts` VALUES ('368', '38', 'Huyện Thanh Chương');
INSERT INTO `districts` VALUES ('369', '38', 'Huyện Nghi Lộc');
INSERT INTO `districts` VALUES ('370', '38', 'Huyện Nam Đàn');
INSERT INTO `districts` VALUES ('371', '38', 'Huyện Hưng Nguyên');
INSERT INTO `districts` VALUES ('372', '38', 'Huyện Quế Phong');
INSERT INTO `districts` VALUES ('373', '39', 'Thành phố Ninh Bình');
INSERT INTO `districts` VALUES ('374', '39', 'Thị xã Tam Điệp');
INSERT INTO `districts` VALUES ('375', '39', 'Huyện Nho Quan');
INSERT INTO `districts` VALUES ('376', '39', 'Huyện Gia Viễn');
INSERT INTO `districts` VALUES ('377', '39', 'Huyện Hoa Lư');
INSERT INTO `districts` VALUES ('378', '39', 'Huyện Yên Mô');
INSERT INTO `districts` VALUES ('379', '39', 'Huyện Kim Sơn');
INSERT INTO `districts` VALUES ('380', '39', 'Huyện Yên Khánh');
INSERT INTO `districts` VALUES ('381', '40', 'Thành phố Phan Rang-Tháp Chàm');
INSERT INTO `districts` VALUES ('382', '40', 'Huyện Ninh Sơn');
INSERT INTO `districts` VALUES ('383', '40', 'Huyện Ninh Phước');
INSERT INTO `districts` VALUES ('384', '40', 'Huyện Bác Ái');
INSERT INTO `districts` VALUES ('385', '40', 'Huyện Thuận Bắc');
INSERT INTO `districts` VALUES ('386', '40', 'Huyện Ninh Hải');
INSERT INTO `districts` VALUES ('387', '41', 'TP. Việt Trì');
INSERT INTO `districts` VALUES ('388', '41', 'Thị xã Phú Thọ');
INSERT INTO `districts` VALUES ('389', '41', 'Huyện Đoan Hùng');
INSERT INTO `districts` VALUES ('390', '41', 'Huyện Thanh Ba');
INSERT INTO `districts` VALUES ('391', '41', 'Huyện Hạ Hoà');
INSERT INTO `districts` VALUES ('392', '41', 'Huyện Cẩm Khê');
INSERT INTO `districts` VALUES ('393', '41', 'Huyện Yên Lập');
INSERT INTO `districts` VALUES ('394', '41', 'Huyện Thanh Sơn');
INSERT INTO `districts` VALUES ('395', '41', 'Huyện Phù Ninh');
INSERT INTO `districts` VALUES ('396', '41', 'Huyện Lâm Thao');
INSERT INTO `districts` VALUES ('397', '41', 'Huyện Tam Nông');
INSERT INTO `districts` VALUES ('398', '41', 'Huyện Thanh Thủy');
INSERT INTO `districts` VALUES ('399', '41', 'Huyện Tân Sơn');
INSERT INTO `districts` VALUES ('400', '42', 'Thành phố Đồng Hới');
INSERT INTO `districts` VALUES ('401', '42', 'Huyện Tuyên Hoá');
INSERT INTO `districts` VALUES ('402', '42', 'Huyện Minh Hoá');
INSERT INTO `districts` VALUES ('403', '42', 'Huyện Quảng Trạch');
INSERT INTO `districts` VALUES ('404', '42', 'Huyện Bố Trạch');
INSERT INTO `districts` VALUES ('405', '42', 'Huyện Quảng Ninh');
INSERT INTO `districts` VALUES ('406', '42', 'Huyện Lệ Thuỷ');
INSERT INTO `districts` VALUES ('407', '43', 'Thành phố Tam Kỳ');
INSERT INTO `districts` VALUES ('408', '43', 'Thị xã Hội An');
INSERT INTO `districts` VALUES ('409', '43', 'Huyện Duy Xuyên');
INSERT INTO `districts` VALUES ('410', '43', 'Huyện Điện Bàn');
INSERT INTO `districts` VALUES ('411', '43', 'Huyện Đại Lộc');
INSERT INTO `districts` VALUES ('412', '43', 'Huyện Quế Sơn');
INSERT INTO `districts` VALUES ('413', '43', 'Huyện Hiệp Đức');
INSERT INTO `districts` VALUES ('414', '43', 'Huyện Thăng Bình');
INSERT INTO `districts` VALUES ('415', '43', 'Huyện Núi Thành');
INSERT INTO `districts` VALUES ('416', '43', 'Huyện Tiên Phước');
INSERT INTO `districts` VALUES ('417', '43', 'Huyện Bắc Trà My');
INSERT INTO `districts` VALUES ('418', '43', 'Huyện Đông Giang');
INSERT INTO `districts` VALUES ('419', '43', 'Huyện Nam Giang');
INSERT INTO `districts` VALUES ('420', '43', 'Huyện Phước Sơn');
INSERT INTO `districts` VALUES ('421', '43', 'Huyện Nam Trà My');
INSERT INTO `districts` VALUES ('422', '43', 'Huyện Tây Giang');
INSERT INTO `districts` VALUES ('423', '43', 'Huyện Phú Ninh');
INSERT INTO `districts` VALUES ('424', '44', 'Thành phố Quảng Ngãi');
INSERT INTO `districts` VALUES ('425', '44', 'Huyện Lý Sơn');
INSERT INTO `districts` VALUES ('426', '44', 'Huyện Bình Sơn');
INSERT INTO `districts` VALUES ('427', '44', 'Huyện Trà Bồng');
INSERT INTO `districts` VALUES ('428', '44', 'Huyện Sơn Tịnh');
INSERT INTO `districts` VALUES ('429', '44', 'Huyện Sơn Hà');
INSERT INTO `districts` VALUES ('430', '44', 'Huyện Tư Nghĩa');
INSERT INTO `districts` VALUES ('431', '44', 'Huyện Nghĩa Hành');
INSERT INTO `districts` VALUES ('432', '44', 'Huyện Minh Long');
INSERT INTO `districts` VALUES ('433', '44', 'Huyện Mộ Đức');
INSERT INTO `districts` VALUES ('434', '44', 'Huyện Đức Phổ');
INSERT INTO `districts` VALUES ('435', '44', 'Huyện Ba Tơ');
INSERT INTO `districts` VALUES ('436', '44', 'Huyện Sơn Tây');
INSERT INTO `districts` VALUES ('437', '44', 'Huyện Tây Trà');
INSERT INTO `districts` VALUES ('438', '45', 'TP. Hạ Long');
INSERT INTO `districts` VALUES ('439', '45', 'Thị xã Cẩm Phả');
INSERT INTO `districts` VALUES ('440', '45', 'Thị xã Uông Bí');
INSERT INTO `districts` VALUES ('441', '45', 'Thị xã Móng Cái');
INSERT INTO `districts` VALUES ('442', '45', 'Huyện Bình Liêu');
INSERT INTO `districts` VALUES ('443', '45', 'Huyện Đầm Hà');
INSERT INTO `districts` VALUES ('444', '45', 'Huyện Hải Hà');
INSERT INTO `districts` VALUES ('445', '45', 'Huyện Tiên Yên');
INSERT INTO `districts` VALUES ('446', '45', 'Huyện Ba Chẽ');
INSERT INTO `districts` VALUES ('447', '45', 'Huyện Đông Triều');
INSERT INTO `districts` VALUES ('448', '45', 'Huyện Yên Hưng');
INSERT INTO `districts` VALUES ('449', '45', 'Huyện Hoành Bồ');
INSERT INTO `districts` VALUES ('450', '45', 'Huyện Vân Đồn');
INSERT INTO `districts` VALUES ('451', '45', 'Huyện Cô Tô');
INSERT INTO `districts` VALUES ('452', '46', 'Thị xã Đông Hà');
INSERT INTO `districts` VALUES ('453', '46', 'Thị xã Quảng Trị');
INSERT INTO `districts` VALUES ('454', '46', 'Huyện Vĩnh Linh');
INSERT INTO `districts` VALUES ('455', '46', 'Huyện Gio Linh');
INSERT INTO `districts` VALUES ('456', '46', 'Huyện Cam Lộ');
INSERT INTO `districts` VALUES ('457', '46', 'Huyện Triệu Phong');
INSERT INTO `districts` VALUES ('458', '46', 'Huyện Hải Lăng');
INSERT INTO `districts` VALUES ('459', '46', 'Huyện Hướng Hoá');
INSERT INTO `districts` VALUES ('460', '46', 'Huyện Đăk Rông');
INSERT INTO `districts` VALUES ('461', '46', 'Huyện Cồn cỏ');
INSERT INTO `districts` VALUES ('462', '47', 'Thành phố Sóc Trăng');
INSERT INTO `districts` VALUES ('463', '47', 'Huyện Kế Sách');
INSERT INTO `districts` VALUES ('464', '47', 'Huyện Mỹ Tú');
INSERT INTO `districts` VALUES ('465', '47', 'Huyện Mỹ Xuyên');
INSERT INTO `districts` VALUES ('466', '47', 'Huyện Thạnh Trị');
INSERT INTO `districts` VALUES ('467', '47', 'Huyện Long Phú');
INSERT INTO `districts` VALUES ('468', '47', 'Huyện Vĩnh Châu');
INSERT INTO `districts` VALUES ('469', '47', 'Huyện Cù Lao Dung');
INSERT INTO `districts` VALUES ('470', '47', 'Huyện Ngã Năm');
INSERT INTO `districts` VALUES ('471', '47', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('472', '47', 'Huyện Trần Đề');
INSERT INTO `districts` VALUES ('473', '48', 'Thị xã Sơn La');
INSERT INTO `districts` VALUES ('474', '48', 'Huyện Quỳnh Nhai');
INSERT INTO `districts` VALUES ('475', '48', 'Huyện Mường La');
INSERT INTO `districts` VALUES ('476', '48', 'Huyện Thuận Châu');
INSERT INTO `districts` VALUES ('477', '48', 'Huyện Bắc Yên');
INSERT INTO `districts` VALUES ('478', '48', 'Huyện Phù Yên');
INSERT INTO `districts` VALUES ('479', '48', 'Huyện Mai Sơn');
INSERT INTO `districts` VALUES ('480', '48', 'Huyện Yên Châu');
INSERT INTO `districts` VALUES ('481', '48', 'Huyện Sông Mã');
INSERT INTO `districts` VALUES ('482', '48', 'Huyện Mộc Châu');
INSERT INTO `districts` VALUES ('483', '48', 'Huyện Sốp Cộp');
INSERT INTO `districts` VALUES ('484', '49', 'Thị xã Tây Ninh');
INSERT INTO `districts` VALUES ('485', '49', 'Huyện Tân Biên');
INSERT INTO `districts` VALUES ('486', '49', 'Huyện Tân Châu');
INSERT INTO `districts` VALUES ('487', '49', 'Huyện Dương Minh Châu');
INSERT INTO `districts` VALUES ('488', '49', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('489', '49', 'Huyện Hoà Thành');
INSERT INTO `districts` VALUES ('490', '49', 'Huyện Bến Cầu');
INSERT INTO `districts` VALUES ('491', '49', 'Huyện Gò Dầu');
INSERT INTO `districts` VALUES ('492', '49', 'Huyện Trảng Bàng');
INSERT INTO `districts` VALUES ('493', '50', 'Thành phố Thái Bình');
INSERT INTO `districts` VALUES ('494', '50', 'Huyện Quỳnh Phụ');
INSERT INTO `districts` VALUES ('495', '50', 'Huyện Hưng Hà');
INSERT INTO `districts` VALUES ('496', '50', 'Huyện Đông Hưng');
INSERT INTO `districts` VALUES ('497', '50', 'Huyện Vũ Thư');
INSERT INTO `districts` VALUES ('498', '50', 'Huyện Kiến Xương');
INSERT INTO `districts` VALUES ('499', '50', 'Huyện Tiền Hải');
INSERT INTO `districts` VALUES ('500', '50', 'Huyện Thái Thuỵ');
INSERT INTO `districts` VALUES ('501', '51', 'TP.Thái Nguyên');
INSERT INTO `districts` VALUES ('502', '51', 'Thị xã Sông Công');
INSERT INTO `districts` VALUES ('503', '51', 'Huyện Định Hoá');
INSERT INTO `districts` VALUES ('504', '51', 'Huyện Phú Lương');
INSERT INTO `districts` VALUES ('505', '51', 'Huyện Võ Nhai');
INSERT INTO `districts` VALUES ('506', '51', 'Huyện Đại Từ');
INSERT INTO `districts` VALUES ('507', '51', 'Huyện Đồng Hỷ');
INSERT INTO `districts` VALUES ('508', '51', 'Huyện Phú Bình');
INSERT INTO `districts` VALUES ('509', '51', 'Huyện Phổ Yên');
INSERT INTO `districts` VALUES ('510', '52', 'Thành phố Thanh Hoá');
INSERT INTO `districts` VALUES ('511', '52', 'Thị xã Bỉm Sơn');
INSERT INTO `districts` VALUES ('512', '52', 'Thị xã Sầm Sơn');
INSERT INTO `districts` VALUES ('513', '52', 'Huyện Quan Hoá');
INSERT INTO `districts` VALUES ('514', '52', 'Huyện Quan Sơn');
INSERT INTO `districts` VALUES ('515', '52', 'Huyện Mường Lát');
INSERT INTO `districts` VALUES ('516', '52', 'Huyện Bá Thước');
INSERT INTO `districts` VALUES ('517', '52', 'Huyện Thường Xuân');
INSERT INTO `districts` VALUES ('518', '52', 'Huyện Như Xuân');
INSERT INTO `districts` VALUES ('519', '52', 'Huyện Như Thanh');
INSERT INTO `districts` VALUES ('520', '52', 'Huyện Lang Chánh');
INSERT INTO `districts` VALUES ('521', '52', 'Huyện Ngọc Lặc');
INSERT INTO `districts` VALUES ('522', '52', 'Huyện Thạch Thành');
INSERT INTO `districts` VALUES ('523', '52', 'Huyện Cẩm Thủy');
INSERT INTO `districts` VALUES ('524', '52', 'Huyện Thọ Xuân');
INSERT INTO `districts` VALUES ('525', '52', 'Huyện Vĩnh Lộc');
INSERT INTO `districts` VALUES ('526', '52', 'Huyện Thiệu Hoá');
INSERT INTO `districts` VALUES ('527', '52', 'Huyện Triệu Sơn');
INSERT INTO `districts` VALUES ('528', '52', 'Huyện Nông Cống');
INSERT INTO `districts` VALUES ('529', '52', 'Huyện Đông Sơn');
INSERT INTO `districts` VALUES ('530', '52', 'Huyện Hà Trung');
INSERT INTO `districts` VALUES ('531', '52', 'Huyện Hoằng Hoá');
INSERT INTO `districts` VALUES ('532', '52', 'Huyện Nga Sơn');
INSERT INTO `districts` VALUES ('533', '52', 'Huyện Hậu Lộc');
INSERT INTO `districts` VALUES ('534', '52', 'Huyện Quảng Xương');
INSERT INTO `districts` VALUES ('535', '52', 'Huyện Tĩnh Gia');
INSERT INTO `districts` VALUES ('536', '52', 'Huyện Yên Định');
INSERT INTO `districts` VALUES ('537', '53', 'TP. Huế');
INSERT INTO `districts` VALUES ('538', '53', 'Huyện Phong Điền');
INSERT INTO `districts` VALUES ('539', '53', 'Huyện Quảng Điền');
INSERT INTO `districts` VALUES ('540', '53', 'Huyện Hương Trà');
INSERT INTO `districts` VALUES ('541', '53', 'Huyện Phú Vang');
INSERT INTO `districts` VALUES ('542', '53', 'Huyện Hương Thuỷ');
INSERT INTO `districts` VALUES ('543', '53', 'Huyện Phú Lộc');
INSERT INTO `districts` VALUES ('544', '53', 'Huyện Nam Đông');
INSERT INTO `districts` VALUES ('545', '53', 'Huyện A Lưới');
INSERT INTO `districts` VALUES ('546', '54', 'Thành phố Mỹ Tho');
INSERT INTO `districts` VALUES ('547', '54', 'Thị xã Gò Công');
INSERT INTO `districts` VALUES ('548', '54', 'Huyện Cái Bè');
INSERT INTO `districts` VALUES ('549', '54', 'Huyện Cai Lậy');
INSERT INTO `districts` VALUES ('550', '54', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('551', '54', 'Huyện Chợ Gạo');
INSERT INTO `districts` VALUES ('552', '54', 'Huyện Gò Công Tây');
INSERT INTO `districts` VALUES ('553', '54', 'Huyện Gò Công Đông');
INSERT INTO `districts` VALUES ('554', '54', 'Huyện Tân Phước');
INSERT INTO `districts` VALUES ('555', '55', 'Thị xã Trà Vinh');
INSERT INTO `districts` VALUES ('556', '55', 'Huyện Càng Long');
INSERT INTO `districts` VALUES ('557', '55', 'Huyện Cầu Kè');
INSERT INTO `districts` VALUES ('558', '55', 'Huyện Tiểu Cần');
INSERT INTO `districts` VALUES ('559', '55', 'Huyện Châu Thành');
INSERT INTO `districts` VALUES ('560', '55', 'Huyện Trà Cú');
INSERT INTO `districts` VALUES ('561', '55', 'Huyện Cầu Ngang');
INSERT INTO `districts` VALUES ('562', '55', 'Huyện Duyên Hải');
INSERT INTO `districts` VALUES ('563', '56', 'Thành phố Tuyên Quang');
INSERT INTO `districts` VALUES ('564', '56', 'Huyện Na Hang');
INSERT INTO `districts` VALUES ('565', '56', 'Huyện Chiêm Hoá');
INSERT INTO `districts` VALUES ('566', '56', 'Huyện Hàm Yên');
INSERT INTO `districts` VALUES ('567', '56', 'Huyện Yên Sơn');
INSERT INTO `districts` VALUES ('568', '56', 'Huyện Sơn Dương');
INSERT INTO `districts` VALUES ('569', '57', 'Thị xã Vĩnh Long');
INSERT INTO `districts` VALUES ('570', '57', 'Huyện Long Hồ');
INSERT INTO `districts` VALUES ('571', '57', 'Huyện Mang Thít');
INSERT INTO `districts` VALUES ('572', '57', 'Huyện Bình Minh');
INSERT INTO `districts` VALUES ('573', '57', 'Huyện Tam Bình');
INSERT INTO `districts` VALUES ('574', '57', 'Huyện Trà Ôn');
INSERT INTO `districts` VALUES ('575', '57', 'Huyện Vũng Liêm');
INSERT INTO `districts` VALUES ('576', '57', 'Huyện Bình Tân');
INSERT INTO `districts` VALUES ('577', '58', 'Thành phố Vĩnh Yên');
INSERT INTO `districts` VALUES ('578', '58', 'Huyện Tam Dương');
INSERT INTO `districts` VALUES ('579', '58', 'Huyện Lập Thạch');
INSERT INTO `districts` VALUES ('580', '58', 'Huyện Vĩnh Tường');
INSERT INTO `districts` VALUES ('581', '58', 'Huyện Yên Lạc');
INSERT INTO `districts` VALUES ('582', '58', 'Huyện Bình Xuyên');
INSERT INTO `districts` VALUES ('583', '58', 'Huyện Mê Linh');
INSERT INTO `districts` VALUES ('584', '58', 'Huyện Phúc Yên');
INSERT INTO `districts` VALUES ('585', '58', 'Huyện Tam Đảo');
INSERT INTO `districts` VALUES ('586', '59', 'Thành phố Yên Bái');
INSERT INTO `districts` VALUES ('587', '59', 'Thị xã Nghĩa Lộ');
INSERT INTO `districts` VALUES ('588', '59', 'Huyện Văn Yên');
INSERT INTO `districts` VALUES ('589', '59', 'Huyện Yên Bình');
INSERT INTO `districts` VALUES ('590', '59', 'Huyện Mù Cang Chải');
INSERT INTO `districts` VALUES ('591', '59', 'Huyện Văn Chấn');
INSERT INTO `districts` VALUES ('592', '59', 'Huyện Trấn Yên');
INSERT INTO `districts` VALUES ('593', '59', 'Huyện Trạm Tấu');
INSERT INTO `districts` VALUES ('594', '59', 'Huyện Lục Yên');
INSERT INTO `districts` VALUES ('595', '60', 'Thị xã Tuy Hoà');
INSERT INTO `districts` VALUES ('596', '60', 'Huyện Đồng Xuân');
INSERT INTO `districts` VALUES ('597', '60', 'Huyện Sông Cầu');
INSERT INTO `districts` VALUES ('598', '60', 'Huyện Tuy An');
INSERT INTO `districts` VALUES ('599', '60', 'Huyện Sơn Hoà');
INSERT INTO `districts` VALUES ('600', '60', 'Huyện Sông Hinh');
INSERT INTO `districts` VALUES ('601', '60', 'Huyện Đông Hoà');
INSERT INTO `districts` VALUES ('602', '60', 'Huyện Phú Hoà');
INSERT INTO `districts` VALUES ('603', '60', 'Huyện Tây Hoà');
INSERT INTO `districts` VALUES ('604', '61', 'Quận Ba Đình');
INSERT INTO `districts` VALUES ('605', '61', 'Quận Hoàn Kiếm');
INSERT INTO `districts` VALUES ('606', '61', 'Quận Hai Bà Trưng');
INSERT INTO `districts` VALUES ('607', '61', 'Quận Đống Đa');
INSERT INTO `districts` VALUES ('608', '61', 'Quận Tây Hồ');
INSERT INTO `districts` VALUES ('609', '61', 'Quận Cầu Giấy');
INSERT INTO `districts` VALUES ('610', '61', 'Quận Thanh Xuân');
INSERT INTO `districts` VALUES ('611', '61', 'Quận Hoàng Mai');
INSERT INTO `districts` VALUES ('612', '61', 'Quận Long Biên');
INSERT INTO `districts` VALUES ('613', '61', 'Huyện Từ Liêm');
INSERT INTO `districts` VALUES ('614', '61', 'Huyện Thanh Trì');
INSERT INTO `districts` VALUES ('615', '61', 'Huyện Gia Lâm');
INSERT INTO `districts` VALUES ('616', '61', 'Huyện Đông Anh');
INSERT INTO `districts` VALUES ('617', '61', 'Huyện Sóc Sơn');
INSERT INTO `districts` VALUES ('618', '61', 'Quận Hà Đông');
INSERT INTO `districts` VALUES ('619', '61', 'Thị xã Sơn Tây');
INSERT INTO `districts` VALUES ('620', '61', 'Huyện Ba Vì');
INSERT INTO `districts` VALUES ('621', '61', 'Huyện Phúc Thọ');
INSERT INTO `districts` VALUES ('622', '61', 'Huyện Thạch Thất');
INSERT INTO `districts` VALUES ('623', '61', 'Huyện Quốc Oai');
INSERT INTO `districts` VALUES ('624', '61', 'Huyện Chương Mỹ');
INSERT INTO `districts` VALUES ('625', '61', 'Huyện Đan Phượng');
INSERT INTO `districts` VALUES ('626', '61', 'Huyện Hoài Đức');
INSERT INTO `districts` VALUES ('627', '61', 'Huyện Thanh Oai');
INSERT INTO `districts` VALUES ('628', '61', 'Huyện Mỹ Đức');
INSERT INTO `districts` VALUES ('629', '61', 'Huyện Ứng Hoà');
INSERT INTO `districts` VALUES ('630', '61', 'Huyện Thường Tín');
INSERT INTO `districts` VALUES ('631', '61', 'Huyện Phú Xuyên');
INSERT INTO `districts` VALUES ('632', '61', 'Huyện Mê Linh');
INSERT INTO `districts` VALUES ('633', '62', 'Quận Một');
INSERT INTO `districts` VALUES ('634', '62', 'Quận Hai');
INSERT INTO `districts` VALUES ('635', '62', 'Huyện Quận Ba');
INSERT INTO `districts` VALUES ('636', '62', 'Quận Bốn');
INSERT INTO `districts` VALUES ('637', '62', 'Quận Năm');
INSERT INTO `districts` VALUES ('638', '62', 'Quận Sáu');
INSERT INTO `districts` VALUES ('639', '62', 'Quận Bảy');
INSERT INTO `districts` VALUES ('640', '62', 'Quận Tám');
INSERT INTO `districts` VALUES ('641', '62', 'Quận Chín');
INSERT INTO `districts` VALUES ('642', '62', 'Quận Mười');
INSERT INTO `districts` VALUES ('643', '62', 'Quận Mười một');
INSERT INTO `districts` VALUES ('644', '62', 'Quận Mười hai');
INSERT INTO `districts` VALUES ('645', '62', 'Quận Gò Vấp');
INSERT INTO `districts` VALUES ('646', '62', 'Quận Tân Bình');
INSERT INTO `districts` VALUES ('647', '62', 'Quận Tân Phú');
INSERT INTO `districts` VALUES ('648', '62', 'Quận Bình Thạnh');
INSERT INTO `districts` VALUES ('649', '62', 'Quận Phú Nhuận');
INSERT INTO `districts` VALUES ('650', '62', 'Quận Thủ Đức');
INSERT INTO `districts` VALUES ('651', '62', 'Quận Bình Tân');
INSERT INTO `districts` VALUES ('652', '62', 'Huyện Bình Chánh');
INSERT INTO `districts` VALUES ('653', '62', 'Huyện Củ Chi');
INSERT INTO `districts` VALUES ('654', '62', 'Huyện Hóc Môn');
INSERT INTO `districts` VALUES ('655', '62', 'Huyện Nhà Bè');
INSERT INTO `districts` VALUES ('656', '62', 'Huyện Cần Giờ');
INSERT INTO `districts` VALUES ('657', '63', 'Quận Hải Châu');
INSERT INTO `districts` VALUES ('658', '63', 'Quận Thanh Khê');
INSERT INTO `districts` VALUES ('659', '63', 'Quận Sơn Trà');
INSERT INTO `districts` VALUES ('660', '63', 'Quận Ngũ Hành Sơn');
INSERT INTO `districts` VALUES ('661', '63', 'Quận Liên Chiểu');
INSERT INTO `districts` VALUES ('662', '63', 'Huyện Hoà Vang');
INSERT INTO `districts` VALUES ('663', '63', 'Quận Cẩm Lệ');
INSERT INTO `districts` VALUES ('664', '64', 'Quận Ninh Kiều');
INSERT INTO `districts` VALUES ('665', '64', 'Quận Bình Thuỷ');
INSERT INTO `districts` VALUES ('666', '64', 'Quận Cái Răng');
INSERT INTO `districts` VALUES ('667', '64', 'Quận Ô Môn');
INSERT INTO `districts` VALUES ('668', '64', 'Huyện Phong Điền');
INSERT INTO `districts` VALUES ('669', '64', 'Huyện Cờ Đỏ');
INSERT INTO `districts` VALUES ('670', '64', 'Huyện Vĩnh Thạnh');
INSERT INTO `districts` VALUES ('671', '64', 'Huyện Thốt Nốt');
INSERT INTO `districts` VALUES ('672', '65', 'Quận Hồng Bàng');
INSERT INTO `districts` VALUES ('673', '65', 'Quận Lê Chân');
INSERT INTO `districts` VALUES ('674', '65', 'Quận Ngô Quyền');
INSERT INTO `districts` VALUES ('675', '65', 'Quận Kiến An');
INSERT INTO `districts` VALUES ('676', '65', 'Quận Hải An');
INSERT INTO `districts` VALUES ('677', '65', 'Quận Đồ Sơn');
INSERT INTO `districts` VALUES ('678', '65', 'Huyện An Lão');
INSERT INTO `districts` VALUES ('679', '65', 'Huyện Kiến Thuỵ');
INSERT INTO `districts` VALUES ('680', '65', 'Huyện Thủy Nguyên');
INSERT INTO `districts` VALUES ('681', '65', 'Huyện An Dương');
INSERT INTO `districts` VALUES ('682', '65', 'Huyện Tiên Lãng');
INSERT INTO `districts` VALUES ('683', '65', 'Huyện Vĩnh Bảo');
INSERT INTO `districts` VALUES ('684', '65', 'Huyện Cát Hải');
INSERT INTO `districts` VALUES ('685', '65', 'Huyện Bạch Long Vĩ');
INSERT INTO `districts` VALUES ('686', '65', 'Quận Dương Kinh');

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
<<<<<<< HEAD
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `feedbacks` (`id`, `id_place`, `star`,`status`, `created_at`, `updated_at`) VALUES
(1, 1, 2.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 2, 4.50,1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 3, 3.50,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 4, 2.50,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 5, 1.50,1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 6, 5.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 7, 4.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 8, 1.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 9, 2.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 10, 3.50,1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 11, 3.50,1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(12, 12, 5.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(13, 13, 3.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(14, 14, 2.00,0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(15, 15, 1.00,1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(65, 15, 3.00,0, '2018-06-10 21:00:46', '2018-06-10 21:00:46');

--
-- Cấu trúc bảng cho bảng `migrations`
--

=======
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_id_place_foreign` (`id_place`),
  CONSTRAINT `feedbacks_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
INSERT INTO `feedbacks` VALUES ('1', '1', '2.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('2', '2', '4.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('3', '3', '3.50', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('4', '4', '2.50', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('5', '5', '1.50', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('6', '6', '5.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('7', '7', '4.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('8', '8', '1.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('9', '9', '2.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('10', '10', '3.50', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('11', '11', '3.50', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('12', '12', '5.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('13', '13', '3.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('14', '14', '2.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('15', '15', '1.00', '2018-05-21 07:00:00', '2018-05-24 07:00:00', '0');
INSERT INTO `feedbacks` VALUES ('16', '1', '5.00', '2018-06-04 00:00:00', '2018-06-04 00:00:00', '0');
INSERT INTO `feedbacks` VALUES ('17', '1', '4.00', '2018-06-04 00:00:00', '2018-06-04 00:00:00', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
<<<<<<< HEAD
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `places`
--

=======
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2018_05_30_031954_cities', '1');
INSERT INTO `migrations` VALUES ('3', '2018_05_30_032010_districts', '1');
INSERT INTO `migrations` VALUES ('4', '2018_05_30_032019_place_type', '1');
INSERT INTO `migrations` VALUES ('5', '2018_05_30_032027_places', '1');
INSERT INTO `migrations` VALUES ('6', '2018_05_30_032034_place_image', '1');
INSERT INTO `migrations` VALUES ('7', '2018_05_30_032041_place_location', '1');
INSERT INTO `migrations` VALUES ('8', '2018_05_30_032050_feedbacks', '1');
INSERT INTO `migrations` VALUES ('9', '2018_05_30_032056_travel', '1');
INSERT INTO `migrations` VALUES ('10', '2018_05_30_032107_user_location', '1');

-- ----------------------------
-- Table structure for places
-- ----------------------------
DROP TABLE IF EXISTS `places`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(10) unsigned NOT NULL,
  `id_district` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
<<<<<<< HEAD
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `places` (`id`, `id_type`, `id_district`, `name`, `slogan`, `short_des`, `full_des`, `map`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Chợ nổi Cái Răng', 'Nét văn hoá cổ xưa', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>\r\n\r\n            ', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.1802349064924!2d105.74193531479423!3d10.001966392849832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089afb6342d8d%3A0xcdb2b569f5f13898!2zQ2jhu6MgTuG7lWkgQ8OhaSBSxINuZw!5e0!3m2!1svi!2s!4v1527733455653\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Lê Bình, Cái Răng, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 1, 2, 'Bến Ninh Kiều', 'Một nét văn hoá của người Cần Thơ', 'Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19', 'Ca dao từng có cầu: \"Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19.Bến Ninh Kiều, nơi nhìn ra dòng Hậu Giang dạt dào phù sa, nằm ở vị trí đắc địa, giao thoa hữu ngạn sông Hậu, ngay ngã ba sông Hậu và sông Cần Thơ, gần trung tâm thành phố Cần Thơ.</br>\r\n\r\n         Điều hấp dẫn du khách của bến là nhà thủy tạ trên sông. Nhà thủy tạ là một con tàu nổi bồng bềnh nối bờ bằng một đoạn cầu, hai bên cầu có lan can, khách có thể dừng chân đứng hóng gió. Nhà nổi này chính là nhà hàng ăn uống có hai tầng với hàng trăm chỗ ngồi. Khách tới nhà nổi, gọi ly nước ngọt, hoặc một xị rượu nếp than nhắm với món lẩu lươn đặc sản địa phương. Vừa ăn uống, vừa ngắm cảnh sông Hậu. Trên sông đủ loại thuyền ngược thuyền xuôi tấp nập. Bến còn có công viên với nhiều loại cây quý, xanh mướt, là nơi vui chơi và sinh hoạt của người dân.', ' <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3928.8141814257274!2d105.7858675!3d10.0321875!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a06298aae43e71%3A0xc6a64bdac582285d!2zQuG6v24gTmluaCBLaeG7gXU!5e0!3m2!1svi!2s!4v1527733506977\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>                                   ', '106 Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 1, 1, 'Làng du lịch Mỹ Khánh', 'Du lịch sinh thái trong lòng Cần Thơ', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.\r\n\r\nNhững trải nghiệm du khách không thể bỏ qua ở đây là thưởng thức hơn 20 chủng loại trái cây trong miệt vườn rộng lớn, tham quan làng nghề truyền thống, nấu rượu, tráng bánh với người dân bản địa, thưởng thức những món ăn đặc sản, tham quan nhà cổ Nam Bộ và được nghe những bài hát vọng cổ giao duyên từ máy hát đĩa quay có tuổi thọ đã 80 năm.</br>\r\nĐến với Làng Du Lịch Mỹ Khánh, quý khách thỏa sức khám phá, tìm hiểu về đời sống cư dân miệt vườn như: tham quan Nhà cổ Nam bộ, thưởng thức chương trình văn nghệ “đờn ca tài tử”, “một ngày làm Điền Chủ” với bữa cơm điền chủ, “một ngày làm nông dân”, “tát mương bắt cá…”, tham quan làng nghề văn hóa truyền thống, vườn cây ăn trái, các dịch vụ tại chỗ như đi xe ngựa, bơi thuyền, taxi điện, đua heo, đua chó, xiếc khỉ, câu cá sấu…và nhiều chương trình khác theo yêu cầu của quý khách.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.3355796516753!2d105.7043455147941!3d9.989113892858635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089ae6c592dbb%3A0x5475c9775633f9fe!2zTMOgbmcgRHUgbOG7i2NoIE3hu7kgS2jDoW5o!5e0!3m2!1svi!2s!4v1527733527287\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '335 Lộ Vòng Cung, Mỹ Khánh, Phong Điền, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 1, 1, 'Vườn cò Bằng Lăng', 'Hoà mình với thiên nhiên', 'Vườn cò Bằng Lăng thuộc ấp Thới Bình, huyện Thốt Nốt, Tp Cần Thơ. Vườn cò Bằng Lăng hiện đang là một trong những sân chim lớn nhất nơi miệt vườn này.', 'Trên đường từ Cần Thơ về thành phố Long Xuyên, qua khỏi thị trấn Thốt Nốt chừng 5 km là đến vườn cò Bằng Lăng. Du khách đến thăm vườn cò này sẽ được chiêm ngưỡng thỏa thích vô số các loại cò (cò trắng, cò xám, cò đen, cồng cộc…) đang chao cánh và sà xuống đậu trắng xóa những những cành trúc, đong đưa theo chiều gió. Khi chiều về, quanh khu vực này có âm thanh văng vẳng tiếng những con cò đang rối rít gọi đàn…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925.7459923699903!2d105.50308531479638!3d10.282038692658071!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310a767e831c7399%3A0xf1d584c069d473eb!2zVsaw4budbiBjw7IgQuG6sW5nIEzEg25n!5e0!3m2!1svi!2s!4v1527733567718\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Thuận An, Thốt Nốt, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 1, 1, 'Chùa Ông', 'Hoài niệm xưa cũ', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993. Chùa được xây dựng năm 1894 – 1896, với lối kiến trúc độc đáo. Mái chùa lợp ngói âm dương với các gờ bó mái bằng những hàng ngói ống men xanh thẫm, trên bờ nóc có vô số hình nhân đủ màu bằng gốm sứ, lưỡng long chầu nguyệt, chim phụng, ở hai đầu có hai tượng người cầm mặt trời, mặt trăng. Trong chùa thờ Quan Công – một tấm gương về lòng trung hiếu tiết nghĩa và các vị Quan Âm Nam Hải, Thái Bạch tinh quân, Thổ Địa, Đổng Vĩnh,…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7900380452093!2d105.78626891479446!3d10.034177592827776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0629e9e0072c5%3A0x45ff04519813c779!2zQ2jDuWEgw5RuZw!5e0!3m2!1svi!2s!4v1527733586010\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', ' 32, Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 2, 1, 'Quán ăn Hàn Quốc Sam', 'Hoà nhập thế giới', 'Không gian ấm cúng, tinh tế\r\n                Đa dạng các món ăn mang hương vị Hàn Quốc\r\n               Phục vụ vhu đáo, nhiệt tình', 'Đồ ăn ở dạ đa dạng với nhiều món khác nhau cho khách hàng lựa chọn. Một phần lẩu 2 người đồ ăn cũng tương đối chứ không hẳn là nhiều, nhưng nước lẩu thì khá là ngon, còn có món mì tương đen nữa. Kêu 1phần mà ăn cả 2 người mới hết\r\nCó dịp sẽ ghé lại quán ủng hộ tiếp', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.978357620994!2d105.7648397147943!3d10.018644392838372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08831098958e9%3A0x83a667d12440f794!2zUXXDoW4gxINuIEjDoG4gUXXhu5FjIFNhbQ!5e0!3m2!1svi!2s!4v1527733603966\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '474 Đường 30 Tháng 4, Hưng Lợi, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 2, 1, 'Quán Hồi Đó', 'Trở về ngày xưa', 'Quán có không gian kiểu xưa \r\nĐồ ăn khá ngon\r\nGiá ổn\r\nNằm trong hẻm nhưng cũng dễ tìm\r\nCó món lẩu mắn theo cá nhân thì ngon', 'Quán Hồi Đó có kiến trúc xây dựng kiểu nhà Nam Bộ xưa. Nếu là một người thành thị bạn sẽ thích với không gian nơi đây. Ngoài ra quán bán thức ăn khá phong phú, phục vụ cơm trưa và cả lẩu.\r\n              Nếu bạn muốn một vé về tuổi thơ. Thưởng thức những món ăn ngon của thời xưa, được chế biến theo phong cách truyền thống, và ăn bằn những dụng cụ truyền thống của những quán ăn 1975 sang trọng. Thì hãy đến nơi này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.785519641608!2d105.77394781479445!3d10.034549992827467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0881f3bcce005%3A0x89d28cf688a6e80b!2zUXXDoW4gSOG7k2kgxJDDsw!5e0!3m2!1svi!2s!4v1527733619631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '54, Trần Bình Trọng, An Phú, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 2, 1, 'Bún Đậu Mắm Tôm 3 Hiền', 'Thử đồ ăn người Bắc', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người.', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người. Bí quyết tạo nên sự khác biệt của quán chính là cách pha mắm tôm độc quyền. Không quá mặn nồng cũng không quá ngọt, vừa ăn mà mùi thơm của mắm tôm dù chưa ăn nhưng nghe qua đã thấy thèm thuồng. Quán ăn đậm chất Bắc Bộ, theo đánh giá của thực khách. Còn chần chờ gì mà không đến với 3 Hiền để nhanh tay thưởng thức cái cảm giác mới mẻ mà bún đậu mang lại, hòa quyện với vị mắm tôm đậm đà, để lại dư vị khó phai trong lòng khách hàng.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8719411125576!2d105.76796231479443!3d10.02742489283234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0883b537f9f5f%3A0xaba627c09d0c9623!2zQsO6biDEkOG6rXUgTeG6r20gVMO0bSAzIEhp4buBbg!5e0!3m2!1svi!2s!4v1527733637855\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '146A Ba Tháng Hai, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 2, 1, 'Nước Mía Mỹ Tho MT68', 'Đặc sản Mỹ Tho Tiền Giang', 'Trời nóng thì uống gì, ừ thì nước mía chứ còn gì nữa.\r\nLy nước mía ngọt lịm, có thạch khóm, rau câu, mít và không thể nào thiếu được đậu phộng. Tưởng như những thứ đó không hề liên quan nhau, nhưng khí kết hợp lại thì thật tuyệt vời. Nước mía ngọ lịm, chua chua của tắc, mít lại thơm thơm cùng cái vị béo bùi của đậu phộng. Thật tuyệt vời.\r\nNgoài ra ở quán còn có những món ăn vặt nhà quê như: bánh chuối, bánh lá.....', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8564627085348!2d105.77202231479436!3d10.028701392831474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882396e43b3d%3A0x717ec2a4db3f7952!2zTsaw4bubYyBNw61hIE3hu7kgVGhvIE1UNjg!5e0!3m2!1svi!2s!4v1527733658631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Mạc Thiên Tích, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 2, 1, 'Quán Bánh xèo 7 Tới', 'Hương vị đậm đà từng giọt nước mắm', 'Nhắc tới bánh xèo ở Cần Thơ thì phải nói tới bánh xèo đường Cái Sơn Hàng Bàng – Bánh Xèo 7 Tới. Không gian quán rộng, với món bánh xèo thịt vịt ngon có tiếng.', 'Bánh Xèo là một trong những nét đặc trưng nổi bật của ẩm thực miền Tây. Chính vì vậy,về với vùng đất trập trùng sông nước, cây trái xanh tốt bốn mùa này, thực khách khó mà có thể bỏ qua món ăn dân dã mà đậm đà hương vị miền quê này.\r\n             <br>Quán mang phong cách rất bình dân, bước chân vào quán, thực khách như có cảm giác được về thăm nhà của một người bạn nơi chốn quê bình dị. Quán vẫn sử dụng bếp than củi và bếp trấu. Ta có cảm giác hồn quê vương vấn trên từng vật dụng mộc mạc trên bàn, ta như thấy được hòa lẫn trong cái mùi thơm của bánh, mùi thơm của nhân thịt là mùi bếp lửa ấm nồng của những chái bếp mang bóng hình những người bà, người mẹ chốn thôn quê.\r\n             </br>Gọi là món ăn dân dã, vì tất cả nguyên liệu làm bánh đều bắt nguồn từ những thứ có sẵn trong nhà, ngoài vườn như: gạo làm bột, bột nghệ, các loại rau, nấm… Tùy theo sở thích mà người ta cho vào bánh những loại nhân khác nhau: tôm, thịt heo, thịt vịt,…\r\n\r\n          Dù nằm cách trung tâm thành phố Cần Thơ hơn 7 km nhưng quán Bánh xèo 7 Tới luôn là lựa chọn hàng đầu của người dân Cần Thơ cũng như du khách đến với thành phố này mỗi khi muốn thưởng thức món bánh xèo, đặc biệt là bánh xèo củ hũ dừa thịt vịt.\r\n\r\n          Một nét đặc biệt nữa khi thưởng thức món bánh xèo ở đây là các loại rau để cuốn và ăn kèm. Rau để cuốn vẫn là xà lách và cải bẹ xanh. Rau ăn kèm lại phong phú, đa dạng đến bất ngờ. Ngoài các loại rau sống phổ biến trong các món cuốn của người miền Tây như rau thơm, diếp cá, tía tô, húng, quế… đĩa rau ở đây còn có thêm nhiều loại rau ít gặp như lá chiết, bằng lăng, cát lồi…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.087333787697!2d105.74507661479419!3d10.009644792844556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0885d175a92d9%3A0xbf9dc5fa0d07329f!2zUXXDoW4gQsOhbmggeMOobyA3IFThu5tp!5e0!3m2!1svi!2s!4v1527733680225\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '45 Hoàng Quốc Việt, An Bình, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 3, 1, 'Mường Thanh Luxury Cần Thơ', 'Sang trọng là đẳng cấp', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.\r\n          Mỗi phòng tại đây đều được trang bị máy điều hòa không khí và TV màn hình phẳng. Một số phòng có khu vực tiếp khách để thư giãn sau một ngày bận rộn và tầm nhìn ra quang cảnh dòng sông hoặc thành phố. Các phòng đi kèm phòng tắm riêng với bồn rửa vệ sinh (bidet), vòi sen, dép, áo choàng tắm và đồ vệ sinh cá nhân miễn phí.\r\n\r\n          Khách sạn có quầy lễ tân 24 giờ, sảnh khách chung và tiệm làm tóc.\r\n\r\n          Quý khách có thể chơi tennis tại khách sạn. Muong Thanh Luxury Can Tho Hotel nằm trong bán kính 1,2 km từ Bến Ninh Kiều và 7 km từ Chợ nổi Cái Răng. Sân bay gần nhất là Sân bay Cần Thơ, cách khách sạn 13 km. \r\n\r\n          Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.\r\n\r\n          Chúng tôi sử dụng ngôn ngữ của bạn!', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.691346462849!2d105.78822771479449!3d10.042308492822128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a5846ab293%3A0xc849fa3f328edd91!2zS2jDoWNoIHPhuqFuIE3GsOG7nW5nIFRoYW5oIEx1eHVyeSBD4bqnbiBUaMah!5e0!3m2!1svi!2s!4v1527733710710\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(12, 3, 1, 'Victoria Can Tho Resort ', 'Nhẹ nhàng và thư thái', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.\r\n      Các phòng lắp máy điều hòa tại đây được trang trí với sắc be nhạt của vải và nâu của đồ nội thất gỗ sẫm màu. Trong phòng trang bị khu vực ghế ngồi, truyền hình vệ tinh màn hình phẳng và tủ lạnh mini. Một số phòng có ban công riêng. Phòng tắm riêng đi kèm bồn tắm, vòi sen và đồ vệ sinh cá nhân miễn phí.\r\n\r\n     Victoria Can Tho Resort có 7 phòng trị liệu với nhiều liệu pháp mát-xa, bao gồm từ mát-xa kiểu Việt Nam truyền thống cho tới mát-xa chữa bệnh toàn thân. Resort có quầy lễ tân 24 giờ và bàn đặt tour để hỗ trợ khách với nhiều dịch vụ, bao gồm dịch vụ nhận/trả phòng cấp tốc, giữ hành lý và đưa đón sân bay.\r\n\r\n      Victoria Can Tho Resort cách Cầu đi bộ Bến Ninh Kiều 700 m và Sân vận động Cần Thơ cũng như Bảo tàng Cần Thơ 1 km. Sân bay gần nhất là sân bay quốc tế Cần Thơ, cách đó 12 km.\r\n\r\n    Nhà hàng Spices trong khuôn viên nhìn ra Sông Hậu và có khu vực ghế ngồi trong nhà lẫn ngoài trời. Tại đây phục vụ ẩm thực Âu và Việt, được chuẩn bị bởi đầu bếp người Pháp của khách sạn. \r\n\r\n    Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,5 cho kỳ nghỉ dành cho 2 người.\r\n\r\n Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.72729334627!2d105.79134561479455!3d10.039347692824183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a4cdb540cd%3A0x62f4b50f8a858d2a!2zS2jDoWNoIHPhuqFuIFZpY3RvcmlhIEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1527733728753\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(13, 3, 1, 'Vinpearl Can Tho Hotel', 'Ngắm trọn Cần Thơ', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.\r\n        Các phòng nghỉ lắp máy điều hòa tại đây cho tầm nhìn ra dòng sông và/hoặc thành phố. Trong phòng còn được trang bị TV truyền hình cáp và tủ lạnh mini. Phòng tắm riêng đi kèm bồn tắm và vòi sen. Áo choàng tắm và dép cũng được cung cấp trong phòng.\r\n\r\n        Những khách muốn chăm sóc bản thân có thể đến trung tâm chăm sóc sức khỏe và spa cũng như tiệm làm tóc trong khuôn viên. Khách sạn còn có trung tâm thể dục, CLB trẻ em và bàn đặt tour.\r\n\r\n        Nhân viên nói được 2 thứ tiếng tại lễ tân có thể trợ giúp khách với việc thu xếp dịch vụ đưa đón, dịch vụ giặt là, dịch vụ thu đổi ngoại tệ và những yêu cầu khác.\r\n\r\n        Khách sạn còn có dịch vụ cho thuê xe hơi. Vinpearl Can Tho Hotel cách Chợ nổi Cái Răng 3,8 km và Bảo tàng Cần Thơ 2,3 km. Sân bay Rạch Giá cách đó 70 km. \r\n\r\n        Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n     Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.\r\n\r\n     Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.9084146562564!2d105.77264101479432!3d10.024416292834454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08833f000f11f%3A0x7eabead940802b56!2zVmlucGVhcmwgQ-G6p24gVGjGoSBIb3RlbA!5e0!3m2!1svi!2s!4v1527733747499\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '209 Đường 30 Tháng 4, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(14, 3, 1, 'Ninh Kieu Riverside Hotel', 'Thủ phủ quê nhà', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.\r\nTất cả các phòng nghỉ tại đây đều được trang bị truyền hình cáp màn hình phẳng, ấm đun nước và phòng tắm riêng kèm vòi sen. Những tiện nghi khác bao gồm dép và đồ vệ sinh cá nhân miễn phí.\r\n\r\nNhân viên song ngữ tại quầy lễ tân 24 giờ có thể hỗ trợ khách với các dịch vụ nhận phòng và trả phòng riêng, thu đổi ngoại tệ cũng như giữ hành lý.\r\n\r\nNinh Kieu Riverside Hotel cách Chợ Đêm 400 m, Bảo tàng Cần Thơ 500 m, Chợ nổi Cái Răng 7 km và sân bay gần nhất là sân bay Rạch Giá 72 km. \r\n\r\nChỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.763826809605!2d105.78745501479453!3d10.036337692826258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x3f70fa9b4ba0895e!2sNinh+Kieu+Riverside+Hotel!5e0!3m2!1svi!2s!4v1527733770529\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2 Hai Bà Trưng st, Tân An, Ninh Kiều, Cần Thơ 900000, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(15, 3, 1, 'Ninh Kieu 2 Hotel', 'Trung tâm thành phố', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.\r\n     Tất cả các phòng nghỉ tại Ninh Kieu 2 Hotel đều có khu vực ghế ngồi và TV truyền hình cáp màn hình phẳng. Các phòng cũng có phòng tắm riêng, tầm nhìn ra quang cảnh thành phố, máy điều hòa và bàn làm việc.\r\n\r\n      Khách sạn cung cấp bữa sáng kiểu Mỹ hàng ngày. Tại đây có nhà hàng ngay trong khuôn viên phục vụ hải sản và ẩm thực Việt Nam.\r\n\r\n     Ninh Kieu 2 Hotel có sân hiên.\r\n\r\n    Gần khách sạn có các điểm tham quan nổi tiếng như trung tâm thương mại Vincom Plaza Hùng Vương, trung tâm thương mại Vincom Plaza Xuân Khánh và Bảo tàng Cần Thơ. Sân bay gần nhất là Sân bay Rạch Giá, cách chỗ nghỉ 72 km. ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.780440486042!2d105.78387401479443!3d10.03496859282718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x386bdb632835e00e!2zS2jDoWNoIFPhuqFuIE5pbmggS2nhu4F1IDI!5e0!3m2!1svi!2s!4v1527733792692\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '03 Đại lộ Hoà Bình, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00');

--
-- Cấu trúc bảng cho bảng `place_image`
--

CREATE TABLE `place_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `place_image` (`id`, `id_place`, `name`) VALUES
(1, 1, 'cho-noi.jpg'),
(2, 1, 'cho-noi-1.jpg'),
(3, 1, 'cho-noi-2.jpg'),
(4, 2, 'ben-ninh-kieu.jpg'),
(5, 2, 'ben-ninh-kieu-du-thuyen.jpg'),
(6, 2, 'ben-ninh-kieu-can-tho.jpg'),
(7, 3, 'Lang-du-lich-My-khanh.jpg'),
(8, 3, 'Lang-du-lich-My-Khanh-1.jpg'),
(9, 3, 'Lang-du-lich-My-Khanh-2.jpg'),
(10, 4, 'vuon-co-bang-lang.jpg'),
(11, 4, 'vuon-co-bang-lang-1.jpg'),
(12, 4, 'vuon-co-bang-lang-2.jpg'),
(13, 5, 'chua-ong.jpg'),
(14, 5, 'chua-ong-1.jpg'),
(15, 5, 'chua-ong-2.jpg'),
(16, 6, 'sam-quan-an-han-quoc.jpg'),
(17, 6, 'sam-quan-an-han-quoc-1.jpg'),
(18, 6, 'sam-quan-an-han-quoc-2.jpg'),
(19, 7, 'hoi-do-quan.jpg'),
(20, 7, 'hoi-do-quan-1.jpg'),
(21, 7, 'hoi-do-quan-2.jpg'),
(22, 8, 'bun-dau-mam-tom-3-hien.jpg'),
(23, 8, 'bun-dau-mam-tom-3-hien-1.jpg'),
(24, 8, 'bun-dau-mam-tom-3-hien-2.jpg'),
(25, 9, 'nuoc-mia-my-tho.jpg'),
(26, 9, 'nuoc-mia-my-tho-mt68-1.jpg'),
(27, 9, 'nuoc-mia-my-tho-mt68-2.jpg'),
(28, 10, 'banh-xeo-7-toi.jpg'),
(29, 10, 'banh-xeo-7-toi-1.jpg'),
(30, 10, 'banh-xeo-7-toi-2.jpg'),
(31, 11, 'muong-thanh.jpeg'),
(32, 11, 'muong-thanh-1.jpeg'),
(33, 11, 'muong-thanh-2.jpeg'),
(34, 12, 'victoria-can-tho-resort.jpg'),
(35, 12, 'victoria-can-tho-resort-1.jpg'),
(36, 12, 'victoria-can-tho-resort-2.jpg'),
(37, 13, 'Vinpearl-can-tho-hotel.jpg'),
(38, 13, 'Vinpearl-can-tho-hotel-1.jpg'),
(39, 13, 'Vinpearl-can-tho-hotel-1.jpg'),
(40, 14, 'Ninh-kieu-riverside-hotel.jpg'),
(41, 14, 'Ninh-kieu-riverside-hotel-1.jpg'),
(42, 14, 'Ninh-kieu-riverside-hotel-2.jpg'),
(43, 15, 'Ninh-kieu-2-hotel.jpg'),
(44, 15, 'Ninh-kieu-2-hotel-1.jpg'),
(45, 15, 'Ninh-kieu-2-hotel-2.jpg');
--
-- Cấu trúc bảng cho bảng `place_location`
--

=======
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `places_id_type_foreign` (`id_type`),
  KEY `places_id_district_foreign` (`id_district`),
  CONSTRAINT `places_id_district_foreign` FOREIGN KEY (`id_district`) REFERENCES `districts` (`id`),
  CONSTRAINT `places_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `place_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of places
-- ----------------------------
INSERT INTO `places` VALUES ('1', '1', '1', 'Chợ nổi Cái Răng', 'Nét văn hoá cổ xưa', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>\r\n\r\n            ', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.1802349064924!2d105.74193531479423!3d10.001966392849832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089afb6342d8d%3A0xcdb2b569f5f13898!2zQ2jhu6MgTuG7lWkgQ8OhaSBSxINuZw!5e0!3m2!1svi!2s!4v1527733455653\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Lê Bình, Cái Răng, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('2', '1', '1', 'Bến Ninh Kiều', 'Một nét văn hoá của người Cần Thơ', 'Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19', 'Ca dao từng có cầu: \"Cần Thơ có bến Ninh Kiều/Có dòng sông đẹp với nhiều giai nhân\"...Bến Ninh Kiều nay được người dân xứ Tây Đô gọi là công viên Ninh Kiều, là một bến nước, địa danh du lịch và văn hóa được hình thành từ thế kỷ 19.Bến Ninh Kiều, nơi nhìn ra dòng Hậu Giang dạt dào phù sa, nằm ở vị trí đắc địa, giao thoa hữu ngạn sông Hậu, ngay ngã ba sông Hậu và sông Cần Thơ, gần trung tâm thành phố Cần Thơ.</br>\r\n\r\n         Điều hấp dẫn du khách của bến là nhà thủy tạ trên sông. Nhà thủy tạ là một con tàu nổi bồng bềnh nối bờ bằng một đoạn cầu, hai bên cầu có lan can, khách có thể dừng chân đứng hóng gió. Nhà nổi này chính là nhà hàng ăn uống có hai tầng với hàng trăm chỗ ngồi. Khách tới nhà nổi, gọi ly nước ngọt, hoặc một xị rượu nếp than nhắm với món lẩu lươn đặc sản địa phương. Vừa ăn uống, vừa ngắm cảnh sông Hậu. Trên sông đủ loại thuyền ngược thuyền xuôi tấp nập. Bến còn có công viên với nhiều loại cây quý, xanh mướt, là nơi vui chơi và sinh hoạt của người dân.', ' <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3928.8141814257274!2d105.7858675!3d10.0321875!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a06298aae43e71%3A0xc6a64bdac582285d!2zQuG6v24gTmluaCBLaeG7gXU!5e0!3m2!1svi!2s!4v1527733506977\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>                                   ', '106 Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('3', '1', '1', 'Làng du lịch Mỹ Khánh', 'Du lịch sinh thái trong lòng Cần Thơ', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.', 'Làng Du Lịch Mỹ Khánh thuộc huyện Phong Điền, nằm cách trung tâm TP Cần Thơ 10km, trên tuyến Lộ Vòng Cung lịch sử và ở giữa hai chợ nổi Cái Răng và Phong Điền. Làng du lịch Mỹ Khánh là nơi hội tụ những tinh hoa văn hóa sông nước miệt vườn.\r\n\r\nNhững trải nghiệm du khách không thể bỏ qua ở đây là thưởng thức hơn 20 chủng loại trái cây trong miệt vườn rộng lớn, tham quan làng nghề truyền thống, nấu rượu, tráng bánh với người dân bản địa, thưởng thức những món ăn đặc sản, tham quan nhà cổ Nam Bộ và được nghe những bài hát vọng cổ giao duyên từ máy hát đĩa quay có tuổi thọ đã 80 năm.</br>\r\nĐến với Làng Du Lịch Mỹ Khánh, quý khách thỏa sức khám phá, tìm hiểu về đời sống cư dân miệt vườn như: tham quan Nhà cổ Nam bộ, thưởng thức chương trình văn nghệ “đờn ca tài tử”, “một ngày làm Điền Chủ” với bữa cơm điền chủ, “một ngày làm nông dân”, “tát mương bắt cá…”, tham quan làng nghề văn hóa truyền thống, vườn cây ăn trái, các dịch vụ tại chỗ như đi xe ngựa, bơi thuyền, taxi điện, đua heo, đua chó, xiếc khỉ, câu cá sấu…và nhiều chương trình khác theo yêu cầu của quý khách.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.3355796516753!2d105.7043455147941!3d9.989113892858635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089ae6c592dbb%3A0x5475c9775633f9fe!2zTMOgbmcgRHUgbOG7i2NoIE3hu7kgS2jDoW5o!5e0!3m2!1svi!2s!4v1527733527287\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '335 Lộ Vòng Cung, Mỹ Khánh, Phong Điền, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('4', '1', '1', 'Vườn cò Bằng Lăng', 'Hoà mình với thiên nhiên', 'Vườn cò Bằng Lăng thuộc ấp Thới Bình, huyện Thốt Nốt, Tp Cần Thơ. Vườn cò Bằng Lăng hiện đang là một trong những sân chim lớn nhất nơi miệt vườn này.', 'Trên đường từ Cần Thơ về thành phố Long Xuyên, qua khỏi thị trấn Thốt Nốt chừng 5 km là đến vườn cò Bằng Lăng. Du khách đến thăm vườn cò này sẽ được chiêm ngưỡng thỏa thích vô số các loại cò (cò trắng, cò xám, cò đen, cồng cộc…) đang chao cánh và sà xuống đậu trắng xóa những những cành trúc, đong đưa theo chiều gió. Khi chiều về, quanh khu vực này có âm thanh văng vẳng tiếng những con cò đang rối rít gọi đàn…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925.7459923699903!2d105.50308531479638!3d10.282038692658071!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310a767e831c7399%3A0xf1d584c069d473eb!2zVsaw4budbiBjw7IgQuG6sW5nIEzEg25n!5e0!3m2!1svi!2s!4v1527733567718\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Thuận An, Thốt Nốt, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('5', '1', '1', 'Chùa Ông', 'Hoài niệm xưa cũ', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993', 'Chùa Ông nằm ở đường Hai Bà Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Chùa Ông là nơi sinh hoạt tín ngưỡng và văn hoá của người Hoa tại đây. Chùa được Bộ Văn hoá – Thông tin công nhận là di tích kiến trúc nghệ thuật quốc gia năm 1993. Chùa được xây dựng năm 1894 – 1896, với lối kiến trúc độc đáo. Mái chùa lợp ngói âm dương với các gờ bó mái bằng những hàng ngói ống men xanh thẫm, trên bờ nóc có vô số hình nhân đủ màu bằng gốm sứ, lưỡng long chầu nguyệt, chim phụng, ở hai đầu có hai tượng người cầm mặt trời, mặt trăng. Trong chùa thờ Quan Công – một tấm gương về lòng trung hiếu tiết nghĩa và các vị Quan Âm Nam Hải, Thái Bạch tinh quân, Thổ Địa, Đổng Vĩnh,…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7900380452093!2d105.78626891479446!3d10.034177592827776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0629e9e0072c5%3A0x45ff04519813c779!2zQ2jDuWEgw5RuZw!5e0!3m2!1svi!2s!4v1527733586010\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', ' 32, Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('6', '2', '1', 'Quán ăn Hàn Quốc Sam', 'Hoà nhập thế giới', 'Không gian ấm cúng, tinh tế\r\n                Đa dạng các món ăn mang hương vị Hàn Quốc\r\n               Phục vụ vhu đáo, nhiệt tình', 'Đồ ăn ở dạ đa dạng với nhiều món khác nhau cho khách hàng lựa chọn. Một phần lẩu 2 người đồ ăn cũng tương đối chứ không hẳn là nhiều, nhưng nước lẩu thì khá là ngon, còn có món mì tương đen nữa. Kêu 1phần mà ăn cả 2 người mới hết\r\nCó dịp sẽ ghé lại quán ủng hộ tiếp', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.978357620994!2d105.7648397147943!3d10.018644392838372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08831098958e9%3A0x83a667d12440f794!2zUXXDoW4gxINuIEjDoG4gUXXhu5FjIFNhbQ!5e0!3m2!1svi!2s!4v1527733603966\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '474 Đường 30 Tháng 4, Hưng Lợi, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('7', '2', '1', 'Quán Hồi Đó', 'Trở về ngày xưa', 'Quán có không gian kiểu xưa \r\nĐồ ăn khá ngon\r\nGiá ổn\r\nNằm trong hẻm nhưng cũng dễ tìm\r\nCó món lẩu mắn theo cá nhân thì ngon', 'Quán Hồi Đó có kiến trúc xây dựng kiểu nhà Nam Bộ xưa. Nếu là một người thành thị bạn sẽ thích với không gian nơi đây. Ngoài ra quán bán thức ăn khá phong phú, phục vụ cơm trưa và cả lẩu.\r\n              Nếu bạn muốn một vé về tuổi thơ. Thưởng thức những món ăn ngon của thời xưa, được chế biến theo phong cách truyền thống, và ăn bằn những dụng cụ truyền thống của những quán ăn 1975 sang trọng. Thì hãy đến nơi này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.785519641608!2d105.77394781479445!3d10.034549992827467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0881f3bcce005%3A0x89d28cf688a6e80b!2zUXXDoW4gSOG7k2kgxJDDsw!5e0!3m2!1svi!2s!4v1527733619631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '54, Trần Bình Trọng, An Phú, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('8', '2', '1', 'Bún Đậu Mắm Tôm 3 Hiền', 'Thử đồ ăn người Bắc', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người.', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người. Bí quyết tạo nên sự khác biệt của quán chính là cách pha mắm tôm độc quyền. Không quá mặn nồng cũng không quá ngọt, vừa ăn mà mùi thơm của mắm tôm dù chưa ăn nhưng nghe qua đã thấy thèm thuồng. Quán ăn đậm chất Bắc Bộ, theo đánh giá của thực khách. Còn chần chờ gì mà không đến với 3 Hiền để nhanh tay thưởng thức cái cảm giác mới mẻ mà bún đậu mang lại, hòa quyện với vị mắm tôm đậm đà, để lại dư vị khó phai trong lòng khách hàng.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8719411125576!2d105.76796231479443!3d10.02742489283234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0883b537f9f5f%3A0xaba627c09d0c9623!2zQsO6biDEkOG6rXUgTeG6r20gVMO0bSAzIEhp4buBbg!5e0!3m2!1svi!2s!4v1527733637855\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '146A Ba Tháng Hai, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('9', '2', '1', 'Nước Mía Mỹ Tho MT68', 'Đặc sản Mỹ Tho Tiền Giang', 'Trời nóng thì uống gì, ừ thì nước mía chứ còn gì nữa.\r\nLy nước mía ngọt lịm, có thạch khóm, rau câu, mít và không thể nào thiếu được đậu phộng. Tưởng như những thứ đó không hề liên quan nhau, nhưng khí kết hợp lại thì thật tuyệt vời. Nước mía ngọ lịm, chua chua của tắc, mít lại thơm thơm cùng cái vị béo bùi của đậu phộng. Thật tuyệt vời.\r\nNgoài ra ở quán còn có những món ăn vặt nhà quê như: bánh chuối, bánh lá.....', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8564627085348!2d105.77202231479436!3d10.028701392831474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882396e43b3d%3A0x717ec2a4db3f7952!2zTsaw4bubYyBNw61hIE3hu7kgVGhvIE1UNjg!5e0!3m2!1svi!2s!4v1527733658631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Mạc Thiên Tích, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('10', '2', '1', 'Quán Bánh xèo 7 Tới', 'Hương vị đậm đà từng giọt nước mắm', 'Nhắc tới bánh xèo ở Cần Thơ thì phải nói tới bánh xèo đường Cái Sơn Hàng Bàng – Bánh Xèo 7 Tới. Không gian quán rộng, với món bánh xèo thịt vịt ngon có tiếng.', 'Bánh Xèo là một trong những nét đặc trưng nổi bật của ẩm thực miền Tây. Chính vì vậy,về với vùng đất trập trùng sông nước, cây trái xanh tốt bốn mùa này, thực khách khó mà có thể bỏ qua món ăn dân dã mà đậm đà hương vị miền quê này.\r\n             <br>Quán mang phong cách rất bình dân, bước chân vào quán, thực khách như có cảm giác được về thăm nhà của một người bạn nơi chốn quê bình dị. Quán vẫn sử dụng bếp than củi và bếp trấu. Ta có cảm giác hồn quê vương vấn trên từng vật dụng mộc mạc trên bàn, ta như thấy được hòa lẫn trong cái mùi thơm của bánh, mùi thơm của nhân thịt là mùi bếp lửa ấm nồng của những chái bếp mang bóng hình những người bà, người mẹ chốn thôn quê.\r\n             </br>Gọi là món ăn dân dã, vì tất cả nguyên liệu làm bánh đều bắt nguồn từ những thứ có sẵn trong nhà, ngoài vườn như: gạo làm bột, bột nghệ, các loại rau, nấm… Tùy theo sở thích mà người ta cho vào bánh những loại nhân khác nhau: tôm, thịt heo, thịt vịt,…\r\n\r\n          Dù nằm cách trung tâm thành phố Cần Thơ hơn 7 km nhưng quán Bánh xèo 7 Tới luôn là lựa chọn hàng đầu của người dân Cần Thơ cũng như du khách đến với thành phố này mỗi khi muốn thưởng thức món bánh xèo, đặc biệt là bánh xèo củ hũ dừa thịt vịt.\r\n\r\n          Một nét đặc biệt nữa khi thưởng thức món bánh xèo ở đây là các loại rau để cuốn và ăn kèm. Rau để cuốn vẫn là xà lách và cải bẹ xanh. Rau ăn kèm lại phong phú, đa dạng đến bất ngờ. Ngoài các loại rau sống phổ biến trong các món cuốn của người miền Tây như rau thơm, diếp cá, tía tô, húng, quế… đĩa rau ở đây còn có thêm nhiều loại rau ít gặp như lá chiết, bằng lăng, cát lồi…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.087333787697!2d105.74507661479419!3d10.009644792844556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0885d175a92d9%3A0xbf9dc5fa0d07329f!2zUXXDoW4gQsOhbmggeMOobyA3IFThu5tp!5e0!3m2!1svi!2s!4v1527733680225\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '45 Hoàng Quốc Việt, An Bình, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('11', '3', '1', 'Mường Thanh Luxury Cần Thơ', 'Sang trọng là đẳng cấp', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.\r\n          Mỗi phòng tại đây đều được trang bị máy điều hòa không khí và TV màn hình phẳng. Một số phòng có khu vực tiếp khách để thư giãn sau một ngày bận rộn và tầm nhìn ra quang cảnh dòng sông hoặc thành phố. Các phòng đi kèm phòng tắm riêng với bồn rửa vệ sinh (bidet), vòi sen, dép, áo choàng tắm và đồ vệ sinh cá nhân miễn phí.\r\n\r\n          Khách sạn có quầy lễ tân 24 giờ, sảnh khách chung và tiệm làm tóc.\r\n\r\n          Quý khách có thể chơi tennis tại khách sạn. Muong Thanh Luxury Can Tho Hotel nằm trong bán kính 1,2 km từ Bến Ninh Kiều và 7 km từ Chợ nổi Cái Răng. Sân bay gần nhất là Sân bay Cần Thơ, cách khách sạn 13 km. \r\n\r\n          Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.\r\n\r\n          Chúng tôi sử dụng ngôn ngữ của bạn!', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.691346462849!2d105.78822771479449!3d10.042308492822128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a5846ab293%3A0xc849fa3f328edd91!2zS2jDoWNoIHPhuqFuIE3GsOG7nW5nIFRoYW5oIEx1eHVyeSBD4bqnbiBUaMah!5e0!3m2!1svi!2s!4v1527733710710\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('12', '3', '1', 'Victoria Can Tho Resort ', 'Nhẹ nhàng và thư thái', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.\r\n      Các phòng lắp máy điều hòa tại đây được trang trí với sắc be nhạt của vải và nâu của đồ nội thất gỗ sẫm màu. Trong phòng trang bị khu vực ghế ngồi, truyền hình vệ tinh màn hình phẳng và tủ lạnh mini. Một số phòng có ban công riêng. Phòng tắm riêng đi kèm bồn tắm, vòi sen và đồ vệ sinh cá nhân miễn phí.\r\n\r\n     Victoria Can Tho Resort có 7 phòng trị liệu với nhiều liệu pháp mát-xa, bao gồm từ mát-xa kiểu Việt Nam truyền thống cho tới mát-xa chữa bệnh toàn thân. Resort có quầy lễ tân 24 giờ và bàn đặt tour để hỗ trợ khách với nhiều dịch vụ, bao gồm dịch vụ nhận/trả phòng cấp tốc, giữ hành lý và đưa đón sân bay.\r\n\r\n      Victoria Can Tho Resort cách Cầu đi bộ Bến Ninh Kiều 700 m và Sân vận động Cần Thơ cũng như Bảo tàng Cần Thơ 1 km. Sân bay gần nhất là sân bay quốc tế Cần Thơ, cách đó 12 km.\r\n\r\n    Nhà hàng Spices trong khuôn viên nhìn ra Sông Hậu và có khu vực ghế ngồi trong nhà lẫn ngoài trời. Tại đây phục vụ ẩm thực Âu và Việt, được chuẩn bị bởi đầu bếp người Pháp của khách sạn. \r\n\r\n    Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,5 cho kỳ nghỉ dành cho 2 người.\r\n\r\n Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.72729334627!2d105.79134561479455!3d10.039347692824183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a4cdb540cd%3A0x62f4b50f8a858d2a!2zS2jDoWNoIHPhuqFuIFZpY3RvcmlhIEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1527733728753\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('13', '3', '1', 'Vinpearl Can Tho Hotel', 'Ngắm trọn Cần Thơ', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.\r\n        Các phòng nghỉ lắp máy điều hòa tại đây cho tầm nhìn ra dòng sông và/hoặc thành phố. Trong phòng còn được trang bị TV truyền hình cáp và tủ lạnh mini. Phòng tắm riêng đi kèm bồn tắm và vòi sen. Áo choàng tắm và dép cũng được cung cấp trong phòng.\r\n\r\n        Những khách muốn chăm sóc bản thân có thể đến trung tâm chăm sóc sức khỏe và spa cũng như tiệm làm tóc trong khuôn viên. Khách sạn còn có trung tâm thể dục, CLB trẻ em và bàn đặt tour.\r\n\r\n        Nhân viên nói được 2 thứ tiếng tại lễ tân có thể trợ giúp khách với việc thu xếp dịch vụ đưa đón, dịch vụ giặt là, dịch vụ thu đổi ngoại tệ và những yêu cầu khác.\r\n\r\n        Khách sạn còn có dịch vụ cho thuê xe hơi. Vinpearl Can Tho Hotel cách Chợ nổi Cái Răng 3,8 km và Bảo tàng Cần Thơ 2,3 km. Sân bay Rạch Giá cách đó 70 km. \r\n\r\n        Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n     Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.\r\n\r\n     Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.9084146562564!2d105.77264101479432!3d10.024416292834454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08833f000f11f%3A0x7eabead940802b56!2zVmlucGVhcmwgQ-G6p24gVGjGoSBIb3RlbA!5e0!3m2!1svi!2s!4v1527733747499\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '209 Đường 30 Tháng 4, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('14', '3', '1', 'Ninh Kieu Riverside Hotel', 'Thủ phủ quê nhà', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.', 'Ninh Kieu Riverside Hotel tọa lạc tại thành phố Cần Thơ và cách Cầu đi bộ Bến Ninh Kiều chỉ 1 phút dạo bước. Du khách có thể dùng bữa trong nhà hàng hay thư giãn ở quán bar. Khách sạn cung cấp miễn phí Wi-Fi trong toàn khuôn viên và bãi đậu xe riêng tại chỗ.\r\nTất cả các phòng nghỉ tại đây đều được trang bị truyền hình cáp màn hình phẳng, ấm đun nước và phòng tắm riêng kèm vòi sen. Những tiện nghi khác bao gồm dép và đồ vệ sinh cá nhân miễn phí.\r\n\r\nNhân viên song ngữ tại quầy lễ tân 24 giờ có thể hỗ trợ khách với các dịch vụ nhận phòng và trả phòng riêng, thu đổi ngoại tệ cũng như giữ hành lý.\r\n\r\nNinh Kieu Riverside Hotel cách Chợ Đêm 400 m, Bảo tàng Cần Thơ 500 m, Chợ nổi Cái Răng 7 km và sân bay gần nhất là sân bay Rạch Giá 72 km. \r\n\r\nChỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\nCác cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.763826809605!2d105.78745501479453!3d10.036337692826258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x3f70fa9b4ba0895e!2sNinh+Kieu+Riverside+Hotel!5e0!3m2!1svi!2s!4v1527733770529\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2 Hai Bà Trưng st, Tân An, Ninh Kiều, Cần Thơ 900000, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `places` VALUES ('15', '3', '1', 'Ninh Kieu 2 Hotel', 'Trung tâm thành phố', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.', 'Tọa lạc tại thành phố Cần Thơ, cách Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel có trung tâm thể dục, lễ tân 24 giờ và sảnh khách chung. Khách sạn 4 sao này cung cấp Wi-Fi miễn phí.\r\n     Tất cả các phòng nghỉ tại Ninh Kieu 2 Hotel đều có khu vực ghế ngồi và TV truyền hình cáp màn hình phẳng. Các phòng cũng có phòng tắm riêng, tầm nhìn ra quang cảnh thành phố, máy điều hòa và bàn làm việc.\r\n\r\n      Khách sạn cung cấp bữa sáng kiểu Mỹ hàng ngày. Tại đây có nhà hàng ngay trong khuôn viên phục vụ hải sản và ẩm thực Việt Nam.\r\n\r\n     Ninh Kieu 2 Hotel có sân hiên.\r\n\r\n    Gần khách sạn có các điểm tham quan nổi tiếng như trung tâm thương mại Vincom Plaza Hùng Vương, trung tâm thương mại Vincom Plaza Xuân Khánh và Bảo tàng Cần Thơ. Sân bay gần nhất là Sân bay Rạch Giá, cách chỗ nghỉ 72 km. ', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.780440486042!2d105.78387401479443!3d10.03496859282718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x386bdb632835e00e!2zS2jDoWNoIFPhuqFuIE5pbmggS2nhu4F1IDI!5e0!3m2!1svi!2s!4v1527733792692\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '03 Đại lộ Hoà Bình, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 07:00:00', '2018-05-24 07:00:00');

-- ----------------------------
-- Table structure for place_image
-- ----------------------------
DROP TABLE IF EXISTS `place_image`;
CREATE TABLE `place_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_image_id_place_foreign` (`id_place`),
  CONSTRAINT `place_image_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of place_image
-- ----------------------------
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

-- ----------------------------
-- Table structure for place_location
-- ----------------------------
DROP TABLE IF EXISTS `place_location`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `place_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `coor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
<<<<<<< HEAD
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `place_location` (`id`, `id_place`, `coor`, `created_at`, `updated_at`) VALUES
(1, 1, '260', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 2, '120', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 3, '230', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 4, '450', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 5, '430', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 6, '330', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 7, '670', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 8, '780', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 9, '870', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 10, '390', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 11, '660', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(12, 12, '560', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(13, 13, '900', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(14, 14, '870', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(15, 15, '880', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Cấu trúc bảng cho bảng `place_type`
--

=======
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `place_location_id_place_foreign` (`id_place`),
  CONSTRAINT `place_location_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of place_location
-- ----------------------------
INSERT INTO `place_location` VALUES ('1', '1', '260', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('2', '2', '120', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('3', '3', '230', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('4', '4', '450', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('5', '5', '430', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('6', '6', '330', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('7', '7', '670', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('8', '8', '780', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('9', '9', '870', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('10', '10', '390', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('11', '11', '660', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('12', '12', '560', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('13', '13', '900', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('14', '14', '870', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `place_location` VALUES ('15', '15', '880', '2018-05-21 07:00:00', '2018-05-24 07:00:00');

-- ----------------------------
-- Table structure for place_type
-- ----------------------------
DROP TABLE IF EXISTS `place_type`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `place_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
<<<<<<< HEAD
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `place_type` (`id`, `name`, `description`) VALUES
(1, 'Địa điểm du lịch', 'Các địa danh tham quan du lịch'),
(2, 'Ăn uống', 'Các địa điểm ăn uống hấp dẫn'),
(3, 'Khách sạn', 'Các địa điểm nghỉ ngơi thoải mái');
--
-- Cấu trúc bảng cho bảng `travel`
--

=======
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of place_type
-- ----------------------------
INSERT INTO `place_type` VALUES ('1', 'Địa điểm du lịch', 'Các địa danh tham quan du lịch');
INSERT INTO `place_type` VALUES ('2', 'Ăn uống', 'Các địa điểm ăn uống hấp dẫn');
INSERT INTO `place_type` VALUES ('3', 'Khách sạn', 'Các địa điểm nghỉ ngơi thoải mái');

-- ----------------------------
-- Table structure for travel
-- ----------------------------
DROP TABLE IF EXISTS `travel`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `travel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
<<<<<<< HEAD
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `travel` (`id`, `id_place`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 2, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 3, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 4, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 5, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 4, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 5, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 10, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 11, '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Cấu trúc bảng cho bảng `users`
--

=======
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `travel_id_place_foreign` (`id_place`),
  CONSTRAINT `travel_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of travel
-- ----------------------------
INSERT INTO `travel` VALUES ('1', '1', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('2', '2', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('3', '3', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('4', '4', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('5', '5', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('6', '1', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('7', '1', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('8', '4', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('9', '5', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('10', '10', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `travel` VALUES ('11', '11', '2018-05-21 07:00:00', '2018-05-24 07:00:00');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

<<<<<<< HEAD
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_location`
--
=======
-- ----------------------------
-- Records of users
-- ----------------------------
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0

-- ----------------------------
-- Table structure for user_location
-- ----------------------------
DROP TABLE IF EXISTS `user_location`;
CREATE TABLE `user_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
<<<<<<< HEAD
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

INSERT INTO `user_location` (`id`, `coor`, `created_at`, `updated_at`) VALUES
(1, '260', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, '270', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, '760', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, '760', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, '230', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, '160', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_id_city_foreign` (`id_city`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_id_place_foreign` (`id_place`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_id_type_foreign` (`id_type`),
  ADD KEY `places_id_district_foreign` (`id_district`);

--
-- Chỉ mục cho bảng `place_image`
--
ALTER TABLE `place_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_image_id_place_foreign` (`id_place`);

--
-- Chỉ mục cho bảng `place_location`
--
ALTER TABLE `place_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place_location_id_place_foreign` (`id_place`);

--
-- Chỉ mục cho bảng `place_type`
--
ALTER TABLE `place_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_id_place_foreign` (`id_place`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `place_image`
--
ALTER TABLE `place_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `place_location`
--
ALTER TABLE `place_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `place_type`
--
ALTER TABLE `place_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `travel`
--
ALTER TABLE `travel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_location`
--
ALTER TABLE `user_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_id_city_foreign` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_id_district_foreign` FOREIGN KEY (`id_district`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `places_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `place_type` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `place_image`
--
ALTER TABLE `place_image`
  ADD CONSTRAINT `place_image_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `place_location`
--
ALTER TABLE `place_location`
  ADD CONSTRAINT `place_location_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
=======
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_location
-- ----------------------------
INSERT INTO `user_location` VALUES ('1', '260', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `user_location` VALUES ('2', '270', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `user_location` VALUES ('3', '760', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `user_location` VALUES ('4', '760', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `user_location` VALUES ('5', '230', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
INSERT INTO `user_location` VALUES ('6', '160', '2018-05-21 07:00:00', '2018-05-24 07:00:00');
>>>>>>> 8679cf31172a01b6de35a382d7af529cac5f73c0
