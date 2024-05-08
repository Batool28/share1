-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 11:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `share`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isBooking` varchar(100) NOT NULL,
  `priceInDay` varchar(100) NOT NULL,
  `NoSeat` varchar(100) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `CType` varchar(100) NOT NULL,
  `Rent_From` varchar(100) NOT NULL,
  `Rent_To` varchar(100) NOT NULL,
  `Des` varchar(1000) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `review` int(5) NOT NULL,
  `OwnerId` int(50) DEFAULT 0,
  `bCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `isBooking`, `priceInDay`, `NoSeat`, `Color`, `Model`, `CType`, `Rent_From`, `Rent_To`, `Des`, `photo`, `review`, `OwnerId`, `bCode`) VALUES
(5, 'nissan', 'No', '200', '5', 'white', '2022', '18', '2023-10-17T07:37', '2023-10-18T07:37', 'asdlks laskdjsa', '1697553420_22.jpg', 4, 0, 'car_20463343'),
(6, 'BMW', 'No', '300', '6', 'black', '2023', '8', '2023-10-18T07:47', '2023-10-19T07:47', 'sdadasdasd', '1697554080_22.jpg', 4, 3, 'car_17083598'),
(7, 'Jeep', 'yes', '300', '7', 'gray ', '2024', '14', '2024-04-28T13:58', '2024-04-29T13:58', 'is gray has 6 seat', '1714338000_1678695515681_Hyundaisonata2021.png', 5, 5, 'car_11872106');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(7, 'Villa '),
(8, 'farm'),
(9, 'Chalets'),
(10, 'Resorts'),
(11, 'Breaks'),
(12, 'Apartments for Rental'),
(13, 'castle');

-- --------------------------------------------------------

--
-- Table structure for table `categorycar`
--

CREATE TABLE `categorycar` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorycar`
--

INSERT INTO `categorycar` (`id`, `name`) VALUES
(2, 'Taxi'),
(3, 'Nike'),
(8, 'BMW'),
(14, 'Jeep'),
(18, 'Nissan');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(50) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `category_id` int(30) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(50) NOT NULL,
  `review` varchar(50) NOT NULL,
  `datefrom` varchar(50) NOT NULL,
  `dateTo` varchar(50) NOT NULL,
  `priceinday` varchar(50) NOT NULL,
  `bCode` varchar(50) NOT NULL,
  `image` longtext NOT NULL,
  `OwnerId` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `house_name`, `category_id`, `description`, `address`, `review`, `datefrom`, `dateTo`, `priceinday`, `bCode`, `image`, `OwnerId`) VALUES
(3, 'Chalet with outdoor seating and barbecue corner', 9, 'This unit, designated for families, consists of a main sitting room that can accommodate 10 people, an outdoor seating capacity that can accommodate 10 people, an outdoor annex that can accommodate 10 people, and an outdoor swimming pool with a graduated barrier measuring 6 by 4 meters, in addition to 1 bedroom, 2 bathrooms, and a kitchen with an oven, refrigerator, and... Its total area is 250 square meters', 'Riyadh - Al-Rimal District', '3', '14:49', '02:00', '329', '2147483647', '1696891800_1222.jpg', 3),
(12, 'Villa in Al Madinah', 7, 'sdfsdf dsfdsf', 'Madinah', '5', '14:49', '  02:00', '329 ', '2033432', '531136820.jpg', 3),
(13, 'Villa in Al Madinah', 7, 'cxvcx dfsdf sdf', 'Madinah', '5', '14:49', '02:00', '329 ', '23489023', '531136839.jpg', 3),
(15, 'Villa - Medina', 7, 'Step into luxury with this stunning 4-bedroom villa located in the vibrant city of Tayba. With 4 bathrooms and ample living space, this property offers the perfect blend of comfort and elegance. Featuring a spacious garden and modern kitchen, this villa is perfect for families looking for the ultimate living experience. Dont miss out on this incredible opportunity!', 'Villa - Medina - Tayyiba Badia Area', '5', '15:56', '18:56', '1081', 'house_80904690', '1714337820_3871075-800x600 (1).png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '2' COMMENT '1=Admin,2=Staff',
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `name`, `username`, `password`, `type`, `phone`, `email`, `address`, `image`) VALUES
(1, 'Nora', 'abcd', '827ccb0eea8a706c4c34a16891f84e7b', 'Owner Manage', '50505050505', 'Nora@gmail.com', 'Almadinah', '1696954020_logo_small.png'),
(4, 'Nora Essa', 'Nora', '81dc9bdb52d04dc20036dbd8313ed055', '2', '+9665050505050', 'NoraEssa@gmail.com', 'Saudi Arabia', '1696890420_saudi-arabia.png'),
(5, 'Mala Ahmed', 'MalaAhmed', '81dc9bdb52d04dc20036dbd8313ed055', '2', '+966549433222', 'MalaAhmed@gmail.com', 'Saudi arabia', '1696890420_saudi-arabia.png'),
(6, 'Noha Ali', 'NohaAli', '81dc9bdb52d04dc20036dbd8313ed055', '2', '+9665124534543', 'NohaAli@gmail.com', 'Saudi arabia', '1696890420_saudi-arabia.png');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL,
  `icon` varchar(200) NOT NULL,
  `icon_title` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`, `icon`, `icon_title`, `address`) VALUES
