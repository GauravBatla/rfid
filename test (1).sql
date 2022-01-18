-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 07:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tbaddmemory`
--

CREATE TABLE `dbo.tbaddmemory` (
  `IDMemory` varchar(0) DEFAULT NULL,
  `eventMemory` varchar(0) DEFAULT NULL,
  `dateMemory` varchar(0) DEFAULT NULL,
  `imageMemory` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tboemname`
--

CREATE TABLE `dbo.tboemname` (
  `CompanyName` varchar(35) DEFAULT NULL,
  `Address1` varchar(31) DEFAULT NULL,
  `Address2` varchar(21) DEFAULT NULL,
  `Address3` varchar(20) DEFAULT NULL,
  `Address4` varchar(9) DEFAULT NULL,
  `Image` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo.tboemname`
--

INSERT INTO `dbo.tboemname` (`CompanyName`, `Address1`, `Address2`, `Address3`, `Address4`, `Image`) VALUES
('Patanjali Renewable Energy Pvt Ltd.', 'D-83-85, EPIP, UPSIDC,SITE – V,', 'Kasna, Greater Noida,', 'Uttar Pradesh 201306', 'UP, India', 'unknown_value_please_contact_support');

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tbordercolar`
--

CREATE TABLE `dbo.tbordercolar` (
  `orderno` smallint(6) DEFAULT NULL,
  `orderdate` varchar(10) DEFAULT NULL,
  `Qty` smallint(6) DEFAULT NULL,
  `mfgPVModule` varchar(7) DEFAULT NULL,
  `mfgSolarCells` varchar(6) DEFAULT NULL,
  `myMFGpvModule` varchar(10) DEFAULT NULL,
  `myMFGsolarCells` varchar(10) DEFAULT NULL,
  `COOpvModule` varchar(6) DEFAULT NULL,
  `COOsolarCells` varchar(5) DEFAULT NULL,
  `dateIEC` varchar(10) DEFAULT NULL,
  `nameLabIEC` varchar(8) DEFAULT NULL,
  `execuredQTY` varchar(0) DEFAULT NULL,
  `pendingQty` varchar(0) DEFAULT NULL,
  `Machinelineno` varchar(4) DEFAULT NULL,
  `ModuleType` decimal(5,2) DEFAULT NULL,
  `OrderStatus` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo.tbordercolar`
--

INSERT INTO `dbo.tbordercolar` (`orderno`, `orderdate`, `Qty`, `mfgPVModule`, `mfgSolarCells`, `myMFGpvModule`, `myMFGsolarCells`, `COOpvModule`, `COOsolarCells`, `dateIEC`, `nameLabIEC`, `execuredQTY`, `pendingQty`, `Machinelineno`, `ModuleType`, `OrderStatus`) VALUES
(5001, '2021-04-02', 2000, 'PatanJa', 'Suntec', '2021-01-15', '2021-01-14', 'India ', 'China', '2019-05-07', ' TUV INT', '', '', 'M001', '320.00', ''),
(5002, '2021-04-02', 2000, 'PatanJa', 'Suntec', '2021-01-15', '2021-01-14', 'India ', 'China', '2019-05-07', ' TUV INT', '', '', 'M001', '310.00', ''),
(5003, '2021-04-11', 5000, 'PatanJ', 'Suntec', '2021-01-15', '2020-12-15', 'India', 'China', '2019-05-15', 'TUV', '', '', 'M001', '325.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tbtranscolar`
--

CREATE TABLE `dbo.tbtranscolar` (
  `ID` varchar(6) DEFAULT NULL,
  `Serial` varchar(11) DEFAULT NULL,
  `ModuleType` varchar(6) DEFAULT NULL,
  `VOC` decimal(7,4) DEFAULT NULL,
  `ISC` varchar(6) DEFAULT NULL,
  `Vmp` varchar(7) DEFAULT NULL,
  `Imp` varchar(6) DEFAULT NULL,
  `PMAX` varchar(8) DEFAULT NULL,
  `FF` varchar(7) DEFAULT NULL,
  `MFModule` varchar(0) DEFAULT NULL,
  `MFSolar` varchar(0) DEFAULT NULL,
  `MYModule` varchar(0) DEFAULT NULL,
  `MYCells` varchar(0) DEFAULT NULL,
  `COModule` varchar(0) DEFAULT NULL,
  `COCells` varchar(0) DEFAULT NULL,
  `IECDate` varchar(0) DEFAULT NULL,
  `IECName` varchar(0) DEFAULT NULL,
  `STSEncode` varchar(0) DEFAULT NULL,
  `DTdatetime` varchar(19) DEFAULT NULL,
  `DT` varchar(10) DEFAULT NULL,
  `orderNo` varchar(0) DEFAULT NULL,
  `Machinelineno` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo.tbtranscolar`
--

INSERT INTO `dbo.tbtranscolar` (`ID`, `Serial`, `ModuleType`, `VOC`, `ISC`, `Vmp`, `Imp`, `PMAX`, `FF`, `MFModule`, `MFSolar`, `MYModule`, `MYCells`, `COModule`, `COCells`, `IECDate`, `IECName`, `STSEncode`, `DTdatetime`, `DT`, `orderNo`, `Machinelineno`) VALUES
('', '100', '2001', '320.0000', '7.0000', '8.9000', '7.9000', '8.9000', '2.8000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10', '10088P', '', '20.2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 00:20:46', '', '', ''),
('10', '10088P10', '', '20.2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 00:21:01', '', '', ''),
('10', '10088P10RR', '', '20.2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 00:21:09', '', '', ''),
('10', '160088P10RR', '', '20.7700', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 00:21:39', '', '', ''),
('2001', '2000001', '', '9.0900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:14:26', '', '', ''),
('2002', '2000002', '', '9.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:14:37', '', '', ''),
('2003', '2000003', '', '19.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:14:56', '', '', ''),
('2004', '2000004', '', '189.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:15:09', '', '', ''),
('2004', '2000005', '', '189.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:15:14', '', '', ''),
('2006', '2000006', '', '189.9900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:15:31', '', '', ''),
('', '2001', '100', '320.0000', '7.0000', '8.9000', '7.9000', '8.9000', '2.8000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '2002', '100', '320.0000', '7.0000', '8.9000', '7.9000', '8.9000', '2.8000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '2003', '100', '320.0000', '7.0000', '8.9000', '7.9000', '8.9000', '2.8000', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '2008', '40011', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1001', '2999', '', '10.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-26 01:00:44', '', '', ''),
('100122', '300001', '', '8.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:29:15', '2021-03-28', '', ''),
('100122', '300002', '', '8.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:29:21', '2021-03-28', '', ''),
('5001', '300003', '', '18.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:30:47', '2021-03-28', '', ''),
('5004', '300004', '', '118.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:30:57', '2021-03-28', '', ''),
('5004', '300005', '', '128.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:31:05', '2021-03-28', '', ''),
('5005', '300006', '', '128.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:31:13', '2021-03-28', '', ''),
('5007', '300007', '', '128.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:31:21', '2021-03-28', '', ''),
('50009', '4000001', '', '17.8000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:35:07', '2021-03-27', '', ''),
('50007', '4000002', '', '17.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:35:23', '2021-03-27', '', ''),
('50008', '4000003', '', '18.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:35:36', '2021-03-27', '', ''),
('50009', '4000004', '', '20.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:35:46', '2021-03-27', '', ''),
('50010', '4000005', '', '21.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:35:58', '2021-03-27', '', ''),
('50010', '4000006', '', '21.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:36:05', '2021-03-27', '', ''),
('50010', '4000007', '', '21.8800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 13:36:22', '2021-03-27', '', ''),
('', '4001', '4001', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '4002', '4001', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '4003', '4001', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '4004', '4001', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '4005', '4001', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('10099', '600001818', '', '210.1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-28 23:21:03', '2021-03-27', '', ''),
('1008', '7001', '', '50.9000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-29 00:44:59', '2021-03-27', '', ''),
('1008', '7008', '', '7.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-29 00:45:29', '2021-03-27', '', ''),
('1008', '7009', '', '1.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-29 00:45:42', '2021-03-27', '', ''),
('1008', '700977', '', '20.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-29 00:46:10', '2021-03-27', '', ''),
('1008', '70099', '', '1.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-29 00:45:48', '2021-03-27', '', ''),
('', '800001', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800002', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800003', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800004', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800005', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800006', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800007', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800008', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800009', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800010', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800011', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '800012', '325.00', '45.6510', '9.3520', '37.8780', '8.8610', '335.6220', '78.6158', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1005', 'PRA10001', '', '10.2600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1006', 'PRA10002', '', '10.2900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1007', 'PRA10003', '', '10.2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1008', 'PRA10004', '', '10.2000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1001', 'PRA10008', '', '10.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-26 01:01:05', '', '', ''),
('1001', 'PRA100089', '', '10.0000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-26 01:01:12', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tbtranscolar1`
--

CREATE TABLE `dbo.tbtranscolar1` (
  `ID` varchar(0) DEFAULT NULL,
  `Serial` varchar(15) DEFAULT NULL,
  `ModuleType` varchar(8) DEFAULT NULL,
  `VOC` decimal(6,4) DEFAULT NULL,
  `ISC` decimal(5,4) DEFAULT NULL,
  `Vmp` decimal(6,4) DEFAULT NULL,
  `Imp` decimal(5,4) DEFAULT NULL,
  `PMAX` decimal(7,4) DEFAULT NULL,
  `FF` decimal(6,4) DEFAULT NULL,
  `MFModule` varchar(6) DEFAULT NULL,
  `MFSolar` varchar(6) DEFAULT NULL,
  `MYModule` varchar(10) DEFAULT NULL,
  `MYCells` varchar(10) DEFAULT NULL,
  `COModule` varchar(5) DEFAULT NULL,
  `COCells` varchar(5) DEFAULT NULL,
  `IECDate` varchar(10) DEFAULT NULL,
  `IECName` varchar(3) DEFAULT NULL,
  `STSEncode` varchar(0) DEFAULT NULL,
  `orderNo` varchar(0) DEFAULT NULL,
  `DTdatetime` varchar(0) DEFAULT NULL,
  `DT` varchar(10) DEFAULT NULL,
  `Machinelineno` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo.tbtranscolar1`
--

INSERT INTO `dbo.tbtranscolar1` (`ID`, `Serial`, `ModuleType`, `VOC`, `ISC`, `Vmp`, `Imp`, `PMAX`, `FF`, `MFModule`, `MFSolar`, `MYModule`, `MYCells`, `COModule`, `COCells`, `IECDate`, `IECName`, `STSEncode`, `orderNo`, `DTdatetime`, `DT`, `Machinelineno`) VALUES
('', 'NOVAAAPSJ002710', '335.000W', '45.6340', '9.3360', '37.8740', '8.8490', '335.1630', '78.6693', 'PatanJ', 'Suntec', '2021-01-01', '2020-12-01', 'India', 'China', '15/05/2019', 'TUV', '', '', '', '2021-06-09', ''),
('', 'NOVAAAPSJ002716', '335.000W', '45.6890', '9.4090', '37.8560', '8.8930', '336.6740', '78.3189', 'PatanJ', 'Suntec', '2021-01-01', '2020-12-01', 'India', 'China', '15/05/2019', 'TUV', '', '', '', '2021-06-09', '');

-- --------------------------------------------------------

--
-- Table structure for table `dbo.tbusercolar`
--

CREATE TABLE `dbo.tbusercolar` (
  `ID` mediumint(9) DEFAULT NULL,
  `UserID` smallint(6) DEFAULT NULL,
  `UserPassword` mediumint(9) DEFAULT NULL,
  `forgetpasswrd` smallint(6) DEFAULT NULL,
  `loginAdmin` varchar(5) DEFAULT NULL,
  `loginPassword` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dbo.tbusercolar`
--

INSERT INTO `dbo.tbusercolar` (`ID`, `UserID`, `UserPassword`, `forgetpasswrd`, `loginAdmin`, `loginPassword`) VALUES
(10001, 123, 12345, 0, 'admin', 123);

-- --------------------------------------------------------

--
-- Table structure for table `tborderwritetagcolar`
--

CREATE TABLE `tborderwritetagcolar` (
  `orderno` smallint(6) DEFAULT NULL,
  `orderdate` varchar(10) DEFAULT NULL,
  `Qty` smallint(6) DEFAULT NULL,
  `mfgPVModule` varchar(6) DEFAULT NULL,
  `mfgSolarCells` varchar(6) DEFAULT NULL,
  `myMFGpvModule` varchar(10) DEFAULT NULL,
  `myMFGsolarCells` varchar(10) DEFAULT NULL,
  `COOpvModule` varchar(5) DEFAULT NULL,
  `COOsolarCells` varchar(5) DEFAULT NULL,
  `dateIEC` varchar(10) DEFAULT NULL,
  `nameLabIEC` varchar(3) DEFAULT NULL,
  `execuredQTY` varchar(0) DEFAULT NULL,
  `pendingQty` varchar(0) DEFAULT NULL,
  `Machinelineno` varchar(4) DEFAULT NULL,
  `ModuleType` decimal(5,2) DEFAULT NULL,
  `OrderStatus` varchar(0) DEFAULT NULL,
  `ID` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tborderwritetagcolar`
--

INSERT INTO `tborderwritetagcolar` (`orderno`, `orderdate`, `Qty`, `mfgPVModule`, `mfgSolarCells`, `myMFGpvModule`, `myMFGsolarCells`, `COOpvModule`, `COOsolarCells`, `dateIEC`, `nameLabIEC`, `execuredQTY`, `pendingQty`, `Machinelineno`, `ModuleType`, `OrderStatus`, `ID`) VALUES
(5003, '2021-04-11', 5000, 'PatanJ', 'Suntec', '2021-01-15', '2020-12-15', 'India', 'China', '2019-05-15', 'TUV', '', '', 'M001', '325.00', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
