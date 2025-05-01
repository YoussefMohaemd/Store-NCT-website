CREATE DATABASE `Stylish_Store`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE `Stylish_Store`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

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

INSERT INTO `tbl_product` (`id_product`, `product_name`, `quantity`, `product_img`, `product_prices`, `catalog_id`, `employee_entry`, `entry_date`, `sup_id`, `view`, `special`, `old_prices`, `description`, `size`) VALUES
(90, 'Grey Vest', 148, 'suit (6).png', 270, 94, 1, '2023-06-08', 16, 1, 1, 27000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(91, 'Black Vest', 149, 'suit (2).png', 275, 95, 1, '2023-06-08', 16, 1, 1, 27500, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XL'),
(92, 'Brown Vest', 273, 'product-41.png', 200, 96, 1, '2023-06-08', 16, 1, 1, 2000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(93, 'Kings Vest', 10, 'suit (3).png', 550, 96, 1, '2023-06-08', 14, 1, 1, 5500, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'M'),
(94, 'Supper Vest', 150, 'suit (5).png', 230, 95, 1, '2023-06-08', 14, 1, 1, 275, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(95, 'Ken Vest', 122, 'product-39.png', 200, 94, 1, '2023-06-08', 14, 1, 1, 2000, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'L'),
(96, 'Max Vest', 123, 'product-43.png', 2700, 94, 1, '2023-06-08', 14, 1, 1, 2700, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXL'),
(97, 'Break Vest', 123, 'suit (4).png', 2700, 94, 1, '2023-06-08', 16, 1, 1, 2700, 'A waistcoat has a full vertical opening in the front, which fastens with buttons or snaps. Both single-breasted and double-breasted waistcoats exist, regardless of the formality of dress, but single-breasted ones are more common. In a three piece suit, th', 'XXXL');

ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_catalog` (`catalog_id`),
  ADD KEY `fk_employee_entry` (`employee_entry`),
  ADD KEY `fk_supplier` (`sup_id`);

ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `tbl_product`
  MODIFY `id_product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