(1, 'Sharing Economy Platform (Shareit) ', 'SEShareit1@gmail.com', '+9665500055501', '1696947360_4.png', '&lt;p style=&quot;line-height: 150%; margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; direction: ltr; unicode-bidi: embed; word-break: normal;&quot;&gt;&lt;/p&gt;&lt;h2&gt;&lt;pre&gt;&lt;br&gt;&lt;b&gt;&lt;span style=&quot;font-size:16.0pt;font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-ascii-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-fareast-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-bidi-font-family:&amp;quot;G8321 Black&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;color:#404040;mso-color-index:1;mso-font-kerning:12.0pt;language:en-US;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:text1;mso-style-textfill-fill-color:#404040;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:&amp;quot;lumm=75000 lumo=25000&amp;quot;&quot;&gt;&lt;b&gt;The sharingeconomy can be described as an economic model in which goods and resources areshared between individuals and groups in a cooperative manner such thatphysical assets become services.&lt;/b&gt;&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;span style=&quot;font-size:16.0pt;font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-ascii-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-fareast-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-bidi-font-family:&amp;quot;G8321 Black&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;color:#404040;mso-color-index:1;mso-font-kerning:12.0pt;language:en-US;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:text1;mso-style-textfill-fill-color:#404040;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:&amp;quot;lumm=75000 lumo=25000&amp;quot;&quot;&gt;&lt;b&gt;Sharing economies enable people andorganizations to make money from underused resources.&lt;/b&gt;&lt;/span&gt;&lt;/b&gt;&lt;/pre&gt;&lt;pre&gt;&lt;b&gt;&lt;b&gt;&lt;span style=&quot;font-size:16.0pt;font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-ascii-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-fareast-font-family:&amp;quot;Manrope SemiBold&amp;quot;;mso-bidi-font-family:&amp;quot;G8321 Black&amp;quot;;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:minor-fareast;color:#404040;mso-color-index:1;mso-font-kerning:12.0pt;language:en-US;mso-style-textfill-type:solid;mso-style-textfill-fill-themecolor:text1;mso-style-textfill-fill-color:#404040;mso-style-textfill-fill-alpha:100.0%;mso-style-textfill-fill-colortransforms:&amp;quot;lumm=75000 lumo=25000&amp;quot;&quot;&gt;&lt;b&gt;In a shared economy, unused assets such asparked vehicles and spare bedrooms can be leased out while not in service.&lt;/b&gt;&lt;/span&gt;&lt;/b&gt;&lt;/b&gt;&lt;/pre&gt;&lt;/h2&gt;&lt;p&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '1696946760_logo.png', '1696946760_logo_small.png', 'Saudi Arabia- University of prince mugrin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorycar`
--
ALTER TABLE `categorycar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categorycar`
--
ALTER TABLE `categorycar`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
