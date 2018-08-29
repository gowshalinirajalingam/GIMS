-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 07:27 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `ageingrpt`
--

CREATE TABLE `ageingrpt` (
  `Companyname` varchar(100) NOT NULL,
  `current` double NOT NULL,
  `a1_30` double NOT NULL,
  `a31_60` double NOT NULL,
  `a61_90` double NOT NULL,
  `a90g` double NOT NULL,
  `total` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ageingrpt`
--

INSERT INTO `ageingrpt` (`Companyname`, `current`, `a1_30`, `a31_60`, `a61_90`, `a90g`, `total`) VALUES
('kandy', 0, 6468, 0, 0, 46068, 6468),
('Nolimit', 0, 95684, 0, 0, 95684, 95684),
('Saravanas', 0, 32621.75, 0, 0, 32621.75, 32621.75),
('Luxtextiles', 0, 0, 0, 0, 11248, 0),
('Nushtexttiles', 0, 0, 0, 0, 11600, 0),
('Sutextiles', 0, 0, 0, 0, 65118.25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `date` varchar(10) NOT NULL,
  `sId` int(2) NOT NULL,
  `inTime` char(5) DEFAULT NULL,
  `offTime` char(5) DEFAULT NULL,
  `otHrs` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`date`, `sId`, `inTime`, `offTime`, `otHrs`) VALUES
('2017-09-27', 1, '21:20', '22:00', 5),
('2017-09-28', 1, '19:15', '22:00', 5),
('2017-10-15', 1, '13:32', '22:00', 5),
('2017-10-16', 1, '11:58', '22:00', 5),
('2017-10-29', 1, '12:10', '22:00', 5),
('2017-11-16', 1, '20:02', '22:00', 5),
('2017-11-18', 1, '11:32', '22:00', 5),
('2017-11-19', 1, '08-02', NULL, NULL),
('2017-10-16', 2, '21:17', '21:21', 6),
('2017-10-15', 3, '11:34', '18:00', 1),
('2017-10-04', 4, '10:12', '18:00', 1),
('2017-10-16', 4, '08:04', '22:41', 5),
('2017-10-15', 5, '09:00', '18:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Amount` double NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `Description`, `Amount`, `Date`, `Status`) VALUES
(1, 'september bill', 10000, '9/22/2017 5:21:23 PM', 0),
(2, 'september bill', 10000, '9/22/2017 5:23:18 PM', 0),
(3, 'september bill', 10000, '9/22/2017 5:24:35 PM', 0),
(4, 'september bill', 10000, '9/22/2017 5:25:43 PM', 0),
(5, 'september bill', 10000, '9/22/2017 5:26:00 PM', 0),
(6, 'september bill', 10000, '9/22/2017 5:28:59 PM', 0),
(7, 'september bill', 10000, '9/22/2017 5:47:41 PM', 0),
(8, 'xxx', 10000, '9/22/2017 12:00:00 AM', 0),
(9, 'september bill', 10000, '9/22/2017 12:00:00 AM', 0),
(10, 'xxx', 10000, '9/22/2017 12:00:00 AM', 0),
(11, 'www', 15000, '9/22/2017 12:00:00 AM', 0),
(12, 'september bill', 10000, '9/22/2017 12:00:00 AM', 0),
(13, 'september bill', 10000, '9/22/2017 12:00:00 AM', 0),
(14, 'xvxfv', 100, '9/23/2017 12:00:00 AM', 0),
(15, 'dsdsfsdf', 1000, '9/23/2017 12:00:00 AM', 0),
(16, 'fgfgd', 1200, '9/23/2017 12:00:00 AM', 0),
(17, 'july bill', 10000, '9/23/2017 12:00:00 AM', 0),
(18, 'july bill', 30000, '9/23/2017 12:00:00 AM', 0),
(19, 'dfssdfsdf', 10000, '9/23/2017 12:00:00 AM', 0),
(20, 'september', 20000, '23/09/2017', 0),
(21, 'september', 20000, '23/09/2017', 0),
(22, 'new month', 12500, '27-09-2017', 0),
(23, 'PMT00000004', 40000, '2017-10-15 12:35:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batchNo` int(11) NOT NULL,
  `currentJob` varchar(30) CHARACTER SET utf8 NOT NULL,
  `noOfEmp` int(11) NOT NULL,
  `workingHrs` int(11) NOT NULL,
  `costPerUnit` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batchNo`, `currentJob`, `noOfEmp`, `workingHrs`, `costPerUnit`, `units`, `total`) VALUES
(100, 'Design / Sketch', 10, 20, 40, 100, 4000),
(200, 'Design', 5, 10, 120, 40, 4800),
(300, 'Sketch', 5, 8, 80, 60, 4800),
(400, 'Pattern Design', 5, 10, 600, 100, 60000),
(500, 'Grading', 20, 5, 80, 75, 6000),
(600, 'Inspection', 10, 20, 100, 40, 4000),
(700, 'Pressing', 15, 6, 300, 800, 240000),
(800, 'Sewing', 15, 6, 1200, 300, 360000),
(900, 'Cutting', 15, 6, 300, 120, 36000),
(1000, 'Sample Making', 15, 10, 220, 200, 44000);

-- --------------------------------------------------------

--
-- Table structure for table `canceledpayment`
--

CREATE TABLE `canceledpayment` (
  `paymentid` varchar(100) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `invoiceNo` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `EnteredBy` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `payingAmt` double NOT NULL,
  `OutstandingAmt` double NOT NULL,
  `drawnDate` varchar(100) NOT NULL,
  `checkNo` varchar(20) NOT NULL,
  `refNo` varchar(10) NOT NULL,
  `depositeTo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashinhand`
--

CREATE TABLE `cashinhand` (
  `id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Amount` double NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashinhand`
--

INSERT INTO `cashinhand` (`id`, `Description`, `Amount`, `Date`, `Status`) VALUES
(1, 'nnn', 100, '9/22/2017 5:36:55 PM', 0),
(2, 'xxx', 10000, '9/22/2017 5:39:55 PM', 0),
(3, 'aaa', 500, '9/22/2017 5:48:00 PM', 0),
(4, 'september bill', 10000, '9/22/2017 12:00:00 AM', 0),
(5, 'aaa', 500, '9/22/2017 12:00:00 AM', 0),
(6, 'fgfgd', 1200, '9/23/2017 12:00:00 AM', 0),
(7, 'fgdfgds', 1000, '2017-10-16', 0),
(8, 'hfgdfg', 1000, '2017-10-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pno1` int(11) NOT NULL,
  `pno2` int(11) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `EnteredBy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `pno1`, `pno2`, `address1`, `address2`, `Email`, `EnteredBy`) VALUES
('002', 'Siva', 115454854, 775454865, 'kandy', 'No 16,Galle Road,Dehiwella', 'siva@gmail.com', 'Gowshi'),
('001', 'Kumar', 774532331, 115454888, 'Nolimit', 'No 15 Hangulana, Galle road', 'Kumar@hotmail.com', 'Gowshi'),
('003', 'Saman', 122545454, 145454544, 'Saravanas', 'No 18 Galleroad,wellawatte', 'saman@yahoo.com', 'Gowshi'),
('004', 'Suganthy', 112125421, 775412145, 'Sutextiles', 'No 4,Bambalapity', 'suganthyk29@gmail.com', 'Gowshi'),
('005', 'Luxmi', 112125421, 775412145, 'Luxtextiles', 'No 4,Bambalapity', 'luxmiamali@gmail.com', 'Gowshi'),
('006', 'Nushra', 112151222, 121222121, 'Nushtexttiles', 'No 2 hathwaate road', 'Nushrafawmy@gmail.com', 'Gowshi');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `DID` int(11) NOT NULL,
  `CID` varchar(10) NOT NULL,
  `showRoomLocation` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phoneNo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`DID`, `CID`, `showRoomLocation`, `address`, `phoneNo`) VALUES
(17, '001', 'wellawatte', 'No 15, Galle road', 112154544),
(18, '002', 'Dehiwela', 'No 15, Galle Road,Dehiwela', 115484544),
(19, '003', 'Malabe', 'No 13,Malabe', 114541212),
(20, '004', 'Wellawatte', 'No 4 Galle Road', 112451211),
(21, '004', 'Bambalapity', 'No 5 GalleRoad', 112121544),
(22, '005', 'Hangulana', 'No 3 hakvana road', 112152111),
(23, '006', 'Dehiwela', 'No 15, Galle Road,Dehiwela', 112121512);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(2) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `bSal` double DEFAULT NULL,
  `otRate` double DEFAULT NULL,
  `leaves` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`, `bSal`, `otRate`, `leaves`) VALUES
(0, 'Administrator', NULL, NULL, NULL),
(1, 'CEO', 128000, 750, 42),
(2, 'Managing Director', 124000, 750, 36),
(3, 'Asst. Manager', 100000, 700, 30),
(4, 'Accountant', 96500, 650, 28),
(5, 'Asst. Accountant', 90000, 650, 28),
(6, 'Sueprvisor', 86500, 600, 28),
(7, 'Sales Representative', 18500, 250, 36),
(8, 'Driver', 34500, 450, 28),
(9, 'Office Clerk', 18500, 350, 24),
(10, 'Labourer', 13500, 550, 24);

-- --------------------------------------------------------

--
-- Table structure for table `from_suppliers`
--

CREATE TABLE `from_suppliers` (
  `TripID` int(10) NOT NULL,
  `SupplierName` varchar(40) NOT NULL,
  `SupplierAddress` varchar(200) NOT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Time` varchar(5) DEFAULT NULL,
  `StockWeight` int(10) NOT NULL,
  `NoOfTurn` int(5) NOT NULL,
  `VehicleNumber` varchar(8) NOT NULL,
  `Staffid` int(3) NOT NULL,
  `Distance` double NOT NULL,
  `costPerKm` double NOT NULL,
  `totCost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `from_suppliers`
--

INSERT INTO `from_suppliers` (`TripID`, `SupplierName`, `SupplierAddress`, `Date`, `Time`, `StockWeight`, `NoOfTurn`, `VehicleNumber`, `Staffid`, `Distance`, `costPerKm`, `totCost`) VALUES
(1, 'Elle', 'Ratnapura', '2017-10-16', '2', 8769, 3, '8976', 1, 89260, 50, 4463),
(2, 'Kavisha Shivangana', ' kaluthara', '2017-10-16', '12', 150000, 1, '1235', 1, 39445, 50, 1972.25);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `cid` varchar(10) NOT NULL,
  `invoiceNo` varchar(14) NOT NULL,
  `cashDisc` double NOT NULL,
  `qtyDisc` double NOT NULL,
  `specDisc` double NOT NULL,
  `totCost` double NOT NULL,
  `netCost` double NOT NULL,
  `seller` varchar(200) NOT NULL,
  `totQty` int(255) NOT NULL,
  `deliveryTo` varchar(100) NOT NULL,
  `deliverDate` varchar(100) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `createdDate` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `dueDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`cid`, `invoiceNo`, `cashDisc`, `qtyDisc`, `specDisc`, `totCost`, `netCost`, `seller`, `totQty`, `deliveryTo`, `deliverDate`, `remark`, `createdDate`, `createdBy`, `dueDate`) VALUES
('001', 'INV00000001', 912.5, 9375, 456.25, 45625, 44256.25, 'Ramanaan', 27, 'wellawatte', '2017-12-01 12:00:00 AM', '', '2017-11-12', '', '10-02-2018'),
('001', 'INV00000002', 0, 0, 0, 8600, 8600, 'dfdf', 6, 'wellawatte', '2017-11-30 12:00:00 AM', '', '2017-11-13', '', '11-02-2018'),
('001', 'INV00000003', 0, 0, 62, 6200, 6138, 'fdssdf', 6, 'wellawatte', '2017-12-01 12:00:00 AM', '', '2017-11-13', '', '11-02-2018'),
('001', 'INV00000004', 0, 0, 0, 11500, 11500, 'jkljkl', 10, 'wellawatte', '2017-11-30 12:00:00 AM', '', '2017-11-13', '', '2017-11-14'),
('002', 'INV00000005', 0, 0, 400, 40000, 39600, 'dsdf', 29, 'Dehiwela', '2017-11-14 12:00:00 AM', 'sfsdf', '2017-07-14', '', '2017-06-13'),
('003', 'INV00000006', 665.75, 5812.5, 0, 33287.5, 32621.75, 'csdf', 27, 'Malabe', '2017-11-14 12:00:00 AM', 'dfsdf', '2017-11-14', '', '2017-11-13'),
('001', 'INV00000007', 1716, 10200, 0, 85800, 84084, 'ghgfcgh', 120, 'wellawatte', '2017-11-14 12:00:00 AM', '', '2017-11-14', '', '2017-11-13'),
('001', 'INV00000008', 0, 0, 0, 1600, 1600, 'cxzxc', 2, 'wellawatte', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2017-11-15'),
('001', 'INV00000009', 64, 0, 0, 3200, 3136, 'gdfg', 4, 'wellawatte', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2018-02-13'),
('002', 'INV00000010', 132, 0, 0, 6600, 6468, 'njkjk', 4, 'Dehiwela', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2017-11-15'),
('002', 'INV00000011', 16, 0, 0, 800, 784, 'mmn', 1, 'Dehiwela', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2018-02-13'),
('002', 'INV00000012', 60, 0, 0, 3000, 2940, 'fdgdfg', 2, 'Dehiwela', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2017-12-14'),
('002', 'INV00000013', 150, 0, 0, 7500, 7350, 'dfgdfg', 3, 'Dehiwela', '2017-11-15 12:00:00 AM', '', '2017-11-15', '', '2018-1-15'),
('004', 'INV00000014', 892.5, 6875, 446.25, 44625, 43286.25, 'Danish', 27, 'Bambalapity', '2017-11-24 00:00:00', 'dfsdf', '2017-11-19', '', '17-02-2018'),
('006', 'INV00000015', 0, 0, 0, 7800, 7800, 'safsadfasdf', 4, 'Dehiwela', '2017-11-23 00:00:00', 'tgh', '2017-11-19', '', '17-02-2018'),
('004', 'INV00000016', 76, 0, 0, 3800, 3724, 'sdfsf', 2, 'Wellawatte', '2017-11-25 00:00:00', 'gfcgd', '2017-11-19', '', '17-02-2018'),
('005', 'INV00000017', 76, 0, 0, 3800, 3724, 'sfsdf', 2, 'Wellawatte', '2017-11-24 00:00:00', '', '2017-11-19', '', '17-02-2018'),
('005', 'INV00000018', 76, 0, 0, 3800, 3724, 'cvbcvb', 2, 'Hangulana', '2017-11-25 00:00:00', '', '2017-11-19', '', '17-02-2018'),
('004', 'INV00000019', 76, 0, 0, 3800, 3724, 'fgdfh', 2, 'Hangulana', '2017-11-19 00:00:00', '', '2017-11-19', '', '17-02-2018'),
('006', 'INV00000020', 0, 0, 0, 3800, 3800, 'xcv', 2, 'Dehiwela', '2017-11-19 00:00:00', '', '2017-11-19', '', '17-02-2018'),
('005', 'INV00000021', 0, 0, 0, 3800, 3800, 'zxczc', 2, 'Hangulana', '2017-11-25 00:00:00', 'cvxcv', '2017-11-19', '', '17-02-2018'),
('004', 'INV00000022', 0, 0, 0, 3800, 3800, 'cvv', 2, 'Wellawatte', '2017-11-25 00:00:00', '', '2017-11-19', '', '17-02-2018'),
('004', 'INV00000023', 216, 0, 0, 10800, 10584, 'xcvxf', 6, 'Wellawatte', '2017-11-25 00:00:00', '', '2017-11-19', '', '17-02-2018');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemCode` int(10) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `sellingPrice` int(11) NOT NULL,
  `MRP` int(11) NOT NULL,
  `Discription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemCode`, `Location`, `sellingPrice`, `MRP`, `Discription`) VALUES
(111110, 'Colombo', 1900, 2500, 'denim blue L Male'),
(111111, 'Colombo', 2000, 2500, 'Denim Black Female'),
(111112, 'Kurunagala', 1500, 1750, 'Yellow Pants XL male'),
(111113, 'Kurunagala', 800, 1000, 'Pink T-shirt L Female'),
(111114, 'Kurunagala', 750, 1000, 'Blue T-shirt XL male'),
(111115, 'Moratuwa', 800, 1250, 'Red T-Shirt XL male'),
(111116, 'Colombo', 3500, 5000, 'Green Plain saree Female'),
(111117, 'Colombo', 3500, 5000, 'RedPlain saree Female'),
(111118, 'Colombo', 35000, 50000, 'Gold Designed saree Female'),
(111119, 'Moratuwa', 750, 900, 'V neck yellow L '),
(111120, 'Moratuwa', 750, 900, 'V neck yellow XL '),
(111121, 'Kurunagala', 2500, 1800, 'camo Denim XL Male'),
(111122, 'Colombo', 500, 750, 'Sarom');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobId` int(11) NOT NULL,
  `jobName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  `duration` int(11) NOT NULL,
  `noOfEmp` int(11) NOT NULL,
  `startingDate` date NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobId`, `jobName`, `description`, `duration`, `noOfEmp`, `startingDate`, `status`) VALUES
(1, 'Design / Sketch', 'dummy ', 20, 4, '2017-08-09', 'Disable'),
(2, 'Pattern Design', '', 20, 5, '2017-08-16', 'Enable'),
(3, 'Sample Making', '', 20, 0, '2017-09-12', 'Disable'),
(4, 'Production Pattern', 'sasa', 40, 0, '2017-09-20', 'Disable'),
(5, 'Grading', '', 0, 0, '2017-09-13', 'Disable'),
(6, 'Spreading', '', 80, 12, '2017-09-14', 'Enable'),
(7, 'Cutting', '', 40, 10, '2017-09-05', 'Disable'),
(8, 'Sorting/Bundling', '', 20, 10, '2017-09-14', 'Disable'),
(9, 'Sewing/Assembling', '', 100, 50, '2017-09-08', 'Enable'),
(10, 'Packing', '', 40, 15, '2017-09-23', 'Enable'),
(11, 'Despatch', '', 10, 5, '2017-09-13', 'Disable'),
(12, 'Inspection', '', 45, 15, '2017-09-02', 'Enable'),
(13, 'Pressing/ Finishing', '', 50, 10, '2017-09-28', 'Enable'),
(14, 'Final Inspection', '', 30, 10, '2017-09-19', 'Enable'),
(156243, 'CCCCCCCCCC', 'sasa', 40, 0, '2017-11-15', 'Enable'),
(400000, 'AAAAAAAAA', 'sasa', 40, 0, '2017-11-17', 'Disable'),
(12332156, 'BBBBBBBBBBBBBB', 'sasa', 40, 0, '2017-11-25', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `leasing_details`
--

CREATE TABLE `leasing_details` (
  `LeaserID` int(11) NOT NULL,
  `VehicleNumber` varchar(8) NOT NULL,
  `LeaserName` varchar(100) NOT NULL,
  `LeaserAddress` varchar(200) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `StartDate` varchar(10) DEFAULT NULL,
  `EndDate` varchar(10) DEFAULT NULL,
  `Interestrate` double NOT NULL,
  `InitialPayement` double NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leasing_details`
--

INSERT INTO `leasing_details` (`LeaserID`, `VehicleNumber`, `LeaserName`, `LeaserAddress`, `PhoneNumber`, `StartDate`, `EndDate`, `Interestrate`, `InitialPayement`, `Balance`) VALUES
(6, '1230', 'Merchant bank', 'Bambalapitiya', 112503375, '2017-10-16', '2019-08-16', 5, 200000, 2650000),
(9, '0222', 'Amana bank', 'Dehiwala', 112308965, '2017-10-16', '2019-07-30', 3, 100000, 4750000),
(10, '1211', 'Commercial bank', 'Panadura', 342308965, '2017-10-16', '2020-03-26', 5, 200000, 4750000),
(11, '1234', 'NSB bank', 'Colombo', 112308200, '2017-10-16', '2020-02-22', 10, 200000, 3400000),
(12, '1235', 'Merchant bank', 'Colombo', 115808200, '2017-10-16', '2020-01-27', 8, 100000, 3580000),
(13, '2341', 'Leasing bank', 'Colombo', 112208200, '2017-10-16', '2020-01-27', 5, 200000, 2650000),
(14, '3122', 'Asian bank', 'Colombo', 115508200, '2017-10-16', '2019-10-11', 6, 200000, 3560000),
(15, '4331', 'Lesing bank', 'Colombo', 115509201, '2017-10-16', '2020-06-24', 8, 200000, 3560000),
(16, '9631', 'Lesing bank', 'Colombo', 115509201, '2017-10-16', '2020-06-24', 8, 200800, 2559200),
(17, '9632', 'BOC', 'Colombo', 119659201, '2017-10-16', '2020-10-24', 5, 200800, 2649200);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location`) VALUES
('Colombo'),
('Kurunagala'),
('Moratuwa'),
('test');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty`
--

CREATE TABLE `loyalty` (
  `sId` int(2) NOT NULL,
  `month` char(5) NOT NULL,
  `type` int(1) NOT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manemp`
--

CREATE TABLE `manemp` (
  `empId` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 NOT NULL,
  `noOfEmp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manemp`
--

INSERT INTO `manemp` (`empId`, `type`, `noOfEmp`) VALUES
(1, 'Designer', 3),
(2, 'Spreader', 10),
(3, 'Cutter', 15),
(4, 'Sewer', 25),
(5, 'Packing', 20),
(6, 'Supervisor', 5),
(7, 'Analyser', 5),
(8, 'Pressor', 7),
(9, 'Pattern maker', 4),
(10, 'grader', 7),
(11, 'Cutter', 5);

-- --------------------------------------------------------

--
-- Table structure for table `manufactitem`
--

CREATE TABLE `manufactitem` (
  `itemNo` int(11) NOT NULL DEFAULT '300000',
  `itemName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `totQty` int(11) NOT NULL,
  `deliverDate` date NOT NULL,
  `deliverStatus` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactitem`
--

INSERT INTO `manufactitem` (`itemNo`, `itemName`, `image`, `totQty`, `deliverDate`, `deliverStatus`) VALUES
(500, 'Denim', '', 800, '2017-09-13', 'Delivered'),
(30000, 'Denim blue L Female', '', 250, '2017-09-20', 'Delivered'),
(30100, 'Denim blue XL Female', '', 350, '2017-09-13', 'Delivered'),
(30102, 'blue', '', 350, '2017-09-29', 'Pending'),
(30200, 'T-Shirt Black XL male', '', 550, '2017-09-30', 'Pending'),
(30300, 'T-Shirt Pink S female', '', 560, '2017-10-10', 'Pending'),
(30387, 'Jeans', '', 400, '2017-09-05', 'Delivered'),
(60200, 'Blouse', '', 250, '2017-09-28', 'Pending'),
(300456, 'Shirt (Girl)', '', 300, '2017-09-04', 'Delivered'),
(301300, 'Shirt', '', 200, '2017-09-20', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `manufactraw`
--

CREATE TABLE `manufactraw` (
  `rawMaterialID` int(11) NOT NULL,
  `rawMaterialName` varchar(30) CHARACTER SET utf8 NOT NULL,
  `availableNow` int(11) NOT NULL,
  `reorderLevel` int(11) NOT NULL,
  `orderAmount` int(11) NOT NULL,
  `toOrder` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufactraw`
--

INSERT INTO `manufactraw` (`rawMaterialID`, `rawMaterialName`, `availableNow`, `reorderLevel`, `orderAmount`, `toOrder`) VALUES
(1000, 'CLOTH', 300, 500, 250, 'YES'),
(2000, 'THREAD', 150, 100, 100, 'YES'),
(3000, 'YARN', 75, 100, 250, 'YES'),
(4000, 'COTTON', 450, 300, 250, 'YES'),
(5000, 'BUTTONS', 125, 150, 250, 'NO'),
(6000, 'RIBBON', 400, 150, 300, 'NO'),
(7000, 'LACE', 250, 100, 400, 'YES'),
(8000, 'FABRIC', 200, 250, 300, 'NO'),
(9000, 'DENIM MATERIAL', 700, 500, 500, 'YES'),
(90000, 'BLOUSE MATERIAL', 100, 500, 600, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `monthlyexpenses`
--

CREATE TABLE `monthlyexpenses` (
  `id` int(11) NOT NULL,
  `expenditureName` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `accountType` varchar(100) NOT NULL,
  `chequeNo` int(11) NOT NULL,
  `drawnDate` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlyexpenses`
--

INSERT INTO `monthlyexpenses` (`id`, `expenditureName`, `amount`, `description`, `date`, `accountType`, `chequeNo`, `drawnDate`, `status`) VALUES
(130, 'Electricity Bill', 10000, 'july bill', '2017-10-11', 'Cheque', 123, '11/10/2017', 0),
(132, 'Stationary', 10000, 'dfssdfsdf', '2017-10-15', 'Cheque', 1234, '11/10/2017', 0),
(133, 'Electricity Bill', 20000, 'september', '2017-10-06', 'Cheque', 1234, '11/10/2017', 0),
(134, 'Telephone Bill', 20000, 'september', '2017-10-07', 'Cheque', 1234, '11/10/2017', 0),
(135, 'Electricity Bill', 12500, 'new month', '2017-10-16', 'Cheque', 485968, '23-11-2017', 0),
(136, 'advertising', 1000, 'fgdfgdsghfch', '2017-10-16', 'Cash', 0, '0', 0),
(137, 'Electricity Bill', 1000, 'hfgdfg', '2017-10-16', 'Cash', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oitems`
--

CREATE TABLE `oitems` (
  `ItemCode` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `ono` int(11) NOT NULL,
  `suTot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oitems`
--

INSERT INTO `oitems` (`ItemCode`, `Quantity`, `UnitPrice`, `ono`, `suTot`) VALUES
(111110, 100, 700, 6, 0),
(111110, 100, 500, 7, 0),
(111111, 100, 500, 7, 0),
(111112, 100, 350, 7, 0),
(111113, 100, 350, 7, 0),
(111110, 100, 600, 8, 0),
(111111, 100, 550, 8, 0),
(111112, 100, 300, 8, 0),
(111113, 100, 300, 8, 0),
(111114, 100, 350, 9, 0),
(111115, 100, 350, 9, 0),
(111116, 20, 2500, 9, 0),
(111117, 20, 2500, 9, 0),
(111114, 100, 300, 10, 0),
(111115, 100, 300, 10, 0),
(111116, 20, 2200, 10, 0),
(111117, 20, 2500, 10, 0),
(111121, 500, 1400, 11, 0),
(111111, 30, 1000, 12, 0),
(111118, 20, 25000, 13, 0),
(111112, 1000, 450, 14, 450000),
(111119, 1000, 450, 14, 450000),
(111111, 20, 750, 15, 15000),
(111112, 30, 700, 15, 21000),
(111115, 75, 550, 16, 41250),
(111118, 20, 5000, 16, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `invoiceNo` varchar(14) NOT NULL,
  `ItemNo` varchar(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `disc` double NOT NULL,
  `totcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`invoiceNo`, `ItemNo`, `qty`, `disc`, `totcost`) VALUES
('INV00000001', '111110', 25, 9375, 40625),
('INV00000001', '111110', 2, 0, 5000),
('INV00000002', '111110', 2, 0, 4000),
('INV00000002', '111110', 2, 0, 1600),
('INV00000002', '111110', 2, 0, 3000),
('INV00000003', '111110', 2, 0, 3000),
('INV00000003', '111110', 2, 0, 1600),
('INV00000003', '111110', 2, 0, 1600),
('INV00000004', '111110', 5, 0, 4000),
('INV00000004', '111110', 5, 0, 7500),
('INV00000005', '111110', 5, 0, 4000),
('INV00000005', '111110', 24, 0, 36000),
('INV00000006', '111110', 25, 5812.5, 31687.5),
('INV00000006', '111110', 2, 0, 1600),
('INV00000007', '111110', 60, 1200, 46800),
('INV00000007', '111110', 60, 9000, 39000),
('INV00000008', '111110', 2, 0, 1600),
('INV00000009', '111110', 2, 0, 1600),
('INV00000009', '111110', 2, 0, 1600),
('INV00000010', '111110', 2, 0, 5000),
('INV00000010', '111110', 2, 0, 1600),
('INV00000011', '111110', 1, 0, 800),
('INV00000012', '111110', 2, 0, 3000),
('INV00000013', '111110', 3, 0, 7500),
('INV00000014', '111110', 25, 6875, 40625),
('INV00000014', '111111', 2, 0, 4000),
('INV00000015', '111110', 2, 0, 3800),
('INV00000015', '111111', 2, 0, 4000),
('INV00000016', '111110', 2, 0, 3800),
('INV00000017', '111110', 2, 0, 3800),
('INV00000018', '111110', 2, 0, 3800),
('INV00000019', '111110', 2, 0, 3800),
('INV00000020', '111110', 2, 0, 3800),
('INV00000021', '111110', 2, 0, 3800),
('INV00000022', '111110', 2, 0, 3800),
('INV00000023', '111110', 2, 0, 3800),
('INV00000023', '111111', 2, 0, 4000),
('INV00000023', '111112', 2, 0, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `sname` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `pamount` float NOT NULL,
  `pmethod` varchar(10) NOT NULL,
  `balance` float NOT NULL,
  `ono` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`sname`, `total`, `pamount`, `pmethod`, `balance`, `ono`, `date`) VALUES
('Kavisha Shivangana', 70000, 65000, 'Cash', 5000, 6, '2017-10-02 19:23:48'),
('Kavisha Shivangana', 170000, 150000, 'Cash', 25000, 7, '2017-10-04 17:47:38'),
('Shehan Mark', 175000, 150000, 'Cash', 25000, 8, '2017-10-04 17:48:14'),
('Domink Dealwis', 170000, 180000, 'Cash', -10000, 9, '2017-10-04 17:49:48'),
('Anjelo Fernando', 154000, 180000, 'Cash', -26000, 10, '2017-10-04 17:50:21'),
('Shehan Mark', 700000, 650000, 'Card', 75000, 11, '2017-10-14 23:56:58'),
('BBB', 30000, 10000, 'Cash', 20000, 12, '2017-10-16 15:44:02'),
('Trevor Philips', 500000, 500000, 'Cash', 0, 13, '2017-10-18 12:11:54'),
('Jakson White', 900000, 800000, 'Cash', 100000, 14, '2017-10-18 12:22:53'),
('Shehan Mark', 36000, 30000, 'Cash', 81000, 15, '2017-11-11 21:02:18'),
('Tom cruise', 141250, 140000, 'Cash', 1250, 16, '2017-11-12 16:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` varchar(100) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `invoiceNo` varchar(100) NOT NULL,
  `date1` varchar(100) NOT NULL,
  `EnteredBy` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `payingAmt` double NOT NULL,
  `OutstandingAmt` double NOT NULL,
  `drawnDate` varchar(100) NOT NULL,
  `checkNo` varchar(20) NOT NULL,
  `refNo` varchar(10) NOT NULL,
  `depositeTo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `cid`, `invoiceNo`, `date1`, `EnteredBy`, `type`, `payingAmt`, `OutstandingAmt`, `drawnDate`, `checkNo`, `refNo`, `depositeTo`) VALUES
('0', '002', 'INV00000005', '0', '', 'Credit', 0, 39600, '0', '0', '0', '0'),
('0', '003', 'INV00000006', '0', '0', 'Cash', 0, 32621.75, '0', '0', '0', '0'),
('0', '001', 'INV00000007', '0', '', 'Credit', 0, 84084, '0', '0', '0', '0'),
('0', '001', 'INV00000008', '0', '0', 'Credit', 0, 1600, '0', '0', '0', '0'),
('0', '001', 'INV00000009', '0', '0', 'Cash', 0, 3136, '0', '0', '0', '0'),
('0', '002', 'INV00000010', '0', '0', 'Cash', 0, 6468, '0', '0', '0', '0'),
('0', '002', 'INV00000011', '0', '0', 'Cash', 0, 784, '0', '0', '0', '0'),
('0', '002', 'INV00000012', '0', '0', 'Cash', 0, 2940, '0', '0', '0', '0'),
('0', '002', 'INV00000013', '0', '0', 'Cash', 0, 7350, '0', '0', '0', '0'),
('PMT00000001', '001', 'INV00000001', '2017-11-13 4:59:27 AM', '', 'Cash', 44256.25, 0, '2017-11-13', '', '222', 'Cash in hand'),
('PMT00000002', '001', 'INV00000002', '2017-11-13 5:21:22 AM', '', 'Cash', 8600, 0, '2017-11-13', '', '223', 'Cash in hand'),
('PMT00000002', '001', 'INV00000003', '2017-11-13 5:21:22 AM', '', 'Cash', 6138, 0, '2017-11-13', '', '223', 'Cash in hand'),
('PMT00000004', '001', 'INV00000004', '2017-11-13 5:37:45 AM', '', 'Credit', 1500, 10000, '2017-11-17', '2545484', '', 'Bank'),
('0', '004', 'INV00000014', '0', '0', 'Cash', 0, 43286.25, '0', '0', '0', '0'),
('0', '006', 'INV00000015', '0', '0', 'Credit', 0, 7800, '0', '0', '0', '0'),
('0', '004', 'INV00000016', '0', '0', 'Cash', 0, 3724, '0', '0', '0', '0'),
('0', '005', 'INV00000017', '0', '0', 'Cash', 0, 3724, '0', '0', '0', '0'),
('0', '005', 'INV00000018', '0', '0', 'Cash', 0, 3724, '0', '0', '0', '0'),
('0', '004', 'INV00000019', '0', '0', 'Cash', 0, 3724, '0', '0', '0', '0'),
('0', '006', 'INV00000020', '0', '0', 'Credit', 0, 3800, '0', '0', '0', '0'),
('0', '005', 'INV00000021', '0', '0', 'Credit', 0, 3800, '0', '0', '0', '0'),
('0', '004', 'INV00000022', '0', '0', 'Credit', 0, 3800, '0', '0', '0', '0'),
('0', '004', 'INV00000023', '0', '0', 'Cash', 0, 10584, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `reorderlevel`
--

CREATE TABLE `reorderlevel` (
  `itemCode` int(10) NOT NULL,
  `reOrderPoint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reorderlevel`
--

INSERT INTO `reorderlevel` (`itemCode`, `reOrderPoint`) VALUES
(111110, 10),
(111111, 10),
(111112, 10),
(111113, 10),
(111114, 10),
(111115, 10),
(111116, 10),
(111117, 10),
(111118, 10),
(111119, 10),
(111120, 10),
(111121, 10),
(111122, 10);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `sId` int(2) NOT NULL,
  `onDate` varchar(12) NOT NULL,
  `type` varchar(15) NOT NULL,
  `forDays` int(2) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `reqDate` varchar(12) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'PENDING',
  `term` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`sId`, `onDate`, `type`, `forDays`, `amount`, `reqDate`, `status`, `term`) VALUES
(1, '2017-10-16', 'Salary Advance', NULL, 6000, '2017-10-16', 'APPROVED', NULL),
(1, '2017-10-24', 'Half Day', NULL, NULL, '2017-10-15', 'DENIED', 0),
(1, '2017-10-31', 'Day Off', 1, NULL, '2017-10-14', 'DENIED', 0),
(1, '2017-11-15', 'Loan', NULL, 15000, '2017-10-16', 'APPROVED', NULL),
(1, '2017-11-23', 'Salary Advance', NULL, 12000, '2017-10-15', 'APPROVED', NULL),
(2, '2017-11-16', 'Loan', NULL, 10000, '2017-10-15', 'APPROVED', 0),
(2, '2018-01-09', 'Day Off', 1, NULL, '2017-10-15', 'PENDING', 0),
(3, '2017-11-24', 'Loan', NULL, 50000, '2017-10-15', 'PENDING', 0),
(5, '2017-10-20', 'Half Day', NULL, NULL, '2017-10-15', 'PENDING', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `returndetails`
--

CREATE TABLE `returndetails` (
  `dno` varchar(14) DEFAULT NULL,
  `itemNo` int(10) DEFAULT NULL,
  `qty` int(4) DEFAULT NULL,
  `wsp` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returndetails`
--

INSERT INTO `returndetails` (`dno`, `itemNo`, `qty`, `wsp`, `total`) VALUES
('1', 111112, 2, 1500, 3000),
('1', 111113, 2, 800, 1600),
('1', 111114, 2, 750, 1500),
('2', 111110, 5, 1900, 9500),
('2', 111115, 5, 800, 4000),
('2', 111116, 8, 3500, 28000),
('3', 111113, 25, 800, 20000),
('4', 111110, 3, 1900, 5700);

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `dno` varchar(14) NOT NULL,
  `cid` varchar(10) DEFAULT NULL,
  `created` varchar(10) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`dno`, `cid`, `created`, `remarks`, `total`) VALUES
('1', '006', '2017-10-15', 'someo', 6100),
('2', '005', '10/29/2017', '', 41500),
('3', '006', '2017-11-19', 'Test', 20000),
('4', '006', '2017-11-19', 'try2', 5700);

-- --------------------------------------------------------

--
-- Table structure for table `returnstock`
--

CREATE TABLE `returnstock` (
  `itemCode` varchar(14) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `pp` double DEFAULT NULL,
  `wsp` double DEFAULT NULL,
  `sp` double DEFAULT NULL,
  `qty` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnstock`
--

INSERT INTO `returnstock` (`itemCode`, `description`, `pp`, `wsp`, `sp`, `qty`) VALUES
('111112', 'Yellow Pants XL male', NULL, 1500, NULL, 2),
('111114', 'Blue T-shirt XL male', NULL, 750, NULL, 2),
('111110', 'denim blue L Male', NULL, 1900, NULL, 5),
('111115', 'Red T-Shirt XL male', NULL, 800, NULL, 5),
('111116', 'Green Plain saree Female', NULL, 3500, NULL, 8),
('111113', 'Pink T-shirt L Female', NULL, 800, NULL, 27),
('111110', 'denim blue L Male', NULL, 1900, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `sId` int(2) NOT NULL,
  `month` char(7) NOT NULL,
  `bSal` double DEFAULT NULL,
  `incentive` double DEFAULT NULL,
  `epf` double DEFAULT NULL,
  `etf` double DEFAULT NULL,
  `sAdv` double DEFAULT NULL,
  `loan` double DEFAULT NULL,
  `nopay` double DEFAULT NULL,
  `allowance` double DEFAULT NULL,
  `comm` double DEFAULT NULL,
  `gross` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`sId`, `month`, `bSal`, `incentive`, `epf`, `etf`, `sAdv`, `loan`, `nopay`, `allowance`, `comm`, `gross`) VALUES
(1, '2017-10', 124000, 11250, 14880, 9920, NULL, NULL, NULL, NULL, NULL, 110450),
(2, '2017-10', 124000, 4500, 14880, 9920, NULL, NULL, NULL, NULL, NULL, 103700),
(3, '2017-10', 100000, 700, 12000, 8000, NULL, NULL, NULL, NULL, NULL, 80700),
(4, '2017-10', 100000, 4200, 12000, 8000, NULL, NULL, NULL, NULL, NULL, 84200),
(5, '2017-10', 96500, 650, 11580, 7720, NULL, NULL, NULL, NULL, NULL, 77850);

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `ServiceID` int(4) NOT NULL,
  `VehicleNumber` varchar(8) NOT NULL,
  `ServiceType` varchar(100) NOT NULL,
  `ServiceDate` varchar(10) DEFAULT NULL,
  `ServiceAmount` double NOT NULL,
  `NextSerDate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`ServiceID`, `VehicleNumber`, `ServiceType`, `ServiceDate`, `ServiceAmount`, `NextSerDate`) VALUES
(3, '0222', 'Annual Service', '2017-11-12', 10000, '2018-03-01'),
(4, '1211', 'Regular Service', '2017-10-25', 4000, '2017-12-25'),
(5, '1230', 'Washing', '2017-10-25', 1500, '2017-11-01'),
(6, '1234', 'Annual Service', '2017-11-04', 10000, '2018-03-15'),
(7, '1235', 'Regular Service', '2017-10-30', 4000, '2018-01-17'),
(8, '2341', 'Washing', '2017-11-13', 1500, '2017-11-23'),
(9, '3122', 'Annual Service', '2017-10-30', 10000, '2018-03-21'),
(10, '4331', 'Regular Service', '2017-10-27', 4000, '2018-01-10'),
(11, '9631', 'Washing', '2017-11-04', 1500, '2018-02-22'),
(12, '9632', 'Annual Service', '2017-11-01', 10000, '2018-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tele` varchar(13) NOT NULL,
  `fax` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sTime` char(4) NOT NULL,
  `oTime` char(4) NOT NULL,
  `hTime` char(4) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `address`, `tele`, `fax`, `email`, `sTime`, `oTime`, `hTime`, `image`) VALUES
('Ewing Associates (Pvt) Ltd', '658/78 2/1,\nDanister De Silva Mawatha,\nColombo 9', '0112672732', '0112672732', 'info@ewingassociates.lk', '0730', '1700', '1230', 'C:\\Users\\Shehan Mark Fdo\\Desktop\\InventoryMgt\\EwingInventory\\Resources\\EwingPP.png');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sId` int(3) NOT NULL,
  `uName` varchar(10) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL,
  `fName` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `add1` varchar(50) DEFAULT NULL,
  `add2` varchar(50) DEFAULT NULL,
  `religion` int(2) NOT NULL,
  `mob` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `access` int(1) DEFAULT NULL,
  `joined` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `desig` int(2) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sId`, `uName`, `pass`, `fName`, `lname`, `add1`, `add2`, `religion`, `mob`, `email`, `nic`, `access`, `joined`, `dob`, `desig`, `image`) VALUES
(0, 'ADMIN', 'admin', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL),
(1, 'SHAFAN', 'sha', 'SHAFAN', 'NAZIM', '34', 'Grandpass', 3, '755619134', 'mohamed.shafan@my.sliit.lk', '199514303063', 1, '2016-01-04', '1995-05-22', 2, 'C:\\Users\\Shehan Mark Fdo\\Desktop\\InventoryMgt\\EwingInventory\\Resources\\icon_user1.png'),
(2, 'JAJE', 'jaje', 'JAJE', 'THANAN', 'adfs', 'adfs', 2, '799856565', 'thananjaje3@gmail.com', '959384321', 2, '2017-01-02', '1995-12-05', 2, NULL),
(3, 'GOWSHI', 'gowshi', 'GOWSHALINI', 'RAJALINGAM', '87', 'Dehiwala', 3, '776589532', 'gow@shi.com', '199658596586', 1, '1996-12-05', '1996-12-05', 3, 'E:\\Setup\\OP2\\OP2_Backup\\Image_and_Video\\Pictures\\Wallpapers\\20151218063256.jpg'),
(4, 'MARK', 'mark', 'SHEHAN', 'FERNANDO', '78', 'Kollupitiya', 4, '7685965865', 'she@han.lk', '965833512', 2, '2017-07-01', '1996-09-06', 3, NULL),
(5, 'NUSHRA', 'nush', 'NUSHARA', 'FAWMY', '40', '40', 3, '888595959', 'some@this.com', '199685665959', 2, '1992-04-22', '1992-04-22', 4, NULL),
(6, 'FAIZAAN', 'zaan', 'FAIZAAN', 'YAKOOB', '78', 'Maradara', 3, '778596325', 'some@thing.com', '956885742V', 2, '2017-10-15', '1995-05-03', 5, NULL),
(7, 'SAMAN', 'saman', 'SAMAN', 'LAKSHITHA', '859', '', 1, '759685324', 'im@robot.com', '865974263V', 2, '2017-10-15', '1986-12-03', 8, NULL),
(8, 'ANURA', 'anura', 'ANURA', 'KUMARA', '121', 'dwf', 1, '118596325', 'anura@ewing.lk', '199712365284', 2, '2017-10-15', '1997-01-31', 8, NULL),
(9, 'NIZAR', 'nizar', 'NIZAR', 'AHAMED', 'wr', '', 3, '112358695', 'dwi@ef.vh', '198015236595', 2, '2017-10-15', '1980-01-15', 8, NULL),
(10, 'AJITH', 'ajith', 'AJITH', 'KUMAR', '78', 'kolonnawa', 1, '778596586', 'ajith@gmai.com', '198596532412', 1, '2017-10-16', '1985-11-22', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffpay`
--

CREATE TABLE `staffpay` (
  `sId` int(2) NOT NULL,
  `month` varchar(12) NOT NULL,
  `type` varchar(15) NOT NULL,
  `amount` double DEFAULT NULL,
  `term` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffpay`
--

INSERT INTO `staffpay` (`sId`, `month`, `type`, `amount`, `term`) VALUES
(1, '2017-10-16', 'Salary Advance', 6000, NULL),
(1, '2017-11-15', 'Loan', 15000, NULL),
(1, '2017-11-23', 'Salary Advance', 12000, NULL),
(2, '2017-11-16', 'Loan', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `quantity` int(11) NOT NULL,
  `itemCodes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`quantity`, `itemCodes`) VALUES
(50, 111110),
(14, 111111),
(28, 111112),
(50, 111113),
(95, 111114),
(75, 111115),
(20, 111116),
(20, 111117),
(20, 111118),
(1000, 111119),
(0, 111120),
(410, 111121),
(0, 111122);

-- --------------------------------------------------------

--
-- Table structure for table `stockadjustments`
--

CREATE TABLE `stockadjustments` (
  `Date` varchar(160) NOT NULL,
  `itemCode` int(10) NOT NULL,
  `NewQuantity` int(11) NOT NULL,
  `PreviousQuantity` int(11) NOT NULL,
  `quantityLost` int(11) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockadjustments`
--

INSERT INTO `stockadjustments` (`Date`, `itemCode`, `NewQuantity`, `PreviousQuantity`, `quantityLost`, `reason`, `Location`) VALUES
('2017-10-14 23:58:34', 111121, 450, 500, 50, 'Rat problem', 'Kurunagala'),
('2017-10-18 11:52:36', 111121, 425, 450, 25, 'Unknown', 'Kurunagala'),
('2017-10-18 11:52:55', 111121, 410, 425, 15, 'Unknown', 'Kurunagala'),
('2017-10-18 11:53:40', 111114, 95, 100, 5, 'Unknown', 'Kurunagala');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Name` varchar(100) NOT NULL,
  `Nic` varchar(10) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `fax` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Name`, `Nic`, `Phone`, `fax`, `email`, `sid`, `Address`) VALUES
('Kavisha Shivangana', '123654789V', '0774068832', '0774068832', 'KGirl@gmail.com', 19, 'No 4/4 , pipinya road , south kaluthara'),
('Shehan Mark', '96987451V', '0757987146', '0757987146', 'shehan@gmail.com', 20, ''),
('Domink Dealwis', '987876567V', '0774449876', '0774449876', 'DomAl@gmail.com', 22, ''),
('Jakson White', '871234658V', '0774898765', '0774898765', 'Jblack@gmail.com', 23, ''),
('Anjelo Fernando', '912345678V', '0774786576', '0774786576', 'AnjFdo@gmail.com', 24, ''),
('Carol Jonson', '889876787V', '778987354', '778987354', 'Cjonsen@gmail.com', 25, ''),
('Trevor Philips', '789876778V', '0770707707', '0770707707', 'Trevo@sliit.com', 26, ''),
('Tom cruise', '874587452V', '0775465842', '0775845625', 'Tom@gmail.com', 28, ''),
('safan', '154875482V', '0775487845', '0775487845', 'sa@gmail.com', 29, ''),
('BBB', '897654575V', '0778764561', '1124567888', 'tom@gmail.com', 30, '');

-- --------------------------------------------------------

--
-- Table structure for table `to_customers`
--

CREATE TABLE `to_customers` (
  `TripID` int(10) NOT NULL,
  `CustomerName` varchar(40) NOT NULL,
  `CustomerAddress` varchar(200) NOT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `Stockweight` int(10) NOT NULL,
  `NoOfTurn` int(5) NOT NULL,
  `VehicleNumber` varchar(8) NOT NULL,
  `Staffid` varchar(20) NOT NULL,
  `Distance` double NOT NULL,
  `costPerKm` double NOT NULL,
  `totCost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_customers`
--

INSERT INTO `to_customers` (`TripID`, `CustomerName`, `CustomerAddress`, `Date`, `Time`, `Stockweight`, `NoOfTurn`, `VehicleNumber`, `Staffid`, `Distance`, `costPerKm`, `totCost`) VALUES
(1, 'shalini', 'ratnapura', '2017-10-16', '12:30', 1000, 1, '1234', '0', 0, 0, 0),
(2, 'Lux', 'ratnapura', '2017-10-16', '12:30', 1200, 2, '1234', '0', 0, 0, 0),
(3, 'Lux', 'ratnapura', '2017-10-16', '12:30', 1200, 2, '1234', '0', 0, 0, 0),
(4, 'Lux', 'Ratmalana', '2017-10-16', '12:00', 12002, 2, '1234', 'KAMAL', 0, 0, 0),
(5, 'No 15', 'dehiwela', '2017-10-16', '1', 1235, 1, '1234', 'KAMAL', 10383, 60, 623);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VehicleName` varchar(15) NOT NULL,
  `VehicleNumber` varchar(8) NOT NULL,
  `ChassisNumber` varchar(40) NOT NULL,
  `EngineNumber` varchar(40) NOT NULL,
  `Capacity` int(5) NOT NULL,
  `OilLeters` int(5) NOT NULL,
  `Cost` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleName`, `VehicleNumber`, `ChassisNumber`, `EngineNumber`, `Capacity`, `OilLeters`, `Cost`) VALUES
('Van', '0222', 'gloyypoiy89nm1258gcxx', 'opipoiu65432145788', 170000, 45, 5000000),
('Van', '1211', 'gfdttedvk89nm1258gcxx', 'ngfxgpo65432145788', 160000, 30, 3000000),
('Van', '1230', 'gloyyedvk89nm1258gcxx', 'opixgpo65432145788', 160000, 30, 3000000),
('Dimobatta', '1234', '12wert4568bcdhest123wr4', 'n68etvdkloiq378912b', 100000, 40, 4000000),
('Dimobatta', '1235', '12wert4568bityrst123wr4', 'n68etvdkloiq124512b', 100000, 40, 4000500),
('lorry', '2341', '23edrjyfhk68hjbvcxd', '4563gvcdcsbjmsagv', 150000, 30, 3000000),
('Van', '3122', 'jklmtedvk12304vhgcxx', 'mnoxggff5697445788', 165000, 35, 400000),
('Van', '4331', 'jklmtedvk897654vhgcxx', 'mnoxggff5432145788', 160000, 35, 4000000),
('Van', '9631', 'nhfttedvk897654vhgcxx', 'fiuxggff5432145788', 160000, 30, 3000000),
('Van', '9632', 'gfdttedvk897654vhgcxx', 'ngfxggff5432145788', 160000, 30, 3000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`sId`,`date`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batchNo`),
  ADD UNIQUE KEY `batchNo` (`batchNo`);

--
-- Indexes for table `cashinhand`
--
ALTER TABLE `cashinhand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `from_suppliers`
--
ALTER TABLE `from_suppliers`
  ADD PRIMARY KEY (`TripID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD KEY `Location` (`Location`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `leasing_details`
--
ALTER TABLE `leasing_details`
  ADD PRIMARY KEY (`LeaserID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location`),
  ADD UNIQUE KEY `location_2` (`location`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `loyalty`
--
ALTER TABLE `loyalty`
  ADD PRIMARY KEY (`sId`,`month`,`type`);

--
-- Indexes for table `manemp`
--
ALTER TABLE `manemp`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `empId` (`empId`);

--
-- Indexes for table `manufactitem`
--
ALTER TABLE `manufactitem`
  ADD PRIMARY KEY (`itemNo`),
  ADD UNIQUE KEY `itemName` (`itemName`);

--
-- Indexes for table `manufactraw`
--
ALTER TABLE `manufactraw`
  ADD PRIMARY KEY (`rawMaterialID`),
  ADD UNIQUE KEY `rawMaterialID` (`rawMaterialID`);

--
-- Indexes for table `monthlyexpenses`
--
ALTER TABLE `monthlyexpenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ono`);

--
-- Indexes for table `reorderlevel`
--
ALTER TABLE `reorderlevel`
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`sId`,`onDate`,`type`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`sId`,`month`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sId`),
  ADD KEY `desig` (`desig`);

--
-- Indexes for table `staffpay`
--
ALTER TABLE `staffpay`
  ADD PRIMARY KEY (`sId`,`month`,`type`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`itemCodes`);

--
-- Indexes for table `stockadjustments`
--
ALTER TABLE `stockadjustments`
  ADD PRIMARY KEY (`Date`,`itemCode`),
  ADD KEY `itemCode` (`itemCode`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `to_customers`
--
ALTER TABLE `to_customers`
  ADD PRIMARY KEY (`TripID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VehicleNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `batchNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `cashinhand`
--
ALTER TABLE `cashinhand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `from_suppliers`
--
ALTER TABLE `from_suppliers`
  MODIFY `TripID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12332157;
--
-- AUTO_INCREMENT for table `leasing_details`
--
ALTER TABLE `leasing_details`
  MODIFY `LeaserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `manemp`
--
ALTER TABLE `manemp`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `monthlyexpenses`
--
ALTER TABLE `monthlyexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `ServiceID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `to_customers`
--
ALTER TABLE `to_customers`
  MODIFY `TripID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `loyalty`
--
ALTER TABLE `loyalty`
  ADD CONSTRAINT `loyalty_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `staff` (`sId`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`desig`) REFERENCES `designation` (`id`);

--
-- Constraints for table `staffpay`
--
ALTER TABLE `staffpay`
  ADD CONSTRAINT `staffpay_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `staff` (`sId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
