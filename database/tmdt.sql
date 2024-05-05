-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 02, 2018 lúc 05:21 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodiem` int(10) DEFAULT NULL,
  `traloi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kieubl` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `sanpham_id`, `user_id`, `hoten`, `email`, `noidung`, `sodiem`, `traloi`, `kieubl`, `created_at`, `updated_at`) VALUES
(19, 11, 2, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', 'Sản phẩm đẹp,mà giá lại vừa phải', 3, NULL, 0, '2017-12-13 14:46:47', '2017-12-13 14:46:47'),
(20, 11, 2, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', 'Tôi 58kg thì nên đi size gì vậy shop?', 0, 'size 42 nhé', 1, '2017-12-13 14:47:15', '2017-12-13 15:39:09'),
(21, 12, 2, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', 'Bây giờ tôi muốn mua thì làm như thế nào?', 0, NULL, 1, '2017-12-13 15:49:02', '2017-12-20 02:10:18'),
(26, 11, NULL, 'BangBK', 'bangphamsy97@gmail.com', 'Sao cái này rẻ vậy?', 0, NULL, 1, '2017-12-13 19:00:51', '2017-12-13 19:00:51'),
(27, 19, 4, 'Dương Trọng Linh', 'linh@gmail.com', 'Giày đi êm,dễ chịu,thoải mái', 4, NULL, 0, '2017-12-14 06:33:05', '2017-12-14 06:33:05'),
(28, 12, NULL, 'Minh Đức', 'minhduc@gmail.com', 'Sản phẩm này có màu khác không bạn?', 0, 'Có bạn ạ!', 1, '2017-12-14 06:50:56', '2017-12-14 06:55:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdon`
--

CREATE TABLE `chitietdon` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `donhangshop_id` int(10) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(10) NOT NULL,
  `mausac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdon`
--

