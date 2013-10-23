-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2013 at 04:52 PM
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
CREATE DATABASE IF NOT EXISTS `congthongtin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `congthongtin`;

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE IF NOT EXISTS `ban` (
  `Maban` varchar(10) NOT NULL,
  `Manhahang` varchar(10) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `Vitri` varchar(30) NOT NULL,
  `Tinhtrang` tinyint(4) NOT NULL,
  `Ghichu` text NOT NULL,
  `Hinhanh` varchar(50) NOT NULL,
  PRIMARY KEY (`Maban`,`Manhahang`),
  KEY `FK_BAN` (`Manhahang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banggiaphong`
--

CREATE TABLE IF NOT EXISTS `banggiaphong` (
  `Loai` varchar(10) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Ghichu` text NOT NULL,
  `Hinhanh` varchar(50) NOT NULL,
  PRIMARY KEY (`Loai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `TenDV` varchar(30) NOT NULL,
  `Loai` varchar(20) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Ghichu` text NOT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `CMND` varchar(10) NOT NULL,
  `Sodt` varchar(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `LoaiKH` varchar(10) NOT NULL,
  `Diem` int(11) NOT NULL,
  `MaTK` varchar(30) NOT NULL,
  PRIMARY KEY (`MaKH`),
  KEY `FK_KH` (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `MaKM` varchar(10) NOT NULL,
  `TenKM` varchar(50) NOT NULL,
  `Noidung` text NOT NULL,
  `Ngaybatdau` date NOT NULL,
  `Ngayketthuc` date NOT NULL,
  PRIMARY KEY (`MaKM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE IF NOT EXISTS `monan` (
  `Mamonan` varchar(10) NOT NULL,
  `Tenmonan` varchar(10) NOT NULL,
  `Loai` varchar(20) NOT NULL,
  `Nguongoc` varchar(30) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Hinhanh` varchar(50) NOT NULL,
  PRIMARY KEY (`Mamonan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE IF NOT EXISTS `phong` (
  `Maphong` varchar(10) NOT NULL,
  `MaKS` varchar(10) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `Vitri` varchar(30) NOT NULL,
  `Tinhtrang` tinyint(4) NOT NULL,
  `Ghichu` text NOT NULL,
  PRIMARY KEY (`Maphong`,`MaKS`),
  KEY `FK_P` (`MaKS`),
  KEY `FK_P_BGP` (`Loai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE IF NOT EXISTS `taikhoan` (
  `MaTK` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Quyen` varchar(20) NOT NULL,
  PRIMARY KEY (`MaTK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE IF NOT EXISTS `thanhvien` (
  `Madonvi` varchar(10) NOT NULL,
  `Loaihinh` varchar(10) NOT NULL,
  `Loai` varchar(10) NOT NULL,
  `Tendonvi` varchar(50) NOT NULL,
  `Diachi` varchar(50) NOT NULL,
  `DTlienhe` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Fax` varchar(20) NOT NULL,
  `Thongtinchung` text NOT NULL,
  `Hinhanh` varchar(50) NOT NULL,
  PRIMARY KEY (`Madonvi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thietbi`
--

CREATE TABLE IF NOT EXISTS `thietbi` (
  `MaTB` varchar(10) NOT NULL,
  `TenTB` varchar(50) NOT NULL,
  `Hangsx` varchar(30) NOT NULL,
  `Xuatxu` varchar(30) NOT NULL,
  `Namsx` date NOT NULL,
  `Trigia` int(11) NOT NULL,
  `Hìnhanh` varchar(50) NOT NULL,
  PRIMARY KEY (`MaTB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `FK_BAN` FOREIGN KEY (`Manhahang`) REFERENCES `thanhvien` (`Madonvi`);

--
-- Constraints for table `chitietbanan`
--
ALTER TABLE `chitietbanan`
  ADD CONSTRAINT `FK_CTBA_MA` FOREIGN KEY (`Mamonan`) REFERENCES `monan` (`Mamonan`),
  ADD CONSTRAINT `FK_CTBA_HD` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Constraints for table `chitietdatban`
--
ALTER TABLE `chitietdatban`
  ADD CONSTRAINT `FK_CTDB_DH` FOREIGN KEY (`Madon`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `FK_CTDB_B` FOREIGN KEY (`Maban`, `Manhahang`) REFERENCES `ban` (`Maban`, `Manhahang`);

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
  ADD CONSTRAINT `FK_CTP_TB` FOREIGN KEY (`MaTB`) REFERENCES `thietbi` (`MaTB`),
  ADD CONSTRAINT `FK_CTP_P` FOREIGN KEY (`Maphong`, `MaKS`) REFERENCES `phong` (`Maphong`, `MaKS`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DH_TV` FOREIGN KEY (`Madonvi`) REFERENCES `thanhvien` (`Madonvi`),
  ADD CONSTRAINT `FK_DH_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

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
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_P_BGP` FOREIGN KEY (`Loai`) REFERENCES `banggiaphong` (`Loai`),
  ADD CONSTRAINT `FK_P` FOREIGN KEY (`MaKS`) REFERENCES `thanhvien` (`Madonvi`);

