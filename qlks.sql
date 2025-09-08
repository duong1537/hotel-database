-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 10:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlks`
--

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `MADV` varchar(9) NOT NULL,
  `TENDV` varchar(15) DEFAULT NULL,
  `GIADV` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`MADV`, `TENDV`, `GIADV`) VALUES
('1001', 'Bạc', 10),
('1002', 'Vàng', 20),
('1003', 'Kim Cương', 40);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHD` varchar(9) NOT NULL,
  `MAPHG` varchar(9) DEFAULT NULL,
  `MAKH` varchar(9) DEFAULT NULL,
  `MANV` varchar(9) DEFAULT NULL,
  `NGAY` int(11) NOT NULL,
  `GIATIEN` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MAHD`, `MAPHG`, `MAKH`, `MANV`, `NGAY`, `GIATIEN`) VALUES
('4001', '109', '2026', '007', 9, 990),
('4002', '301', '2027', '011', 9, 3780),
('4003', '308', '2025', '011', 8, 1680),
('4004', '302', '2032', '011', 1, 210),
('4005', '103', '2028', '007', 2, 220),
('4006', '205', '2034', '004', 1, 420),
('4007', '106', '2013', '007', 1, 210),
('4008', '101', '2014', '007', 1, 110),
('4009', '404', '2012', '016', 1, 740),
('4010', '105', '2024', '007', 8, 880),
('4011', '110', '2029', '007', 8, 1680),
('4012', '303', '2015', '011', 1, 420),
('4013', '310', '2001', '011', 10, 2100),
('4014', '107', '2016', '007', 9, 990),
('4015', '504', '2011', '003', 2, 1480),
('4016', '204', '2030', '004', 8, 1680),
('4017', '206', '2017', '004', 1, 210),
('4018', '309', '2002', '011', 2, 840),
('4019', '208', '2031', '004', 2, 840),
('4020', '102', '2018', '007', 8, 1680),
('4021', '401', '2003', '016', 2, 1480),
('4022', '104', '2033', '007', 1, 210),
('4023', '501', '2005', '003', 2, 1480),
('4024', '203', '2023', '004', 1, 420),
('4025', '403', '2010', '016', 9, 6660),
('4026', '201', '2004', '004', 7, 1470),
('4027', '306', '2019', '011', 3, 630),
('4028', '210', '2035', '004', 8, 3360),
('4029', '505', '2006', '003', 8, 5920),
('4030', '502', '2020', '003', 3, 2220),
('4031', '503', '2008', '003', 2, 1480),
('4032', '402', '2009', '016', 2, 1480),
('4033', '202', '2007', '004', 2, 840),
('4034', '307', '2021', '011', 8, 3360),
('4035', '108', '2022', '007', 1, 210);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` varchar(9) NOT NULL,
  `TENKH` varchar(100) DEFAULT NULL,
  `CMND` varchar(15) DEFAULT NULL,
  `QUOCTICH` varchar(20) DEFAULT NULL,
  `NGSINHKH` date DEFAULT NULL,
  `SDT` int(11) NOT NULL,
  `MAPHG` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `TENKH`, `CMND`, `QUOCTICH`, `NGSINHKH`, `SDT`, `MAPHG`) VALUES
