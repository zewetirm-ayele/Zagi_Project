-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Apr 06, 2026 at 06:26 PM
-- Server version: 8.0.34
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayelezm_zagimore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` char(2) NOT NULL,
  `categoryname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
('CL', 'Climbing'),
('CP', 'Camping'),
('CY', 'Cycling'),
('EL', 'Electronics'),
('FW', 'Footwear');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` char(7) NOT NULL,
  `customername` varchar(15) NOT NULL,
  `customerzip` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `customerzip`) VALUES
('0-1-222', 'Danny', '55499'),
('1-2-333', 'Tiyana', '60137'),
('2-3-444', 'Tony', '60611'),
('3-4-555', 'Pam', '35401'),
('4-5-666', 'Elly', '47374'),
('5-6-777', 'Nora', '60640'),
('6-7-888', 'Miles', '60602'),
('7-8-999', 'Neil', '55403'),
('8-9-000', 'Maggie', '47401'),
('9-0-111', 'Ryan', '46202'),
('NEWC', 'Zoey', '13676');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` char(3) NOT NULL,
  `productname` varchar(25) NOT NULL,
  `productprice` decimal(7,2) NOT NULL,
  `vendorid` char(2) NOT NULL,
  `categoryid` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `productprice`, `vendorid`, `categoryid`) VALUES
('1X1', 'Zzz Bag', 100.00, 'PG', 'CP'),
('1X2', 'Comfy Harness', 200.00, 'MK', 'CL'),
('1X3', 'Solar Charger', 125.00, 'OA', 'EL'),
('1X4', 'Safe-T Helmet', 60.00, 'PG', 'CY'),
('1Z1', 'Bottle', 20.00, 'MK', 'CL'),
('2X1', 'Mmm Stove', 80.00, 'PG', 'CP'),
('2X2', 'Easy Boot', 70.00, 'MK', 'FW'),
('2X3', 'Reflect-o Jacket', 35.00, 'PG', 'CY'),
('2X4', 'Strongster Carribeaner', 20.00, 'MK', 'CL'),
('3X1', 'Sleepy Pad', 25.00, 'WL', 'CP'),
('3X2', 'Bucky Knife', 60.00, 'WL', 'CP'),
('3X3', 'Cosy Sock', 15.00, 'MK', 'FW'),
('3X4', 'Treado Tire', 30.00, 'OA', 'CY'),
('4X1', 'Slicky Tire', 25.00, 'OA', 'CY'),
('4X2', 'Electra Compass', 45.00, 'MK', 'EL'),
('4X3', 'Mega Camera', 275.00, 'WL', 'EL'),
('4X4', 'Dura Boot', 90.00, 'PG', 'FW'),
('5X1', 'Simple Sandal', 50.00, 'PG', 'FW'),
('5X2', 'Action Sandal', 70.00, 'PG', 'FW'),
('5X3', 'Luxo Tent', 500.00, 'OA', 'CP'),
('5X5', 'Tiny Tent', 150.00, 'MK', 'CP'),
('6X6', 'Biggy Tent', 250.00, 'MK', 'CP'),
('7X7', 'Hi-Tec GPS', 300.00, 'OA', 'EL'),
('8X8', 'Power Pedals', 20.00, 'MK', 'CY'),
('9X9', 'Trusty Rope', 30.00, 'WL', 'CL');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `regionid` char(1) NOT NULL,
  `regionname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`regionid`, `regionname`) VALUES
('C', 'Chicagoland'),
('I', 'Indiana'),
('N', 'North'),
('T', 'Tristate');

-- --------------------------------------------------------

--
-- Table structure for table `rentalProducts`
--

CREATE TABLE `rentalProducts` (
  `productid` char(3) NOT NULL,
  `productname` varchar(25) NOT NULL,
  `vendorid` char(2) NOT NULL,
  `categoryid` char(2) NOT NULL,
  `productpricedaily` decimal(7,2) NOT NULL,
  `productpriceweekly` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rentalProducts`
--

