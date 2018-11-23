-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 10:01 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bidding`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(50) NOT NULL,
  `AdminPassword` varchar(50) NOT NULL,
  `AdminEmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `AdminPassword`, `AdminEmail`) VALUES
('Admin', '12345', 'admin@gmail.com'),
('ramzan', '12345', 'ramzan.cse@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `anotification`
--

CREATE TABLE `anotification` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(200) NOT NULL,
  `Seen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anotification`
--

INSERT INTO `anotification` (`Name`, `Email`, `Message`, `Seen`) VALUES
('ramzan', 'ramzan.cse@gmail.com', 'Hi Iam Ramzan', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `CatagoryID` varchar(50) NOT NULL,
  `CatagoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`CatagoryID`, `CatagoryName`) VALUES
('1', 'Mobile'),
('2', 'Computer'),
('3', 'Car');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `UserName` varchar(50) NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Seen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`UserName`, `Message`, `Seen`) VALUES
('ramzan', 'Congratulation Mr.Ramzan, Your Product Samsung Galaxy S5 has been sold and Buyer is  You can contact with Buyer by Email: or You can use phone:.', 'No'),
('', 'Congratulation Mr., Your are the final and highest bidder of  Product Samsung Galaxy S5. Now This is Your Product. Product Seller is Ramzan, You can contact with Seller by Email:ramzan.cse@gmail.com or You can use phone: 01630153125.', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `CatagoryName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `ProductStatus` varchar(10) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `StartDate` varchar(50) DEFAULT NULL,
  `EndDate` varchar(50) DEFAULT NULL,
  `Buyer` varchar(20) NOT NULL,
  `Image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `CatagoryName`, `UserName`, `Price`, `Description`, `ProductStatus`, `Quantity`, `StartDate`, `EndDate`, `Buyer`, `Image`) VALUES
(2, 'HPPavilion', 'Computer', 'ramzan', 42000, ' IntelÂ® Coreâ„¢ i3-7100U (2.4 GHz, 3 MB cache, 2 cores)\n4GB DDR4 RAM 2133 BUS\n1TB 5400 rpm SATA\n', 'No', 1, '2018-05-10', '2018-05-15', '', 'ProductPhoto/hppav.png'),
(3, 'Lenovo', 'Computer', 'rajib', 44900, 'IntelÂ® Coreâ„¢ i5-6200U Processor (3M Cache,2.30 GHz up to 2.80 GHz)\r\n8GB 2133MHz DDR4\r\nIntelÂ® HD ', 'No', 1, '2018-05-10', '2018-05-18', '', 'ProductPhoto/lenevo.jpg'),
(4, 'HondaCity', 'Car', 'rajib', 3054000, ' Fuel Type: Petrol\r\nCity / Highway Fuel Economy: 9.1 kmpl / 10.8 kmpl\r\nEngine Displacement: 1497 cc\r', 'No', 1, '2018-05-10', '2018-05-16', '', 'ProductPhoto/hondacity.jpg'),
(5, 'Iphone6', 'Mobile', 'rajib', 32200, 'iOS 8, upgradable to iOS 10.3\r\nDual-core 1.4 GHz Typhoon (ARM v8-based)\r\n16/32/64/128 GB, 1 GB RAM D', 'No', 1, '2018-05-10', '2018-05-20', '', 'ProductPhoto/iphone6.jpg'),
(6, 'BMW CAR', 'Car', 'sejan', 4002700, 'Model grades  :  218i Active Tourer/Coupe/C onvertible\r\nEngine capacity  :  1.5\r\nHorsepower/Torque  ', 'No', 1, '2018-05-08', '2018-05-15', '', 'ProductPhoto/bmw.jpg'),
(7, 'Samsung Galaxy S5', 'Mobile', 'ramzan', 25500, ' Android OS, v4.4.2, up to v6.0\r\n16/32GB storage, microSD card slot\r\nResolution	1080 x 1920 pixels\r\n', 'Yes', 1, '2018-05-08', '2018-05-015', '', 'ProductPhoto/galagys6.jpg'),
(8, 'Symphony H175', 'Mobile', 'firuz', 9000, ' 4000 mAh Li-Poly\r\n1.3 GHz 64-bit Quad Core\r\n13 MP + 5 MP Camera\r\n5" HD IPS Display\r\nAndroid Lollipo', 'No', 1, '2018-05-08', '2018-05-17', '', 'ProductPhoto/symphony.png'),
(9, 'Symphony P6', 'Mobile', 'firuz', 7000, ' Android 5.0 Lollipop\r\n5.3" HD IPS Display\r\n13 MP + 5 MP Camera\r\n1.3 GHz Quad Core\r\nRAM 2 GB & ROM 1', 'No', 1, '2018-05-08', '2018-05-13', '', 'ProductPhoto/symphonyp6.png'),
(10, 'DELL Inspiron 13 N5368', 'Computer', 'firuz', 49300, ' DELL Inspiron 13-5368. IntelÂ® Coreâ„¢ i3-6100U Processor (3M Cache, 1.60 GHz),4 GB DDR4 RAM, 1TB S', 'No', 1, '2018-05-08', '2018-05-18', '', 'ProductPhoto/del.jpg'),
(11, 'HP 15-BA010AU', 'Computer', 'firuz', 22200, 'Processor: AMD Quad-Core E2-7110 1.8 GHz Processor (2 MB cache)\r\nRam: 4 GB DDR3L-1600 SDRAM (1 x 4 G', 'No', 1, '2018-05-08', '2018-05-18', '', 'ProductPhoto/hp.jpg'),
(12, 'Samsung Galaxy S8 ', 'Mobile', 'firuz', 60600, 'Ram	6 GB\r\nPhone memory	64 GB/128 GB,\r\nMemory card	Support up to 256GB memory card\r\nFront	8-mgapixel,', 'No', 1, '2018-05-08', '2018-05-18', '', 'ProductPhoto/samsungga.jpg'),
(13, 'Corolla x-120', 'Car', 'firuz', 2400500, ' seats:5\r\nengine:132-hp, 1.8-liter I-4 (regular gas)\r\nTransmission:4-speed automatic w/OD\r\nDrivetrai', 'No', 1, '2018-05-08', '2018-05-14', '', 'ProductPhoto/2014-corolla-india-2.jpg'),
(14, 'Bugatti', 'Car', 'firuz', 50000500, ' Engine	Standard (Coupe), Grand Sport (Roadster):\r\n8.0 L (488 cu in) W16 quad-turbocharged 1,014 PS ', 'No', 1, '2018-05-08', '2018-05-20', '', 'ProductPhoto/bugatti-chiron-official-images-13.jpg'),
(15, 'Hammer', 'Car', 'firuz', 45000500, ' Engine	6.0L 325 hp (242 kW) V8 (2003â€“07)\r\n6.2L 393 hp (293 kW) V8 (2008â€“09)\r\nTransmission	4L65E', 'No', 1, '2018-05-08', '2018-05-19', '', 'ProductPhoto/original.jpg'),
(16, 'Lancer EX', 'Car', 'firuz', 2801000, ' Engine:2.0-liter 16-valve DOHC \r\nMIVEC ECI-MULTI engine (4B11)\r\nTransmissions:5-speed manual transm', 'No', 1, '2018-05-08', '2018-05-20', '', 'ProductPhoto/mitsubishi-lancer-evolution-xfront.jpg'),
(17, 'Elite i20', 'Car', 'firuz', 3200300, ' Excellent style and sportiness\r\nCar beyond a hatchback\r\nPremium interiors and hi-tech features', 'No', 1, '2018-05-08', '2018-05-21', '', 'ProductPhoto/Elite-i20-AT.jpg'),
(18, 'Mitsubishi', 'Car', 'firuz', 7500500, ' Whether you choose the more powerful 168-hp 2.4L or the more efficient 148-hp 2.0L, both MIVEC (Mit', 'No', 1, '2018-05-08', '2018-05-22', '', 'ProductPhoto/hmmitsubishi-640x480_320x240.jpg'),
(19, 'Nokia 3310', 'Mobile', 'firuz', 3500, ' NETWORK	Technology	\r\nGSM\r\nLAUNCH	Announced	2000\r\nStatus	Discontinued\r\nBODY	Dimensions	113 x 48 x 22', 'No', 1, '2018-05-08', '2018-05-23', '', 'ProductPhoto/nokia_3310.jpg'),
(20, 'Motorola', 'Mobile', 'firuz', 5100, ' NETWORK	Technology	\r\nGSM / HSPA / LTE\r\nLAUNCH	Announced	2013, August\r\nStatus	Available. Released 20', 'No', 1, '2018-05-08', '2018-05-14', '', 'ProductPhoto/siemens-me75.jpg'),
(21, 'Blackberry', 'Mobile', 'firuz', 21500, ' Fantastic looks and build quality\r\nBlackBerry 10 OS works well for power users\r\nCan easily run most', 'No', 1, '2018-05-08', '2018-05-15', '', 'ProductPhoto/curve9220_5_191250273627.jpg'),
(22, 'Symphony V5', 'Mobile', 'firuz', 12100, ' Networks:\r\nSIM: Dual SIM (Micro), Dual Standby\r\n2G: GSM 900 / 1800 MHz\r\n3G: HSDPA 2100 MHz\r\n\r\nChips', 'No', 1, '2018-05-08', '2018-05-16', '', 'ProductPhoto/V52 front_img_1_957.png'),
(23, 'Asus', 'Computer', 'firuz', 410300, ' CPU	2.7-GHz Intel Core i7-6820HK\r\nOperating System	Windows 10 Pro\r\nRAM	64GB\r\nRAM Upgradable to	\r\nHa', 'No', 1, '2018-05-08', '2018-05-15', '', 'ProductPhoto/zenbook_deluxe_2_575px.jpg'),
(24, 'Apple', 'Computer', 'firuz', 52500, ' Operating system	macOS\r\nCPU	Up to 1.3 GHz Intel Core m7\r\nMemory	8 GB 1866 MHz LPDDR3\r\nStorage	Up to', 'No', 1, '2018-05-08', '2018-05-14', '', 'ProductPhoto/apple.jpg'),
(25, 'Lenovo', 'Computer', 'firuz', 610500, ' Processor	\r\nIntelÂ® Coreâ„¢ i5-4210H Processor (3M Cache, 2.9GHz), Turbo Boost 2.0 (3.5GHz)\r\nIntel ', 'Yes', 1, '2017-04-22', '2017-12-26', 'ramzan', 'ProductPhoto/lenovo1.jpeg'),
(26, 'HP-x12', 'Computer', 'firuz', 67500, ' IntelÂ® Coreâ„¢ i7-6700T ProcessorWindows 10 16GB RAM / 2TB HDD 58.42 cm(23) Full HD Touch AMD Rade', 'Yes', 1, '2017-04-22', '2017-12-26', 'ramzan', 'ProductPhoto/hp.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `UserName`, `Password`, `Email`, `Phone`, `Gender`, `DOB`, `Address`, `Photo`) VALUES
('Firuz', 'firuz', '12345', 'firuzahmed70@gmail.com', '01630153125', 'Male', '2016-08-03', 'Dahaka', 'UserPhoto/firuz.jpg'),
('Ghose', 'rajib', '123456', 'rajib@gmail.com', '01630153125', 'Male', '2017-03-08', 'Dhaka, Dhaka', 'UserPhoto/raheel.jpg'),
('Ramzan', 'ramzan', '12345', 'ramzan.cse@gmail.com', '01630153125', 'Male', '2017-03-01', 'Dhaka, Dhaka', 'UserPhoto/raheel.jpg'),
('Sejan', 'sejan', '12345', 'sejan840@gmail.com', '01630153125', 'Male', '2017-03-02', 'Dhaka, Dhaka', 'UserPhoto/15622095_1155871464508340_6642839583723093220_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminName`);

--
-- Indexes for table `anotification`
--
ALTER TABLE `anotification`
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`CatagoryID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