INSERT INTO `chitietdon` (`id`, `shop_id`, `donhangshop_id`, `sanpham_id`, `soluong`, `mausac`, `size`, `created_at`, `updated_at`) VALUES
(68, 1, 57, 11, 1, NULL, NULL, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(69, 1, 57, 19, 1, NULL, NULL, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(70, 1, 57, 22, 1, NULL, NULL, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(71, 2, 58, 23, 1, NULL, NULL, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(72, 1, 59, 22, 1, NULL, NULL, '2017-12-14 06:28:59', '2017-12-14 06:28:59'),
(73, 1, 59, 19, 1, NULL, NULL, '2017-12-14 06:29:00', '2017-12-14 06:29:00'),
(74, 2, 60, 24, 1, NULL, NULL, '2017-12-14 06:29:00', '2017-12-14 06:29:00'),
(75, 1, 61, 11, 1, NULL, NULL, '2017-12-14 08:32:14', '2017-12-14 08:32:14'),
(76, 2, 62, 23, 1, NULL, NULL, '2017-12-14 08:32:14', '2017-12-14 08:32:14'),
(77, 1, 63, 11, 1, NULL, NULL, '2017-12-14 08:35:26', '2017-12-14 08:35:26'),
(78, 2, 64, 23, 1, NULL, NULL, '2017-12-14 08:35:26', '2017-12-14 08:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `sodiem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tongtien` double NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhthucthanhtoan` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `user_id`, `tongtien`, `hoten`, `email`, `sodienthoai`, `diachi`, `ghichu`, `hinhthucthanhtoan`, `created_at`, `updated_at`) VALUES
(48, 2, 2370000, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', '114', 'hd', 'Giao Hàng trong tuần', NULL, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(49, 4, 1970000, 'Dương Trọng Linh', 'linh@gmail.com', '098765432', 'Bắc Ninh', 'Giao Hàng trong tuần', NULL, '2017-12-14 06:28:59', '2017-12-14 06:28:59'),
(50, NULL, 600000, 'Phạm Sỹ Bằng', 'bangphams@gmail.com', '113', 'hai duong', 'giao hàng', 1, '2017-12-14 08:32:14', '2017-12-14 08:32:14'),
(51, 2, 500000, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', '114', 'hd', 'giao hàng', NULL, '2017-12-14 08:35:25', '2017-12-14 08:35:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangshop`
--

CREATE TABLE `donhangshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `donhang_id` int(10) NOT NULL,
  `tongtien` double NOT NULL,
  `tinhtrangdon` int(11) NOT NULL,
  `hinhthuc` int(11) NOT NULL,
  `nhanhang` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhangshop`
--

INSERT INTO `donhangshop` (`id`, `shop_id`, `donhang_id`, `tongtien`, `tinhtrangdon`, `hinhthuc`, `nhanhang`, `created_at`, `updated_at`) VALUES
(57, 1, 48, 1870000, 1, 0, 1, '2017-12-13 17:32:50', '2017-12-13 17:33:07'),
(58, 2, 48, 500000, 0, 0, 1, '2017-12-13 06:40:09', '2017-12-13 06:40:09'),
(59, 1, 49, 1770000, 1, 0, 1, '2017-12-14 08:27:51', '2017-12-14 08:27:56'),
(60, 2, 49, 200000, 0, 0, 0, '2017-12-14 06:29:00', '2017-12-14 06:29:00'),
(61, 1, 50, 100000, 0, 0, 0, '2017-12-14 08:32:14', '2017-12-14 08:32:14'),
(62, 2, 50, 500000, 0, 0, 0, '2017-12-14 08:32:14', '2017-12-14 08:32:14'),
(63, 1, 51, 100000, 0, 0, 0, '2017-12-14 08:35:25', '2017-12-14 08:35:25'),
(64, 2, 51, 500000, 0, 0, 0, '2017-12-14 08:35:26', '2017-12-14 08:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloaisanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`) VALUES
(1, 'THỜI TRANG'),
(2, 'SÁCH'),
(3, 'ĐIỆN THOẠI\r\n'),
(4, 'VĂN PHÒNG PHẨM');

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
(30, '2017_10_22_013414_create_sanphamshop_table', 1),
(34, '2017_10_22_012430_create_shop_table', 2),
(35, '2017_10_22_013337_create_sanpham_table', 2),
(36, '2017_10_22_014541_create_loaisanpham_table', 2),
(37, '2017_10_22_160630_create_taoshop_table', 2),
(38, '2017_10_22_161535_create_users_table', 2),
(39, '2017_11_01_135250_create_tichdiem_table', 3),
(40, '2017_11_01_140821_create_donhang_table', 3),
(41, '2017_11_01_141324_create_donhangshop_table', 3),
(42, '2017_11_01_141533_create_chitietdon_table', 3),
(43, '2017_11_01_142046_create_thanhtoan_table', 3),
(44, '2017_11_01_142330_create_binhluan_table', 3),
(45, '2017_11_01_142624_create_danhgia_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `loaisanpham_id` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `tilekhuyenmai` int(11) NOT NULL,
  `kmtile` int(11) DEFAULT NULL,
  `kmdonggia` double DEFAULT NULL,
  `mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` int(1) NOT NULL,
  `hangsx` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigiankmdonggia` datetime DEFAULT NULL,
  `thoigiankmtile` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `shop_id`, `loaisanpham_id`, `tensanpham`, `hinhanh`, `gia`, `tilekhuyenmai`, `kmtile`, `kmdonggia`, `mota`, `trangthai`, `hangsx`, `thoigiankmdonggia`, `thoigiankmtile`, `created_at`, `updated_at`) VALUES
(11, 1, 1, 'giày nam thể thao', 'fob8_703a0050.jpg', 100000, 12, NULL, NULL, '<p>Giay nam cá tính&nbsp;</p>', 0, 'NIKE', NULL, NULL, '2017-11-16 01:03:20', '2017-12-20 02:04:35'),
(12, 1, 1, 'giày nữ trẻ trung', 'f0nk_212.jpg', 100000, 12, NULL, NULL, '<p>Xuất sứ:Việt Nam</p>', 0, 'VIỆT NAM', NULL, NULL, '2017-11-16 07:22:19', '2017-12-20 02:04:35'),
(19, 1, 1, 'giày đẹp', 'JJ6v_FHHwuZ_simg_b5529c_250x250_maxb.jpg', 1700000, 5, NULL, NULL, '<p>Giày vải đẹp mịn chất lượng tốt</p>', 0, 'ADIDAS', NULL, NULL, '2017-11-23 17:41:58', '2017-12-14 07:04:31'),
(20, 1, 2, 'Đắc nhân tâm', 'mMz7_tải xuống.png', 99000, 0, NULL, NULL, '<p>Sách hay bán chạy nhất thế kỉ</p>', 0, 'VINABOOK', NULL, NULL, '2017-11-27 08:45:45', '2017-12-07 17:54:43'),
(21, 1, 2, 'Tôi đúng bạn sai', '1c1M_toidungbansai.jpg', 55000, 5, NULL, NULL, '<p>Sách là hành trang cho các bạn trẻ vào tương lai</p>\r\n\r\n<p>&nbsp;</p>', 0, 'ALPHABOOK', NULL, NULL, '2017-11-27 08:49:00', '2017-12-07 17:54:43'),
(22, 1, 2, 'Sát thủ bán hàng', '8wKr_satthubanhang.png', 70000, 10, NULL, NULL, '<p>Sách cung cấp kiến thức về bán hàng marketing chuyên nghiệp</p>', 0, 'ALPHABOOK', NULL, NULL, '2017-11-27 08:55:22', '2017-12-07 17:54:43'),
(23, 2, 1, 'giày Adidas mới về', 'Q5mQ_sTlw1N_simg_b5529c_250x250_maxb.jpeg', 500000, 5, NULL, 500000, '<p>giày đẹp kiểu dáng tốt</p>', 0, 'ADIDAS', NULL, NULL, '2017-11-27 15:48:39', '2017-11-30 18:23:57'),
(24, 2, 2, 'ĐNT', 'aI3r_tải xuống.png', 200000, 10, NULL, 500000, '<p>SÁCH</p>', 0, 'ALPHABOOK', NULL, NULL, '2017-11-27 15:51:09', '2017-11-30 16:17:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamshop`
--

CREATE TABLE `sanphamshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `soluongxuat` int(11) NOT NULL,
  `sodiem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamshop`
--

INSERT INTO `sanphamshop` (`id`, `sanpham_id`, `shop_id`, `soluongnhap`, `soluongxuat`, `sodiem`) VALUES
(1, 11, 1, 12, 10, 13),
(2, 12, 1, 20, 5, 0),
(5, 19, 1, 26, 2, 4),
(6, 20, 1, 50, 0, 0),
(7, 21, 1, 40, 2, 1),
(8, 22, 1, 70, 4, 0),
(9, 23, 2, 50, 10, 0),
(10, 24, 2, 20, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop`
--

CREATE TABLE `shop` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenshop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop`
--

INSERT INTO `shop` (`id`, `user_id`, `name`, `tenshop`, `created_at`, `updated_at`) VALUES
(1, 2, 'Phạm Sỹ Bằng', 'Never_Give_Up', '2017-11-01 07:34:24', '2017-11-01 07:34:39'),
(2, 2, 'Phạm Sỹ Bằng', 'TryHard', '2017-11-01 07:35:08', '2017-11-01 07:35:13'),
(3, 2, 'Phạm Sỹ Bằng', '3', '2017-11-02 00:16:32', '2017-11-02 00:16:43'),
(4, 2, 'Phạm Sỹ Bằng', 'ban dien thoai', '2017-12-04 09:29:32', '2017-12-04 09:30:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taoshop`
--

CREATE TABLE `taoshop` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenshop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taoshop`
--

INSERT INTO `taoshop` (`id`, `user_id`, `name`, `tenshop`, `created_at`, `updated_at`) VALUES
(2, 2, 'Phạm Sỹ Bằng', 'ban dt', '2017-11-02 00:18:04', '2017-11-02 00:18:04'),
(3, 2, 'Phạm Sỹ Bằng', 'ĐTDT', '2017-12-20 02:03:41', '2017-12-20 02:03:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tichdiem`
--

CREATE TABLE `tichdiem` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tichdiem`
--

INSERT INTO `tichdiem` (`id`, `user_id`, `diem`, `created_at`, `updated_at`) VALUES
(1, 2, 50, NULL, '2017-12-14 08:35:25'),
(2, 4, 60, NULL, '2017-12-14 06:28:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `sodienthoai`, `diachi`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$UPU1ev1yDxit4oo8HAvNtOiua0GDsgX.e8KT/APuniPxaKIkcmy6e', '113', 'admin', 4, 'd7Y0PBzw98UhNigDMm9Yl1a2QGUuFKVnRYpphYb027eRUhPtzKhzHOV9gGJL', '2017-11-01 07:32:18', '2017-11-01 07:32:18'),
(2, 'Phạm Sỹ Bằng', 'bangphamsy97@gmail.com', '$2y$10$9vbRfc/KrwFcpnoAA28.ZuRnmIlR4roSysFnxLQ/oBUcJJodACBKu', '114', 'hd', 2, 'Qzooa0oYdIyRRGv7nlQUgaV4q6HnYjxxJlAM4DaC1dqdJx6nwyibrUIKNmOE', '2017-11-01 07:33:33', '2017-12-04 09:30:29'),
(3, 'admin', 'abc@gmail.com', '$2y$10$tfQEuZLkLHZzL3ao9T2h8Og/VhBNJwmw/fGWLP45nRG.Is4p3009K', '1', '1', 1, NULL, '2017-11-02 00:20:53', '2017-11-02 00:20:53'),
(4, 'Dương Trọng Linh', 'linh@gmail.com', '$2y$10$obQDrwTIUYxQqsCfLYSrSe4koRnCKKcrImFqEJS7ue0vghATvKFLa', '098765432', 'Bắc Ninh', 1, 'SSyCasU87pcSs3U8pPIGQlN8yB54HBE19DLQkNxys9ydMDPmB8CyVzgywBg0', '2017-12-07 16:11:34', '2017-12-07 16:11:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdon`
--
ALTER TABLE `chitietdon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhangshop`
--
ALTER TABLE `donhangshop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphamshop`
--
ALTER TABLE `sanphamshop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taoshop`
--
ALTER TABLE `taoshop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tichdiem`
--
ALTER TABLE `tichdiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT cho bảng `chitietdon`
--
ALTER TABLE `chitietdon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT cho bảng `donhangshop`
--
ALTER TABLE `donhangshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `sanphamshop`
--
ALTER TABLE `sanphamshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `taoshop`
--
ALTER TABLE `taoshop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tichdiem`
--
ALTER TABLE `tichdiem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
