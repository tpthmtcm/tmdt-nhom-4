-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2013 at 10:36 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `congthongtin`
--
CREATE DATABASE IF NOT EXISTS `congthongtin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `congthongtin`;

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE IF NOT EXISTS `ban` (
  `Maban` varchar(10) CHARACTER SET latin1 NOT NULL,
  `Manhahang` varchar(10) CHARACTER SET latin1 NOT NULL,
  `Loai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Vitri` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Tinhtrang` tinyint(4) NOT NULL,
  `Ghichu` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Maban`,`Manhahang`),
  KEY `FK_BAN` (`Manhahang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ban`
--

INSERT INTO `ban` (`Maban`, `Manhahang`, `Loai`, `Vitri`, `Tinhtrang`, `Ghichu`) VALUES
('B001', 'NH001', 'A', 'tang tret', 0, ''),
('B001', 'NH002', 'A', 'tang tret', 0, ''),
('B001', 'NH003', 'A', 'tang tret', 1, ''),
('B001', 'NH004', 'A', 'lau 1', 1, ''),
('B001', 'NH005', 'A', 'lau 1', 1, ''),
('B001', 'NH006', 'VIP', 'lau 1', 1, ''),
('B002', 'NH001', 'A', 'tang tret', 1, ''),
('B002', 'NH002', 'B', 'lau 1', 1, ''),
('B002', 'NH003', 'B', 'lau 1', 1, ''),
('B002', 'NH004', 'B', 'tang tret', 0, ''),
('B002', 'NH005', 'B', 'lau 1', 1, ''),
('B002', 'NH006', 'A', 'lau 1', 1, ''),
('B003', 'NH001', 'B', 'lau 1', 1, ''),
('B003', 'NH002', 'B', 'lau 1', 1, ''),
('B003', 'NH003', 'VIP', 'lau 1', 0, ''),
('B003', 'NH004', 'C', 'lau 1', 1, ''),
('B003', 'NH005', 'VIP', 'tang tret', 0, ''),
('B003', 'NH006', 'B', 'tang tret', 1, ''),
('B004', 'NH001', 'C', 'lau 1', 1, ''),
('B004', 'NH002', 'C', 'lau 1', 1, ''),
('B004', 'NH004', 'VIP', 'tang tret', 0, ''),
('B005', 'NH001', 'VIP', 'lau 1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `banggiaphong`
--

CREATE TABLE IF NOT EXISTS `banggiaphong` (
  `Loai` varchar(10) NOT NULL,
  `Tenloai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `Ghichu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Khachsan` varchar(10) NOT NULL,
  PRIMARY KEY (`Loai`),
  KEY `FK_BGP` (`Khachsan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banggiaphong`
--

INSERT INTO `banggiaphong` (`Loai`, `Tenloai`, `Gia`, `Ghichu`, `Hinhanh`, `Khachsan`) VALUES
('L001', 'Superior', 924000, 'Tinh theo ngay', 'Images\\Phong\\Superior_cherry.jpg', 'KS001'),
('L002', 'Deluxe', 966000, '', 'Images\\Phong\\DELUXE_cherry.jpg', 'KS001'),
('L003', 'Premium', 1050000, '', 'Images\\Phong\\PREMIUM_cherry.jpg', 'KS001'),
('L004', 'Deluxe twin', 1134000, '', 'Images\\Phong\\DELUXE TWIN_cherry.jpg', 'KS001'),
('L005', 'Standard', 450000, '', 'Images\\Phong\\STANDARD_dangdung.jpg', 'KS002'),
('L006', 'Superior', 500000, '', 'Images\\Phong\\superior_dangdung.jpg', 'KS002'),
('L007', 'Phong don', 370000, 'Toi da 2 nguoi', 'Images\\Phong\\Phongdon_hoalong.jpg', 'KS003'),
('L008', 'Phong doi', 470000, 'Toi da 3 nguoi', 'Images\\Phong\\Phongdoi_hoalong.jpg', 'KS003'),
('L009', 'Phong VIP', 650000, 'Toi da 3 nguoi', 'Images\\Phong\\PhongVip_hoalong.jpg', 'KS003'),
('L010', 'Superior', 1218000, '', 'Images\\Phong\\Superior_bd.jpg', 'KS004'),
('L011', 'Deluxe', 1533000, '', 'Images\\Phong\\Deluxe_bd.jpg', 'KS004'),
('L012', 'Premium Deluxe', 2604000, '', 'Images\\Phong\\Premium Deluxe_bd.jpg', 'KS004'),
('L013', 'Luxury', 2904, '', 'Images\\Phong\\Luxury_bd.jpg', 'KS004'),
('L014', 'VIP', 3030000, '', 'Images\\Phong\\VIP_bd.jpg', 'KS004'),
('L015', 'Superior', 60, 'Don vi tien te:USD', 'Images\\Phong\\Superior_kingston.jpg', 'KS005'),
('L016', 'Premium Superior', 70, 'Don vi tien te:USD', 'Images\\Phong\\Premium Superior_kingston.jpg', 'KS005'),
('L017', 'Deluxe', 90, 'Don vi tien te:USD', 'Images\\Phong\\Deluxe_kingston.jpg', 'KS005'),
('L018', 'Standard', 1155000, '', 'Images\\Phong\\Standard_sgstar-jpg', 'KS006'),
('L019', 'Superior', 1365000, '', 'Images\\Phong\\SUPERIOR_sgstar-jpg', 'KS006'),
('L020', 'Deluxe', 1575000, '', 'Images\\Phong\\DELUXE_sgstar.jpg', 'KS006'),
('L021', 'Suite', 2205000, '', 'Images\\Phong\\SUITE_sgstar.jpg', 'KS006');

-- --------------------------------------------------------

--
-- Table structure for table `chitietbanan`
--

CREATE TABLE IF NOT EXISTS `chitietbanan` (
  `MaHD` varchar(10) NOT NULL,
  `Mamonan` varchar(10) NOT NULL,
  `Soluong` int(11) NOT NULL,
  PRIMARY KEY (`MaHD`,`Mamonan`),
  KEY `FK_CTBA_MA` (`Mamonan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietbanan`
--

INSERT INTO `chitietbanan` (`MaHD`, `Mamonan`, `Soluong`) VALUES
('HD013', 'MA001', 2),
('HD013', 'MA003', 2),
('HD013', 'MA008', 2),
('HD014', 'MA002', 2),
('HD014', 'MA004', 2),
('HD014', 'MA009', 2),
('HD017', 'MA010', 2),
('HD017', 'MA012', 2),
('HD017', 'MA014', 2),
('HD018', 'MA017', 2),
('HD018', 'MA019', 2),
('HD020', 'MA022', 1),
('HD020', 'MA023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatban`
--

CREATE TABLE IF NOT EXISTS `chitietdatban` (
  `Maban` varchar(10) NOT NULL,
  `Manhahang` varchar(10) NOT NULL,
  `Madon` varchar(10) NOT NULL,
  PRIMARY KEY (`Maban`,`Manhahang`,`Madon`),
  KEY `FK_CTDB_DH` (`Madon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietdatban`
--

INSERT INTO `chitietdatban` (`Maban`, `Manhahang`, `Madon`) VALUES
('B001', 'NH001', 'DH013'),
('B002', 'NH002', 'DH014'),
('B001', 'NH002', 'DH015'),
('B002', 'NH002', 'DH016'),
('B001', 'NH003', 'DH017'),
('B001', 'NH004', 'DH018'),
('B001', 'NH005', 'DH019'),
('B001', 'NH006', 'Dh020');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdatphong`
--

CREATE TABLE IF NOT EXISTS `chitietdatphong` (
  `Maphong` varchar(10) NOT NULL,
  `MaKS` varchar(10) NOT NULL,
  `Madon` varchar(10) NOT NULL,
  PRIMARY KEY (`Maphong`,`MaKS`,`Madon`),
  KEY `FK_CTDP_DH` (`Madon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietdatphong`
--

INSERT INTO `chitietdatphong` (`Maphong`, `MaKS`, `Madon`) VALUES
('P001', 'KS001', 'DH001'),
('P002', 'KS001', 'DH002'),
('P006', 'KS002', 'DH003'),
('P007', 'KS002', 'DH004'),
('P008', 'KS003', 'DH005'),
('P009', 'KS003', 'DH006'),
('P011', 'KS004', 'DH007'),
('P012', 'KS004', 'DH008'),
('P016', 'KS005', 'DH009'),
('P017', 'KS005', 'DH010'),
('P019', 'KS006', 'DH011'),
('P020', 'KS006', 'DH012');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `MaHD` varchar(10) NOT NULL,
  `MaDV` varchar(10) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Tongtien` int(11) NOT NULL,
  PRIMARY KEY (`MaHD`,`MaDV`),
  KEY `FK_CTHD_Dv` (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphong`
--

CREATE TABLE IF NOT EXISTS `chitietphong` (
  `Maphong` varchar(10) NOT NULL,
  `MaKS` varchar(10) NOT NULL,
  `MaTB` varchar(10) NOT NULL,
  `Soluong` int(11) NOT NULL,
  PRIMARY KEY (`Maphong`,`MaKS`,`MaTB`),
  KEY `FK_CTP_TB` (`MaTB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE IF NOT EXISTS `dichvu` (
  `MaDV` varchar(10) NOT NULL,
  `TenDV` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `Ghichu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Donvi` varchar(10) NOT NULL,
  PRIMARY KEY (`MaDV`),
  KEY `FK_DV` (`Donvi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`MaDV`, `TenDV`, `Gia`, `Ghichu`, `Donvi`) VALUES
('DV001', 'Giat ui', 20000, '', 'KS002'),
('DV002', 'Dien thoai trong nuoc', 1900, '', 'KS002'),
('DV003', 'Dien thoai quoc te', 5000, '', 'KS002'),
('DV004', 'Cho thue xe', 500000, 'Thue xe tinh theo ngay ', 'NH002'),
('DV005', 'Dat tour du lich', 0, '', 'KS002'),
('DV006', 'Dat ve may bay', 0, '', 'KS002'),
('DV007', 'Cho thue phong hop', 400000, '', 'KS002'),
('DV008', 'Doi tien', 0, 'Chiet khau 10%', 'KS002'),
('DV009', 'Dat tour du lich', 0, '', 'KS003'),
('DV010', 'Dat ve may bay', 0, '', 'KS003'),
('DV011', 'massage', 150000, '', 'KS003'),
('DV012', 'sauna', 180000, '', 'KS003'),
('DV013', 'steambath', 200000, '', 'KS003'),
('DV014', 'Dich vu an uong', 0, '', 'KS003'),
('DV015', 'Dien thoai quoc te', 4500, '', 'KS004'),
('DV016', 'Thue xe du lich', 0, '', 'KS004'),
('DV017', 'Dien thoai quoc te', 5000, '', 'NH005'),
('DV018', 'Thue xe du lich', 0, '', 'KS005'),
('DV019', 'Dat ve may bay', 0, '', 'KS005'),
('DV020', 'Dich vu nha hang', 0, '', 'KS006'),
('DV021', 'Karaoke', 150000, 'Tinh theo gio', 'KS006'),
('DV022', 'Dich vu suc khoe', 0, 'Bao gom massage,xong hoi', 'KS006'),
('DV023', 'Thue xe', 50000, '', 'KS006'),
('DV024', 'Du lich noi thanh', 200000, '', 'KS006'),
('DV025', 'Doi tien', 0, 'Chiet khau 10%', 'KS006'),
('DV026', 'Dich vu giat ui', 30000, '', 'KS006');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
  `MaDH` varchar(10) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `Madonvi` varchar(10) NOT NULL,
  `Thoigiantao` datetime NOT NULL,
  `Thoigiandathang` datetime NOT NULL,
  PRIMARY KEY (`MaDH`),
  KEY `FK_DH_KH` (`MaKH`),
  KEY `FK_DH_TV` (`Madonvi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDH`, `MaKH`, `Madonvi`, `Thoigiantao`, `Thoigiandathang`) VALUES
('DH001', 'KH001', 'KS001', '2013-10-17 10:00:00', '2013-10-23 12:00:00'),
('DH002', 'KH002', 'KS001', '2013-10-10 08:00:00', '2013-10-28 14:00:00'),
('DH003', 'KH003', 'KS002', '2013-10-10 07:00:00', '2013-10-12 11:30:00'),
('DH004', 'KH001', 'KS002', '2013-10-17 06:00:00', '2013-10-24 10:00:00'),
('DH005', 'KH004', 'KS003', '2013-10-15 09:23:00', '2013-10-19 18:00:00'),
('DH006', 'KH005', 'KS003', '2013-10-09 09:00:00', '2013-10-12 12:00:00'),
('DH007', 'KH005', 'KS004', '2013-10-17 10:00:00', '2013-10-19 11:00:00'),
('DH008', 'KH006', 'KS004', '2013-10-16 11:00:00', '2013-10-17 09:00:00'),
('DH009', 'KH007', 'KS005', '2013-10-01 08:00:00', '2013-10-16 11:00:00'),
('DH010', 'KH008', 'KS005', '2013-10-16 06:00:00', '2013-10-24 08:00:00'),
('DH011', 'KH009', 'KS006', '2013-10-03 08:00:00', '2013-10-09 09:00:00'),
('DH012', 'KH010', 'KS006', '2013-10-15 08:00:00', '2013-10-17 19:00:00'),
('DH013', 'KH011', 'NH001', '2013-10-18 09:00:00', '2013-10-20 10:00:00'),
('DH014', 'KH012', 'NH001', '2013-10-18 19:49:00', '2013-10-19 10:00:00'),
('DH015', 'KH013', 'NH002', '2013-10-19 10:00:00', '2013-10-21 11:00:00'),
('DH016', 'Kh014', 'NH002', '2013-10-20 08:00:00', '2013-10-22 12:00:00'),
('DH017', 'KH006', 'NH003', '2013-10-20 16:00:00', '2013-10-23 09:00:00'),
('DH018', 'KH008', 'NH004', '2013-10-23 11:00:00', '2013-10-25 09:00:00'),
('DH019', 'KH007', 'NH005', '2013-10-25 07:00:00', '2013-10-26 10:00:00'),
('Dh020', 'KH004', 'NH006', '2013-10-27 10:00:00', '2013-10-29 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `MaHD` varchar(10) NOT NULL,
  `MaDH` varchar(10) NOT NULL,
  `NgayHD` datetime NOT NULL,
  `Tongtien` int(11) NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `FK_HD` (`MaDH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaDH`, `NgayHD`, `Tongtien`) VALUES
('HD001', 'DH001', '0000-00-00 00:00:00', 0),
('HD002', 'DH002', '0000-00-00 00:00:00', 0),
('HD003', 'DH003', '0000-00-00 00:00:00', 0),
('HD004', 'DH004', '0000-00-00 00:00:00', 0),
('HD005', 'DH005', '0000-00-00 00:00:00', 0),
('HD006', 'DH006', '0000-00-00 00:00:00', 0),
('HD007', 'DH007', '0000-00-00 00:00:00', 0),
('HD008', 'DH008', '0000-00-00 00:00:00', 0),
('HD009', 'DH009', '0000-00-00 00:00:00', 0),
('HD010', 'DH010', '0000-00-00 00:00:00', 0),
('HD011', 'DH011', '0000-00-00 00:00:00', 0),
('HD012', 'DH012', '0000-00-00 00:00:00', 0),
('HD013', 'DH013', '0000-00-00 00:00:00', 0),
('HD014', 'DH014', '0000-00-00 00:00:00', 0),
('HD015', 'DH015', '0000-00-00 00:00:00', 0),
('HD016', 'DH016', '0000-00-00 00:00:00', 0),
('HD017', 'DH017', '0000-00-00 00:00:00', 0),
('HD018', 'DH018', '0000-00-00 00:00:00', 0),
('HD019', 'DH019', '0000-00-00 00:00:00', 0),
('HD020', 'Dh020', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Diachi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CMND` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Sodt` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKH` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Diem` int(11) NOT NULL,
  `MaTK` varchar(30) NOT NULL,
  PRIMARY KEY (`MaKH`),
  KEY `FK_KH` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Ngaysinh`, `Diachi`, `CMND`, `Sodt`, `Email`, `LoaiKH`, `Diem`, `MaTK`) VALUES
('KH001', 'Nguyen Ngoc Khoi', '1983-10-01', 'Go vap,tp.HCM', '0812345632', '0987654321', 'khoinguyen@gmail.com', 'A', 300, 'chuanguyen'),
('KH002', 'Bui Van Danh', '1990-01-01', 'Tan Binh,tp.HCM', '0978767991', '01209845672', 'danhbui@gmail.com', 'A', 450, 'danhbui'),
('KH003', 'Tran Hoa Trang', '1991-04-17', 'thu duc,tp.hcm', '241302216', '23134567878', 'hoatrang1704@gmail.c', 'B', 320, 'hoatrangtran'),
('KH004', 'Nguyen Thi Hue', '1967-01-10', 'Daklak', '241309876', '0500123456', '', 'A', 240, 'huenguyenthi'),
('KH005', 'Tran Van Hung', '1987-03-18', 'Binh Phuoc', '210912678', '0912349786', '', 'A', 350, 'hungtranvan'),
('KH006', 'Ngo An Ninh', '1992-10-21', 'go vap,tp.HCM', '230198765', '0983383876', 'kisirong@gmail.com', 'B', 560, 'kisirong'),
('KH007', 'Nguyen Van Hung', '1989-01-03', 'ha nam', '201034567', '0987678923', 'dongthoigian@gmail.c', 'C', 780, 'lamsaoday'),
('KH008', 'Ly thi trang', '1979-08-08', 'Binh duong', '095612345', '1234432112', '', 'C', 720, 'lythitrang'),
('KH009', 'Tran Ngoc', '1990-03-08', 'KCN song than,binh duong', '061234787', '0914562471', '', 'C', 700, 'ngoctran'),
('KH010', 'Nguyen Nhat Luan', '1992-10-13', 'Bien hoa,Dong nai', '095467892', '01689111514', 'nhatluannguyen@gmail', 'VIP', 1020, 'nhatluannguyen'),
('KH011', 'Nhu lan', '1982-06-23', 'tp.hcm', '270945678', '12345678907', '', 'VIP', 1400, 'nhulan_1289'),
('KH012', 'Nguyen Quynh Nhu', '1984-01-24', 'thu duc,tp.hcm', '201345672', '01631256785', '', 'C', 680, 'quynhnhunguyen'),
('KH013', 'Van Thi Tinh', '1980-09-08', 'Daklak', '241021578', '01665167800', 'teothivan@gmail.com', 'A', 340, 'tinhthivan'),
('Kh014', 'khach lang choi', '1978-01-10', 'tp.hcm', '072415677', '', '', 'B', 560, 'tonggiamdoc'),
('KH015', 'tran van', '1958-11-22', 'binh duong', '091234561', '0969345612', '', 'A', 310, 'tranvan');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `MaKM` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenKM` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Ngaybatdau` date NOT NULL,
  `Ngayketthuc` date NOT NULL,
  `Madonvi` varchar(10) NOT NULL,
  PRIMARY KEY (`MaKM`),
  KEY `FK_KM` (`Madonvi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `Noidung`, `Ngaybatdau`, `Ngayketthuc`, `Madonvi`) VALUES
('KM001', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn ', '2013-10-19', '2013-10-20', 'KS001'),
('KM002', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn ', '2013-10-19', '2013-10-21', 'KS002'),
('KM003', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơnChào mừng ngày phụ nữ Việt Nam 20-10', '2013-10-19', '2013-10-20', 'KS003'),
('KM004', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'KS004'),
('KM005', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'KS005'),
('KM006', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'KS006'),
('KM007', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH001'),
('KM008', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH002'),
('KM009', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH003'),
('KM010', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH004'),
('KM011', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH005'),
('KM012', 'Chào mừng ngày phụ nữ Việt Nam 20-10', 'Giảm 10% cho tất cả các hóa đơn', '2013-10-19', '2013-10-20', 'NH006');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE IF NOT EXISTS `monan` (
  `Mamonan` varchar(10) NOT NULL,
  `Tenmonan` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Loai` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Nguongoc` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `Hinhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Manhahang` varchar(10) NOT NULL,
  PRIMARY KEY (`Mamonan`),
  KEY `FK_MA` (`Manhahang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`Mamonan`, `Tenmonan`, `Loai`, `Nguongoc`, `Gia`, `Hinhanh`, `Manhahang`) VALUES
('MA001', 'Súp măng tây cua', 'Món khai vi', '', 90000, 'Images\\Monan\\supmangtaycua_anvien.jpg', 'NH001'),
('MA002', 'Chả giò cua', 'Món khai vị', '', 180000, 'Images\\Monan\\chagiocua_anvien.png', 'NH001'),
('MA003', 'Xôi chiên thịt nướng', 'Món chính', '', 180000, 'Images\\Monan\\xoichienthitnuong_anvien.jpg', 'NH001'),
('MA004', 'Bún chả bắc', 'Món chính', '', 160000, 'Images\\Monan\\bunchabac_anvien.jpg', 'NH001'),
('MA005', 'Bánh hỏi thịt nướng', 'Món chính', '', 180000, 'Images\\Monan\\banhhoithitnuong_anvien.jpg', 'NH001'),
('MA006', 'Cá kho tộ', 'Món ăn cơm việt nam', '', 170000, 'Images\\Monan\\cakhoto_anvien.jpg', 'NH001'),
('MA007', 'Gà xào gừng xả ớt', 'Món ăn cơm việt nam', '', 180000, 'Images\\Monan\\gaxaogungxaot_anvien.jpg', 'NH001'),
('MA008', 'Trái cây thập cẩm theo mùa', 'Món tráng miệng', '', 50000, 'Images\\Monan\\traicaythapcam_anvien.jpg', 'NH001'),
('MA009', 'Chuoi chien', 'Món tráng miệng', '', 50000, 'Images\\Monan\\chuoichien_anvien.jpg', 'NH001'),
('MA010', 'Sushi Moriawase', 'Sushi-Sashimi', 'Nhật Bản', 198000, 'Images\\Monan\\sushimoriawase_gonta.jpg', 'NH003'),
('MA011', 'Sashimi moriawase', 'Sushi-Sashimi', 'Nhật bản', 310000, 'Images\\Monan\\sashimimoriawase_gonta.jpg', 'NH003'),
('MA012', 'Grilled Seafood', 'Yakitori-BBQ', 'Nhật bản', 170000, 'Images\\Monan\\grilledseafood_gonta.jpg', 'NH003'),
('MA013', 'Shushin Bento', 'Yakitori-BBQ', 'Nhật bản', 110000, 'Images\\Monan\\sushibento_gonta.jpg', 'NH003'),
('MA014', 'Lemon ', 'Sochu coctail', '', 48000, 'Images\\Monan\\lemon_gonta.jpg', 'NH003'),
('MA015', 'Grape fruit', 'Sochu coctail', '', 48000, 'Images\\Monan\\grapefruit_gonta.jpg', 'NH003'),
('MA016', 'Sườn rang muối ớt', 'Heo,bò', '', 190000, 'Images\\Monan\\gd_suonrang.jpg', 'NH004'),
('MA017', 'Gà quay giòn', 'Gia cầm', '', 160000, 'Images\\Monan\\gd_giaquaygion.jpg', 'NH004'),
('MA018', 'Đậu hủ tứ xuyên', 'Đậu hủ', '', 80000, 'Images\\Monan\\gd_dauhutx.jpg', 'NH004'),
('MA019', 'Cơm chiên dương châu', 'Hủ tiếu-Mì-Cơm', '', 90000, 'Images\\Monan\\gd_comchiendc.jpg', 'NH004'),
('MA020', 'Cháo ếch ', 'Cháo', '', 110000, 'Images\\Monan\\gd_chaoech.jpg', 'NH004'),
('MA021', 'Sò điệp xào rau cải', 'Hải sản', '', 180000, 'Images\\Monan\\gd_sodiepxaocai.jpg', 'NH004'),
('MA022', 'Lẩu cá diêu hồng', 'lẩu', '', 0, 'Images\\Monan\\sky_laucadieuhong.jpg', 'NH006'),
('MA023', 'Lẩu chua cay', 'lẩu', '', 0, 'Images\\Monan\\sky_lauchuacay.jpg', 'NH006'),
('MA024', 'Lẩu thập cẩm', 'lẩu', '', 0, 'Images\\Monan\\sky_lauthapcam.jpg', 'NH006');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE IF NOT EXISTS `phong` (
  `Maphong` varchar(10) NOT NULL,
  `MaKS` varchar(10) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `Vitri` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tinhtrang` tinyint(4) NOT NULL,
  `Ghichu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Maphong`,`MaKS`),
  KEY `FK_P` (`MaKS`),
  KEY `FK_P_BGP` (`Loai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`Maphong`, `MaKS`, `Loai`, `Vitri`, `Tinhtrang`, `Ghichu`) VALUES
('P001', 'KS001', 'L001', 'tang 1', 1, ''),
('P002', 'KS001', 'L001', 'tang 1', 1, ''),
('P003', 'KS001', 'L002', 'tang 2', 0, ''),
('P004', 'KS001', 'L003', 'tang 3', 0, ''),
('P005', 'KS001', 'L004', 'tang 3', 0, ''),
('P006', 'KS002', 'L005', 'tang 1', 1, ''),
('P007', 'KS002', 'L006', 'tang 2', 0, ''),
('P008', 'KS003', 'L007', 'tang 1', 1, ''),
('P009', 'KS003', 'L008', 'tang 2', 0, ''),
('P010', 'KS003', 'L009', 'tang 1', 1, ''),
('P011', 'KS004', 'L010', 'tang 1', 1, ''),
('P012', 'KS004', 'L011', 'tang 1', 1, ''),
('P013', 'KS004', 'L012', 'tang 2', 1, ''),
('P014', 'KS004', 'L013', 'tang 2', 0, ''),
('P015', 'KS004', 'L014', 'tang 2', 1, ''),
('P016', 'KS005', 'L015', 'tang 1', 1, ''),
('P017', 'KS005', 'L016', 'tang 1', 0, ''),
('P018', 'KS005', 'L017', 'tang 2', 1, ''),
('P019', 'KS006', 'L018', 'tang 2', 1, ''),
('P020', 'KS006', 'L019', 'tang 2', 1, ''),
('P021', 'KS006', 'L020', 'tang 1', 0, ''),
('P022', 'KS006', 'L021', 'tang 1', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE IF NOT EXISTS `quyen` (
  `Quyen` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tenquyen` varchar(30) NOT NULL,
  `Chucnang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`Quyen`, `Tenquyen`, `Chucnang`) VALUES
('khach hang', 'Khách hàng', '');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaTK` varchar(30) NOT NULL,
  `Password` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Quyen` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaTK`),
  KEY `FK_TK` (`Quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTK`, `Password`, `Quyen`) VALUES
('chuanguyen', 'chua123', 'khach hang'),
('danhbui', 'danh123', 'khach hang'),
('hoatrangtran', 'hoatrang123', 'khach hang'),
('huenguyenthi', 'huenguyen123', 'khach hang'),
('hungtranvan', 'hungtran123', 'khach hang'),
('kisirong', 'kisi123', 'khach hang'),
('lamsaoday', 'lamsao123', 'khach hang'),
('lythitrang', 'lythi123', 'khach hang'),
('ngoctran', 'ngoc123', 'khach hang'),
('nhatluannguyen', 'nhatluan123', 'khach hang'),
('nhulan_1289', 'nhulan123', 'khach hang'),
('quynhnhunguyen', 'quynhnhu123', 'khach hang'),
('tinhthivan', 'tinhthi123', 'khach hang'),
('tonggiamdoc', 'tonggiam123', 'khach hang'),
('tranvan', 'tran123', 'khach hang');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `Madonvi` varchar(10) NOT NULL,
  `Loaihinh` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Loai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Tendonvi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Diachi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DTlienhe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Thongtinchung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Madonvi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`Madonvi`, `Loaihinh`, `Loai`, `Tendonvi`, `Diachi`, `DTlienhe`, `Email`, `Fax`, `Thongtinchung`, `Hinhanh`) VALUES
('KS001', 'khach san', '2 sao', 'Cherry', '8A/8D2 Thái Van Lung, P. Ben Nghe, Quan 1, Tp. HCM', '(84.8) 3824 8999 - 3825 8749 - 3825 8750 ', '', '(84.8) 3825 8751', '', 'Images\\Donvi\\Cherry_hotel.png'),
('KS002', 'khach san', '2 sao', 'Dang Dung', '50A & 54 Dang Dung, Phuong Tân Dinh, Quan 1, TP.HC', '84 8 38483192 – 84 8 38483056 – 84 8 38483206', 'dangdunghotel@yahoo.com', '84 838 483 543', '', 'Images\\Donvi\\dangdung_hotel.jpg'),
('KS003', 'khach san', '2 sao', 'Hoa Long', '160 Bis Bui Thi Xuan, P. Pham Ngu Lao, Q.1, Tp. HC', '84-(08)392-56708', '', '', '', 'Images\\Donvi\\Hoalong_hotel.jpg'),
('KS004', 'khach san', '3 sao', 'Blue Diamond', '48 - 50 Thu Khoa Huan, Quan 1, Ho Chi Minh ', '(84-8) 38 236 167', '', '', '', 'Images\\Donvi\\BLUEDIAMOND_hotel.jpg'),
('KS005', 'khach san', '3 sao', 'Kingston', '52-54 Thu Khoa Huan,Quan 1 TP.HCM', '848 38 245588', '', '848 38 245577', '', 'Images\\Donvi\\Kingston_hotel.jpg'),
('KS006', 'khach san', '3 sao', 'Saigon Star', '204 Nguyen Thi Minh Khai, Quan 3, TP.H? Chí Minh', '(84.8) 39306290 - 39306297 ', '', '(84.8) 39306300 – 39', '', 'Images\\Donvi\\Saigonstar_hotel.jpg'),
('NH001', 'nha hang', '', 'An Vien', '178A Hai Ba Trung, Q1, TP. HCM', '(08) 38 243 877', '', '', '', 'Images\\Donvi\\Anvien_res.png'),
('NH002', 'nha hang', '', 'Cathay-Kim Cuong', '19 Bui Thi Xuan, P. Ben Thanh, Q.1, TP.HCM', '083.8334411', '', '', '', 'Images\\Donvi\\Cathay-kimcuong.jpg'),
('NH003', 'nha hang', '', 'Gonta', '196 Le Lai - Phuong Ben Thanh - Quan 1 - Tp.HCM', '(08) 3925 5733, 0933 73 99 11', '', '', '', 'Images\\Donvi\\Gonta_res.jpg'),
('NH004', 'nha hang', '', 'Gourmet’s Delight Restaurant', 'so 15, tang 1, Kumho Link, toa nha Kumho Asiana Pl', '(08) 3521 8181', '', '', '', 'Images\\Donvi\\Gourmet’s Delight.jpg'),
('NH005', 'nha hang', '', 'Grand Cafe', '8 ?ong Khoi, Quan 1,TP.HCM', '(08) 39155555', '', '', '', 'Images\\Donvi\\grandcafe_res.jpg'),
('NH006', 'nha hang', '', 'Sky Restaurant', '84A Bui Thi Xuan, Quan 1, TP.HCM', '08.3925.9817', '', '', '', 'Images\\Donvi\\sky_res.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `thietbi`
--

CREATE TABLE IF NOT EXISTS `thietbi` (
  `MaTB` varchar(10) NOT NULL,
  `TenTB` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hangsx` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Xuatxu` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Namsx` date NOT NULL,
  `Trigia` int(11) NOT NULL,
  `Hìnhanh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaTB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thietbi`
--

INSERT INTO `thietbi` (`MaTB`, `TenTB`, `Hangsx`, `Xuatxu`, `Namsx`, `Trigia`, `Hìnhanh`) VALUES
('TB001', 'Máy lạnh', 'SAMSUNG', 'Hàn quốc', '2009-01-01', 4500000, 'Images\\Thietbi\\tulanh.jpg'),
('TB002', 'Ti vi', 'Sony', 'Nhật bản', '2010-01-01', 5500000, 'Images\\Thietbi\\tv.jpg'),
('TB003', 'Điều hòa', 'Panasonic', 'Nhật bản', '2011-01-01', 8300000, 'Images\\Thietbi\\dieuhoa.jpg'),
('TB004', 'Máy nóng lạnh', 'Sharp', 'Nhật bản', '2012-01-01', 2530000, 'Images\\Thietbi\\maynonglanh.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `FK_BAN` FOREIGN KEY (`Manhahang`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `banggiaphong`
--
ALTER TABLE `banggiaphong`
  ADD CONSTRAINT `FK_BGP` FOREIGN KEY (`Khachsan`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `chitietbanan`
--
ALTER TABLE `chitietbanan`
  ADD CONSTRAINT `FK_CTBA_HD` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `FK_CTBA_MA` FOREIGN KEY (`Mamonan`) REFERENCES `monan` (`Mamonan`);

--
-- Constraints for table `chitietdatban`
--
ALTER TABLE `chitietdatban`
  ADD CONSTRAINT `FK_CTDB_B` FOREIGN KEY (`Maban`, `Manhahang`) REFERENCES `ban` (`Maban`, `Manhahang`),
  ADD CONSTRAINT `FK_CTDB_DH` FOREIGN KEY (`Madon`) REFERENCES `donhang` (`MaDH`);

--
-- Constraints for table `chitietdatphong`
--
ALTER TABLE `chitietdatphong`
  ADD CONSTRAINT `FK_CTDP_DH` FOREIGN KEY (`Madon`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `FK_CTDP_P` FOREIGN KEY (`Maphong`, `MaKS`) REFERENCES `phong` (`Maphong`, `MaKS`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `FK_CTHD_Dv` FOREIGN KEY (`MaDV`) REFERENCES `dichvu` (`MaDV`),
  ADD CONSTRAINT `FK_CTHD_HD` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Constraints for table `chitietphong`
--
ALTER TABLE `chitietphong`
  ADD CONSTRAINT `FK_CTP_P` FOREIGN KEY (`Maphong`, `MaKS`) REFERENCES `phong` (`Maphong`, `MaKS`),
  ADD CONSTRAINT `FK_CTP_TB` FOREIGN KEY (`MaTB`) REFERENCES `thietbi` (`MaTB`);

--
-- Constraints for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD CONSTRAINT `FK_DV` FOREIGN KEY (`Donvi`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DH_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `FK_DH_TV` FOREIGN KEY (`Madonvi`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_HD` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `FK_KH` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`);

--
-- Constraints for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `FK_KM` FOREIGN KEY (`Madonvi`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `FK_MA` FOREIGN KEY (`Manhahang`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_P` FOREIGN KEY (`MaKS`) REFERENCES `thanhvien` (`Madonvi`),
  ADD CONSTRAINT `FK_P_BGP` FOREIGN KEY (`Loai`) REFERENCES `banggiaphong` (`Loai`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_TK` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`Quyen`);
