/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : thuctap

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-27 20:12:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', 'Cần Thơ');
INSERT INTO `cities` VALUES ('2', 'An Giang');
INSERT INTO `cities` VALUES ('3', 'Hậu Giang');
INSERT INTO `cities` VALUES ('4', 'Vĩnh Long');
INSERT INTO `cities` VALUES ('5', 'Đồng Tháp');
INSERT INTO `cities` VALUES ('6', 'Kiên Giang');
INSERT INTO `cities` VALUES ('7', 'TP HCM');
INSERT INTO `cities` VALUES ('8', 'Sóc Trăng');

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_id_place_foreign` (`id_place`),
  CONSTRAINT `feedbacks_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
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

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2018_05_21_084732_cities', '1');
INSERT INTO `migrations` VALUES ('3', '2018_05_21_084742_place_type', '1');
INSERT INTO `migrations` VALUES ('4', '2018_05_21_084751_places', '1');
INSERT INTO `migrations` VALUES ('5', '2018_05_21_084800_place_image', '1');
INSERT INTO `migrations` VALUES ('6', '2018_05_21_084810_feedback', '1');
INSERT INTO `migrations` VALUES ('7', '2018_05_21_084819_place_location', '1');
INSERT INTO `migrations` VALUES ('8', '2018_05_21_090828_user_location', '1');
INSERT INTO `migrations` VALUES ('9', '2018_05_24_074923_travel', '1');

-- ----------------------------
-- Table structure for places
-- ----------------------------
DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(10) unsigned NOT NULL,
  `id_city` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `places_id_type_foreign` (`id_type`),
  KEY `places_id_city_foreign` (`id_city`),
  CONSTRAINT `places_id_city_foreign` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `place_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of places
-- ----------------------------
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
CREATE TABLE `place_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `x` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `place_location_id_place_foreign` (`id_place`),
  CONSTRAINT `place_location_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of place_location
-- ----------------------------
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

-- ----------------------------
-- Table structure for place_type
-- ----------------------------
DROP TABLE IF EXISTS `place_type`;
CREATE TABLE `place_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
CREATE TABLE `travel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_place` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `travel_id_place_foreign` (`id_place`),
  CONSTRAINT `travel_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of travel
-- ----------------------------
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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
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

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for user_location
-- ----------------------------
DROP TABLE IF EXISTS `user_location`;
CREATE TABLE `user_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `y` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_location
-- ----------------------------
INSERT INTO `user_location` VALUES ('1', '260', '315', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('2', '270', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('3', '760', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('4', '760', '356', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('5', '230', '545', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
INSERT INTO `user_location` VALUES ('6', '160', '515', '2018-05-21 00:00:00', '2018-05-24 00:00:00');