('2001', 'Dương Trí Anh', '12441130054', 'Việt Nam', '1988-01-13', 915146131, '310'),
('2002', 'Lê Tiến Anh', '1542761267', 'Việt Nam', '1997-06-15', 924842641, '309'),
('2003', 'Nhật Tinh Anh', '1421272561', 'Việt Nam', '1979-09-17', 947847477, '401'),
('2004', 'Lê Ngọc Bích', '1425571572', 'Việt Nam', '1992-06-14', 934721557, '201'),
('2005', 'Justin Drew Bieber', 'B8329432', 'Canada', '1994-03-01', 972427175, '501'),
('2006', 'Charlie Puth', 'A2384101', 'Mỹ', '1991-12-01', 911246218, '505'),
('2007', 'Lê Quốc Đạt', '15271741254', 'Việt Nam', '1986-09-12', 917214527, '202'),
('2008', 'Lưu Minh Đức', '1642721474', 'Việt Nam', '1989-07-16', 917124441, '503'),
('2009', 'Selena Gomez', 'B3472980', 'Mỹ', '1922-07-22', 912451227, '402'),
('2010', 'Lewis Hamilton', 'B1674611', 'Anh', '1985-01-07', 914525738, '403'),
('2011', 'Bùi Xuân Huấn', '1384387563', 'Việt Nam', '2000-07-16', 954674724, '504'),
('2012', 'Đàm Vĩnh Hưng', '14257214721', 'Việt Nam', '1999-06-04', 944527733, '404'),
('2013', 'Ngô Kiến Huy', '1974127214', 'Việt Nam', '1986-07-19', 914551577, '106'),
('2014', 'Ngô Bá Khá', '1202044057', 'Việt Nam', '2002-09-07', 911554723, '101'),
('2015', 'Lâm Chấn Khang', '24527176741', 'Việt Nam', '2000-06-18', 921775724, '303'),
('2016', 'Nguyễn Anh Khoa', '27551479474', 'Việt Nam', '1999-12-06', 919911939, '107'),
('2017', 'Nguyễn Bằng Kiều', '11457241344', 'Việt Nam', '1983-08-02', 915422442, '202'),
('2018', 'Lý Nhã Kỳ', '24574147381', 'Việt Nam', '1996-06-15', 913334277, '102'),
('2019', 'Lê Dương Bảo Lâm', '1283748721', 'Việt Nam', '2002-05-03', 942451726, '306'),
('2020', 'Leona Lewis', 'B8240248', 'Anh', '1985-04-03', 961274264, '502'),
('2021', 'Đỗ Mỹ Linh', '11217841314', 'Việt Nam', '1996-06-09', 912754157, '307'),
('2022', 'Đào Bá Lộc', '1145217512', 'Việt Nam', '1993-09-08', 912475143, '108'),
('2023', 'Vũ Bình Minh', '1421784514', 'Việt Nam', '1999-12-08', 912542075, '203'),
('2024', 'Mai Hồng Ngọc', '11245551784', 'Việt Nam', '1969-07-16', 912756164, '105'),
('2025', 'Ưng Hoàng Phúc', '11452721484', 'Việt Nam', '1981-03-19', 914751727, '308'),
('2026', 'Phạm Khánh Phương', '1045178110', 'Việt Nam', '2000-06-03', 912457217, '109'),
('2027', 'Vũ Lệ Quyên', '1754187421', 'Việt Nam', '1991-05-16', 912762585, '301'),
('2028', 'Phạm Lưu Tuấn Tài', '14274512574', 'Việt Nam', '1988-09-18', 912721735, '103'),
('2029', 'Bùi Quang Trung', '1917412751', 'Việt Nam', '1998-05-16', 932759424, '110'),
('2030', 'Vương Quốc Tuân', '1421574854', 'Việt Nam', '1991-01-01', 912452738, '204'),
('2031', 'Nguyễn Thanh Tùng', '1342751541', 'Việt Nam', '1998-05-06', 921752144, '208'),
('2032', 'Phan Đình Tùng', '12145252741', 'Việt Nam', '1977-05-06', 932676211, '302'),
('2033', 'Vũ Cát Tường', '1914257121', 'Việt Nam', '1963-03-14', 934722151, '104'),
('2034', 'Hoàng Quốc Việt', '1104421070', 'Việt Nam', '1999-06-15', 913671274, '205'),
('2035', 'Nguyễn Khắc Việt', '1527101103', 'Việt Nam', '1982-11-06', 931752724, '210');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MANV` varchar(9) NOT NULL,
  `TENNV` varchar(100) DEFAULT NULL,
  `SEX` varchar(5) DEFAULT NULL,
  `NGSINH` date DEFAULT NULL,
  `CHUCVU` varchar(30) DEFAULT NULL,
  `LUONG` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MANV`, `TENNV`, `SEX`, `NGSINH`, `CHUCVU`, `LUONG`) VALUES
('001', 'Võ Thị Thanh Thảo', 'Nữ', '1971-02-02', 'Quản lý', 1500),
('002', 'Bùi Mạnh Quốc Huy', 'Nam', '1972-02-04', 'Kế toán', 1000),
('003', 'Lê Thị Mai', 'Nữ', '1980-11-16', 'Buồng phòng', 800),
('004', 'Trần Kim Ngọc', 'Nữ', '1986-02-05', 'Buồng phòng', 600),
('005', 'Lai Như Quỳnh', 'Nữ', '1989-10-02', 'Kế toán', 1000),
('006', 'Đặng Ngọc Thanh Loan', 'Nữ', '1982-09-18', 'Lễ tân', 800),
('007', 'Lê Thị Đào', 'Nữ', '1994-02-27', 'Buồng phòng', 400),
('008', 'Phạm Đoàn Minh Hiếu', 'Nam', '1983-03-01', 'Phụ bếp', 700),
('009', 'Nguyễn Thị Thanh Tuyền', 'Nữ', '1986-08-11', 'Thủ quỹ', 1200),
('010', 'Nguyễn Thị Minh Hằng', 'Nữ', '1991-12-08', 'Thu ngân', 1000),
('011', 'Nguyễn Thị Phương', 'Nữ', '1990-01-05', 'Buồng phòng', 600),
('012', 'Đỗ Thị Thùy Dương', 'Nữ', '1992-06-01', 'Buồng phòng', 600),
('013', 'Trần Duy Lâm', 'Nam', '1976-05-03', 'Giặt là', 600),
('014', 'Nguyễn Bảo Lộc', 'Nam', '1982-06-18', 'Đầu bếp', 1000),
('015', 'Nguyễn Thúy Hiền', 'Nữ', '1999-11-06', 'Lễ tân', 800),
('016', 'Nguyễn Thị Huyền Ly', 'Nữ', '1987-10-05', 'Buồng phòng', 800),
('017', 'Nguyễn Thu Hằng', 'Nữ', '1960-05-17', 'Vệ sinh', 600),
('018', 'Nguyễn Bảo Lộc', 'Nam', '1984-07-16', 'Bảo vệ', 400),
('019', 'Đặng Thị Út Tiệp', 'Nữ', '1962-06-03', 'Vệ sinh', 600),
('020', 'Nguyễn Thanh Vũ', 'Nữ', '1974-11-07', 'Giặt là', 600),
('021', 'Nguyễn Xuân Bình', 'Nam', '1960-01-23', 'Bảo vệ', 400);

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MAPHG` varchar(9) NOT NULL,
  `LOAIPHG` varchar(15) DEFAULT NULL,
  `GIAPHG` double DEFAULT NULL,
  `TTPHG` varchar(5) DEFAULT NULL,
  `MANV` varchar(9) DEFAULT NULL,
  `MADV` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MAPHG`, `LOAIPHG`, `GIAPHG`, `TTPHG`, `MANV`, `MADV`) VALUES
