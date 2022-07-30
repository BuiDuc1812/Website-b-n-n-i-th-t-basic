-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2022 lúc 10:09 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(77, '9744', 33, 1),
(78, '9744', 19, 1),
(79, '9744', 22, 2),
(80, '9744', 20, 1),
(81, '9744', 28, 1),
(82, '8643', 32, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(10, 'Lã Lê Duy', 'buiduc', '123', 386075101, 'duyngu@gmail.com', 'Thái Bình', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(10, 'Bàn', 1),
(11, 'Ghế', 2),
(12, 'Tủ', 3),
(13, 'Giường', 4),
(14, 'Đèn', 5),
(15, 'Thảm', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_payment`) VALUES
(63, 10, '9744', 0, 'Tiền Mặt'),
(64, 10, '8643', 0, 'Chuyển Khoảng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(18, 'THÁI CÔNG SOFA – TCAR7040', 'GHE001', 3000000, 8, 'ghe2.jpg', 'KÍCH THƯỚC\r\n• Height: 86 cm\r\n• Length: 270 cm\r\n• Width: 95 cm\r\nCHẤT LIỆU\r\n• Main Fabric / Velvet\r\n• Base in Lacquered Wood\r\n• Detail in satin brass', 'This sofa will imbue your décor scheme with sophistication and class. Curved horn accents create an exquisite textural contrast with the upholstery, quilted with a ribbed motif on the sides and back. Supreme comfort is ensured by expanded polyurethane foam, goose down, and memory foam padding.\r\n\r\nThe upholstery can be customized in a material of your choice.\r\n\r\nMade in Italy', 11, 1),
(19, 'THÁI CÔNG BED – TCLOW 848', 'GIUONG001', 15000000, 5, 'giuong2.jpg', 'KÍCH THƯỚC\r\n• Height: 132 cm\r\n• Length: 235 cm\r\n• Widths: 227 cm\r\nCHẤT LIỆU\r\n• Bed with upholstered headboard\r\n• The bottom of the container is in laminated wood with a silky surface finish\r\n• For mattress 180x200 cm', 'The bed has a wooden frame and is covered in medium-high density polyurethane foam. The headboard is completed with an elegant metal ring and the back of the headboard is upholstered in same color cloth. Non-removable fabric or leather upholstery.\r\n\r\nMade in Italia', 13, 1),
(20, 'THÁI CÔNG BED – TCLOW 835', 'GIUONG002', 20000000, 12, 'giuong3.jpg', 'KÍCH THƯỚC\r\n• Height: 37 cm\r\n• Length: 240 cm\r\n• Widths: 164-204-225 cm\r\nCHẤT LIỆU\r\n• Velvet bed with upholstered headboard double bed\r\n• The bottom of the container is in laminated wood with a silky surface finish', 'The bed has a wooden frame and a base in powder-coated metal in bronze or black color. A fixed bedspring can be inserted into the base, in a double or king size.\r\n\r\nThe back of the leather headboard can be covered with a coordinated luxury velvet. Non-removable fabric or leather covers.\r\n\r\nMade in Italia\r\n• Velvet bed with upholstered headboard double bed\r\n• The bottom of the container is in laminated wood with a silky surface finish', 13, 1),
(21, 'THÁI CÔNG BED – TCFRFFU160007', 'GIUONG003', 16000000, 4, '746_1.jpg', 'KÍCH THƯỚC\r\n• Height: 120 cm\r\n• Length: 350 cm\r\n• Width: 220 cm\r\nCHẤT LIỆU\r\n• Main Leather\r\n• Back Satin\r\n• Inlay Rattan Lacquered Wood\r\n• Satin Details Brushed Brass\r\n• Structure Solid Wood', 'Made in Portugal', 13, 0),
(22, 'THÁI CÔNG SOFA – TCMEJSPDV', 'GHE002', 6000000, 5, 'SOFA-60-1.jpg', 'KÍCH THƯỚC\r\n• Height: 74 cm\r\n• Length: 240 cm\r\n• Width: 107 cm\r\nCHẤT LIỆU\r\n• Main Fabric or Leather\r\n• Wooden frame\r\n• Black ABS feet', 'This is a sofa with padded quilted cover with vertical stitching. A convivial element, for conversation, conceived – both for the height of its backrest and for the overall conformation – for a placement in the middle of the room or to be combined with other elements.\r\n\r\nSofa can be produced in different finishes.\r\n\r\nMade in Italy', 11, 1),
(23, 'THÁI CÔNG SOFA – TCEI13982', 'GHE003', 8000000, 14, 'SOFA-58-1.jpg', 'KÍCH THƯỚC\r\n• Height: 80 cm\r\n• Length: 225 cm\r\n• Width: 90 cm\r\nCHẤT LIỆU\r\n• Upholstery in Faux shearling\r\n• Base in brushed brass finish', 'This sumptuous Sofa adds fifties-inspired glamour to your living room. With a lush velvet upholstery in faux shearling, this alluring shell-shaped sofa with brushed brass finish base will round out your interior design.', 11, 1),
(24, 'THÁI CÔNG SOFA – TCEI13419', 'GHE004', 15000000, 1, 'SOFA-52-1.jpg', 'KÍCH THƯỚC\r\n• Height: 79 cm\r\n• Length: 230 cm\r\n• Width: 85 cm\r\nCHẤT LIỆU\r\n• Upholstery in Roche dark green velvet\r\n• Black & Brass legs', 'Invite the glamour and luxury of boutique hotels into your home with this sofa. A contemporary interpretation of a classic Chesterfield furniture, this stylish couch exudes timeless appeal. With its deep-buttoned velvet upholstery and black & brass legs it adds sophistication to your living space.\r\n\r\n', 11, 0),
(25, 'THÁI CÔNG TABLE LAMP – TCAR1722', 'DEN01', 25000000, 3, 'den2.jpg', 'KÍCH THƯỚC\r\n• Height: 62 cm\r\n• Length: 50 cm\r\n• Width: 24 cm\r\nCHẤT LIỆU\r\n• Natural horn\r\n• Frame in 24k gold plated brass\r\n• Lampshade in pleated beige pongee silk', 'This is a seductive table lamp declaring the superior values of fine materials and craftsmanship at first glance. Unmistakable even when it is switched off, this lamp is distinguished by a superb decorative motif made of natural horn pieces expertly shaped by hand. The design boasts a stunning pedestal marked by thin hand engravings, resulting from noble techniques that distinguished the Florentine Renaissance. Rich in character and refined in style, this lamp will deliver classic sophistication to any living space.\r\n\r\nMade in Italia', 14, 0),
(26, 'THÁI CÔNG CHANDELIER – TCRLRL5010CG', 'DEN03', 30000000, 4, 'TCRL5010CG2.jpg', 'KÍCH THƯỚC\r\n• Height: 154 cm\r\n• Width: 127 cm\r\nCHẤT LIỆU\r\n• Crystal\r\n• 24 Lights', 'The Chandelier feature precision-cut from crystal exuding classical opulence. A plethora of faceted pieces beautifully reflect and refract the light, creating a stunning effect.', 14, 0),
(27, 'THÁI CÔNG CHANDELIER – TCFRFLF010015', 'DEN02', 25000000, 5, '527_1.jpg', 'KÍCH THƯỚC\r\n• Height: 100 cm\r\n• Length: 120 cm\r\n• Width: 120 cm\r\nCHẤT LIỆU\r\n• Structure Polished Brass\r\n• Details Plated Stainless Steel\r\n• Lampshades: fabrics such as satin, silk or organza', 'The lamp can be produced in different finishes as per our samples box.\r\nYou’re welcome to specify:\r\n– Structure: iron, stainless steel, black nickel, brass, copper-plated and gold-plated.\r\n– Lampshades: fabrics such as satin, silk or organza.\r\nSpecial requests might be considered upon request.\r\n\r\nLampshades Cylindrical: D120x270 mm\r\n\r\nMade in Portugal', 14, 0),
(28, 'THÁI CÔNG CARPET – TCEI108505', 'THAM01', 2500000, 8, '108505_0.jpg', 'KÍCH THƯỚC\r\n• Lengths: 300cm\r\n• Width: 200cm\r\nCHẤT LIỆU\r\n• 100% New Zealand wool pile', 'Beige\r\n\r\nHand tufted', 15, 1),
(29, 'THÁI CÔNG CARPET – TCEI108510', 'THAM02', 3000000, 9, '108510_0.jpg', 'KÍCH THƯỚC\r\n• Lengths: 300cm\r\n• Width: 250cm\r\nCHẤT LIỆU\r\n• 100% New Zealand wool pile', 'Grey\r\n\r\nHand tufted', 15, 0),
(30, 'THÁI CÔNG CARPET – TCEI108518', 'THAM03', 4000000, 50, '108518_0.jpg', 'KÍCH THƯỚC\r\n• Lengths: 300cm\r\n• Width: 200cm\r\nCHẤT LIỆU\r\n• 100% New Zealand wool pile', 'Grey\r\n\r\nHand tufted', 15, 0),
(31, 'THÁI CÔNG SIDE TABLE – TCEI112335', 'BAN01', 10000000, 6, 'TCEI112335_0.jpg', 'KÍCH THƯỚC\r\n• Height: 55.5 cm\r\n• Length: 72.5 cm\r\n• Width: 72.5 cm\r\nCHẤT LIỆU\r\n• Gold finish\r\n• Black finish\r\n• Bevelled clear glass', 'Side table with gold finish, black finish and bevelled clear glass', 10, 0),
(32, 'THÁI CÔNG SIDE TABLE – TCFRFFU260023', 'BAN02', 5000000, 9, 'TCFR-FFU260023AAA.jpg', 'KÍCH THƯỚC\r\n• Height : 53 cm\r\n• Diameter : Ø 55 cm\r\nCHẤT LIỆU\r\n• Wood Veneer\r\n• Details Brushed Brass', 'Side table can be produced in different finishes as per our samples box.\r\n\r\nYou’re welcome to specify:\r\n– Table: lacquer, veneer or a combination of both.\r\n– Details: iron, stainless steel, black nickel, brass, copper-plated and gold-plated.\r\nSpecial requests might be considered upon request.\r\n\r\nMade in Portugal\r\n\r\n', 10, 1),
(33, 'THÁI CÔNG BOOKCASE – TCFRFFU030001', 'TU01', 30000000, 9, 'tu2.jpg', 'KÍCH THƯỚC\r\n• Height: 180 cm\r\n• Length: 180 cm\r\n• Width: 50 cm\r\nCHẤT LIỆU\r\n• Main Wood Veneer\r\n• Box & Shelves Laquered Wood\r\n• Details & Handles Brushed Brass\r\n• Doors Inlay Faux Leather', 'Bookcase can be produced in different finishes as per our samples box.\r\nYou’re welcome to specify:\r\n– Main section & structure : lacquer, veneer or a combination of both.\r\n– Details: iron, stainless steel, black nickel, brass, cooper-plated and gold-plated.\r\n– Inlays: doors.\r\nSpecial requests might be considered upon request.\r\n\r\nMade in Portugal', 12, 1),
(34, 'THÁI CÔNG BOOKCASE – TCFRFFU250003', 'TU02', 20000000, 6, 'tu1.jpg', 'KÍCH THƯỚC\r\n• Height: 185 cm\r\n• Length: 100 cm\r\n• Width: 50 cm\r\nCHẤT LIỆU\r\n• Top, Base & Structure Wood Veneer\r\n• Shelves Wood Veneer\r\n• Details Stainless Steel', 'Shelving unit can be produced in different finishes as per our samples box.\r\nYou’re welcome to specify:\r\n– Structure: iron, stainless steel, black nickel, brass, cooper-plated and gold-plated.\r\n– Shelves: lacquer, veneer or a combination of both.\r\nSpecial requests might be considered upon request.\r\n\r\nMade in Portugal', 12, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD CONSTRAINT `tbl_cart_detail_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_sanpham` (`id_sanpham`);

--
-- Các ràng buộc cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `tbl_giohang_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_dangky` (`id_khachhang`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
