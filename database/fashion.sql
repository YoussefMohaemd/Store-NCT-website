-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 07:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12
CREATE DATABASE `fashion`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE `fashion`;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(9) NOT NULL,
  `id_order` int(9) NOT NULL,
  `id_pro` int(9) NOT NULL,
  `quantity` int(9) NOT NULL DEFAULT 0,
  `prices` double(10,2) NOT NULL DEFAULT 0.00,
  `size` varchar(5) NOT NULL,
  `name_pro` varchar(50) DEFAULT NULL,
  `img_pro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `tbl_catalog`
--

CREATE TABLE `tbl_catalog` (
  `id_catalog_k` int(4) NOT NULL,
  `catalog_name` varchar(50) NOT NULL,
  `prioritize` int(4) NOT NULL DEFAULT 0,
  `display_ctl` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_catalog`
--

INSERT INTO `tbl_catalog` (`id_catalog_k`, `catalog_name`, `prioritize`, `display_ctl`) VALUES
(94, 'Rupa lapel', 1, 1),
(95, 'Vip lapel', 1, 1),
(96, 'Tom Ford lapel', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ban` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;




-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(9) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `total_prices` double(10,0) NOT NULL DEFAULT 0,
  `payment` tinyint(1) NOT NULL DEFAULT 1,
  `id_user` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT 'Not note',
  `due_date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `employee_pr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(6) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `product_img` varchar(50) NOT NULL,
  `product_prices` int(10) NOT NULL DEFAULT 0,
  `catalog_id` int(4) NOT NULL,
  `employee_entry` int(11) NOT NULL,
  `entry_date` date NOT NULL DEFAULT current_timestamp(),
  `sup_id` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `special` tinyint(4) NOT NULL DEFAULT 0,
  `old_prices` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `size` varchar(5) NOT NULL DEFAULT 'L'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `product_name`, `quantity`, `product_img`, `product_prices`, `catalog_id`, `employee_entry`, `entry_date`, `sup_id`, `view`, `special`, `old_prices`, `description`, `size`) VALUES
(90, 'Grey Vest', 148, 'suit (6).png', 270, 94, 1, '2023-06-08', 16, 1, 1, 27000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(91, 'Black Vest', 149, 'suit (2).png', 275, 95, 1, '2023-06-08', 16, 1, 1, 27500, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XL'),
(92, 'Brown Vest', 273, 'product-41.png', 200, 96, 1, '2023-06-08', 16, 1, 1, 2000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(93, 'Kings Vest', 10, 'suit (3).png', 550, 96, 1, '2023-06-08', 14, 1, 1, 5500, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'M'),
(94, 'Supper Vest', 150, 'suit (5).png', 230, 95, 1, '2023-06-08', 14, 1, 1, 275, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(95, 'Ken Vest', 122, 'product-39.png', 200, 94, 1, '2023-06-08', 14, 1, 1, 2000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(96, 'Max Vest', 123, 'product-43.png', 2700, 94, 1, '2023-06-08', 14, 1, 1, 2700, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(97, 'Break Vest', 123, 'suit (4).png', 2700, 94, 1, '2023-06-08', 16, 1, 1, 2700, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXXL');

-- --------------------------------------------------------

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_order` (`id_order`),
  ADD KEY `FK_product` (`id_pro`);

--
-- Indexes for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  ADD PRIMARY KEY (`id_catalog_k`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_employee` (`employee_pr`),
  ADD KEY `FK_client_check` (`id_user`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_catalog` (`catalog_id`),
  ADD KEY `fk_employee_entry` (`employee_entry`),
  ADD KEY `fk_supplier` (`sup_id`);



--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  MODIFY `id_catalog_k` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;



--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `FK_order` FOREIGN KEY (`id_order`) REFERENCES `tbl_order` (`id`),
  ADD CONSTRAINT `FK_product` FOREIGN KEY (`id_pro`) REFERENCES `tbl_product` (`id_product`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK_client_check` FOREIGN KEY (`id_user`) REFERENCES `tbl_client` (`ID`),
  ADD CONSTRAINT `FK_employee` FOREIGN KEY (`employee_pr`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_employee_entry` FOREIGN KEY (`employee_entry`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_product_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `tbl_catalog` (`id_catalog_k`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`sup_id`) REFERENCES `tbl_supplier` (`sup_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