INSERT INTO `rentalProducts` (`productid`, `productname`, `vendorid`, `categoryid`, `productpricedaily`, `productpriceweekly`) VALUES
('1X1', 'Zzz Bag', 'MK', 'CL', 20.00, 60.00),
('2X2', 'sexy Boot', 'OA', 'FW', 18.00, 75.00),
('3X3', 'Cosy Sock', 'PG', 'FW', 5.00, 25.00),
('4X4', 'Dura Boot', 'WL', 'FW', 25.00, 140.00),
('5X5', 'Tiny Tent', 'MK', 'CP', 15.00, 50.00),
('7X7', 'Hi-Tec GPS', 'OA', 'EL', 20.00, 80.00),
('F1', 'Ferrari', 'OA', 'EL', 50.00, 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `rentaltransaction`
--

CREATE TABLE `rentaltransaction` (
  `tid` varchar(8) NOT NULL,
  `customerid` char(7) NOT NULL,
  `storeid` varchar(3) NOT NULL,
  `tdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rentaltransaction`
--

INSERT INTO `rentaltransaction` (`tid`, `customerid`, `storeid`, `tdate`) VALUES
('123', '0-1-222', 'S1', '2019-01-16'),
('231', '2-3-444', 'S11', '2020-01-01'),
('312', '3-4-555', 'S12', '2019-12-21'),
('321', '4-5-666', 'S3', '2019-11-28'),
('456', '1-2-333', 'S10', '2019-01-16'),
('564', '5-6-777', 'S2', '2019-10-07'),
('645', '6-7-888', 'S7', '2019-09-16'),
('FGH', '3-4-555', 'S7', '2025-03-27'),
('NEWR', '3-4-555', 'S7', '2025-03-26'),
('ren2', '1-2-333', 'S2', '2025-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `rentvia`
--

CREATE TABLE `rentvia` (
  `productid` char(3) NOT NULL,
  `tid` varchar(8) NOT NULL,
  `rentaltype` char(1) NOT NULL,
  `duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rentvia`
--

INSERT INTO `rentvia` (`productid`, `tid`, `rentaltype`, `duration`) VALUES
('1X1', '312', 'D', 5),
('1X1', '456', 'D', 6),
('1X1', '564', 'W', 4),
('1X1', 'FGH', 'D', 5),
('1X1', 'NEWR', 'D', 5),
('2X2', '321', 'D', 3),
('2X2', '564', 'D', 5),
('2X2', '645', 'W', 3),
('2X2', 'FGH', 'W', 6),
('2X2', 'NEWR', 'W', 6),
('2X2', 'ren2', 'D', 5),
('3X3', '312', 'W', 1),
('3X3', 'ren2', 'W', 3),
('4X4', '231', 'W', 2),
('4X4', '312', 'D', 3),
('4X4', '321', 'D', 3),
('5X5', '123', 'D', 2),
('5X5', '456', 'W', 1),
('5X5', '645', 'D', 5),
('7X7', '123', 'D', 2),
('7X7', '231', 'D', 1),
('7X7', '312', 'D', 5);

-- --------------------------------------------------------

--
-- Table structure for table `salestransaction`
--

CREATE TABLE `salestransaction` (
  `tid` varchar(8) NOT NULL,
  `customerid` char(7) NOT NULL,
  `storeid` varchar(3) NOT NULL,
  `tdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salestransaction`
--

INSERT INTO `salestransaction` (`tid`, `customerid`, `storeid`, `tdate`) VALUES
('abc', '1-2-333', 'S10', '2025-03-27'),
('CDE', '6-7-888', 'S4', '2025-03-27'),
('klm', '2-3-444', 'S3', '2025-03-27'),
('NEW', '1-2-333', 'S10', '2025-04-25'),
('T011', '8-9-000', 'S7', '2013-01-07'),
('T022', '9-0-111', 'S5', '2013-01-07'),
('T101', '7-8-999', 'S12', '2013-01-04'),
('T111', '1-2-333', 'S1', '2013-01-01'),
('T202', '0-1-222', 'S8', '2013-01-04'),
('T222', '2-3-444', 'S2', '2013-01-01'),
('T303', '4-5-666', 'S6', '2013-01-05'),
('T333', '1-2-333', 'S3', '2013-01-02'),
('T404', '8-9-000', 'S6', '2013-01-05'),
('T444', '3-4-555', 'S3', '2013-01-02'),
('T505', '6-7-888', 'S14', '2013-01-05'),
('T555', '2-3-444', 'S3', '2013-01-02'),
('T606', '0-1-222', 'S11', '2013-01-06'),
('T666', '5-6-777', 'S10', '2013-01-03'),
('T707', '5-6-777', 'S4', '2013-01-06'),
('T777', '6-7-888', 'S13', '2013-01-03'),
('T808', '7-8-999', 'S9', '2013-01-06'),
('T888', '8-9-000', 'S4', '2013-01-04'),
('T909', '5-6-777', 'S4', '2013-01-06'),
('T999', '4-5-666', 'S6', '2013-01-04'),
('WXY', '6-7-888', 'S4', '2025-04-01'),
('XYZ', '1-2-333', 'S10', '2025-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `soldvia`
--

CREATE TABLE `soldvia` (
  `productid` char(3) NOT NULL,
  `tid` varchar(8) NOT NULL,
  `noofitems` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `soldvia`
--

INSERT INTO `soldvia` (`productid`, `tid`, `noofitems`) VALUES
('1X1', 'klm', 7),
('1X1', 'T111', 1),
('1X1', 'T333', 1),
('1X1', 'WXY', 1),
('1X1', 'XYZ', 7),
('1X2', 'abc', 2),
('1X2', 'CDE', 3),
('1X2', 'klm', 3),
('1X2', 'NEW', 2),
('1X2', 'T101', 3),
('1X2', 'T999', 5),
('1X3', 'CDE', 6),
('1X3', 'T666', 2),
('1X3', 'T999', 1),
('1X4', 'T101', 1),
('1X4', 'T303', 2),
('1X4', 'T888', 4),
('2X1', 'T303', 2),
('2X1', 'T505', 4),
('2X2', 'T022', 3),
('2X2', 'T222', 1),
('2X2', 'T444', 2),
('2X2', 'T505', 3),
('2X2', 'T606', 3),
('2X2', 'T808', 1),
('2X3', 'T404', 2),
('2X3', 'T888', 3),
('2X4', 'abc', 5),
('2X4', 'NEW', 5),
('2X4', 'T202', 4),
('2X4', 'T404', 1),
('2X4', 'T606', 7),
('3X1', 'T303', 2),
('3X1', 'T606', 4),
('3X2', 'T505', 1),
('3X2', 'T707', 1),
('3X3', 'T011', 3),
('3X3', 'T333', 5),
('3X3', 'T808', 4),
('3X4', 'T606', 2),
('3X4', 'T707', 4),
('4X1', 'T707', 2),
('4X2', 'T808', 1),
('4X2', 'T909', 3),
('4X3', 'T022', 3),
('4X3', 'T808', 1),
('4X4', 'T444', 1),
('4X4', 'T555', 4),
('4X4', 'T606', 2),
('5X1', 'T022', 2),
('5X3', 'T808', 1),
('5X5', 'T555', 2),
('6X6', 'T555', 1),
('6X6', 'T909', 1),
('7X7', 'T666', 1),
('8X8', 'T777', 1),
('8X8', 'T999', 3),
('9X9', 'T303', 3),
('9X9', 'T666', 1),
('9X9', 'T999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `storeid` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `storezip` char(5) NOT NULL,
  `regionid` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeid`, `storezip`, `regionid`) VALUES
('newS', '13676', 'I'),
('S1', '60600', 'C'),
('S10', '60602', 'C'),
('S11', '46201', 'I'),
('S12', '55701', 'N'),
('S13', '60085', 'T'),
('S14', '53140', 'T'),
('S2', '60605', 'C'),
('S3', '35400', 'T'),
('S4', '60640', 'C'),
('S5', '46307', 'T'),
('S6', '47374', 'I'),
('S7', '47401', 'I'),
('S8', '55401', 'N'),
('S9', '54937', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorid` char(2) NOT NULL,
  `vendorname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorid`, `vendorname`) VALUES
('MK', 'Mountain King'),
('OA', 'Outdoor Adventures'),
('PG', 'Pacifica Gear'),
('WL', 'Wilderness Limited');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `vendorid` (`vendorid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`regionid`);

--
-- Indexes for table `rentalProducts`
--
ALTER TABLE `rentalProducts`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `vendorid` (`vendorid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `rentaltransaction`
--
ALTER TABLE `rentaltransaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `storeid` (`storeid`);

--
-- Indexes for table `rentvia`
--
ALTER TABLE `rentvia`
  ADD PRIMARY KEY (`productid`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `salestransaction`
--
ALTER TABLE `salestransaction`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `storeid` (`storeid`);

--
-- Indexes for table `soldvia`
--
ALTER TABLE `soldvia`
  ADD PRIMARY KEY (`productid`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`storeid`),
  ADD KEY `regionid` (`regionid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `vendor` (`vendorid`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `rentalProducts`
--
ALTER TABLE `rentalProducts`
  ADD CONSTRAINT `rentalProducts_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `vendor` (`vendorid`),
  ADD CONSTRAINT `rentalProducts_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `rentaltransaction`
--
ALTER TABLE `rentaltransaction`
  ADD CONSTRAINT `rentaltransaction_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `rentaltransaction_ibfk_2` FOREIGN KEY (`storeid`) REFERENCES `store` (`storeid`);

--
-- Constraints for table `rentvia`
--
ALTER TABLE `rentvia`
  ADD CONSTRAINT `rentvia_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `rentalProducts` (`productid`),
  ADD CONSTRAINT `rentvia_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `rentaltransaction` (`tid`);

--
-- Constraints for table `salestransaction`
--
ALTER TABLE `salestransaction`
  ADD CONSTRAINT `salestransaction_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  ADD CONSTRAINT `salestransaction_ibfk_2` FOREIGN KEY (`storeid`) REFERENCES `store` (`storeid`);

--
-- Constraints for table `soldvia`
--
ALTER TABLE `soldvia`
  ADD CONSTRAINT `soldvia_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `soldvia_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `salestransaction` (`tid`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`regionid`) REFERENCES `region` (`regionid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
