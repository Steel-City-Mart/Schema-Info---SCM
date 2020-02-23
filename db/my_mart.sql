-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 23, 2020 at 12:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `parent_cat_id` bigint(20) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_cat_id`, `level`, `start_date`, `end_date`, `created_at`, `created_by`, `status`, `xc_01`, `xc_02`, `xc_03`, `xc_04`, `xc_05`, `xc_06`, `xc_07`, `xc_08`, `xc_09`, `xc_10`) VALUES
(1, 'Groceries', 1, 1, '2020-02-02 00:00:00', '2020-02-21 07:23:23', '2020-02-23 00:00:00', 1, 1, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `add_l1` varchar(100) NOT NULL,
  `add_l2` varchar(100) NOT NULL,
  `add_l3` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `gps_value` longtext NOT NULL,
  `delivery_contact` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `available_sku` int(11) NOT NULL,
  `cat_id_l1` bigint(20) NOT NULL,
  `cat_id_l2` bigint(20) NOT NULL,
  `cat_id_l3` bigint(20) NOT NULL,
  `reward_value` int(11) NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `delivery_cat_id` bigint(20) NOT NULL,
  `UOM` varchar(50) NOT NULL,
  `uom_quantity` int(11) NOT NULL,
  `CGST` int(11) NOT NULL,
  `IGST` int(11) NOT NULL,
  `SGST` int(11) NOT NULL,
  `max_purchase_unit` int(11) NOT NULL,
  `img_src` longtext NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cat_id_l1` (`cat_id_l1`),
  KEY `cat_id_l2` (`cat_id_l2`),
  KEY `cat_id_l3` (`cat_id_l3`),
  KEY `supplier_id` (`supplier_id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `available_sku`, `cat_id_l1`, `cat_id_l2`, `cat_id_l3`, `reward_value`, `supplier_id`, `delivery_cat_id`, `UOM`, `uom_quantity`, `CGST`, `IGST`, `SGST`, `max_purchase_unit`, `img_src`, `start_date`, `end_date`, `createdAt`, `updatedAt`, `created_by`, `status`, `xc_01`, `xc_02`, `xc_03`, `xc_04`, `xc_05`, `xc_06`, `xc_07`, `xc_08`, `xc_09`, `xc_10`) VALUES
(1, 'Ashirwaad Atta', 'Ashirwaad Atta 5 KG', 100, 1, 1, 1, 100, 1, 5, 'KG', 5, 1, 1, 1, 10, '', '2020-02-24 00:00:00', '2020-02-24 00:00:00', '2020-02-23 00:00:00', '0000-00-00 00:00:00', 1, 1, '', '', '', '', '', '', '', '', '', ''),
(2, 'Product11', 'product desc', 100, 1, 1, 1, 100, 1, 100, 'KG', 10, 1, 2, 3, 10, '123', '2019-01-01 00:00:00', '2019-01-01 00:00:00', '2020-02-23 12:27:46', '2020-02-23 12:27:46', 1, 1, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat_discounts`
--

DROP TABLE IF EXISTS `product_cat_discounts`;
CREATE TABLE IF NOT EXISTS `product_cat_discounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) NOT NULL,
  `discount_value` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `min_order_value` double NOT NULL,
  `max_discount` double NOT NULL,
  `reward_redeem_allowed` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cat_id` (`cat_id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_pricings`
--

DROP TABLE IF EXISTS `product_pricings`;
CREATE TABLE IF NOT EXISTS `product_pricings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `base_price` double NOT NULL,
  `sale_price` double NOT NULL,
  `member_price` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` longtext NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `product_id` (`product_id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `passwd_hash` longtext NOT NULL,
  `createdAt` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updatedAt` datetime NOT NULL,
  `email_id` longtext NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `membership` tinyint(1) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `xc_01` longtext NOT NULL,
  `xc_02` longtext NOT NULL,
  `xc_03` longtext NOT NULL,
  `xc_04` longtext NOT NULL,
  `xc_05` longtext NOT NULL,
  `xc_06` longtext NOT NULL,
  `xc_07` longtext NOT NULL,
  `xc_08` longtext NOT NULL,
  `xc_09` longtext NOT NULL,
  `xc_10` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `passwd_hash`, `createdAt`, `created_by`, `updatedAt`, `email_id`, `contact_number`, `membership`, `role`, `xc_01`, `xc_02`, `xc_03`, `xc_04`, `xc_05`, `xc_06`, `xc_07`, `xc_08`, `xc_09`, `xc_10`) VALUES
(1, 'dibya', 'dibyarb', '2020-02-23 00:00:00', 9999, '2020-02-23 00:00:00', 'dibyabhoidibya@gmail.com', '8093997289', 1, 1, '', '', '', '', '', '', '', '', '', ''),
(2, 'Anurag', 'Kumar', '2020-02-23 00:00:00', 9999, '2020-02-23 00:00:00', '321anurag@gmail.com', '8093997289', 1, 1, '', '', '', '', '', '', '', '', '', ''),
(3, 'Product11', 'examplePassword', '2020-02-23 12:56:31', 9999, '2020-02-23 12:56:31', 'test@example.com', '1234567899', 1, 1, '', '', '', '', '', '', '', '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id_l1`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`cat_id_l2`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`cat_id_l3`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`supplier_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_cat_discounts`
--
ALTER TABLE `product_cat_discounts`
  ADD CONSTRAINT `product_cat_discounts_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `product_cat_discounts_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_pricings`
--
ALTER TABLE `product_pricings`
  ADD CONSTRAINT `product_pricings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_pricings_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
