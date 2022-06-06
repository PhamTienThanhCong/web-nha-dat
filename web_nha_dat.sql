-- phpMyAdmin SQL Dump
-- version 5.2.0-rc1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 06, 2022 lúc 11:32 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_nha_dat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone_number`, `avatar`, `address`, `company`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Linh Chi', 'congphamtienthanh@gmail.com', '0396396336', 'cong pham.1654133856.jpg', 'Phố xốm, phường xuân mai, quận thanh xuân, hà lội', 'Công ty cổ phần vingroup', '$2y$10$zSrFsoN5ZJ/OAC.q7vgw0Oj9tL2zyJSuRKbbx8pu0Ya..v87IFXiK', 3, '2022-06-01 08:34:33', '2022-06-03 06:27:04'),
(3, 'Phạm Tiến Thành công', 'congj2school@gmail.com', '0396396332', 'cong pham.1654135228.jpg', 'văn quán, thanh xuân, hà nội', 'công ti một thành viên việt nam', '$2y$10$UkS/cT8VAq6Xhp57GDAH8.khpiPhZFqB3HHEQCxh0hnEBCMF3sA4C', 2, '2022-06-01 18:44:35', '2022-06-01 21:00:00'),
(4, 'Phi La', 'ton.lap@hotmail.com', '0126 024 2643', 'avatar.png', '21, Ấp Ngôn Mâu, Phường 6, Huyện Cổ\nQuảng Bình', 'Ung-Bành', '$2y$10$g1FNGyTd4eHGnqd94WenO.0zzfpaZGO6OkgbqNMNgMgvl2hztsk3i', 2, '2022-06-01 19:54:57', '2022-06-03 06:29:09'),
(5, 'Tài Phương', 'fca@nghiem.org', '(84)(90)540-8529', 'avatar.png', '3373, Ấp Trung Thắng, Phường 94, Quận Thi Hương\nLong An', 'Trang Ltd', '$2y$10$s4siXo0T2y48NeSZRM1dvul0xNfKxJKz0YQ2pXi5H40BrG4lDbfim', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(6, 'Hải Huỳnh', 'luong24@gmail.com', '0230-325-5834', 'avatar.png', '481, Thôn Bảo Trung Canh, Thôn Diệp Huệ, Huyện My\nBến Tre', 'Giả PLC', '$2y$10$iJs0xpJu3lbsarcZ4AFoXuWgWW.XaZLVkVe0ieqDVmn/wQ7Bsk9fG', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(7, 'Độ Âu', 'my.dam@gmail.com', '(0350)668-7080', 'avatar.png', '72, Ấp Ngân Phan, Phường 33, Quận Triệu Bình Trúc\nTây Ninh', 'Cầm Ltd', '$2y$10$wpZ1AaWxxK1Zpz4UKHJemek1dfJvWqjIZIISV6eWvnIavC74mM.Wq', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(8, 'Vương Cam', 'duong.nhi@ma.vn', '037-358-2966', 'avatar.png', '4, Thôn Lữ Minh, Phường Ái, Huyện 1\nBà Rịa - Vũng Tàu', 'Đào-Cát', '$2y$10$yWVYUwwqZDPkswmRWkYJve69lg0jI9lV5I2P0/cPZIyNqrEHIDpNK', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(9, 'Cầm Bá', 'tho97@to.com.vn', '029-988-8173', 'avatar.png', '453 Phố Mạc, Phường 21, Huyện Cổ Việt Huynh\nBình Thuận', 'Vừ, Bồ and Lã', '$2y$10$70qAH6P5UFwynlNNsE9sXOY1ulREpabmUga1DN4Zn3d1/h.ljvXjC', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(10, 'Chấn Mã', 'lnguy@yahoo.com', '(098)929-5163', 'avatar.png', '7, Ấp 60, Ấp Ngôn Thắng, Quận Đồng\nLai Châu', 'Uông-Thôi', '$2y$10$WbLlOrXHNQ.mu8E4RlBYmetxG3mrxzvSYdrEFd4ZcjUpov7Ehi0Vm', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(11, 'Thủy Vương', 'huynh29@hotmail.com', '+84-123-350-6618', 'avatar.png', '3 Phố Chiêm Phúc Chinh, Ấp Uông Hạ, Huyện Hải Ngạn\nHồ Chí Minh', 'Triệu, Thiều and Diệp', '$2y$10$lwjJrZWPl6EbSr/hS5Tafu1NVrwb4KMq8NUjT1kCatDYmsyl1JF2a', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(12, 'Hạnh Đới', 'nnham@gmail.com', '077 150 9290', 'avatar.png', '3, Ấp Đạt Hoa, Thôn Triều Thọ, Quận Thảo\nAn Giang', 'Lã, Thịnh and Nghiêm', '$2y$10$Q.Lb71tcJaTef.lebTqFNep9kEbpZV56CshvibZe1ckJMWVuEZ9Pe', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(13, 'Đường Bì', 'thai.duong@nghi.com', '(052)667-4864', 'avatar.png', '393 Phố Nông Giáp Ca, Phường Hà, Quận Bảo\nHồ Chí Minh', 'Tiêu, Quách and Vi', '$2y$10$g06BpA4oUdQfo8Q60GEG6.R7RJJGA6r/YgyentPs.pgVe2xPhFaz.', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(14, 'Hưng Cát', 'khanh.le@gmail.com', '(84)(169)802-5927', 'avatar.png', '9 Phố Nguyễn Hoài Khoát, Xã Hoàn, Quận Chung Yến\nĐà Nẵng', 'Trình-Vi', '$2y$10$rsH33Y6O89J4prN7pwk69uEyCtxENFT5wEhDrkI7eas09zrSqz2aS', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(15, 'Tâm Khương', 'thuc.dam@gmail.com', '(0128)156-1903', 'avatar.png', '5613, Thôn 69, Xã 58, Huyện Cường Trâm\nĐắk Nông', 'Nhữ and Sons', '$2y$10$ahAW7YXo1fk7ZcMy9KH/mORUBn.H4lE3Nt7xc8551L92NdejqnPk.', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(16, 'Kha Tạ', 'yen.thong@cat.health.vn', '+84-66-770-7174', 'avatar.png', '4, Thôn Mai, Thôn Uông Đoàn, Huyện Lạc Khê Thường\nVĩnh Long', 'Mâu, Ma and Ong', '$2y$10$p/Y5UduJmlrgIUNcidxtduSLUMZezJJsOPWGgdo90YA3c7fou2wSm', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(17, 'Tú Nghị', 'an.chu@gmail.com', '84-92-942-5687', 'avatar.png', '56 Phố Sơn Ly Kiều, Thôn Khê Lập, Huyện 44\nTuyên Quang', 'Bế PLC', '$2y$10$o47JA9avNiiAb9ZBxE8jI.JzlunU7T.sohNHbcuUUqisSn0jNZ0EG', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(18, 'Thạch Lại', 'rhan@tong.com', '(84)(33)728-8099', 'avatar.png', '5994 Phố Yên Trâm Hiền, Phường Vọng, Quận 49\nCao Bằng', 'Đậu, Khương and Nhậm', '$2y$10$bMMN/DGQf2H.GcLakR2OtOS4jwDBVdJvU3VRk0Ad9J2La9Cvfdsby', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(19, 'Giao Lại', 'chuong.thanh@hotmail.com', '+84-68-692-0157', 'avatar.png', '5 Phố Đặng Ty Tâm, Xã Chương Đan Tuấn, Huyện 65\nHà Nội', 'Chế Ltd', '$2y$10$JHlWdnWA29bViBAH5v0HhufvfbL66rOrn35jCvtn/dIXro6h9hEsO', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(20, 'Duy Lô', 'qngo@hotmail.com', '84-64-085-6403', 'avatar.png', '11 Phố Cần, Xã Thảo Hà, Quận Bì Xuyến Phúc\nPhú Thọ', 'Trịnh, Bì and Hán', '$2y$10$IsJWKDL5HF.ZeZBjhRfCk.5mlllOiylnlY9IStc2riEnaVPQ7j82e', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(21, 'Liên Bế', 'thy.quan@du.biz.vn', '(033)032-3616', 'avatar.png', '2374 Phố Nghĩa, Thôn Tăng Trình, Huyện Giác Đường\nHà Nam', 'Võ LLC', '$2y$10$19G/9Swd4/X/5rXUw.EAWeTmkSj5yfTSzxXwiupX5LpyW4u6wsg2q', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(22, 'Hạnh Hán', 'lam.dang@gmail.com', '0710-155-5097', 'avatar.png', '3 Phố Lỡ, Phường Khai, Quận 7\nQuảng Ninh', 'Hứa and Sons', '$2y$10$eONoiNfABdiuoAMnoeHt.ufM6vyaYrQNAFwTy9r8Qmjy20H93Mata', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(23, 'Quế Xa', 'qkhu@lac.vn', '(055)549-5903', 'avatar.png', '2840, Ấp Lộc Diễm, Ấp Xa Luật, Quận 6\nQuảng Trị', 'Lã, Đặng and Lã', '$2y$10$4ydRUUwspcx108Gy3TNloeQSPCVtXuhmODq02opqS7NMxrae2gK1O', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(24, 'Mai Ca', 'tien23@an.com.vn', '0127 818 6789', 'avatar.png', '7539, Ấp Đường My, Xã 0, Huyện Kiếm Ong\nAn Giang', 'Phan Inc', '$2y$10$uOdETGLDxazljeQ2LEdc4uVZo5y19yttKU8pjC2sAp1ErO34QysaK', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(25, 'Hạnh Sơn', 'hao.pham@diem.info.vn', '(0710)243-8873', 'avatar.png', '6616 Phố Đặng Chung Linh, Xã Nguyệt Khâu, Huyện Xa Hảo\nĐà Nẵng', 'Liễu-Lã', '$2y$10$/9trpWcgmBORJi6uplRrFemQbnUkblqknD09tCtQHZQya2jnSL5PG', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(26, 'Lễ Hạ', 'sinh.lieu@tran.info.vn', '(022)110-0732', 'avatar.png', '4 Phố Thạch, Xã Ấu Hậu Cương, Huyện Phan Huy\nHà Nội', 'Cái, Ung and Triệu', '$2y$10$aTlKvqbsg3q2F/3FbNsWAe8HhzCBq0D6sqW4KlpRG18xGDyCGheOa', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(27, 'Hà Tiếp', 'nkhuat@gmail.com', '84-26-304-6001', 'avatar.png', '847 Phố Vũ, Phường 6, Huyện Tôn Di Châu\nCần Thơ', 'Hàn and Sons', '$2y$10$PHh6t2zJ9wivS4Uhq72/G.EJYUzNL7bmyqiad/OEqcbpSN2ss8KZW', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(28, 'Minh Dã', 'an15@yahoo.com', '84-163-186-9732', 'avatar.png', '421 Phố Vỹ, Ấp Ân Thạc, Huyện 01\nCần Thơ', 'Châu Ltd', '$2y$10$WV2/coerSQYrjshymu0IOeEzrzieo7QjXR50itlljXlrcd0LXzFsi', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(29, 'Nhàn Khuất', 'sa56@cu.org', '0163 202 4218', 'avatar.png', '19 Phố Hy Phong Hành, Xã Vũ, Huyện 5\nHà Nội', 'Mai LLC', '$2y$10$mrZNBXu9Usjd6wjIkcpQOuS09xQlX53U3FvwuYUebb2Bcd96HsSuG', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(30, 'Lộc Bá', 'thao.ly@nguy.name.vn', '(0500) 082 9300', 'avatar.png', '33 Phố Thái, Xã Huy Dã, Huyện Đồng\nHồ Chí Minh', 'Lý, Khưu and Yên', '$2y$10$s9pgtYUSH/hq5vbuGsIr6efQIAzwbE1Rx3c1t7SvCO8mbMYWf.Kmm', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(31, 'Lam Ninh', 'xcai@hung.com', '84-60-173-7386', 'avatar.png', '996, Thôn 9, Phường Viên Giang, Quận Thái Đào Giác\nQuảng Nam', 'Chu-Giả', '$2y$10$KVftDT1H90DnoGkWwmdYQOyFMBccW3gYiF0/PpHIB4cB1eAveyFZ2', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(32, 'Chính Thái', 'binh.kim@nham.vn', '84-93-561-7392', 'avatar.png', '990, Ấp Kiên Giang, Thôn Nhã Triệu, Quận 63\nHưng Yên', 'Đậu-Châu', '$2y$10$znddXDkMvJiJKzREY.N.UOM3Axbx5SsY7NhxtwBjq2JY6fhx6V6Am', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(33, 'San Từ', 'quyet57@diep.org', '(0166) 739 2763', 'avatar.png', '90, Thôn Cúc Thủy, Phường 25, Huyện Thiều Hữu Kiều\nĐồng Nai', 'Phương PLC', '$2y$10$zvL1SAv/qvRgNYoSbhkKyesEgiCS.40bYQ.p0upEhH1ekEueJkiC6', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(34, 'Lý Lã', 'qthoi@dinh.net', '84-511-213-8242', 'avatar.png', '69, Ấp Nghị, Xã 5, Huyện Phan Khánh\nVĩnh Long', 'Thiều, Bàng and Triệu', '$2y$10$O5KkI3.coJzST.qJC3s8kOTrvv.FOFKRVC1ugVzmQuxtM9OW3l3ay', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(35, 'Thêu Giang', 'my20@phung.vn', '+84-163-041-5016', 'avatar.png', '863 Phố Chu, Thôn Phong Thoại, Quận Cương Khiêm\nHồ Chí Minh', 'Thào Ltd', '$2y$10$WRhMbyuMMkUNUSOBeowsdecH5sjesH/45YMWGJaQBo/wiROlNvKcS', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(36, 'Quyên Điền', 'uong.nghiem@doan.health.vn', '(030) 684 9684', 'avatar.png', '61, Thôn Ánh, Ấp Tuệ Dao, Quận Đường\nQuảng Nam', 'Triệu, Đậu and Ngân', '$2y$10$pw0dHOtvbcj73NAF71DrAuFhHYMk1bzNti/MC9UuNvC.qcl6stzgC', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(37, 'Linh Khâu', 'than.truc@gmail.com', '(055) 053 5516', 'avatar.png', '28 Phố Lễ, Xã Phí Cơ Dụng, Huyện Trường Lợi\nBạc Liêu', 'Thập-Tông', '$2y$10$qKA48cKCaaanK9MmEefyXuju.PFtLIyRUyxaAM8CCwK0kb3YvORHO', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(38, 'Điệp Xa', 'giang.le@doan.net', '+84-93-333-6486', 'avatar.png', '5 Phố Cơ, Ấp Đường Đoàn, Quận Lễ\nBình Định', 'Kim Ltd', '$2y$10$QbK2vESpg8Y4C7ZLvtBNJec3Ik0U4Y11Nq40WU7t2pvOCzZwgiNve', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(39, 'Thực Vừ', 'vo.tong@hotmail.com', '84-72-355-5243', 'avatar.png', '8 Phố Lộ, Phường 9, Quận Linh\nHậu Giang', 'Lỳ-Đỗ', '$2y$10$D4MEQ4dwTnKCHYmZJzM7Vepm0pcltK9vgoA4DFwMXFTtF3ayPr5hq', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(40, 'Tấn Thân', 'anh88@hotmail.com', '0320-453-8529', 'avatar.png', '50, Ấp Điền Bắc Giác, Xã Hoàng Vương Vọng, Huyện 08\nBình Thuận', 'Tiêu, Lỡ and Khoa', '$2y$10$lLmOXGhpMi/G6Eev6WYdYeEsqMo24nqJJAm47rG7QQfyRvZoe0X82', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(41, 'Ngọc Lạc', 'nghi.kha@gmail.com', '84-92-926-2263', 'avatar.png', '68, Thôn 8, Xã Đàn Du, Quận 21\nTiền Giang', 'Hán and Sons', '$2y$10$4ZnN3uT97kX4tKOtsNN1dO5EX0/G0HFBt5Gs4tQlpWXF8fZEOIFsO', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(42, 'Đoàn Hạ', 'an71@hotmail.com', '077-390-7800', 'avatar.png', '5 Phố Lữ, Xã Yên Thêu, Quận Uông Khoa Hiếu\nKon Tum', 'Trà-Hồng', '$2y$10$G8NstXcQm0h0NvLjkO8yU.PJ4RerRJjx.kuKlYhzhTngLUMkmmzSe', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(43, 'Sáng Ca', 'leu.canh@lo.pro.vn', '0500 556 8377', 'avatar.png', '7 Phố Lò Hiển Phụng, Xã 5, Huyện 5\nHà Nội', 'Lê-Giao', '$2y$10$08ch2.GMN4hSV2WDRuBRjOeMwjXJZ2t9NRFL8zsaZ0Y5cZpNmUHKe', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(44, 'Phụng Đan', 'yly@gmail.com', '+84-77-444-5941', 'avatar.png', '657 Phố Dư Đôn Quân, Phường Bàng Chưởng Tuấn, Huyện Nghi Nhân\nHồ Chí Minh', 'Phó Group', '$2y$10$63zkwfoLho1HC0A5af09/.pPf3Jte7UpUl/wg40j4WCOoOPkCcVjO', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(45, 'Mẫn Bồ', 'linh.yen@dan.com', '84-124-557-6452', 'avatar.png', '663 Phố Lã Du Dương, Ấp Nhiên Huynh, Huyện 52\nHòa Bình', 'Thôi Group', '$2y$10$pz/nNbpRHrFEVM2w2m6nwe0J82Zt8cX76545DeoortLF7X6PBWMhu', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(46, 'Kiều Đào', 'nha@hotmail.com', '+84-211-286-7001', 'avatar.png', '49, Ấp Cẩn Thông, Phường Bì Bào Công, Quận Hy Lộc\nVĩnh Long', 'Bạch Inc', '$2y$10$XTEOaqKMCFdFafnVWN.uuOpPFHIKG./T4ixCSWR1x5dz94wNUFl82', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(47, 'Vượng Mộc', 'bvan@vo.mil.vn', '(84)(241)789-3083', 'avatar.png', '25 Phố Chử Đình Thường, Xã Tô Thiện Nhàn, Quận 6\nSóc Trăng', 'Chung-Lã', '$2y$10$7EaqHBAqPLpp08rPCR.XseyeUqVKiuT.ijPb.AS8CfLNUnaeV0CI.', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(48, 'Mẫn Lô', 'an95@cai.health.vn', '(0711)728-2110', 'avatar.png', '49, Ấp Âu Khánh, Thôn Lợi Ly, Huyện 7\nKhánh Hòa', 'Hy-Doãn', '$2y$10$t6ikqQh/MqD1l3UZYCldrelWXkc93jvWlDt0g2uz1/zthJQY98Th2', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(49, 'Võ Tòng', 'loc21@thao.biz.vn', '+84-39-293-9244', 'avatar.png', '2 Phố Thái Chương Lĩnh, Phường 1, Quận Lương\nVĩnh Long', 'Lại and Sons', '$2y$10$c2uZ8xvw8JqVvjpb97eSaOveh14Am1.HJ8vIOoynNWQyw4SkEvV2q', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(50, 'Khanh Chế', 'dau.dung@gmail.com', '0126-529-3080', 'avatar.png', '5 Phố Giao Lễ Duy, Xã Cầm, Huyện 0\nHải Phòng', 'Uông-Chung', '$2y$10$jyax5RN1DKdlhcAYaJTUle.Gtu.fyYng0rPcRiiqKDRbJ7lgJUnri', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(51, 'Phi Âu', 'viet51@yahoo.com', '(096)211-1596', 'avatar.png', '37 Phố Đức, Xã Bích Tường, Quận Phước Trang\nHồ Chí Minh', 'Phi PLC', '$2y$10$p3cYoNFM2yk20ukSWaTXweFbL5w4TqOgcfEVNmlU0ZpbV.Yu/Gk0i', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(52, 'Tụ Ninh', 'jbo@gmail.com', '84-25-281-0387', 'avatar.png', '3135 Phố Hữu, Phường Hân, Quận Lộc Đoàn\nHồ Chí Minh', 'Trần LLC', '$2y$10$l9S3tQQKcq5SuX1Tqng.5urXPOqd6V6UZ8DkKGBEiYFMVl5WLiw8W', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(53, 'Thy Trà', 'binh04@yahoo.com', '(0231)979-4242', 'avatar.png', '5 Phố Trịnh, Xã Quốc, Quận Hợp Đặng\nHải Phòng', 'Sơn, Nhậm and Lạc', '$2y$10$jtj2SRzqWLjyD2xwuzX2QOB6CjvgdHmfkYzMaPWTaTDz7K7/UuVd2', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(54, 'Diễm Bì', 'nbach@hotmail.com', '0230 558 2029', 'avatar.png', '84 Phố Ca Dương Tuấn, Xã Trang, Quận 05\nBắc Ninh', 'Phi-Âu', '$2y$10$DlMNWZP9RVMLTNePGo1wJedG97iIGV9VYJ6YfHfeuxSJDn4r9tqSy', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(55, 'Đàn Khuất', 'hieu.ta@khuat.net.vn', '84-64-618-6340', 'avatar.png', '3 Phố Nghị Từ Khanh, Xã Giang Thân, Quận Châu\nHải Phòng', 'Đậu PLC', '$2y$10$/NKsIPDwKF2JGuGlOAg1..YB08FUgspueveu0HBrq9boWjZsI6euO', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(56, 'Phú Phương', 'man.nha@hotmail.com', '84-37-941-1960', 'avatar.png', '2, Thôn Đỗ Ly Nguyên, Xã 9, Quận Lã Dương\nHà Nam', 'Biện-Hàng', '$2y$10$2DDzrOAwv2WJ6VZheyWcZO06vsLJ8P6ptH1BRfC4Gvf5TotR4xf9C', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(57, 'Vọng Chung', 'khau.hoan@chung.com', '+84-781-464-2749', 'avatar.png', '993 Phố Bổng, Thôn Mẫn Trung, Huyện Dư Thúy\nTiền Giang', 'Thái, Ong and Nhiệm', '$2y$10$hoXyb0ATtnxUxNtyEjI00ejE60QE88R0FM72hTCoP2/3nU6rctq4i', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(58, 'Phi Lưu', 'jlo@cai.com', '84-60-301-6396', 'avatar.png', '862, Thôn Chính Trúc, Ấp Nghiêm Tụ, Huyện 7\nHòa Bình', 'An, Bạch and Thi', '$2y$10$fm/2vvLqyn3HB46wpR35NebM/OKMNoS04Gru96Itj.I4oUarFhxK6', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(59, 'Nhung Lữ', 'yen88@banh.health.vn', '84-124-985-9213', 'avatar.png', '30 Phố Ninh Hương Việt, Phường Ty, Huyện Hào Cường\nHà Nội', 'Triệu, Trình and Đái', '$2y$10$ITnTLA9ofkfdUz63/oFSzOZpE0YCkBN3k27P2ChUtxj9W7nibzIQW', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(60, 'Hòa Đặng', 'hop.ung@yahoo.com', '(0124)678-2767', 'avatar.png', '29 Phố Ngụy Trạch Dao, Ấp Trà Ngôn, Huyện Khiếu Chấn\nĐà Nẵng', 'Bạc Inc', '$2y$10$Q9UzWnahRsyrkoNZ8yPGt.5aoQRp/LzsNdE165in3bL/ZI9D5bBay', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(61, 'Vượng Chử', 'lo50@thai.info.vn', '(059)180-8422', 'avatar.png', '1, Thôn Bạch, Xã 0, Huyện Nghĩa\nĐồng Nai', 'Ong Group', '$2y$10$B3OHRnWIM/82khayOnXY8.BshCkJ.CHnt5WxzyN.bJrNz1dPQ2LAy', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(62, 'Đài Tống', 'dai57@yahoo.com', '0651 092 7672', 'avatar.png', '988 Phố Lã Dũng Xuyến, Xã Đường, Quận 0\nHà Nội', 'Thôi and Sons', '$2y$10$n9Z/FixyjzLjC9TZ9etshuluxSIgh9Sz6qmp9bS3nATCFIhAXxk7a', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(63, 'Băng Khúc', 'hanh45@kha.org', '(0122) 484 6631', 'avatar.png', '83 Phố Tô, Xã 52, Quận Đạo Hạnh\nBình Định', 'Nguyễn Ltd', '$2y$10$ZlGJ5jdckm5ZcFvw499R8eyWnXPHyg../EU/8eXajiqquQCxpNK4C', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(64, 'Danh Đường', 'hong.tue@khong.vn', '0218-946-0486', 'avatar.png', '9429, Thôn Châu, Xã Giao, Huyện Cam Phương Lạc\nBình Thuận', 'Bùi-Mạch', '$2y$10$isqDQa2VpFE.h4BT.URj2uFtOLKs.hkSUmCKUXJsLTuql7SM28EfK', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(65, 'Thương Vương', 'nhat60@phung.org.vn', '84-169-179-1966', 'avatar.png', '4 Phố Học, Phường Khương Đan Lâm, Quận Chử\nHà Nội', 'Nhữ, Giả and Nghị', '$2y$10$TtjOBV4YgXerVSQub5AiqOuSrWW3V2p8eM4NVLACIkrreduE8FI4K', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(66, 'Hào Kiều', 'tuyen.an@yahoo.com', '(053)277-2775', 'avatar.png', '811, Thôn Khôi Đới, Phường 9, Huyện Lạc Oanh\nNinh Thuận', 'Bạc, Mâu and Khâu', '$2y$10$lJhii7.mI4798adV5LenL.JcLFK2kHfHnMgnhjPdZAHwQOSB/RkNq', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(67, 'Toản Uông', 'doan16@hotmail.com', '(030)357-5649', 'avatar.png', '31 Phố Thập Tuệ Diệp, Phường 16, Quận 4\nThái Nguyên', 'Mạc-Mộc', '$2y$10$t/RkIbnRigj.06II5eCTiudH4Ordmx2F.kfpbXK.ryZeVpMl5aPxu', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(68, 'Châu Sử', 'khuyen.mach@hotmail.com', '+84-321-668-9628', 'avatar.png', '50, Ấp 83, Xã Khuyên Uyên, Quận Giao Nhật\nHậu Giang', 'Ngân-Lưu', '$2y$10$znklgyfJtdznrYEMEjN8eesQnGixdPeM50wGG.TNdoGeg/PTW8uku', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(69, 'Huy Đồng', 'le.kha@hotmail.com', '84-162-632-5035', 'avatar.png', '25, Thôn Nông Văn, Phường 6, Quận Ánh\nQuảng Ninh', 'Ung-Thiều', '$2y$10$QtPZc/7T6mmQnXJkk2gJFeccAG6olTrCP6WLFFPenTLIGIRLAC4b.', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(70, 'Mẫn Nghị', 'tam20@binh.net.vn', '84-219-114-0695', 'avatar.png', '65, Thôn Thu Bình, Phường 4, Quận Thiện An\nThái Nguyên', 'Hạ, Danh and Bành', '$2y$10$7mP.bJbjJIF7mXhQpJRdTOTOmLVA7GQMuhZVEkzscf25U7S3KRGuK', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(71, 'Lộ Khổng', 'wmac@yahoo.com', '0127-611-6705', 'avatar.png', '9221, Thôn 3, Phường 0, Huyện 1\nKon Tum', 'Đái-La', '$2y$10$AQ4dPB0hTbEHkmcawsvnp.lxGQHaZD/ItbrgfcuC2f3kNmTuMyNs6', 0, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(72, 'Trọng Trưng', 'nga46@yahoo.com', '(0780)923-9660', 'avatar.png', '115, Ấp Ân Nhậm, Ấp Phúc Yên, Huyện Giang\nPhú Thọ', 'Đổng and Sons', '$2y$10$F2ASxDubGTF4nD/5GFzWO.MFGoX8cs1nvv6Q8wmLhRtvj4Ry56ZPS', 2, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(73, 'Phương Trưng', 'plam@hotmail.com', '(098) 139 3434', 'avatar.png', '4 Phố Ân Du Thêu, Thôn Bì Cẩn, Quận Châu Ly\nQuảng Bình', 'Thịnh-Văn', '$2y$10$Krp1sIGOn4AZJL304yIjYukZO33HHq3tUS6MGhQz9G69PKAtUTViS', 1, '2022-06-01 19:54:57', '2022-06-01 19:54:57'),
(74, 'Nguyễn Thị Chi', 'Linhchi123@gmail.com', '012913424234', 'Nguyễn Thị Chi.1654227657.jpg', 'Yên hòa cầu giấy, Hà nội', 'Công ty cổ phần sunGroup', '$2y$10$c3Ssk79yJr5S4lp89prnx.7t.16H/S9PPsORcuvmcCGAnsP2UPRaS', 2, '2022-06-02 20:38:47', '2022-06-02 20:41:25'),
(75, 'cong pham', 'congphanh@gmail.com', NULL, 'avatar.png', NULL, NULL, '$2y$10$BdKS1QGbecPsudxooc5VWuQ9kIGqO.mV.nYr8ixivgiuD5DgavV5y', 1, '2022-06-02 23:02:24', '2022-06-02 23:02:24'),
(76, 'Phạm văn Hòa', 'hoa@gmail.com', '0396396123', 'Phạm văn Hòa.1654262473.jpg', 'trung hòa cầu giấy', 'công ty cổ phần việt nam xanh', '$2y$10$GGlp1Cp/AWx8v80JFeNT3uEn1v6rZLacdHwwlrawJhdwYeimzglnS', 1, '2022-06-03 06:20:21', '2022-06-03 06:23:25'),
(77, 'Phạm Thị Yến Nhi', 'yennhi@gmail.com', '0396396321', 'Phạm Thị Yến.1654262795.jpg', 'hai bà trung hà nội', 'công ty bên em', '$2y$10$euGpqUzVdpx6e/C1FSiNQODr50oJZMSGNe.5TzgeWmWngtokyUrlK', 2, '2022-06-03 06:25:45', '2022-06-03 06:28:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messenger` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `posts_id`, `name`, `messenger`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 6, 'Phạm tiến thành công', 'Căn này đẹp quá còn không bạn', '0396396336', '2022-06-03 05:00:00', '2022-06-03 05:00:00'),
(2, 5, 'Định thị mai', 'Nhà đẹp quá còn không bạn', '0129134242123', '2022-06-03 05:42:11', '2022-06-03 05:42:11'),
(3, 2, 'Định thị hà', 'Trọ đẹp quá còn slot không ạ', '0396396336', '2022-06-03 05:43:31', '2022-06-03 05:43:31'),
(4, 2, 'Bé Công admin', 'Tôi cần tư vấn', '0120912323', '2022-06-03 05:44:24', '2022-06-03 05:44:24'),
(5, 2, 'Thúy anh', 'Tôi cần bạn tư vấn', '012328432', '2022-06-03 06:06:53', '2022-06-03 06:06:53'),
(6, 2, 'Nguyễn thị Linh', 'tôi cần tư vấn', '0396391234', '2022-06-03 06:34:22', '2022-06-03 06:34:22'),
(7, 9, 'Nguyễn lan anh', 'Tôi thích ma lắm ạ', '0123432853', '2022-06-04 09:17:07', '2022-06-04 09:17:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_posts`
--

CREATE TABLE `image_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_posts`
--

INSERT INTO `image_posts` (`id`, `posts_id`, `img`) VALUES
(1, 2, '1654169525qHYCrcj03PZBU2WAG9YE.jpg'),
(2, 2, '1654169525Ayh9D53o84bcG3KGEuLE.jpg'),
(3, 3, '16541754271mg754J4yXhy3Lsh9fxf.jpg'),
(4, 3, '1654175427XNpxR9KCeTlewySjVHih.jpg'),
(5, 3, '16541754271tyTgfadGjpxZpGIK1FY.jpg'),
(6, 3, '1654175427MEVHnm7Rv74DR4oPteHC.jpg'),
(7, 4, '1654175972waPSAjeoZfdgbtAsel4F.jpg'),
(8, 4, '1654175972RhslzTaZk8GeHBmUAxLw.jpg'),
(9, 4, '1654175972sADs0FWTqkBYdoitYNx9.jpg'),
(10, 4, '16541759721IjsapTQ6oHAdzJM4Um0.jpg'),
(11, 2, '1654224938GQMHXVGoKPReOzVmluqW.jpg'),
(12, 2, '1654224938iARV37e70U6Lo9DezQfV.jpg'),
(13, 5, '1654227845lwM29yHzSEH4nFk3XzMR.jpg'),
(14, 5, '16542278450JXCATORTw45ZnnJABAh.jpg'),
(15, 5, '16542278456uXhVN343hK9US1BN1wv.jpg'),
(16, 5, '1654227845vgMgNO1aHeQdsm83vrIp.jpg'),
(17, 6, '1654228600yTZEzJmERTifNBHkBkDe.jpg'),
(18, 6, '1654228600eY52Zh7oYJMnF1vzq7KA.jpg'),
(19, 6, '1654228600xsjKqb2frIXGY11BbUm9.jpg'),
(20, 7, '1654262173lyrnGc7KCZ6YAlfrgMM0.jpg'),
(21, 7, '16542621737Wa0KrhyBOj0GYd6FCAC.jpg'),
(22, 7, '1654262173qXgyZrnuev44jJSpQOod.jpg'),
(23, 7, '16542621737xtSeQcZAxpwnfJ33FQc.jpg'),
(24, 8, '16542630865wncCgF0wJzBS6UwTnyK.jpg'),
(25, 8, '1654263086wyd959MUkQwTbNZgND6K.jpg'),
(26, 8, '1654263086F0xO0YLmrxoSMCe9tYYa.jpg'),
(27, 8, '1654263086LURJEi406ITIwwsdHrUl.jpg'),
(28, 8, '1654263086ECTs2cWn8o3rL9vALioS.jpg'),
(29, 8, '1654263086eiPi9kLSD3cTnlVFwX7b.jpg'),
(30, 8, '1654263115GQgDOqRpxQXqxhFPehak.jpg'),
(31, 9, '16543566516BaweQ7EQE4HuqLBamet.jpg'),
(32, 9, '1654356651OZWH1WK5XWlvnBBlLgCB.jpg'),
(33, 9, '1654356651YazjgbM87Xub6butXrbt.jpg'),
(34, 9, '1654356651ul9v5Xt9NeBUTQt48Yam.jpg'),
(35, 9, '16543566513De37gZf0omQ9CA3JpeU.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_06_01_134402_create_admins_table', 1),
(3, '2022_06_01_134447_create_type_posts_table', 1),
(4, '2022_06_01_134501_create_posts_table', 1),
(5, '2022_06_01_134541_create_image_posts_table', 1),
(6, '2022_06_01_134615_create_tags_table', 1),
(9, '2022_06_01_151904_create_contacts_table', 2),
(10, '2022_06_04_140633_create_rooms_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_type` tinyint(4) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `done` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `admins_id`, `title`, `price`, `price_type`, `address`, `description1`, `description2`, `type`, `done`, `created_at`, `updated_at`) VALUES
(2, 3, 'Nhà trọ to đẹp', 1.40, 1, 'Phú lãm, hà đông', 'Nhà trọ to đẹp', '- phòng ngủ: 4\r\n- Nhà ăn: 1\r\n- điện nước: giá dân', 2, 2, '2022-06-02 04:32:05', '2022-06-02 19:55:38'),
(3, 3, 'Phòng trọ rẻ 3km gần đại học', 2.40, 1, 'Đường nguyễn phong', 'Có phòng trọ cho thuê cách trường abc 2 km', '- phòng sạch sẽ, ưu tiên nữ thuê\r\n- đường đi rộng\r\n- điện nước giá đân', 1, 0, '2022-06-02 06:10:27', '2022-06-02 20:29:46'),
(4, 3, 'VỠ NỢ BÁN LÔ ĐẤT 200M2 10X20 GẦN CHỢ TIỆN BUÔN BÁN DÃY NHÀ TRỌ 300M2 10X30', 650.00, 1, 'Phường Chánh Phú Hòa, Thị Xã Bến Cát, Bình Dương', 'KINH DOANH BỊ PHÁ SẢN TÔI CHÍNH CHỦ CẦN BÁN GẤP ĐẤT MT CHỢ 200M2(2 10X20) VỚI GIÁ 650TR', '1 - LÔ ĐẤT 200M2\r\n\r\nVợ chồng tôi có lô đất 200M2 ngay mặt tiền chợ đã tách thành 4 sổ riêng (5x20m) nằm đốidiện chợ nay DO MÙA DỊCH kinh doanh bị thua lỗ nên cần bán gấp\r\n\r\nGiá bán:Chỉ 950 triệu/nền.(bao sang tên, công chứng).\r\n\r\n2 - DÃY TRỌ\r\n\r\nNGOÀI RA NHÀ TÔI CÒN 2 DÃY PHÒNG TRỌ GÒM 18 PHÒNG CHO THU NHẬP ỔN ĐỊNH 19\r\n\r\nTRIỆU/ THÁNG\r\n\r\nDiện tích : 10x30 = 300m2.\r\n\r\n\r\nMỗi dãy gồm 8 phòng thường 1 kiot .\r\n\r\n\r\nNhà tôi mới xây được hơn 1 năm nên còn rất mới. tường ốp gạch men cao 1,6m. Gác đúc. có kệ bếp, WC riêng biệt. Đồng hồ điện nước riêng từng phòng.\r\n\r\n\r\nNhà trọ nằm trên trục đường chợ dân sinh đông đúc.\r\n\r\nMua có thế kinh doanh buôn bán ngay trước nhà.\r\n\r\nGía tôi bán: 1ty850triệu / dãy.( có thương lượng nhẹ )', 4, 2, '2022-06-02 06:19:31', '2022-06-03 01:06:32'),
(5, 74, 'cho thuê dãy trọ không dùng đến', 1.85, 2, 'Phường Chánh Phú Hòa, Thị Xã Bến Cát, Bình Dương', 'TÔI CÒN 2 DÃY PHÒNG TRỌ GÒM 18 PHÒNG CHO THU NHẬP ỔN ĐỊNH 19 TRIỆU/ THÁNG các bạn vào húp đi', 'Mỗi dãy gồm 8 phòng thường 1 kiot .\r\n\r\n\r\nNhà tôi mới xây được hơn 1 năm nên còn rất mới. tường ốp gạch men cao 1,6m. Gác đúc. có kệ bếp, WC riêng biệt. Đồng hồ điện nước riêng từng phòng.\r\n\r\n\r\nNhà trọ nằm trên trục đường chợ dân sinh đông đúc.\r\n\r\nMua có thế kinh doanh buôn bán ngay trước nhà.\r\n\r\nGía tôi bán: 1ty850triệu / dãy.( có thương lượng nhẹ )\r\n\r\nXung quanh tiện ích đầy đủ như tr.học, b.viện,s.thị,... CSHT hoàn thiện, điện, nước, cáp, internet kéo tới tận lô đất.\r\n\r\n\r\n\r\nCách KCN khoảng 300m với 3 cụm KCN Nhật - Hàn - Đài Loan với hơn 40.000 CN đang làm việc.\r\n\r\n\r\n\r\nCó thể xây dựng ngay để ở hoặc để dành, KD buôn bán, nhà trọ, kiot cho thuê,...\r\n\r\nĐặc biệt đối diện chợ đang hoạt động đông đúc nên rất thuận tiện cho việc kinh doanh buôn bán, kinh doanh quán cơm, cafe,...\r\nXây dựng tự do và có thể xây dựng ngay. (bao giấy phép xây dựng).', 2, 2, '2022-06-02 20:44:05', '2022-06-02 20:57:03'),
(6, 74, 'Bán nhà mặt tiền', 2.30, 2, 'Sơn tây, ba vì, hà nội', 'Gia đình cần bán nha đổi sang biệt thự', '- Đường vào rộng rãi\r\n- nhà mặt tiền, tiện đi lại\r\n- điện nước giá rẻ\r\n- uhm đúng rồi', 1, 2, '2022-06-02 20:56:40', '2022-06-03 01:04:10'),
(7, 3, 'có căn nhà cần bán ở cầu giấy', 1.64, 2, 'Trung hòa câu giấy', 'do gia đình làm ăn khá giả nên cần bán đi đầu tư', '- căn nhà mới xây\r\n- cách đường 2km\r\n- giao thông tốt', 1, 2, '2022-06-03 06:16:13', '2022-06-03 06:30:00'),
(8, 3, 'Căn nhà mặt phố', 7.00, 1, 'Thôn vũ xã', 'Căn nhà mặt phố', 'Căn nhà chắc có ma ám, ai ở cũng cảm thấy như có ai đó chêu đùa', 2, 1, '2022-06-03 06:31:26', '2022-06-04 08:49:20'),
(9, 74, 'Căn nhà mặt phố', 7.00, 1, 'Thôn vũ xá', 'Căn nhà mặt phố', 'Căn nhà chắc có ma ám, ai ở cũng cảm thấy như có ai đó chêu đùa\r\nTuy nhiên không phải lo vì chúng tôi có thầy', 2, 2, '2022-06-04 08:30:51', '2022-06-04 08:54:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `size` double(8,2) NOT NULL DEFAULT '0.00',
  `facade` double(8,2) NOT NULL DEFAULT '0.00',
  `floors` tinyint(4) NOT NULL DEFAULT '1',
  `bedrooms` tinyint(4) NOT NULL DEFAULT '1',
  `bathrooms` tinyint(4) NOT NULL DEFAULT '1',
  `direction` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Bắc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `posts_id`, `size`, `facade`, `floors`, `bedrooms`, `bathrooms`, `direction`) VALUES
(1, 2, 12.00, 10.00, 1, 1, 1, 'Bắc'),
(2, 3, 23.00, 12.00, 1, 1, 1, 'Bắc'),
(3, 4, 43.00, 14.00, 1, 1, 1, 'Bắc'),
(4, 5, 43.00, 8.00, 1, 1, 1, 'Bắc'),
(5, 6, 123.00, 23.00, 1, 1, 1, 'Bắc'),
(6, 7, 45.00, 34.00, 1, 1, 1, 'Bắc'),
(7, 8, 67.00, 33.00, 1, 1, 1, 'Bắc'),
(8, 9, 85.00, 12.00, 5, 5, 6, 'Tây Bắc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `type_posts_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `posts_id`, `type_posts_id`) VALUES
(1, 2, 6),
(2, 3, 7),
(3, 4, 11),
(4, 5, 14),
(5, 6, 8),
(6, 7, 9),
(7, 8, 8),
(8, 9, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_posts`
--

CREATE TABLE `type_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_posts`
--

INSERT INTO `type_posts` (`id`, `link_name`, `link`) VALUES
(5, 'Nhà đất chính chủ', 'nha-dat-chinh-chu'),
(6, 'Căn hộ chung cư', 'can-ho-chung-cu'),
(7, 'ShopHouse', 'shophouse'),
(8, 'Nhà Biệt thự, liền kề', 'nha-biet-thu-lien-ke'),
(9, 'Nhà Mặt Phố', 'nha-mat-pho'),
(10, 'Đất nền dự án', 'dat-nen-du-an'),
(11, 'Đất thổ cư', 'dat-tho-cu'),
(12, 'Condotel', 'condotel'),
(13, 'Nhà trong ngõ', 'nha-trong-ngo'),
(14, 'Phòng trọ, nhà trọ', 'phong-tro-nha-tro'),
(15, 'Đất đền bù, dịch vụ', 'dat-den-bu-dich-vu'),
(16, 'Đất trang trại', 'dat-trang-trai');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_number_unique` (`phone_number`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_posts_id_foreign` (`posts_id`);

--
-- Chỉ mục cho bảng `image_posts`
--
ALTER TABLE `image_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_posts_posts_id_foreign` (`posts_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_admins_id_foreign` (`admins_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_posts_id_foreign` (`posts_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_posts_id_foreign` (`posts_id`),
  ADD KEY `tags_type_posts_id_foreign` (`type_posts_id`);

--
-- Chỉ mục cho bảng `type_posts`
--
ALTER TABLE `type_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `image_posts`
--
ALTER TABLE `image_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `type_posts`
--
ALTER TABLE `type_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `image_posts`
--
ALTER TABLE `image_posts`
  ADD CONSTRAINT `image_posts_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `tags_type_posts_id_foreign` FOREIGN KEY (`type_posts_id`) REFERENCES `type_posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