('101', 'STD', 100, 'Hết', '007', '1001'),
('102', 'SUP', 200, 'Hết', '007', '1001'),
('103', 'STD', 100, 'Hết', '007', '1001'),
('104', 'SUP', 200, 'Hết', '007', '1001'),
('105', 'STD', 100, 'Hết', '007', '1001'),
('106', 'SUP', 200, 'Hết', '007', '1001'),
('107', 'STD', 100, 'Hết', '007', '1001'),
('108', 'SUP', 200, 'Hết', '007', '1001'),
('109', 'STD', 100, 'Hết', '007', '1001'),
('110', 'SUP', 200, 'Hết', '007', '1001'),
('201', 'SUP', 200, 'Hết', '004', '1001'),
('202', 'DLX', 400, 'Hết', '004', '1002'),
('203', 'SUP', 200, 'Hết', '004', '1001'),
('204', 'DLX', 400, 'Hết', '004', '1002'),
('205', 'SUP', 200, 'Hết', '004', '1001'),
('206', 'DLX', 400, 'Hết', '004', '1002'),
('207', 'SUP', 200, 'Trống', '004', '1001'),
('208', 'DLX', 400, 'Hết', '004', '1002'),
('209', 'SUP', 200, 'Trống', '004', '1001'),
('210', 'DLX', 400, 'Hết', '004', '1002'),
('301', 'DLX', 400, 'Hết', '011', '1002'),
('302', 'SUP', 200, 'Hết', '011', '1001'),
('303', 'DLX', 400, 'Hết', '011', '1002'),
('304', 'SUP', 200, 'Trống', '011', '1001'),
('305', 'DLX', 400, 'Trống', '011', '1002'),
('306', 'SUP', 200, 'Hết', '011', '1001'),
('307', 'DLX', 400, 'Hết', '011', '1002'),
('308', 'SUP', 200, 'Hết', '011', '1001'),
('309', 'DLX', 400, 'Hết', '011', '1002'),
('310', 'SUP', 200, 'Hết', '011', '1001'),
('401', 'SUT', 700, 'Hết', '016', '1003'),
('402', 'SUT', 700, 'Hết', '016', '1003'),
('403', 'SUT', 700, 'Hết', '016', '1003'),
('404', 'SUT', 700, 'Trống', '016', '1003'),
('405', 'SUT', 700, 'Hết', '016', '1003'),
('501', 'SUT', 700, 'Hết', '003', '1003'),
('502', 'SUT', 700, 'Hết', '003', '1003'),
('503', 'SUT', 700, 'Hết', '003', '1003'),
('504', 'SUT', 700, 'Hết', '003', '1003'),
('505', 'SUT', 700, 'Hết', '003', '1003');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MADV`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `MAPHG` (`MAPHG`),
  ADD KEY `MAKH` (`MAKH`),
  ADD KEY `MANV` (`MANV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`),
  ADD KEY `MAPHG` (`MAPHG`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MANV`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MAPHG`),
  ADD KEY `MANV` (`MANV`),
  ADD KEY `MADV` (`MADV`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MAPHG`) REFERENCES `phong` (`MAPHG`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MAPHG`) REFERENCES `phong` (`MAPHG`);

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  ADD CONSTRAINT `phong_ibfk_2` FOREIGN KEY (`MADV`) REFERENCES `dichvu` (`MADV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
