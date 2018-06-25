-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 25, 2018 lúc 09:34 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuctap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
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

--
-- Đang đổ dữ liệu cho bảng `districts`
--

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `id_place`, `star`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2.00, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 2, 4.00, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 3, 3.50, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 4, 2.50, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 5, 1.50, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 6, 5.00, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 7, 4.00, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 8, 1.00, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 9, 2.00, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 10, 3.50, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 11, 3.50, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(12, 12, 5.00, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(13, 13, 3.00, 1, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(14, 14, 2.00, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(15, 15, 1.00, 0, '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(16, 1, 5.00, 1, '2018-06-03 17:00:00', '2018-06-03 17:00:00'),
(17, 1, 4.00, 1, '2018-06-03 17:00:00', '2018-06-03 17:00:00'),
(18, 1, 5.00, 1, NULL, NULL),
(19, 1, 5.00, 1, NULL, NULL),
(20, 1, 4.00, 1, NULL, NULL),
(21, 1, 4.00, 1, NULL, NULL),
(22, 1, 3.00, 1, NULL, NULL),
(23, 1, 5.00, 1, NULL, NULL),
(24, 1, 0.50, 1, NULL, NULL),
(25, 1, 4.50, 1, NULL, NULL),
(26, 14, 4.00, 0, NULL, NULL),
(27, 14, 4.50, 0, NULL, NULL),
(28, 14, 4.50, 0, NULL, NULL),
(29, 14, 2.50, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_district` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `places`
--

INSERT INTO `places` (`id`, `id_type`, `id_district`, `name`, `slogan`, `short_des`, `full_des`, `map`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Chợ nổi Cái Răng', 'Nét văn hoá cổ xưa', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>', '<p><strong><em>Chợ nổi C&aacute;i Răng<s> </s></em></strong><s><em>c&aacute;ch trung t&acirc;m Th&agrave;nh phố Cần Thơ khoảng 6 km đường bộ v&agrave; mất 30 ph&uacute;t khi ch&uacute;ng ta đi bằng thuyền từ Bến Ninh Kiều. Theo truyền thuyết, t&ecirc;n gọi C&aacute;i Răng xuất ph&aacute;t từ c&acirc;u chuyện hồi đầu thời khẩn hoang c&oacute; con c&aacute; sấu rất lớn dạt v&agrave;o đ&acirc;y, răng của n&oacute; cắm v&agrave;o miệng đất n&agrave;y. Sở dĩ nơi đ&acirc;y gọi l&agrave; chợ nổi v&igrave; n&oacute; tr&ocirc;i nổi tr&ecirc;n s&ocirc;ng.</em></s><br />\r\n<a href=\"http://aaaa\">Đến đ&acirc;y du kh&aacute;ch sẽ được cảm nhận hết những n&eacute;t văn h&oacute;a đặc trưng, độc đ&aacute;o của v&ugrave;ng s&ocirc;ng nước. V&agrave; chợ nổi như l&agrave; một phần kh&ocirc;ng thể thiếu trong n&eacute;t văn h&oacute;a m</a>iệt vườn của người miền T&acirc;y Nam Bộ. Mỗi s&aacute;ng, h&agrave;ng trăm chiếc thuyền lớn b&eacute; đậu san s&aacute;t, tr&ecirc;n thuyền treo b&aacute;n sản vật b&aacute;n kh&ocirc;ng cần phải rao h&agrave;ng như c&aacute;c chợ tr&ecirc;n đất liền. Đến với chợ v&agrave;o mỗi s&aacute;ng, ngo&agrave;i những đặc sản nơi đ&acirc;y muốn mua, du kh&aacute;ch c&ograve;n c&oacute; thể ăn s&aacute;ng, trải nghiệm cuộc sống l&ecirc;nh đ&ecirc;nh th&uacute; vị tr&ecirc;n thuyền.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.1802349064924!2d105.74193531479423!3d10.001966392849832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089afb6342d8d%3A0xcdb2b569f5f13898!2zQ2jhu6MgTuG7lWkgQ8OhaSBSxINuZw!5e0!3m2!1svi!2s!4v1527733455653\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Lê Bình, Cái Răng, Cần Thơ', '2018-05-21 00:00:00', '2018-06-21 01:32:52'),
(2, 1, 1, 'Bến Ninh Kiều', 'Một nét văn hoá của người Cần Thơ', '<p>Cần Thơ c&oacute; bến Ninh Kiều/C&oacute; d&ograve;ng s&ocirc;ng đẹp với nhiều giai nh&acirc;n&quot;...Bến Ninh Kiều nay được người d&acirc;n xứ T&acirc;y Đ&ocirc; gọi l&agrave; c&ocirc;ng vi&ecirc;n Ninh Kiều, l&agrave; một bến nước, địa danh du lịch v&agrave; văn h&oacute;a được h&igrave;nh th&agrave;nh từ thế kỷ 19</p>', '<p>Ca dao từng c&oacute; cầu: &quot;Cần Thơ c&oacute; bến Ninh Kiều/C&oacute; d&ograve;ng s&ocirc;ng đẹp với nhiều giai nh&acirc;n&quot;...Bến Ninh Kiều nay được người d&acirc;n xứ T&acirc;y Đ&ocirc; gọi l&agrave; c&ocirc;ng vi&ecirc;n Ninh Kiều, l&agrave; một bến nước, địa danh du lịch v&agrave; văn h&oacute;a được h&igrave;nh th&agrave;nh từ thế kỷ 19.Bến Ninh Kiều, nơi nh&igrave;n ra d&ograve;ng Hậu Giang dạt d&agrave;o ph&ugrave; sa, nằm ở vị tr&iacute; đắc địa, giao thoa hữu ngạn s&ocirc;ng Hậu, ngay ng&atilde; ba s&ocirc;ng Hậu v&agrave; s&ocirc;ng Cần Thơ, gần trung t&acirc;m th&agrave;nh phố Cần Thơ.<br />\r\nĐiều hấp dẫn du kh&aacute;ch của bến l&agrave; nh&agrave; thủy tạ tr&ecirc;n s&ocirc;ng. Nh&agrave; thủy tạ l&agrave; một con t&agrave;u nổi bồng bềnh nối bờ bằng một đoạn cầu, hai b&ecirc;n cầu c&oacute; lan can, kh&aacute;ch c&oacute; thể dừng ch&acirc;n đứng h&oacute;ng gi&oacute;. Nh&agrave; nổi n&agrave;y ch&iacute;nh l&agrave; nh&agrave; h&agrave;ng ăn uống c&oacute; hai tầng với h&agrave;ng trăm chỗ ngồi. Kh&aacute;ch tới nh&agrave; nổi, gọi ly nước ngọt, hoặc một xị rượu nếp than nhắm với m&oacute;n lẩu lươn đặc sản địa phương. Vừa ăn uống, vừa ngắm cảnh s&ocirc;ng Hậu. Tr&ecirc;n s&ocirc;ng đủ loại thuyền ngược thuyền xu&ocirc;i tấp nập. Bến c&ograve;n c&oacute; c&ocirc;ng vi&ecirc;n với nhiều loại c&acirc;y qu&yacute;, xanh mướt, l&agrave; nơi vui chơi v&agrave; sinh hoạt của người d&acirc;n.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3928.8141814257274!2d105.7858675!3d10.0321875!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a06298aae43e71%3A0xc6a64bdac582285d!2zQuG6v24gTmluaCBLaeG7gXU!5e0!3m2!1svi!2s!4v1527733506977\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '106 Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-06-21 01:33:51'),
(3, 1, 1, 'Làng du lịch Mỹ Khánh', 'Du lịch sinh thái trong lòng Cần Thơ', '<p>L&agrave;ng Du Lịch Mỹ Kh&aacute;nh thuộc huyện Phong Điền, nằm c&aacute;ch trung t&acirc;m TP Cần Thơ 10km, tr&ecirc;n tuyến Lộ V&ograve;ng Cung lịch sử v&agrave; ở giữa hai chợ nổi C&aacute;i Răng v&agrave; Phong Điền. L&agrave;ng du lịch Mỹ Kh&aacute;nh l&agrave; nơi hội tụ những tinh hoa văn h&oacute;a s&ocirc;ng nước miệt vườn.</p>', '<p>L&agrave;ng Du Lịch Mỹ Kh&aacute;nh thuộc huyện Phong Điền, nằm c&aacute;ch trung t&acirc;m TP Cần Thơ 10km, tr&ecirc;n tuyến Lộ V&ograve;ng Cung lịch sử v&agrave; ở giữa hai chợ nổi C&aacute;i Răng v&agrave; Phong Điền. L&agrave;ng du lịch Mỹ Kh&aacute;nh l&agrave; nơi hội tụ những tinh hoa văn h&oacute;a s&ocirc;ng nước miệt vườn. Những trải nghiệm du kh&aacute;ch kh&ocirc;ng thể bỏ qua ở đ&acirc;y l&agrave; thưởng thức hơn 20 chủng loại tr&aacute;i c&acirc;y trong miệt vườn rộng lớn, tham quan l&agrave;ng nghề truyền thống, nấu rượu, tr&aacute;ng b&aacute;nh với người d&acirc;n bản địa, thưởng thức những m&oacute;n ăn đặc sản, tham quan nh&agrave; cổ Nam Bộ v&agrave; được nghe những b&agrave;i h&aacute;t vọng cổ giao duy&ecirc;n từ m&aacute;y h&aacute;t đĩa quay c&oacute; tuổi thọ đ&atilde; 80 năm.<br />\r\nĐến với L&agrave;ng Du Lịch Mỹ Kh&aacute;nh, qu&yacute; kh&aacute;ch thỏa sức kh&aacute;m ph&aacute;, t&igrave;m hiểu về đời sống cư d&acirc;n miệt vườn như: tham quan Nh&agrave; cổ Nam bộ, thưởng thức chương tr&igrave;nh văn nghệ &ldquo;đờn ca t&agrave;i tử&rdquo;, &ldquo;một ng&agrave;y l&agrave;m Điền Chủ&rdquo; với bữa cơm điền chủ, &ldquo;một ng&agrave;y l&agrave;m n&ocirc;ng d&acirc;n&rdquo;, &ldquo;t&aacute;t mương bắt c&aacute;&hellip;&rdquo;, tham quan l&agrave;ng nghề văn h&oacute;a truyền thống, vườn c&acirc;y ăn tr&aacute;i, c&aacute;c dịch vụ tại chỗ như đi xe ngựa, bơi thuyền, taxi điện, đua heo, đua ch&oacute;, xiếc khỉ, c&acirc;u c&aacute; sấu&hellip;v&agrave; nhiều chương tr&igrave;nh kh&aacute;c theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.3355796516753!2d105.7043455147941!3d9.989113892858635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a089ae6c592dbb%3A0x5475c9775633f9fe!2zTMOgbmcgRHUgbOG7i2NoIE3hu7kgS2jDoW5o!5e0!3m2!1svi!2s!4v1527733527287\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '335 Lộ Vòng Cung, Mỹ Khánh, Phong Điền, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-06-21 01:34:22'),
(4, 1, 1, 'Vườn cò Bằng Lăng', 'Hoà mình với thiên nhiên', '<p>Vườn c&ograve; Bằng Lăng thuộc ấp Thới B&igrave;nh, huyện Thốt Nốt, Tp Cần Thơ. Vườn c&ograve; Bằng Lăng hiện đang l&agrave; một trong những s&acirc;n chim lớn nhất nơi miệt vườn n&agrave;y.</p>', '<p>Tr&ecirc;n đường từ Cần Thơ về th&agrave;nh phố Long Xuy&ecirc;n, qua khỏi thị trấn Thốt Nốt chừng 5 km l&agrave; đến vườn c&ograve; Bằng Lăng. Du kh&aacute;ch đến thăm vườn c&ograve; n&agrave;y sẽ được chi&ecirc;m ngưỡng thỏa th&iacute;ch v&ocirc; số c&aacute;c loại c&ograve; (c&ograve; trắng, c&ograve; x&aacute;m, c&ograve; đen, cồng cộc&hellip;) đang chao c&aacute;nh v&agrave; s&agrave; xuống đậu trắng x&oacute;a những những c&agrave;nh tr&uacute;c, đong đưa theo chiều gi&oacute;. Khi chiều về, quanh khu vực n&agrave;y c&oacute; &acirc;m thanh văng vẳng tiếng những con c&ograve; đang rối r&iacute;t gọi đ&agrave;n&hellip;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925.7459923699903!2d105.50308531479638!3d10.282038692658071!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310a767e831c7399%3A0xf1d584c069d473eb!2zVsaw4budbiBjw7IgQuG6sW5nIEzEg25n!5e0!3m2!1svi!2s!4v1527733567718\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Thuận An, Thốt Nốt, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-06-21 01:34:48'),
(5, 1, 1, 'Chùa Ông', 'Hoài niệm xưa cũ', '<p>Ch&ugrave;a &Ocirc;ng nằm ở đường Hai B&agrave; Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Ch&ugrave;a &Ocirc;ng l&agrave; nơi sinh hoạt t&iacute;n ngưỡng v&agrave; văn ho&aacute; của người Hoa tại đ&acirc;y. Ch&ugrave;a được Bộ Văn ho&aacute; &ndash; Th&ocirc;ng tin c&ocirc;ng nhận l&agrave; di t&iacute;ch kiến tr&uacute;c nghệ thuật quốc gia năm 1993</p>', '<p>Ch&ugrave;a &Ocirc;ng nằm ở đường Hai B&agrave; Trưng, Quận Ninh Kiều, Tp. Cần Thơ. Ch&ugrave;a &Ocirc;ng l&agrave; nơi sinh hoạt t&iacute;n ngưỡng v&agrave; văn ho&aacute; của người Hoa tại đ&acirc;y. Ch&ugrave;a được Bộ Văn ho&aacute; &ndash; Th&ocirc;ng tin c&ocirc;ng nhận l&agrave; di t&iacute;ch kiến tr&uacute;c nghệ thuật quốc gia năm 1993. Ch&ugrave;a được x&acirc;y dựng năm 1894 &ndash; 1896, với lối kiến tr&uacute;c độc đ&aacute;o. M&aacute;i ch&ugrave;a lợp ng&oacute;i &acirc;m dương với c&aacute;c gờ b&oacute; m&aacute;i bằng những h&agrave;ng ng&oacute;i ống men xanh thẫm, tr&ecirc;n bờ n&oacute;c c&oacute; v&ocirc; số h&igrave;nh nh&acirc;n đủ m&agrave;u bằng gốm sứ, lưỡng long chầu nguyệt, chim phụng, ở hai đầu c&oacute; hai tượng người cầm mặt trời, mặt trăng. Trong ch&ugrave;a thờ Quan C&ocirc;ng &ndash; một tấm gương về l&ograve;ng trung hiếu tiết nghĩa v&agrave; c&aacute;c vị Quan &Acirc;m Nam Hải, Th&aacute;i Bạch tinh qu&acirc;n, Thổ Địa, Đổng Vĩnh,&hellip;</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.7900380452093!2d105.78626891479446!3d10.034177592827776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0629e9e0072c5%3A0x45ff04519813c779!2zQ2jDuWEgw5RuZw!5e0!3m2!1svi!2s!4v1527733586010\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '32, Hai Bà Trưng, Tân An, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-06-21 01:35:37'),
(6, 2, 1, 'Quán ăn Hàn Quốc Sam', 'Hoà nhập thế giới', 'Không gian ấm cúng, tinh tế\r\n                Đa dạng các món ăn mang hương vị Hàn Quốc\r\n               Phục vụ vhu đáo, nhiệt tình', 'Đồ ăn ở dạ đa dạng với nhiều món khác nhau cho khách hàng lựa chọn. Một phần lẩu 2 người đồ ăn cũng tương đối chứ không hẳn là nhiều, nhưng nước lẩu thì khá là ngon, còn có món mì tương đen nữa. Kêu 1phần mà ăn cả 2 người mới hết\r\nCó dịp sẽ ghé lại quán ủng hộ tiếp', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.978357620994!2d105.7648397147943!3d10.018644392838372!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08831098958e9%3A0x83a667d12440f794!2zUXXDoW4gxINuIEjDoG4gUXXhu5FjIFNhbQ!5e0!3m2!1svi!2s!4v1527733603966\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '474 Đường 30 Tháng 4, Hưng Lợi, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 2, 1, 'Quán Hồi Đó', 'Trở về ngày xưa', 'Quán có không gian kiểu xưa \r\nĐồ ăn khá ngon\r\nGiá ổn\r\nNằm trong hẻm nhưng cũng dễ tìm\r\nCó món lẩu mắn theo cá nhân thì ngon', 'Quán Hồi Đó có kiến trúc xây dựng kiểu nhà Nam Bộ xưa. Nếu là một người thành thị bạn sẽ thích với không gian nơi đây. Ngoài ra quán bán thức ăn khá phong phú, phục vụ cơm trưa và cả lẩu.\r\n              Nếu bạn muốn một vé về tuổi thơ. Thưởng thức những món ăn ngon của thời xưa, được chế biến theo phong cách truyền thống, và ăn bằn những dụng cụ truyền thống của những quán ăn 1975 sang trọng. Thì hãy đến nơi này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.785519641608!2d105.77394781479445!3d10.034549992827467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0881f3bcce005%3A0x89d28cf688a6e80b!2zUXXDoW4gSOG7k2kgxJDDsw!5e0!3m2!1svi!2s!4v1527733619631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '54, Trần Bình Trọng, An Phú, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 2, 1, 'Bún Đậu Mắm Tôm 3 Hiền', 'Thử đồ ăn người Bắc', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người.', 'Một phần Bún Đậu Mắm Tôm 3 Hiền gồm: Chả cá, đậu hủ chiên giòn, thịt luộc cắt lát mỏng, thơm cắt sợi, rau sống, dưa leo và bánh tráng để cuốn vào, chấm với nước mắm pha thơm ngon mê ngất lòng người. Bí quyết tạo nên sự khác biệt của quán chính là cách pha mắm tôm độc quyền. Không quá mặn nồng cũng không quá ngọt, vừa ăn mà mùi thơm của mắm tôm dù chưa ăn nhưng nghe qua đã thấy thèm thuồng. Quán ăn đậm chất Bắc Bộ, theo đánh giá của thực khách. Còn chần chờ gì mà không đến với 3 Hiền để nhanh tay thưởng thức cái cảm giác mới mẻ mà bún đậu mang lại, hòa quyện với vị mắm tôm đậm đà, để lại dư vị khó phai trong lòng khách hàng.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8719411125576!2d105.76796231479443!3d10.02742489283234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0883b537f9f5f%3A0xaba627c09d0c9623!2zQsO6biDEkOG6rXUgTeG6r20gVMO0bSAzIEhp4buBbg!5e0!3m2!1svi!2s!4v1527733637855\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '146A Ba Tháng Hai, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 2, 1, 'Nước Mía Mỹ Tho MT68', 'Đặc sản Mỹ Tho Tiền Giang', 'Trời nóng thì uống gì, ừ thì nước mía chứ còn gì nữa.\r\nLy nước mía ngọt lịm, có thạch khóm, rau câu, mít và không thể nào thiếu được đậu phộng. Tưởng như những thứ đó không hề liên quan nhau, nhưng khí kết hợp lại thì thật tuyệt vời. Nước mía ngọ lịm, chua chua của tắc, mít lại thơm thơm cùng cái vị béo bùi của đậu phộng. Thật tuyệt vời.\r\nNgoài ra ở quán còn có những món ăn vặt nhà quê như: bánh chuối, bánh lá.....', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.8564627085348!2d105.77202231479436!3d10.028701392831474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882396e43b3d%3A0x717ec2a4db3f7952!2zTsaw4bubYyBNw61hIE3hu7kgVGhvIE1UNjg!5e0!3m2!1svi!2s!4v1527733658631\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Mạc Thiên Tích, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 2, 1, 'Quán Bánh xèo 7 Tới', 'Hương vị đậm đà từng giọt nước mắm', 'Nhắc tới bánh xèo ở Cần Thơ thì phải nói tới bánh xèo đường Cái Sơn Hàng Bàng – Bánh Xèo 7 Tới. Không gian quán rộng, với món bánh xèo thịt vịt ngon có tiếng.', 'Bánh Xèo là một trong những nét đặc trưng nổi bật của ẩm thực miền Tây. Chính vì vậy,về với vùng đất trập trùng sông nước, cây trái xanh tốt bốn mùa này, thực khách khó mà có thể bỏ qua món ăn dân dã mà đậm đà hương vị miền quê này.\r\n             <br>Quán mang phong cách rất bình dân, bước chân vào quán, thực khách như có cảm giác được về thăm nhà của một người bạn nơi chốn quê bình dị. Quán vẫn sử dụng bếp than củi và bếp trấu. Ta có cảm giác hồn quê vương vấn trên từng vật dụng mộc mạc trên bàn, ta như thấy được hòa lẫn trong cái mùi thơm của bánh, mùi thơm của nhân thịt là mùi bếp lửa ấm nồng của những chái bếp mang bóng hình những người bà, người mẹ chốn thôn quê.\r\n             </br>Gọi là món ăn dân dã, vì tất cả nguyên liệu làm bánh đều bắt nguồn từ những thứ có sẵn trong nhà, ngoài vườn như: gạo làm bột, bột nghệ, các loại rau, nấm… Tùy theo sở thích mà người ta cho vào bánh những loại nhân khác nhau: tôm, thịt heo, thịt vịt,…\r\n\r\n          Dù nằm cách trung tâm thành phố Cần Thơ hơn 7 km nhưng quán Bánh xèo 7 Tới luôn là lựa chọn hàng đầu của người dân Cần Thơ cũng như du khách đến với thành phố này mỗi khi muốn thưởng thức món bánh xèo, đặc biệt là bánh xèo củ hũ dừa thịt vịt.\r\n\r\n          Một nét đặc biệt nữa khi thưởng thức món bánh xèo ở đây là các loại rau để cuốn và ăn kèm. Rau để cuốn vẫn là xà lách và cải bẹ xanh. Rau ăn kèm lại phong phú, đa dạng đến bất ngờ. Ngoài các loại rau sống phổ biến trong các món cuốn của người miền Tây như rau thơm, diếp cá, tía tô, húng, quế… đĩa rau ở đây còn có thêm nhiều loại rau ít gặp như lá chiết, bằng lăng, cát lồi…', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.087333787697!2d105.74507661479419!3d10.009644792844556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0885d175a92d9%3A0xbf9dc5fa0d07329f!2zUXXDoW4gQsOhbmggeMOobyA3IFThu5tp!5e0!3m2!1svi!2s!4v1527733680225\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '45 Hoàng Quốc Việt, An Bình, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 3, 1, 'Mường Thanh Luxury Cần Thơ', 'Sang trọng là đẳng cấp', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.', 'Chỗ nghỉ này cách bãi biển 2 phút đi bộ. Muong Thanh Luxury Can Tho Hotel cung cấp chỗ nghỉ tại thành phố Cần Thơ và có Wi-Fi miễn phí, trung tâm spa cũng như hồ bơi ngoài trời và quầy bar trong khuôn viên.\r\n          Mỗi phòng tại đây đều được trang bị máy điều hòa không khí và TV màn hình phẳng. Một số phòng có khu vực tiếp khách để thư giãn sau một ngày bận rộn và tầm nhìn ra quang cảnh dòng sông hoặc thành phố. Các phòng đi kèm phòng tắm riêng với bồn rửa vệ sinh (bidet), vòi sen, dép, áo choàng tắm và đồ vệ sinh cá nhân miễn phí.\r\n\r\n          Khách sạn có quầy lễ tân 24 giờ, sảnh khách chung và tiệm làm tóc.\r\n\r\n          Quý khách có thể chơi tennis tại khách sạn. Muong Thanh Luxury Can Tho Hotel nằm trong bán kính 1,2 km từ Bến Ninh Kiều và 7 km từ Chợ nổi Cái Răng. Sân bay gần nhất là Sân bay Cần Thơ, cách khách sạn 13 km. \r\n\r\n          Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.\r\n\r\n          Chúng tôi sử dụng ngôn ngữ của bạn!', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.691346462849!2d105.78822771479449!3d10.042308492822128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a5846ab293%3A0xc849fa3f328edd91!2zS2jDoWNoIHPhuqFuIE3GsOG7nW5nIFRoYW5oIEx1eHVyeSBD4bqnbiBUaMah!5e0!3m2!1svi!2s!4v1527733710710\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(12, 3, 1, 'Victoria Can Tho Resort ', 'Nhẹ nhàng và thư thái', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.', 'Nằm bên bờ Sông Hậu, Victoria Can Tho Resort cung cấp chỗ nghỉ đạt chuẩn 4 sao tại một góc yên tĩnh của thành phố Cần Thơ. Với kiến ​​trúc kiểu thuộc địa, resort nằm giữa các khu vườn với những loại cây ngoại lai, nơi du khách có thể thư giãn và nhâm nhi đồ uống trong lúc tắm nắng bên hồ bơi ngoài trời.\r\n      Các phòng lắp máy điều hòa tại đây được trang trí với sắc be nhạt của vải và nâu của đồ nội thất gỗ sẫm màu. Trong phòng trang bị khu vực ghế ngồi, truyền hình vệ tinh màn hình phẳng và tủ lạnh mini. Một số phòng có ban công riêng. Phòng tắm riêng đi kèm bồn tắm, vòi sen và đồ vệ sinh cá nhân miễn phí.\r\n\r\n     Victoria Can Tho Resort có 7 phòng trị liệu với nhiều liệu pháp mát-xa, bao gồm từ mát-xa kiểu Việt Nam truyền thống cho tới mát-xa chữa bệnh toàn thân. Resort có quầy lễ tân 24 giờ và bàn đặt tour để hỗ trợ khách với nhiều dịch vụ, bao gồm dịch vụ nhận/trả phòng cấp tốc, giữ hành lý và đưa đón sân bay.\r\n\r\n      Victoria Can Tho Resort cách Cầu đi bộ Bến Ninh Kiều 700 m và Sân vận động Cần Thơ cũng như Bảo tàng Cần Thơ 1 km. Sân bay gần nhất là sân bay quốc tế Cần Thơ, cách đó 12 km.\r\n\r\n    Nhà hàng Spices trong khuôn viên nhìn ra Sông Hậu và có khu vực ghế ngồi trong nhà lẫn ngoài trời. Tại đây phục vụ ẩm thực Âu và Việt, được chuẩn bị bởi đầu bếp người Pháp của khách sạn. \r\n\r\n    Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 9,5 cho kỳ nghỉ dành cho 2 người.\r\n\r\n Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.72729334627!2d105.79134561479455!3d10.039347692824183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a4cdb540cd%3A0x62f4b50f8a858d2a!2zS2jDoWNoIHPhuqFuIFZpY3RvcmlhIEPhuqduIFRoxqE!5e0!3m2!1svi!2s!4v1527733728753\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Cái Khế, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(13, 3, 1, 'Vinpearl Can Tho Hotel', 'Ngắm trọn Cần Thơ', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.', 'Cách Bến Ninh Kiều chỉ 2,4 km, tòa nhà trắng Vinpearl Can Tho Hotel có hồ bơi ngoài trời tạo cảm giác dễ chịu. Khách ở khách sạn này có thể thưởng thức hàng loạt các món ăn địa phương và quốc tế tại nhà hàng trong khuôn viên hoặc chỉ đơn giản là thư giãn với đồ uống tùy chọn ở quầy bar. Du khách có thể lướt Internet bằng Wi-Fi miễn phí toàn khách sạn.\r\n        Các phòng nghỉ lắp máy điều hòa tại đây cho tầm nhìn ra dòng sông và/hoặc thành phố. Trong phòng còn được trang bị TV truyền hình cáp và tủ lạnh mini. Phòng tắm riêng đi kèm bồn tắm và vòi sen. Áo choàng tắm và dép cũng được cung cấp trong phòng.\r\n\r\n        Những khách muốn chăm sóc bản thân có thể đến trung tâm chăm sóc sức khỏe và spa cũng như tiệm làm tóc trong khuôn viên. Khách sạn còn có trung tâm thể dục, CLB trẻ em và bàn đặt tour.\r\n\r\n        Nhân viên nói được 2 thứ tiếng tại lễ tân có thể trợ giúp khách với việc thu xếp dịch vụ đưa đón, dịch vụ giặt là, dịch vụ thu đổi ngoại tệ và những yêu cầu khác.\r\n\r\n        Khách sạn còn có dịch vụ cho thuê xe hơi. Vinpearl Can Tho Hotel cách Chợ nổi Cái Răng 3,8 km và Bảo tàng Cần Thơ 2,3 km. Sân bay Rạch Giá cách đó 70 km. \r\n\r\n        Chỗ nghỉ này là một trong những vị trí được đánh giá tốt nhất ở Cần Thơ! Khách thích nơi đây hơn so với những chỗ nghỉ khác trong khu vực.\r\n\r\n     Các cặp đôi đặc biệt thích địa điểm này — họ cho điểm 8,8 cho kỳ nghỉ dành cho 2 người.\r\n\r\n     Chỗ nghỉ này cũng được đánh giá là đáng giá tiền nhất ở Cần Thơ! Khách sẽ tiết kiệm được nhiều hơn so với nghỉ tại những chỗ nghỉ khác ở thành phố này.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.9084146562564!2d105.77264101479432!3d10.024416292834454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08833f000f11f%3A0x7eabead940802b56!2zVmlucGVhcmwgQ-G6p24gVGjGoSBIb3RlbA!5e0!3m2!1svi!2s!4v1527733747499\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '209 Đường 30 Tháng 4, Xuân Khánh, Ninh Kiều, Cần Thơ', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(14, 3, 1, 'Ninh Kieu Riverside Hotel', 'Thủ phủ quê nhà', '<p>Ninh Kieu Riverside Hotel tọa lạc tại th&agrave;nh phố Cần Thơ v&agrave; c&aacute;ch Cầu đi bộ Bến Ninh Kiều chỉ 1 ph&uacute;t dạo bước. Du kh&aacute;ch c&oacute; thể d&ugrave;ng bữa trong nh&agrave; h&agrave;ng hay thư gi&atilde;n ở qu&aacute;n bar. Kh&aacute;ch sạn cung cấp miễn ph&iacute; Wi-Fi trong to&agrave;n khu&ocirc;n vi&ecirc;n v&agrave; b&atilde;i đậu xe ri&ecirc;ng tại chỗ.</p>', '<p>Ninh Kieu Riverside Hotel tọa lạc tại th&agrave;nh phố Cần Thơ v&agrave; c&aacute;ch Cầu đi bộ Bến Ninh Kiều chỉ 1 ph&uacute;t dạo bước. Du kh&aacute;ch c&oacute; thể d&ugrave;ng bữa trong nh&agrave; h&agrave;ng hay thư gi&atilde;n ở qu&aacute;n bar. Kh&aacute;ch sạn cung cấp miễn ph&iacute; Wi-Fi trong to&agrave;n khu&ocirc;n vi&ecirc;n v&agrave; b&atilde;i đậu xe ri&ecirc;ng tại chỗ. Tất cả c&aacute;c ph&ograve;ng nghỉ tại đ&acirc;y đều được trang bị truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng, ấm đun nước v&agrave; ph&ograve;ng tắm ri&ecirc;ng k&egrave;m v&ograve;i sen. Những tiện nghi kh&aacute;c bao gồm d&eacute;p v&agrave; đồ vệ sinh c&aacute; nh&acirc;n miễn ph&iacute;. Nh&acirc;n vi&ecirc;n song ngữ tại quầy lễ t&acirc;n 24 giờ c&oacute; thể hỗ trợ kh&aacute;ch với c&aacute;c dịch vụ nhận ph&ograve;ng v&agrave; trả ph&ograve;ng ri&ecirc;ng, thu đổi ngoại tệ cũng như giữ h&agrave;nh l&yacute;. Ninh Kieu Riverside Hotel c&aacute;ch Chợ Đ&ecirc;m 400 m, Bảo t&agrave;ng Cần Thơ 500 m, Chợ nổi C&aacute;i Răng 7 km v&agrave; s&acirc;n bay gần nhất l&agrave; s&acirc;n bay Rạch Gi&aacute; 72 km. Chỗ nghỉ n&agrave;y l&agrave; một trong những vị tr&iacute; được đ&aacute;nh gi&aacute; tốt nhất ở C&acirc;̀n Thơ! Kh&aacute;ch th&iacute;ch nơi đ&acirc;y hơn so với những chỗ nghỉ kh&aacute;c trong khu vực. C&aacute;c cặp đ&ocirc;i đặc biệt th&iacute;ch địa điểm n&agrave;y &mdash; họ cho điểm 8,8 cho kỳ nghỉ d&agrave;nh cho 2 người.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.763826809605!2d105.78745501479453!3d10.036337692826258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x3f70fa9b4ba0895e!2sNinh+Kieu+Riverside+Hotel!5e0!3m2!1svi!2s!4v1527733770529\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2 Hai Bà Trưng st, Tân An, Ninh Kiều, Cần Thơ 900000, Việt Nam', '2018-05-21 00:00:00', '2018-06-21 01:31:41'),
(15, 3, 1, 'Ninh Kieu 2 Hotel', 'Trung tâm thành phố', '<p>Tọa lạc tại th&agrave;nh phố Cần Thơ, c&aacute;ch Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel c&oacute; trung t&acirc;m thể dục, lễ t&acirc;n 24 giờ v&agrave; sảnh kh&aacute;ch chung. Kh&aacute;ch sạn 4 sao n&agrave;y cung cấp Wi-Fi miễn ph&iacute;.</p>', '<p>Tọa lạc tại th&agrave;nh phố Cần Thơ, c&aacute;ch Bến Ninh Kiều 300 m, Ninh Kieu 2 Hotel c&oacute; trung t&acirc;m thể dục, lễ t&acirc;n 24 giờ v&agrave; sảnh kh&aacute;ch chung. Kh&aacute;ch sạn 4 sao n&agrave;y cung cấp Wi-Fi miễn ph&iacute;. Tất cả c&aacute;c ph&ograve;ng nghỉ tại Ninh Kieu 2 Hotel đều c&oacute; khu vực ghế ngồi v&agrave; TV truyền h&igrave;nh c&aacute;p m&agrave;n h&igrave;nh phẳng. C&aacute;c ph&ograve;ng cũng c&oacute; ph&ograve;ng tắm ri&ecirc;ng, tầm nh&igrave;n ra quang cảnh th&agrave;nh phố, m&aacute;y điều h&ograve;a v&agrave; b&agrave;n l&agrave;m việc. Kh&aacute;ch sạn cung cấp bữa s&aacute;ng kiểu Mỹ h&agrave;ng ng&agrave;y. Tại đ&acirc;y c&oacute; nh&agrave; h&agrave;ng ngay trong khu&ocirc;n vi&ecirc;n phục vụ hải sản v&agrave; ẩm thực Việt Nam. Ninh Kieu 2 Hotel c&oacute; s&acirc;n hi&ecirc;n. Gần kh&aacute;ch sạn c&oacute; c&aacute;c điểm tham quan nổi tiếng như trung t&acirc;m thương mại Vincom Plaza H&ugrave;ng Vương, trung t&acirc;m thương mại Vincom Plaza Xu&acirc;n Kh&aacute;nh v&agrave; Bảo t&agrave;ng Cần Thơ. S&acirc;n bay gần nhất l&agrave; S&acirc;n bay Rạch Gi&aacute;, c&aacute;ch chỗ nghỉ 72 km.</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.780440486042!2d105.78387401479443!3d10.03496859282718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a062a3c85bbcc5%3A0x386bdb632835e00e!2zS2jDoWNoIFPhuqFuIE5pbmggS2nhu4F1IDI!5e0!3m2!1svi!2s!4v1527733792692\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '03 Đại lộ Hoà Bình, Tân An, Ninh Kiều, Cần Thơ, Việt Nam', '2018-05-21 00:00:00', '2018-06-21 01:32:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place_image`
--

CREATE TABLE `place_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `place_image`
--

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place_location`
--

CREATE TABLE `place_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `coor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `place_location`
--

INSERT INTO `place_location` (`id`, `id_place`, `coor`, `created_at`, `updated_at`) VALUES
(1, 1, '10.002061, 105.744070', '2018-05-20 17:00:00', '2018-06-21 01:32:52'),
(2, 2, '10.033385, 105.788444', '2018-05-20 17:00:00', '2018-06-21 01:33:51'),
(3, 3, '9.989114, 105.706534', '2018-05-20 17:00:00', '2018-06-21 01:34:22'),
(4, 4, '10.282091, 105.505285', '2018-05-20 17:00:00', '2018-06-21 01:34:48'),
(5, 5, '10.034198, 105.788450', '2018-05-20 17:00:00', '2018-06-21 01:35:37'),
(16, 6, '10.018581, 105.767093', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(17, 7, '10.034539, 105.776126', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(18, 8, '10.027488, 105.770151', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(19, 9, '10.028744, 105.774190', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(20, 10, '10.009708, 105.747233', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(21, 11, '10.042372, 105.790427', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(22, 12, '10.039316, 105.793470', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(23, 13, '10.024490, 105.774787', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(24, 14, '10.036391, 105.789665', '2018-06-20 17:00:00', '2018-06-20 17:00:00'),
(25, 15, '10.035011, 105.786063', '2018-06-20 17:00:00', '2018-06-20 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `place_type`
--

CREATE TABLE `place_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `place_type`
--

INSERT INTO `place_type` (`id`, `name`, `description`) VALUES
(1, 'Địa điểm du lịch', 'Các địa danh tham quan du lịch'),
(2, 'Ăn uống', 'Các địa điểm ăn uống hấp dẫn'),
(3, 'Khách sạn', 'Các địa điểm nghỉ ngơi thoải mái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `travel`
--

CREATE TABLE `travel` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_place` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

INSERT INTO `travel` (`id`, `id_place`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 20,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, 2, 30,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, 3, 25,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, 4, 50,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, 5, 10,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, 1, 24,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(7, 1, 23,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(8, 4, 13,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(9, 5, 80,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(10, 10, 100,'2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(11, 11, 1000,'2018-05-21 00:00:00', '2018-05-24 00:00:00');
--
-- Cấu trúc bảng cho bảng `users`
--

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

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'a@b.c', '$2y$10$8L4srdLWmt/nP76GgoDYI.801KtHp28yIm/JPYud4rnVxYWj6lE6G', 'C8Tx9DKbd9R7iwIRhIhxnxLV8pyIrU7bgtfiPuPQY06CJqO8ftrWAaqtqlfS', '2018-06-19 20:23:24', '2018-06-19 20:23:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_location`
--

CREATE TABLE `user_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `coor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_location`
--

INSERT INTO `user_location` (`id`, `coor`, `created_at`, `updated_at`) VALUES
(1, '10.041295,105.792962', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(2, '10.041788,105.791230', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(3, '10.042318,105.790419', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(4, '10.039361,105.793527', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(5, '10.039252,105.791973', '2018-05-21 00:00:00', '2018-05-24 00:00:00'),
(6, '10.039252,105.791979', '2018-05-21 00:00:00', '2018-05-24 00:00:00');


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
