-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Oct 24, 2025 at 03:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glow`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `nav` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `description`, `website`, `logo`, `status`, `is_active`, `nav`, `featured`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-09-28 16:45:28', '2025-09-28 16:45:28'),
(4, 'Beauty of Joseon', 'beauty-of-joseon', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, '2025-10-06 18:38:44', '2025-10-07 02:28:43'),
(5, 'COSRX', 'cosrx', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, '2025-10-06 18:38:44', '2025-10-07 02:28:43'),
(6, 'TONYMOLY', 'tonymoly', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, '2025-10-06 18:38:44', '2025-10-07 02:28:43'),
(7, 'AXIS-Y', 'axis-y', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-06 18:38:44', '2025-10-06 18:38:44'),
(8, 'The Ordinary', 'the-ordinary', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 22:14:18'),
(9, 'CeraVe', 'cerave', NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:28:43'),
(10, 'Neutrogena', 'neutrogena', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(11, 'Olay', 'olay', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(12, 'L\'Oréal Paris', 'loreal-paris', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(13, 'Maybelline', 'maybelline', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(14, 'Revlon', 'revlon', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(15, 'MAC', 'mac', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(16, 'NARS', 'nars', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(17, 'Fenty Beauty', 'fenty-beauty', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23'),
(18, 'Glossier', 'glossier', NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2025-10-07 02:12:23', '2025-10-07 02:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-setting_background_color', 's:7:\"#ffffff\";', 1761005555),
('laravel-cache-setting_favicon', 's:11:\"favicon.ico\";', 1761005478),
('laravel-cache-setting_heading_color', 's:7:\"#111827\";', 1761005555),
('laravel-cache-setting_logo', 's:21:\"admin-assets/logo.png\";', 1761005478),
('laravel-cache-setting_primary_color', 's:7:\"#f36c21\";', 1761005478),
('laravel-cache-setting_site_name', 's:9:\"K-Glow BD\";', 1761005478),
('laravel-cache-setting_text_color', 's:7:\"#1f2937\";', 1761005555),
('laravel-cache-setting_white_logo', 's:27:\"admin-assets/white-logo.png\";', 1761005478),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:8:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:15:\"manage products\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:17:\"manage categories\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:13:\"manage orders\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:12:\"manage users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"view reports\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"manage roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:18:\"manage permissions\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"manage brand\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"manager\";s:1:\"c\";s:3:\"web\";}}}', 1761084660);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `nav` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `parent_id`, `status`, `nav`, `featured`, `is_featured`, `created_at`, `updated_at`) VALUES
(15, 'Skin Care', 'skin-care', NULL, '1759183645_moisturizer-1.png', NULL, 1, 1, 1, 1, '2025-09-29 16:07:25', '2025-10-09 08:37:43'),
(16, 'Make Up', 'make-up', NULL, '1759183675_toner-1.png', NULL, 1, 0, 0, 1, '2025-09-29 16:07:55', '2025-09-29 16:07:55'),
(17, 'Beauty Tools', 'beauty-tools', NULL, '1759183694_essence-1.png', NULL, 1, 0, 0, 1, '2025-09-29 16:08:14', '2025-09-29 16:08:14'),
(18, 'Fragrance', 'fragrance', 'Perfumes and body sprays for men and women', '1759183713_cream-beauty-pngrepo-com.png', NULL, 1, 0, 0, 1, '2025-09-29 16:08:33', '2025-10-07 02:12:01'),
(19, 'Food', 'food', NULL, '1759183749_serum.png', NULL, 1, 0, 0, 1, '2025-09-29 16:09:09', '2025-09-29 16:09:09'),
(20, 'Supplement', 'supplement', NULL, '1759183769_sun-cream.png', NULL, 1, 0, 0, 1, '2025-09-29 16:09:29', '2025-09-29 16:09:29'),
(21, 'Mask', 'mask', NULL, '1759183822_mud.png', NULL, 1, 0, 0, 1, '2025-09-29 16:10:22', '2025-09-29 16:10:22'),
(22, 'Soothing Gel', 'soothing-gel', NULL, '1759183848_soothing-gel-2.png', NULL, 1, 0, 0, 1, '2025-09-29 16:10:48', '2025-09-29 16:10:48'),
(23, 'Trial Kit', 'trial-kit', NULL, '1759183864_cosmetics.png', NULL, 1, 0, 0, 1, '2025-09-29 16:11:04', '2025-09-29 16:11:04'),
(24, 'Hair Care', 'hair-care', 'Hair care products for healthy and beautiful hair', '1759183888_Hair-care-2.png', NULL, 1, 1, 1, 1, '2025-09-29 16:11:28', '2025-10-07 02:28:43'),
(25, 'Lip Care', 'lip-care', NULL, '1759183914_lipstick-2.png', NULL, 1, 0, 0, 1, '2025-09-29 16:11:54', '2025-09-29 16:11:54'),
(26, '2 in 1', '2-in-1', NULL, '1759183940_shampoo-1.png', NULL, 1, 0, 0, 1, '2025-09-29 16:12:20', '2025-10-07 19:03:07'),
(27, 'Skincare', 'skincare', 'Complete skincare routine products for all skin types', NULL, NULL, 1, 1, 1, 0, '2025-10-07 02:12:01', '2025-10-07 02:28:43'),
(28, 'Makeup', 'makeup', 'Professional makeup products for every occasion', NULL, NULL, 1, 1, 1, 0, '2025-10-07 02:12:01', '2025-10-07 02:28:43'),
(29, 'Body Care', 'body-care', 'Body care and hygiene products', NULL, NULL, 1, 1, 1, 0, '2025-10-07 02:12:01', '2025-10-07 02:28:43'),
(30, 'Men\'s Grooming', 'mens-grooming', 'Grooming products specifically for men', NULL, NULL, 1, 0, 0, 0, '2025-10-07 02:12:01', '2025-10-07 02:12:01'),
(31, 'Tools & Accessories', 'tools-accessories', 'Beauty tools, brushes, and accessories', NULL, NULL, 1, 0, 0, 0, '2025-10-07 02:12:01', '2025-10-07 02:12:01'),
(32, 'Natural & Organic', 'natural-organic', 'Natural and organic beauty products', NULL, NULL, 1, 0, 0, 0, '2025-10-07 02:12:01', '2025-10-07 02:12:01'),
(33, 'Anti-Aging', 'anti-aging', 'Anti-aging skincare and treatments', NULL, NULL, 1, 0, 0, 0, '2025-10-07 02:12:01', '2025-10-07 02:12:01'),
(34, 'Sunscreen & Protection', 'sunscreen-protection', 'Sun protection and UV care products', NULL, NULL, 1, 0, 0, 0, '2025-10-07 02:12:01', '2025-10-07 02:12:01'),
(35, 'Gisela Murphy', 'gisela-murphy-', 'Quae dolores autem e', NULL, NULL, 0, 1, 0, 1, '2025-10-07 19:02:02', '2025-10-07 19:02:02'),
(36, 'Whoopi Gordon', 'Voluptas quaerat por', 'Corporis est labore', NULL, NULL, 0, 0, 0, 1, '2025-10-07 19:02:21', '2025-10-20 17:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('percentage','fixed') NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `minimum_amount` decimal(10,2) DEFAULT NULL,
  `maximum_discount` decimal(10,2) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used_count` int(11) NOT NULL DEFAULT 0,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `applicable_products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`applicable_products`)),
  `applicable_categories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`applicable_categories`)),
  `applicable_brands` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`applicable_brands`)),
  `excluded_products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`excluded_products`)),
  `starts_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `name`, `description`, `type`, `value`, `minimum_amount`, `maximum_discount`, `usage_limit`, `used_count`, `usage_limit_per_user`, `applicable_products`, `applicable_categories`, `applicable_brands`, `excluded_products`, `starts_at`, `expires_at`, `is_active`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'WELCOME10', 'Welcome Discount', 'Get 10% off on your first order', 'percentage', 10.00, 100.00, 50.00, 100, 0, 1, NULL, NULL, NULL, NULL, '2025-10-07 18:09:30', '2026-01-07 18:09:30', 1, 1, '2025-10-07 12:09:30', '2025-10-07 12:09:30'),
(2, 'SAVE20', 'Summer Sale', '20% off on all summer products', 'percentage', 20.00, 200.00, 100.00, 50, 0, 2, NULL, NULL, NULL, NULL, '2025-10-07 18:09:30', '2025-11-07 18:09:30', 1, 1, '2025-10-07 12:09:30', '2025-10-07 12:09:30'),
(3, 'FIXED50', 'Fixed Discount', 'Get ৳50 off on orders above ৳300', 'fixed', 50.00, 300.00, NULL, 200, 0, 3, NULL, NULL, NULL, NULL, '2025-10-07 18:09:30', '2025-12-07 18:09:30', 1, 1, '2025-10-07 12:09:30', '2025-10-07 12:09:30'),
(4, 'VIP100', 'VIP Customer Discount', 'Special discount for VIP customers', 'fixed', 100.00, 500.00, NULL, 25, 0, 1, NULL, NULL, NULL, NULL, '2025-10-07 18:09:30', '2026-04-07 18:09:30', 1, 0, '2025-10-07 12:09:30', '2025-10-07 12:09:30'),
(5, 'FLASH30', 'Flash Sale', '30% off for limited time', 'percentage', 30.00, 150.00, 200.00, 75, 0, 1, NULL, NULL, NULL, NULL, '2025-10-07 18:09:30', '2025-10-14 18:09:30', 1, 1, '2025-10-07 12:09:30', '2025-10-07 12:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `order_amount` decimal(10,2) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `current_stock` int(11) NOT NULL DEFAULT 0,
  `reserved_stock` int(11) NOT NULL DEFAULT 0,
  `available_stock` int(11) NOT NULL DEFAULT 0,
  `minimum_stock` int(11) NOT NULL DEFAULT 0,
  `maximum_stock` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `track_stock` tinyint(1) NOT NULL DEFAULT 1,
  `allow_backorder` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_restocked_at` timestamp NULL DEFAULT NULL,
  `last_sold_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `current_stock`, `reserved_stock`, `available_stock`, `minimum_stock`, `maximum_stock`, `cost_price`, `selling_price`, `sku`, `barcode`, `location`, `notes`, `track_stock`, `allow_backorder`, `is_active`, `last_restocked_at`, `last_sold_at`, `created_at`, `updated_at`) VALUES
(1, 12, 2125, 0, 2125, 18, 54, 176.40, 294.00, 'SKU-000012', 'BC00000012', 'Warehouse A', NULL, 1, 0, 1, '2025-10-09 12:37:20', '2025-10-08 17:42:02', '2025-10-07 12:49:10', '2025-10-09 12:37:20'),
(2, 13, 79, 0, 79, 14, 161, 15.59, 25.99, 'SKU-000013', 'BC00000013', 'Warehouse A', NULL, 1, 0, 1, '2025-09-09 12:49:10', '2025-10-09 12:15:25', '2025-10-07 12:49:10', '2025-10-09 12:15:25'),
(3, 14, 87, 0, 87, 11, 59, 11.39, 18.99, 'SKU-000014', 'BC00000014', 'Warehouse A', NULL, 1, 0, 1, '2025-09-09 12:49:11', '2025-10-08 17:12:34', '2025-10-07 12:49:10', '2025-10-08 17:12:34'),
(4, 15, 3, 0, 3, 6, 91, 9.59, 15.99, 'SKU-000015', 'BC00000015', 'Warehouse A', NULL, 1, 0, 1, '2025-09-15 12:49:11', '2025-10-08 17:12:35', '2025-10-07 12:49:11', '2025-10-08 17:12:35'),
(5, 16, 18, 0, 18, 12, 128, 17.39, 28.99, 'SKU-000016', 'BC00000016', 'Warehouse A', NULL, 1, 0, 1, '2025-10-02 12:49:11', '2025-10-08 16:40:35', '2025-10-07 12:49:11', '2025-10-08 16:40:35'),
(6, 17, 91, 0, 91, 7, 130, 7.79, 12.99, 'SKU-000017', 'BC00000017', 'Warehouse A', NULL, 1, 0, 1, '2025-09-30 12:49:11', '2025-10-08 17:46:47', '2025-10-07 12:49:11', '2025-10-08 17:46:47'),
(7, 18, 16, 0, 16, 6, 160, 13.79, 22.99, 'SKU-000018', 'BC00000018', 'Warehouse A', NULL, 1, 0, 1, '2025-09-26 12:49:11', '2025-10-08 15:39:11', '2025-10-07 12:49:11', '2025-10-08 15:39:11'),
(8, 19, 139, 0, 139, 11, 86, 10.19, 16.99, 'SKU-000019', 'BC00000019', 'Warehouse A', NULL, 1, 0, 1, '2025-10-02 12:49:11', '2025-10-08 15:39:11', '2025-10-07 12:49:11', '2025-10-08 15:39:11'),
(9, 20, 73, 0, 73, 19, 170, 14.99, 24.99, 'SKU-000020', 'BC00000020', 'Warehouse A', NULL, 1, 0, 1, '2025-09-09 12:49:11', '2025-10-08 15:39:11', '2025-10-07 12:49:11', '2025-10-08 15:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"66cf7610-1bec-45a1-91b4-d0eaad402ad1\",\"displayName\":\"App\\\\Notifications\\\\OtpVerificationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:10;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:45:\\\"App\\\\Notifications\\\\OtpVerificationNotification\\\":3:{s:6:\\\"\\u0000*\\u0000otp\\\";s:6:\\\"970851\\\";s:7:\\\"\\u0000*\\u0000type\\\";s:12:\\\"registration\\\";s:2:\\\"id\\\";s:36:\\\"4c048a69-85e4-458f-bb21-964395aa6803\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1760980798,\"delay\":null}', 0, NULL, 1760980798, 1760980798),
(2, 'default', '{\"uuid\":\"f58d2f07-b478-4736-a68d-d78963dd0930\",\"displayName\":\"App\\\\Notifications\\\\OtpVerificationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:10;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:45:\\\"App\\\\Notifications\\\\OtpVerificationNotification\\\":3:{s:6:\\\"\\u0000*\\u0000otp\\\";s:6:\\\"830880\\\";s:7:\\\"\\u0000*\\u0000type\\\";s:12:\\\"registration\\\";s:2:\\\"id\\\";s:36:\\\"728f5d17-def3-4e1c-8f39-9d41678e44c0\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1760980817,\"delay\":null}', 0, NULL, 1760980817, 1760980817),
(3, 'default', '{\"uuid\":\"ca391a69-2f18-453a-83f4-bcc5834730da\",\"displayName\":\"App\\\\Notifications\\\\OtpVerificationNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:11;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:45:\\\"App\\\\Notifications\\\\OtpVerificationNotification\\\":3:{s:6:\\\"\\u0000*\\u0000otp\\\";s:6:\\\"411898\\\";s:7:\\\"\\u0000*\\u0000type\\\";s:12:\\\"registration\\\";s:2:\\\"id\\\";s:36:\\\"4c3371d4-7fb5-4262-8ece-0079754ee4db\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"},\"createdAt\":1760981461,\"delay\":null}', 0, NULL, 1760981461, 1760981461);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_28_160959_add_phone_to_users_table', 2),
(5, '2025_09_28_165339_add_profile_photo_to_users_table', 2),
(6, '2025_09_28_175627_add_avatar_to_users_table', 3),
(7, '2025_09_28_182552_create_permission_tables', 4),
(8, '2025_09_28_191523_create_categories_table', 5),
(9, '2025_09_28_191716_create_brands_table', 5),
(11, '2025_09_28_192236_create_subcategories_table', 5),
(13, '2025_09_28_231007_add_subcategory_id_to_products_table', 6),
(15, '2025_09_28_225154_create_product_images_table', 7),
(17, '2025_09_28_192106_create_products_table', 8),
(18, '2025_10_06_171436_create_orders_table', 9),
(19, '2025_10_06_171443_create_order_items_table', 9),
(20, '2025_10_07_001945_create_carts_table', 10),
(21, '2025_10_07_082614_add_nav_featured_to_categories_table', 10),
(22, '2025_10_07_082617_add_nav_featured_to_subcategories_table', 10),
(23, '2025_10_07_082620_add_nav_featured_to_brands_table', 10),
(24, '2025_10_07_174041_create_wishlists_table', 11),
(25, '2025_10_07_174609_create_reviews_table', 12),
(26, '2025_10_07_180600_create_coupons_table', 13),
(27, '2025_10_07_180618_create_coupon_usages_table', 13),
(28, '2025_10_07_182807_create_notifications_table', 14),
(30, '2025_10_07_184307_create_inventory_table', 15),
(31, '2025_10_07_184331_create_stock_movements_table', 16),
(32, '2025_10_08_010554_add_sort_order_to_subcategories_table', 17),
(33, '2025_10_08_040424_add_missing_columns_to_brands_table', 18),
(34, '2025_10_08_183303_add_profile_fields_to_users_table', 19),
(35, '2025_10_08_184518_create_payments_table', 20),
(36, '2025_10_08_190548_add_billing_shipping_fields_to_orders_table', 21),
(37, '2025_10_08_204106_add_missing_fields_to_orders_table', 22),
(38, '2025_10_20_170734_add_verification_fields_to_users_table', 23),
(39, '2025_10_20_170813_create_otp_verifications_table', 24),
(41, '2025_10_20_182847_create_settings_table', 26),
(45, '2025_10_20_181741_create_verification_settings_table', 27),
(47, '2025_10_20_210937_create_sliders_table', 28),
(48, '2025_10_20_215916_create_slogans_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel` enum('email','sms','push','in_app') NOT NULL DEFAULT 'in_app',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `is_sent` tinyint(1) NOT NULL DEFAULT 0,
  `sent_at` timestamp NULL DEFAULT NULL,
  `is_important` tinyint(1) NOT NULL DEFAULT 0,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `title`, `message`, `data`, `user_id`, `order_id`, `product_id`, `channel`, `is_read`, `read_at`, `is_sent`, `sent_at`, `is_important`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'welcome', 'Welcome to K-GLOW!', 'Welcome to K-GLOW! Start exploring our amazing products and enjoy your shopping experience.', '{\"welcome_bonus\":\"Get 10% off your first order with code WELCOME10\",\"explore_url\":\"http:\\/\\/localhost\\/shop\"}', 1, NULL, NULL, 'in_app', 1, '2025-09-12 17:02:39', 0, NULL, 1, NULL, '2025-09-12 17:02:39', '2025-09-12 17:02:39'),
(2, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-001 has been confirmed and is being processed.', '{\"order_number\":\"ORD-001\",\"total_amount\":150,\"status\":\"confirmed\"}', 1, NULL, NULL, 'in_app', 1, '2025-10-07 13:05:25', 0, NULL, 1, NULL, '2025-09-27 03:39:39', '2025-10-07 13:05:25'),
(3, 'order_shipped', 'Order Shipped', 'Your order #ORD-002 has been shipped and is on its way to you.', '{\"order_number\":\"ORD-002\",\"tracking_number\":\"TRK123456789\",\"estimated_delivery\":\"2025-10-10\"}', 1, NULL, NULL, 'in_app', 1, '2025-10-08 12:03:52', 0, NULL, 1, NULL, '2025-09-13 22:39:39', '2025-10-08 12:03:52'),
(4, 'order_delivered', 'Order Delivered', 'Your order #ORD-003 has been delivered successfully.', '{\"order_number\":\"ORD-003\",\"delivery_date\":\"2025-10-06\"}', 1, NULL, NULL, 'in_app', 1, '2025-09-26 21:29:39', 0, NULL, 1, NULL, '2025-09-26 21:29:39', '2025-09-26 21:29:39'),
(5, 'product_back_in_stock', 'Product Back in Stock', 'The product \"Premium Wireless Headphones\" is now back in stock!', '{\"product_name\":\"Premium Wireless Headphones\",\"product_url\":\"http:\\/\\/localhost\\/product\\/premium-wireless-headphones\",\"stock_quantity\":25}', 1, NULL, NULL, 'in_app', 1, '2025-10-08 12:03:52', 0, NULL, 0, NULL, '2025-09-16 02:39:39', '2025-10-08 12:03:52'),
(6, 'price_drop', 'Price Drop Alert', 'The price of \"Smart Fitness Tracker\" has dropped by 15%! New price: ৳2,550', '{\"product_name\":\"Smart Fitness Tracker\",\"product_url\":\"http:\\/\\/localhost\\/product\\/smart-fitness-tracker\",\"old_price\":3000,\"new_price\":2550,\"discount_percentage\":15}', 1, NULL, NULL, 'in_app', 1, '2025-10-08 12:03:52', 0, NULL, 0, NULL, '2025-09-08 16:39:39', '2025-10-08 12:03:52'),
(7, 'payment_confirmed', 'Payment Confirmed', 'Payment for order #ORD-004 has been confirmed.', '{\"order_number\":\"ORD-004\",\"payment_method\":\"Credit Card\",\"amount_paid\":299.99}', 1, NULL, NULL, 'in_app', 1, '2025-09-10 09:28:39', 0, NULL, 1, NULL, '2025-09-10 09:28:39', '2025-09-10 09:28:39'),
(8, 'maintenance', 'Scheduled Maintenance', 'We will be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM. Some features may be temporarily unavailable.', '{\"start_time\":\"2024-01-14 02:00:00\",\"end_time\":\"2024-01-14 04:00:00\",\"maintenance_message\":\"Scheduled maintenance on Sunday, 2:00 AM - 4:00 AM\"}', 1, NULL, NULL, 'in_app', 1, '2025-10-07 13:05:27', 0, NULL, 1, NULL, '2025-09-26 04:39:39', '2025-10-07 13:05:27'),
(9, 'promotional', 'Special Offer - 20% Off!', 'Get 20% off on all electronics this weekend! Use code ELECTRONICS20 at checkout.', '{\"promotion_title\":\"Special Offer - 20% Off!\",\"promotion_message\":\"Get 20% off on all electronics this weekend!\",\"coupon_code\":\"ELECTRONICS20\"}', 1, NULL, NULL, 'in_app', 1, '2025-10-08 12:03:52', 0, NULL, 0, NULL, '2025-09-12 14:39:39', '2025-10-08 12:03:52'),
(10, 'welcome', 'Welcome to K-GLOW!', 'Welcome to K-GLOW! Start exploring our amazing products and enjoy your shopping experience.', '{\"welcome_bonus\":\"Get 10% off your first order with code WELCOME10\",\"explore_url\":\"http:\\/\\/localhost\\/shop\"}', 2, NULL, NULL, 'in_app', 1, '2025-09-13 20:51:39', 0, NULL, 1, NULL, '2025-09-13 20:51:39', '2025-09-13 20:51:39'),
(11, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-001 has been confirmed and is being processed.', '{\"order_number\":\"ORD-001\",\"total_amount\":150,\"status\":\"confirmed\"}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-12 18:39:39', '2025-09-12 18:39:39'),
(12, 'order_shipped', 'Order Shipped', 'Your order #ORD-002 has been shipped and is on its way to you.', '{\"order_number\":\"ORD-002\",\"tracking_number\":\"TRK123456789\",\"estimated_delivery\":\"2025-10-10\"}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-29 04:39:39', '2025-09-29 04:39:39'),
(13, 'order_delivered', 'Order Delivered', 'Your order #ORD-003 has been delivered successfully.', '{\"order_number\":\"ORD-003\",\"delivery_date\":\"2025-10-06\"}', 2, NULL, NULL, 'in_app', 1, '2025-09-27 08:01:39', 0, NULL, 1, NULL, '2025-09-27 08:01:39', '2025-09-27 08:01:39'),
(14, 'product_back_in_stock', 'Product Back in Stock', 'The product \"Premium Wireless Headphones\" is now back in stock!', '{\"product_name\":\"Premium Wireless Headphones\",\"product_url\":\"http:\\/\\/localhost\\/product\\/premium-wireless-headphones\",\"stock_quantity\":25}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-16 23:39:39', '2025-09-16 23:39:39'),
(15, 'price_drop', 'Price Drop Alert', 'The price of \"Smart Fitness Tracker\" has dropped by 15%! New price: ৳2,550', '{\"product_name\":\"Smart Fitness Tracker\",\"product_url\":\"http:\\/\\/localhost\\/product\\/smart-fitness-tracker\",\"old_price\":3000,\"new_price\":2550,\"discount_percentage\":15}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-06 23:39:40', '2025-09-06 23:39:40'),
(16, 'payment_confirmed', 'Payment Confirmed', 'Payment for order #ORD-004 has been confirmed.', '{\"order_number\":\"ORD-004\",\"payment_method\":\"Credit Card\",\"amount_paid\":299.99}', 2, NULL, NULL, 'in_app', 1, '2025-09-20 18:36:40', 0, NULL, 1, NULL, '2025-09-20 18:36:40', '2025-09-20 18:36:40'),
(17, 'maintenance', 'Scheduled Maintenance', 'We will be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM. Some features may be temporarily unavailable.', '{\"start_time\":\"2024-01-14 02:00:00\",\"end_time\":\"2024-01-14 04:00:00\",\"maintenance_message\":\"Scheduled maintenance on Sunday, 2:00 AM - 4:00 AM\"}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-24 22:39:40', '2025-09-24 22:39:40'),
(18, 'promotional', 'Special Offer - 20% Off!', 'Get 20% off on all electronics this weekend! Use code ELECTRONICS20 at checkout.', '{\"promotion_title\":\"Special Offer - 20% Off!\",\"promotion_message\":\"Get 20% off on all electronics this weekend!\",\"coupon_code\":\"ELECTRONICS20\"}', 2, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-10-03 04:39:40', '2025-10-03 04:39:40'),
(19, 'welcome', 'Welcome to K-GLOW!', 'Welcome to K-GLOW! Start exploring our amazing products and enjoy your shopping experience.', '{\"welcome_bonus\":\"Get 10% off your first order with code WELCOME10\",\"explore_url\":\"http:\\/\\/localhost\\/shop\"}', 3, NULL, NULL, 'in_app', 1, '2025-09-13 17:51:40', 0, NULL, 1, NULL, '2025-09-13 17:51:40', '2025-09-13 17:51:40'),
(20, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-001 has been confirmed and is being processed.', '{\"order_number\":\"ORD-001\",\"total_amount\":150,\"status\":\"confirmed\"}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:07', 0, NULL, 1, NULL, '2025-09-28 10:39:40', '2025-10-07 21:58:07'),
(21, 'order_shipped', 'Order Shipped', 'Your order #ORD-002 has been shipped and is on its way to you.', '{\"order_number\":\"ORD-002\",\"tracking_number\":\"TRK123456789\",\"estimated_delivery\":\"2025-10-10\"}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:33', 0, NULL, 1, NULL, '2025-09-08 17:39:40', '2025-10-07 21:58:33'),
(22, 'order_delivered', 'Order Delivered', 'Your order #ORD-003 has been delivered successfully.', '{\"order_number\":\"ORD-003\",\"delivery_date\":\"2025-10-06\"}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:11', 0, NULL, 1, NULL, '2025-10-02 17:32:40', '2025-10-07 21:58:11'),
(23, 'product_back_in_stock', 'Product Back in Stock', 'The product \"Premium Wireless Headphones\" is now back in stock!', '{\"product_name\":\"Premium Wireless Headphones\",\"product_url\":\"http:\\/\\/localhost\\/product\\/premium-wireless-headphones\",\"stock_quantity\":25}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:33', 0, NULL, 0, NULL, '2025-09-08 04:39:40', '2025-10-07 21:58:33'),
(24, 'price_drop', 'Price Drop Alert', 'The price of \"Smart Fitness Tracker\" has dropped by 15%! New price: ৳2,550', '{\"product_name\":\"Smart Fitness Tracker\",\"product_url\":\"http:\\/\\/localhost\\/product\\/smart-fitness-tracker\",\"old_price\":3000,\"new_price\":2550,\"discount_percentage\":15}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:06', 0, NULL, 0, NULL, '2025-09-19 05:39:40', '2025-10-07 21:58:06'),
(25, 'payment_confirmed', 'Payment Confirmed', 'Payment for order #ORD-004 has been confirmed.', '{\"order_number\":\"ORD-004\",\"payment_method\":\"Credit Card\",\"amount_paid\":299.99}', 3, NULL, NULL, 'in_app', 1, '2025-10-01 09:09:40', 0, NULL, 1, NULL, '2025-10-01 09:09:40', '2025-10-01 09:09:40'),
(26, 'maintenance', 'Scheduled Maintenance', 'We will be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM. Some features may be temporarily unavailable.', '{\"start_time\":\"2024-01-14 02:00:00\",\"end_time\":\"2024-01-14 04:00:00\",\"maintenance_message\":\"Scheduled maintenance on Sunday, 2:00 AM - 4:00 AM\"}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:08', 0, NULL, 1, NULL, '2025-09-13 22:39:40', '2025-10-07 21:58:08'),
(27, 'promotional', 'Special Offer - 20% Off!', 'Get 20% off on all electronics this weekend! Use code ELECTRONICS20 at checkout.', '{\"promotion_title\":\"Special Offer - 20% Off!\",\"promotion_message\":\"Get 20% off on all electronics this weekend!\",\"coupon_code\":\"ELECTRONICS20\"}', 3, NULL, NULL, 'in_app', 1, '2025-10-07 21:58:33', 0, NULL, 0, NULL, '2025-09-06 17:39:40', '2025-10-07 21:58:33'),
(28, 'welcome', 'Welcome to K-GLOW!', 'Welcome to K-GLOW! Start exploring our amazing products and enjoy your shopping experience.', '{\"welcome_bonus\":\"Get 10% off your first order with code WELCOME10\",\"explore_url\":\"http:\\/\\/localhost\\/shop\"}', 4, NULL, NULL, 'in_app', 1, '2025-09-29 15:44:40', 0, NULL, 1, NULL, '2025-09-29 15:44:40', '2025-09-29 15:44:40'),
(29, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-001 has been confirmed and is being processed.', '{\"order_number\":\"ORD-001\",\"total_amount\":150,\"status\":\"confirmed\"}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-17 23:39:40', '2025-09-17 23:39:40'),
(30, 'order_shipped', 'Order Shipped', 'Your order #ORD-002 has been shipped and is on its way to you.', '{\"order_number\":\"ORD-002\",\"tracking_number\":\"TRK123456789\",\"estimated_delivery\":\"2025-10-10\"}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-15 14:39:40', '2025-09-15 14:39:40'),
(31, 'order_delivered', 'Order Delivered', 'Your order #ORD-003 has been delivered successfully.', '{\"order_number\":\"ORD-003\",\"delivery_date\":\"2025-10-06\"}', 4, NULL, NULL, 'in_app', 1, '2025-10-05 14:02:40', 0, NULL, 1, NULL, '2025-10-05 14:02:40', '2025-10-05 14:02:40'),
(32, 'product_back_in_stock', 'Product Back in Stock', 'The product \"Premium Wireless Headphones\" is now back in stock!', '{\"product_name\":\"Premium Wireless Headphones\",\"product_url\":\"http:\\/\\/localhost\\/product\\/premium-wireless-headphones\",\"stock_quantity\":25}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-13 10:39:40', '2025-09-13 10:39:40'),
(33, 'price_drop', 'Price Drop Alert', 'The price of \"Smart Fitness Tracker\" has dropped by 15%! New price: ৳2,550', '{\"product_name\":\"Smart Fitness Tracker\",\"product_url\":\"http:\\/\\/localhost\\/product\\/smart-fitness-tracker\",\"old_price\":3000,\"new_price\":2550,\"discount_percentage\":15}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-17 17:39:40', '2025-09-17 17:39:40'),
(34, 'payment_confirmed', 'Payment Confirmed', 'Payment for order #ORD-004 has been confirmed.', '{\"order_number\":\"ORD-004\",\"payment_method\":\"Credit Card\",\"amount_paid\":299.99}', 4, NULL, NULL, 'in_app', 1, '2025-09-08 03:14:40', 0, NULL, 1, NULL, '2025-09-08 03:14:40', '2025-09-08 03:14:40'),
(35, 'maintenance', 'Scheduled Maintenance', 'We will be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM. Some features may be temporarily unavailable.', '{\"start_time\":\"2024-01-14 02:00:00\",\"end_time\":\"2024-01-14 04:00:00\",\"maintenance_message\":\"Scheduled maintenance on Sunday, 2:00 AM - 4:00 AM\"}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-10-06 01:39:40', '2025-10-06 01:39:40'),
(36, 'promotional', 'Special Offer - 20% Off!', 'Get 20% off on all electronics this weekend! Use code ELECTRONICS20 at checkout.', '{\"promotion_title\":\"Special Offer - 20% Off!\",\"promotion_message\":\"Get 20% off on all electronics this weekend!\",\"coupon_code\":\"ELECTRONICS20\"}', 4, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-25 07:39:40', '2025-09-25 07:39:40'),
(37, 'welcome', 'Welcome to K-GLOW!', 'Welcome to K-GLOW! Start exploring our amazing products and enjoy your shopping experience.', '{\"welcome_bonus\":\"Get 10% off your first order with code WELCOME10\",\"explore_url\":\"http:\\/\\/localhost\\/shop\"}', 5, NULL, NULL, 'in_app', 1, '2025-09-30 13:44:40', 0, NULL, 1, NULL, '2025-09-30 13:44:40', '2025-09-30 13:44:40'),
(38, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-001 has been confirmed and is being processed.', '{\"order_number\":\"ORD-001\",\"total_amount\":150,\"status\":\"confirmed\"}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-24 10:39:40', '2025-09-24 10:39:40'),
(39, 'order_shipped', 'Order Shipped', 'Your order #ORD-002 has been shipped and is on its way to you.', '{\"order_number\":\"ORD-002\",\"tracking_number\":\"TRK123456789\",\"estimated_delivery\":\"2025-10-10\"}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-10-03 17:39:40', '2025-10-03 17:39:40'),
(40, 'order_delivered', 'Order Delivered', 'Your order #ORD-003 has been delivered successfully.', '{\"order_number\":\"ORD-003\",\"delivery_date\":\"2025-10-06\"}', 5, NULL, NULL, 'in_app', 1, '2025-09-06 17:52:40', 0, NULL, 1, NULL, '2025-09-06 17:52:40', '2025-09-06 17:52:40'),
(41, 'product_back_in_stock', 'Product Back in Stock', 'The product \"Premium Wireless Headphones\" is now back in stock!', '{\"product_name\":\"Premium Wireless Headphones\",\"product_url\":\"http:\\/\\/localhost\\/product\\/premium-wireless-headphones\",\"stock_quantity\":25}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-10-05 12:39:40', '2025-10-05 12:39:40'),
(42, 'price_drop', 'Price Drop Alert', 'The price of \"Smart Fitness Tracker\" has dropped by 15%! New price: ৳2,550', '{\"product_name\":\"Smart Fitness Tracker\",\"product_url\":\"http:\\/\\/localhost\\/product\\/smart-fitness-tracker\",\"old_price\":3000,\"new_price\":2550,\"discount_percentage\":15}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-16 21:39:40', '2025-09-16 21:39:40'),
(43, 'payment_confirmed', 'Payment Confirmed', 'Payment for order #ORD-004 has been confirmed.', '{\"order_number\":\"ORD-004\",\"payment_method\":\"Credit Card\",\"amount_paid\":299.99}', 5, NULL, NULL, 'in_app', 1, '2025-09-13 08:13:40', 0, NULL, 1, NULL, '2025-09-13 08:13:40', '2025-09-13 08:13:40'),
(44, 'maintenance', 'Scheduled Maintenance', 'We will be performing scheduled maintenance on Sunday, 2:00 AM - 4:00 AM. Some features may be temporarily unavailable.', '{\"start_time\":\"2024-01-14 02:00:00\",\"end_time\":\"2024-01-14 04:00:00\",\"maintenance_message\":\"Scheduled maintenance on Sunday, 2:00 AM - 4:00 AM\"}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 1, NULL, '2025-09-20 09:39:40', '2025-09-20 09:39:40'),
(45, 'promotional', 'Special Offer - 20% Off!', 'Get 20% off on all electronics this weekend! Use code ELECTRONICS20 at checkout.', '{\"promotion_title\":\"Special Offer - 20% Off!\",\"promotion_message\":\"Get 20% off on all electronics this weekend!\",\"coupon_code\":\"ELECTRONICS20\"}', 5, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-09-21 13:39:40', '2025-09-21 13:39:40'),
(46, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-ATOZZGLX has been confirmed and is being processed.', '{\"order_number\":\"ORD-ATOZZGLX\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 12, NULL, 'in_app', 1, '2025-10-08 12:03:46', 1, '2025-10-07 14:38:41', 1, NULL, '2025-10-07 14:38:41', '2025-10-08 12:03:46'),
(47, 'order_cancelled', 'Order Cancelled', 'Your order #ORD-ATOZZGLX has been cancelled.', '{\"order_number\":\"ORD-ATOZZGLX\",\"cancellation_reason\":null,\"refund_amount\":\"26.50\"}', 1, 12, NULL, 'in_app', 1, '2025-10-08 12:03:46', 1, '2025-10-07 14:38:49', 0, NULL, '2025-10-07 14:38:49', '2025-10-08 12:03:46'),
(48, 'order', 'khkj', 'hkhk', NULL, NULL, NULL, NULL, 'in_app', 0, NULL, 0, NULL, 0, NULL, '2025-10-07 23:28:28', '2025-10-07 23:28:28'),
(49, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-O7Z1KSRZ has been confirmed and is being processed.', '{\"order_number\":\"ORD-O7Z1KSRZ\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 13, NULL, 'in_app', 0, NULL, 1, '2025-10-08 12:53:58', 1, NULL, '2025-10-08 12:53:58', '2025-10-08 12:53:58'),
(50, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-PIKTRTRS has been confirmed and is being processed.', '{\"order_number\":\"ORD-PIKTRTRS\",\"total_amount\":167.3244,\"status\":\"pending\"}', 1, 26, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:13:26', 1, NULL, '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(51, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-LDW8PBEI has been confirmed and is being processed.', '{\"order_number\":\"ORD-LDW8PBEI\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 27, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:34:29', 1, NULL, '2025-10-08 14:34:29', '2025-10-08 14:34:29'),
(52, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-HSHGPE97 has been confirmed and is being processed.', '{\"order_number\":\"ORD-HSHGPE97\",\"total_amount\":59.367599999999996,\"status\":\"pending\"}', 1, 28, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:35:10', 1, NULL, '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(53, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-QK0YZEAO has been confirmed and is being processed.', '{\"order_number\":\"ORD-QK0YZEAO\",\"total_amount\":59.367599999999996,\"status\":\"pending\"}', 1, 29, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:35:57', 1, NULL, '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(54, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-GTZYWZIB has been confirmed and is being processed.', '{\"order_number\":\"ORD-GTZYWZIB\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 30, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:41:44', 1, NULL, '2025-10-08 14:41:44', '2025-10-08 14:41:44'),
(55, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-PQDTQYQO has been confirmed and is being processed.', '{\"order_number\":\"ORD-PQDTQYQO\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 31, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:42:42', 1, NULL, '2025-10-08 14:42:42', '2025-10-08 14:42:42'),
(56, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-MI6HXLZF has been confirmed and is being processed.', '{\"order_number\":\"ORD-MI6HXLZF\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 32, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:43:11', 1, NULL, '2025-10-08 14:43:11', '2025-10-08 14:43:11'),
(57, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-JJWPWJQ1 has been confirmed and is being processed.', '{\"order_number\":\"ORD-JJWPWJQ1\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 33, NULL, 'in_app', 0, NULL, 1, '2025-10-08 14:52:49', 1, NULL, '2025-10-08 14:52:49', '2025-10-08 14:52:49'),
(58, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-P99NWRVC has been confirmed and is being processed.', '{\"order_number\":\"ORD-P99NWRVC\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 34, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:11:06', 1, NULL, '2025-10-08 15:11:06', '2025-10-08 15:11:06'),
(59, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-OCGNCG2W has been confirmed and is being processed.', '{\"order_number\":\"ORD-OCGNCG2W\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 35, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:18:52', 1, NULL, '2025-10-08 15:18:52', '2025-10-08 15:18:52'),
(60, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-S0W0AHRH has been confirmed and is being processed.', '{\"order_number\":\"ORD-S0W0AHRH\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 36, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:20:06', 1, NULL, '2025-10-08 15:20:06', '2025-10-08 15:20:06'),
(61, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-CNGJCUK9 has been confirmed and is being processed.', '{\"order_number\":\"ORD-CNGJCUK9\",\"total_amount\":529.0056,\"status\":\"pending\"}', 1, 37, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:20:30', 1, NULL, '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(62, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-JVXXOLEV has been confirmed and is being processed.', '{\"order_number\":\"ORD-JVXXOLEV\",\"total_amount\":26.4992,\"status\":\"pending\"}', 1, 38, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:20:52', 1, NULL, '2025-10-08 15:20:52', '2025-10-08 15:20:52'),
(63, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-G5Q9QEHB has been confirmed and is being processed.', '{\"order_number\":\"ORD-G5Q9QEHB\",\"total_amount\":90.67679999999999,\"status\":\"pending\"}', 1, 39, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:28:16', 1, NULL, '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(64, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-VV3KUDF7 has been confirmed and is being processed.', '{\"order_number\":\"ORD-VV3KUDF7\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 40, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:28:37', 1, NULL, '2025-10-08 15:28:37', '2025-10-08 15:28:37'),
(65, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-THFUVQIW has been confirmed and is being processed.', '{\"order_number\":\"ORD-THFUVQIW\",\"total_amount\":109.02599999999998,\"status\":\"pending\"}', 1, 41, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:33:35', 1, NULL, '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(66, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-UZDRTBUT has been confirmed and is being processed.', '{\"order_number\":\"ORD-UZDRTBUT\",\"total_amount\":65.8476,\"status\":\"pending\"}', 1, 42, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:34:21', 1, NULL, '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(67, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-MLJ17QI7 has been confirmed and is being processed.', '{\"order_number\":\"ORD-MLJ17QI7\",\"total_amount\":467.60760000000005,\"status\":\"pending\"}', 1, 43, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:39:11', 1, NULL, '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(68, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-OIH6FPIN has been confirmed and is being processed.', '{\"order_number\":\"ORD-OIH6FPIN\",\"total_amount\":403.92,\"status\":\"pending\"}', 1, 44, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:40:30', 1, NULL, '2025-10-08 15:40:30', '2025-10-08 15:40:30'),
(69, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-Y2BI5XF4 has been confirmed and is being processed.', '{\"order_number\":\"ORD-Y2BI5XF4\",\"total_amount\":403.92,\"status\":\"pending\"}', 1, 45, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:41:05', 1, NULL, '2025-10-08 15:41:05', '2025-10-08 15:41:05'),
(70, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-9DZUVD9J has been confirmed and is being processed.', '{\"order_number\":\"ORD-9DZUVD9J\",\"total_amount\":222.4692,\"status\":\"pending\"}', 1, 46, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:46:11', 1, NULL, '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(71, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-ZABYBOP1 has been confirmed and is being processed.', '{\"order_number\":\"ORD-ZABYBOP1\",\"total_amount\":226.78920000000002,\"status\":\"pending\"}', 3, 47, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:50:58', 1, NULL, '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(72, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-UJ8ERSFH has been confirmed and is being processed.', '{\"order_number\":\"ORD-UJ8ERSFH\",\"total_amount\":247.29840000000002,\"status\":\"pending\"}', 1, 48, NULL, 'in_app', 0, NULL, 1, '2025-10-08 15:56:00', 1, NULL, '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(73, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-VB42YOJ1 has been confirmed and is being processed.', '{\"order_number\":\"ORD-VB42YOJ1\",\"total_amount\":139.266,\"status\":\"pending\"}', 1, 49, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:02:07', 1, NULL, '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(74, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-WI6Y4RWM has been confirmed and is being processed.', '{\"order_number\":\"ORD-WI6Y4RWM\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 50, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:11:28', 1, NULL, '2025-10-08 16:11:28', '2025-10-08 16:11:28'),
(75, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-CD0PNDXO has been confirmed and is being processed.', '{\"order_number\":\"ORD-CD0PNDXO\",\"total_amount\":90.67679999999999,\"status\":\"pending\"}', 1, 51, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:23:42', 1, NULL, '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(76, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-VZW3NSNR has been confirmed and is being processed.', '{\"order_number\":\"ORD-VZW3NSNR\",\"total_amount\":59.367599999999996,\"status\":\"pending\"}', 3, 52, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:29:45', 1, NULL, '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(77, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-BGHFIEFE has been confirmed and is being processed.', '{\"order_number\":\"ORD-BGHFIEFE\",\"total_amount\":90.67679999999999,\"status\":\"pending\"}', 1, 53, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:40:35', 1, NULL, '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(78, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-RKLKPBDP has been confirmed and is being processed.', '{\"order_number\":\"ORD-RKLKPBDP\",\"total_amount\":226.78920000000002,\"status\":\"pending\"}', 1, 54, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:54:14', 1, NULL, '2025-10-08 16:54:14', '2025-10-08 16:54:14'),
(79, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-RDMXXNMZ has been confirmed and is being processed.', '{\"order_number\":\"ORD-RDMXXNMZ\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 55, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:55:49', 1, NULL, '2025-10-08 16:55:49', '2025-10-08 16:55:49'),
(80, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-SLUDGAGA has been confirmed and is being processed.', '{\"order_number\":\"ORD-SLUDGAGA\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 56, NULL, 'in_app', 0, NULL, 1, '2025-10-08 16:56:47', 1, NULL, '2025-10-08 16:56:47', '2025-10-08 16:56:47'),
(81, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-KZ9KGIQX has been confirmed and is being processed.', '{\"order_number\":\"ORD-KZ9KGIQX\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 57, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:01:46', 1, NULL, '2025-10-08 17:01:46', '2025-10-08 17:01:46'),
(82, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-FZ3LT6LD has been confirmed and is being processed.', '{\"order_number\":\"ORD-FZ3LT6LD\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 58, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:07:48', 1, NULL, '2025-10-08 17:07:48', '2025-10-08 17:07:48'),
(83, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-A2KLZUH5 has been confirmed and is being processed.', '{\"order_number\":\"ORD-A2KLZUH5\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 59, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:08:08', 1, NULL, '2025-10-08 17:08:08', '2025-10-08 17:08:08'),
(84, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-OHUWXE5T has been confirmed and is being processed.', '{\"order_number\":\"ORD-OHUWXE5T\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 60, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:10:03', 1, NULL, '2025-10-08 17:10:03', '2025-10-08 17:10:03'),
(85, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-8X0IQZV9 has been confirmed and is being processed.', '{\"order_number\":\"ORD-8X0IQZV9\",\"total_amount\":59.367599999999996,\"status\":\"pending\"}', 1, 61, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:12:35', 1, NULL, '2025-10-08 17:12:35', '2025-10-08 17:12:35'),
(86, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-3QJM9LZP has been confirmed and is being processed.', '{\"order_number\":\"ORD-3QJM9LZP\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 62, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:23:42', 1, NULL, '2025-10-08 17:23:42', '2025-10-08 17:23:42'),
(87, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-QOFMEVXY has been confirmed and is being processed.', '{\"order_number\":\"ORD-QOFMEVXY\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 63, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:29:19', 1, NULL, '2025-10-08 17:29:19', '2025-10-08 17:29:19'),
(88, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-Q0P57EP1 has been confirmed and is being processed.', '{\"order_number\":\"ORD-Q0P57EP1\",\"total_amount\":201.96,\"status\":\"pending\"}', 1, 64, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:42:02', 1, NULL, '2025-10-08 17:42:02', '2025-10-08 17:42:02'),
(89, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-ANPWUOXW has been confirmed and is being processed.', '{\"order_number\":\"ORD-ANPWUOXW\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 65, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:42:26', 1, NULL, '2025-10-08 17:42:26', '2025-10-08 17:42:26'),
(90, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-9PUJCJMF has been confirmed and is being processed.', '{\"order_number\":\"ORD-9PUJCJMF\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 66, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:42:55', 1, NULL, '2025-10-08 17:42:55', '2025-10-08 17:42:55'),
(91, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-RXLCAYQS has been confirmed and is being processed.', '{\"order_number\":\"ORD-RXLCAYQS\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 67, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:44:03', 1, NULL, '2025-10-08 17:44:03', '2025-10-08 17:44:03'),
(92, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-MR8IFYRJ has been confirmed and is being processed.', '{\"order_number\":\"ORD-MR8IFYRJ\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 68, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:44:26', 1, NULL, '2025-10-08 17:44:26', '2025-10-08 17:44:26'),
(93, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-QQBR3CA5 has been confirmed and is being processed.', '{\"order_number\":\"ORD-QQBR3CA5\",\"total_amount\":30.819199999999995,\"status\":\"pending\"}', 1, 69, NULL, 'in_app', 0, NULL, 1, '2025-10-08 17:45:49', 1, NULL, '2025-10-08 17:45:49', '2025-10-08 17:45:49'),
(94, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-RYMOISBS has been confirmed and is being processed.', '{\"order_number\":\"ORD-RYMOISBS\",\"total_amount\":20.0192,\"status\":\"pending\"}', 1, 70, NULL, 'in_app', 1, '2025-10-09 12:24:59', 1, '2025-10-08 17:46:47', 1, NULL, '2025-10-08 17:46:47', '2025-10-09 12:24:59'),
(95, 'order_cancelled', 'Order Cancelled', 'Your order #ORD-ANPWUOXW has been cancelled.', '{\"order_number\":\"ORD-ANPWUOXW\",\"cancellation_reason\":null,\"refund_amount\":\"30.82\"}', 1, 65, NULL, 'in_app', 1, '2025-10-09 12:24:57', 1, '2025-10-09 08:42:19', 0, NULL, '2025-10-09 08:42:19', '2025-10-09 12:24:57'),
(96, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-BYBFIBEB has been confirmed and is being processed.', '{\"order_number\":\"ORD-BYBFIBEB\",\"total_amount\":124.14599999999999,\"status\":\"pending\"}', 1, 71, NULL, 'in_app', 1, '2025-10-09 12:24:54', 1, '2025-10-09 08:48:41', 1, NULL, '2025-10-09 08:48:41', '2025-10-09 12:24:54'),
(97, 'order_confirmed', 'Order Confirmed', 'Your order #ORD-DTSQBSWW has been confirmed and is being processed.', '{\"order_number\":\"ORD-DTSQBSWW\",\"total_amount\":124.14599999999999,\"status\":\"pending\"}', 8, 72, NULL, 'in_app', 1, '2025-10-09 12:18:11', 1, '2025-10-09 12:15:25', 1, NULL, '2025-10-09 12:15:25', '2025-10-09 12:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `status` enum('pending','processing','shipped','delivered','cancelled','refunded') NOT NULL DEFAULT 'pending',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `subtotal` decimal(10,2) NOT NULL,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_reference` varchar(255) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_postcode` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_postcode` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `notes` text DEFAULT NULL,
  `shipped_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `customer_name`, `customer_email`, `customer_phone`, `status`, `order_status`, `subtotal`, `tax_amount`, `shipping_amount`, `discount_amount`, `total_amount`, `payment_method`, `payment_status`, `transaction_id`, `payment_reference`, `payment_date`, `billing_name`, `billing_email`, `billing_phone`, `billing_city`, `billing_state`, `billing_postcode`, `billing_country`, `shipping_name`, `shipping_city`, `shipping_state`, `shipping_postcode`, `shipping_country`, `shipping_address`, `billing_address`, `city`, `state`, `postal_code`, `phone`, `notes`, `shipped_at`, `delivered_at`, `created_at`, `updated_at`) VALUES
(1, 'ORD-MJB33QL0', 2, NULL, NULL, NULL, 'delivered', 'pending', 89.97, 8.00, 5.99, 0.00, 103.96, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 Main St, City, State 12345', '123 Main St, City, State 12345', NULL, NULL, NULL, '123-456-7890', NULL, NULL, '2025-10-01 18:09:35', '2025-09-21 18:09:35', '2025-09-21 18:09:35'),
(2, 'ORD-1RLZHRTE', 2, NULL, NULL, NULL, 'delivered', 'pending', 89.97, 8.00, 5.99, 0.00, 103.96, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123 Main St, City, State 12345', '123 Main St, City, State 12345', NULL, NULL, NULL, '123-456-7890', NULL, NULL, '2025-10-01 18:09:46', '2025-09-21 18:09:46', '2025-09-21 18:09:46'),
(3, 'ORD-MSTNAK7A', 2, NULL, NULL, NULL, 'shipped', 'pending', 45.50, 4.00, 5.99, 0.00, 55.49, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '456 Oak Ave, City, State 12345', '456 Oak Ave, City, State 12345', NULL, NULL, NULL, '123-456-7890', NULL, '2025-10-03 18:09:46', NULL, '2025-09-28 18:09:46', '2025-09-28 18:09:46'),
(4, 'ORD-BKCEBWY6', 2, NULL, NULL, NULL, 'processing', 'pending', 67.99, 6.00, 5.99, 0.00, 79.98, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '789 Pine St, City, State 12345', '789 Pine St, City, State 12345', NULL, NULL, NULL, '123-456-7890', NULL, NULL, NULL, '2025-10-03 18:09:46', '2025-10-03 18:09:46'),
(5, 'ORD-NINLJ20C', 2, NULL, NULL, NULL, 'pending', 'pending', 23.99, 2.00, 5.99, 0.00, 31.98, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '321 Elm St, City, State 12345', '321 Elm St, City, State 12345', NULL, NULL, NULL, '123-456-7890', NULL, NULL, NULL, '2025-10-05 18:09:46', '2025-10-05 18:09:46'),
(6, 'ORD-YGYRTCWU', 2, NULL, NULL, NULL, 'cancelled', 'pending', 34.99, 3.00, 5.99, 0.00, 43.98, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '654 Maple Dr, City, State 12345', '654 Maple Dr, City, State 12345', NULL, NULL, NULL, '123-456-7890', 'Cancelled by customer', NULL, NULL, '2025-09-26 18:09:46', '2025-09-26 18:09:46'),
(7, 'ORD-ETEJETRZ', 3, NULL, NULL, NULL, 'pending', 'pending', 41.98, 3.36, 5.99, 0.00, 51.33, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-06 20:30:26', '2025-10-06 20:30:26'),
(8, 'ORD-DLWXSTZ2', 3, NULL, NULL, NULL, 'cancelled', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', NULL, NULL, NULL, '01309-514133', 'Cancelled by customer', NULL, NULL, '2025-10-06 20:34:09', '2025-10-06 20:34:28'),
(9, 'ORD-CGI24WWI', 3, NULL, NULL, NULL, 'pending', 'pending', 561.00, 44.88, 0.00, 0.00, 605.88, 'card', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', NULL, NULL, NULL, '01309-514133', NULL, NULL, NULL, '2025-10-06 20:41:10', '2025-10-06 20:41:10'),
(10, 'ORD-2A1WIM8V', 3, NULL, NULL, NULL, 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'cash_on_delivery', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', NULL, NULL, NULL, '01309-514133', NULL, NULL, NULL, '2025-10-06 21:00:36', '2025-10-06 21:00:36'),
(11, 'ORD-HSDK6UEV', 7, NULL, NULL, NULL, 'delivered', 'pending', 436.81, 34.94, 0.00, 0.00, 471.75, 'card', 'complete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rerum reiciendis ull', 'Rerum aut eligendi p', NULL, NULL, NULL, '+1 (426) 608-7541', 'Neque et sunt sunt', '2025-10-07 17:58:02', '2025-10-07 17:57:52', '2025-10-07 11:55:53', '2025-10-07 11:55:53'),
(12, 'ORD-ATOZZGLX', 1, NULL, NULL, NULL, 'delivered', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'bkash', 'paid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-07 14:38:40', '2025-10-07 17:40:24'),
(13, 'ORD-O7Z1KSRZ', 1, NULL, NULL, NULL, 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'card', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 12:53:58', '2025-10-08 12:53:58'),
(26, 'ORD-PIKTRTRS', 1, NULL, NULL, NULL, 'pending', 'pending', 154.93, 12.39, 0.00, 0.00, 167.32, 'card', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Voluptatem non rem', 'Laboriosam ut dolor', NULL, NULL, NULL, '+1 (104) 111-9718', 'Dolor adipisicing su', NULL, NULL, '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(27, 'ORD-LDW8PBEI', 1, NULL, NULL, NULL, 'pending', 'pending', 187.00, 14.96, 0.00, 0.00, 201.96, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Quia libero aut moll', 'Ut id quia voluptate', NULL, NULL, NULL, '+1 (738) 471-3183', 'Aut laborum officia', NULL, NULL, '2025-10-08 14:34:29', '2025-10-08 14:34:29'),
(28, 'ORD-HSHGPE97', 1, NULL, NULL, NULL, 'pending', 'pending', 54.97, 4.40, 0.00, 0.00, 59.37, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(29, 'ORD-QK0YZEAO', 1, NULL, NULL, NULL, 'pending', 'pending', 54.97, 4.40, 0.00, 0.00, 59.37, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(30, 'ORD-GTZYWZIB', 1, NULL, NULL, NULL, 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 14:41:44', '2025-10-08 14:41:44'),
(31, 'ORD-PQDTQYQO', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 14:42:42', '2025-10-08 14:42:42'),
(32, 'ORD-MI6HXLZF', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'completed', '32_1759956192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 14:43:11', '2025-10-08 14:44:25'),
(33, 'ORD-JJWPWJQ1', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'refunded', '33_1759956769', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', 'kg', NULL, NULL, '2025-10-08 14:52:49', '2025-10-08 15:10:43'),
(34, 'ORD-P99NWRVC', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '34_1759957866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', 'dfg', NULL, NULL, '2025-10-08 15:11:06', '2025-10-08 15:11:06'),
(35, 'ORD-OCGNCG2W', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '35_1759958333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 15:18:52', '2025-10-08 15:18:53'),
(36, 'ORD-S0W0AHRH', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'sslcommerz', 'pending', '36_1759958406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 15:20:06', '2025-10-08 15:20:06'),
(37, 'ORD-CNGJCUK9', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 489.82, 39.19, 0.00, 0.00, 529.01, 'sslcommerz', 'pending', '37_1759958430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(38, 'ORD-JVXXOLEV', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 18.99, 1.52, 5.99, 0.00, 26.50, 'sslcommerz', 'pending', '38_1759958452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 15:20:52', '2025-10-08 15:20:52'),
(39, 'ORD-G5Q9QEHB', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 83.96, 6.72, 0.00, 0.00, 90.68, 'sslcommerz', 'pending', '39_1759958896', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', 'hjkghjk', NULL, NULL, '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(40, 'ORD-VV3KUDF7', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '40_1759958917', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', NULL, NULL, NULL, '01757657697', NULL, NULL, NULL, '2025-10-08 15:28:37', '2025-10-08 15:28:37'),
(41, 'ORD-THFUVQIW', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 100.95, 8.08, 0.00, 0.00, 109.03, 'sslcommerz', 'pending', '41_1759959216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:33:35', '2025-10-08 15:33:36'),
(42, 'ORD-UZDRTBUT', 1, 'Admin', 'admin@admin.com', '+1 (936) 994-5502', 'pending', 'pending', 60.97, 4.88, 0.00, 0.00, 65.85, 'sslcommerz', 'pending', '42_1759959261', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eius voluptas tempor', 'A qui quis reprehend', 'Deserunt molestiae i', 'Sed rerum similique', 'Temporibus nostrum m', '+1 (936) 994-5502', 'Velit amet ratione', NULL, NULL, '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(43, 'ORD-MLJ17QI7', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 432.97, 34.64, 0.00, 0.00, 467.61, 'sslcommerz', 'pending', '43_1759959551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(44, 'ORD-OIH6FPIN', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 374.00, 29.92, 0.00, 0.00, 403.92, 'sslcommerz', 'pending', '44_1759959630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:40:30', '2025-10-08 15:40:30'),
(45, 'ORD-Y2BI5XF4', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 374.00, 29.92, 0.00, 0.00, 403.92, 'sslcommerz', 'pending', '45_1759959665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:41:05', '2025-10-08 15:41:05'),
(46, 'ORD-9DZUVD9J', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 205.99, 16.48, 0.00, 0.00, 222.47, 'sslcommerz', 'pending', '46_1759959971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(47, 'ORD-ZABYBOP1', 3, 'Normal User', 'user@example.com', '4855687933', 'pending', 'pending', 209.99, 16.80, 0.00, 0.00, 226.79, 'sslcommerz', 'pending', '47_1759960258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', 'Dhaka', 'Dhaka', '1000', '4855687933', NULL, NULL, NULL, '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(48, 'ORD-UJ8ERSFH', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 228.98, 18.32, 0.00, 0.00, 247.30, 'sslcommerz', 'pending', '48_1759960560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(49, 'ORD-VB42YOJ1', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 128.95, 10.32, 0.00, 0.00, 139.27, 'sslcommerz', 'pending', '49_1759960927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(50, 'ORD-WI6Y4RWM', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 187.00, 14.96, 0.00, 0.00, 201.96, 'sslcommerz', 'pending', '50_1759961488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:11:28', '2025-10-08 16:11:28'),
(51, 'ORD-CD0PNDXO', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 83.96, 6.72, 0.00, 0.00, 90.68, 'sslcommerz', 'pending', '51_1759962222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(52, 'ORD-VZW3NSNR', 3, 'Normal User', 'user@example.com', '01309514133', 'pending', 'pending', 54.97, 4.40, 0.00, 0.00, 59.37, 'sslcommerz', 'completed', '52_1759962585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Normal User\r\nuser@example.com', 'Normal User\r\nuser@example.com', 'Dhaka', 'Dhaka', '1000', '01309514133', NULL, NULL, NULL, '2025-10-08 16:29:45', '2025-10-08 16:58:39'),
(53, 'ORD-BGHFIEFE', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 83.96, 6.72, 0.00, 0.00, 90.68, 'sslcommerz', 'completed', '53_1759963236', 'TEST_1759963628', '2025-10-08 16:47:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:40:35', '2025-10-08 16:47:08'),
(54, 'ORD-RKLKPBDP', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 209.99, 16.80, 0.00, 0.00, 226.79, 'sslcommerz', 'pending', '54_1759964055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:54:14', '2025-10-08 16:54:15'),
(55, 'ORD-RDMXXNMZ', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 187.00, 14.96, 0.00, 0.00, 201.96, 'sslcommerz', 'completed', '55_1759964149', 'MANUAL_1759964168', '2025-10-08 16:56:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:55:49', '2025-10-08 16:56:08'),
(56, 'ORD-SLUDGAGA', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 187.00, 14.96, 0.00, 0.00, 201.96, 'sslcommerz', 'completed', '56_1759964207', 'MANUAL_1759964220', '2025-10-08 16:57:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 16:56:47', '2025-10-08 16:57:00'),
(57, 'ORD-KZ9KGIQX', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '57_1759964506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:01:46', '2025-10-08 17:01:46'),
(58, 'ORD-FZ3LT6LD', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:07:48', '2025-10-08 17:07:48'),
(59, 'ORD-A2KLZUH5', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:08:08', '2025-10-08 17:08:08'),
(60, 'ORD-OHUWXE5T', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', 'tryghdgh', NULL, NULL, '2025-10-08 17:10:03', '2025-10-08 17:10:03'),
(61, 'ORD-8X0IQZV9', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 54.97, 4.40, 0.00, 0.00, 59.37, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:12:34', '2025-10-08 17:12:34'),
(62, 'ORD-3QJM9LZP', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 187.00, 14.96, 0.00, 0.00, 201.96, 'sslcommerz', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:23:42', '2025-10-08 17:23:42'),
(63, 'ORD-QOFMEVXY', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'completed', '63_1759966159', 'MANUAL_1759966193', '2025-10-08 17:29:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:29:19', '2025-10-08 17:29:53'),
(64, 'ORD-Q0P57EP1', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 187.00, 14.96, 0.00, 0.00, 201.96, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:42:02', '2025-10-08 17:42:02'),
(65, 'ORD-ANPWUOXW', 1, 'Admin', 'admin@admin.com', '01757657697', 'cancelled', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '65_1759966946', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', 'Cancelled by customer', NULL, NULL, '2025-10-08 17:42:26', '2025-10-09 08:42:19'),
(66, 'ORD-9PUJCJMF', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:42:55', '2025-10-08 17:42:55'),
(67, 'ORD-RXLCAYQS', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'bkash', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:44:03', '2025-10-08 17:44:03'),
(68, 'ORD-MR8IFYRJ', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '68_1759967066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:44:26', '2025-10-08 17:44:26'),
(69, 'ORD-QQBR3CA5', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'pending', 22.99, 1.84, 5.99, 0.00, 30.82, 'sslcommerz', 'pending', '69_1759967150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:45:49', '2025-10-08 17:45:50'),
(70, 'ORD-RYMOISBS', 1, 'Admin', 'admin@admin.com', '01757657697', 'pending', 'confirmed', 12.99, 1.04, 5.99, 0.00, 20.02, 'sslcommerz', 'completed', '70_1759967207', 'MANUAL_1759967219', '2025-10-08 17:46:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-08 17:46:47', '2025-10-08 17:46:59'),
(71, 'ORD-BYBFIBEB', 1, 'Admin', 'admin@admin.com', '01757657697', 'processing', 'confirmed', 114.95, 9.20, 0.00, 0.00, 124.15, 'sslcommerz', 'paid', '71_1760021321', 'MANUAL_1760021334', '2025-10-09 08:48:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin\r\nadmin@admin.com', 'Admin\r\nadmin@admin.com', 'Dhaka', 'Dhaka', '1000', '01757657697', NULL, NULL, NULL, '2025-10-09 08:48:41', '2025-10-09 08:51:48'),
(72, 'ORD-DTSQBSWW', 8, 'Farhan Tanvir', 'farhan@gmail.com', '01000000000', 'processing', 'confirmed', 114.95, 9.20, 0.00, 0.00, 124.15, 'sslcommerz', 'pending', '72_1760033725', 'MANUAL_1760033749', '2025-10-09 12:15:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Farhan Tanvir\r\nfarhan@gmail.com', 'Farhan Tanvir\r\nfarhan@gmail.com', 'Dhaka', 'Dhaka', '1000', '01000000000', NULL, NULL, NULL, '2025-10-09 12:15:25', '2025-10-09 12:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_sku` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `product_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_options`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `product_sku`, `price`, `quantity`, `total`, `product_options`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 3, 561.00, '{\"size\":\"M\",\"color\":\"Black\"}', '2025-10-06 18:09:46', '2025-10-06 18:09:46'),
(2, 3, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '{\"size\":\"M\",\"color\":\"Black\"}', '2025-10-06 18:09:46', '2025-10-06 18:09:46'),
(3, 4, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '{\"size\":\"M\",\"color\":\"Black\"}', '2025-10-06 18:09:46', '2025-10-06 18:09:46'),
(4, 5, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '{\"size\":\"M\",\"color\":\"Black\"}', '2025-10-06 18:09:46', '2025-10-06 18:09:46'),
(5, 6, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 3, 561.00, '{\"size\":\"M\",\"color\":\"Black\"}', '2025-10-06 18:09:46', '2025-10-06 18:09:46'),
(6, 7, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-06 20:30:26', '2025-10-06 20:30:26'),
(7, 7, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-06 20:30:26', '2025-10-06 20:30:26'),
(8, 8, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-06 20:34:09', '2025-10-06 20:34:09'),
(9, 9, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 3, 561.00, '[]', '2025-10-06 20:41:10', '2025-10-06 20:41:10'),
(10, 10, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-06 21:00:36', '2025-10-06 21:00:36'),
(11, 11, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 19, 436.81, '[]', '2025-10-07 11:55:53', '2025-10-07 11:55:53'),
(12, 12, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-07 14:38:40', '2025-10-07 14:38:40'),
(13, 13, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 12:53:58', '2025-10-08 12:53:58'),
(14, 26, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 6, 137.94, '[]', '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(15, 26, 19, 'TONYMOLY Wonder Ceramide Mochi Toner - 500ml', 'TONYMOLY-TONER-001', 16.99, 1, 16.99, '[]', '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(16, 27, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 14:34:29', '2025-10-08 14:34:29'),
(17, 28, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(18, 28, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(19, 28, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(20, 29, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(21, 29, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(22, 29, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(23, 30, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 14:41:44', '2025-10-08 14:41:44'),
(24, 31, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 14:42:42', '2025-10-08 14:42:42'),
(25, 32, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 14:43:11', '2025-10-08 14:43:11'),
(26, 33, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 14:52:49', '2025-10-08 14:52:49'),
(27, 34, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:11:06', '2025-10-08 15:11:06'),
(28, 35, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:18:52', '2025-10-08 15:18:52'),
(29, 36, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:20:06', '2025-10-08 15:20:06'),
(30, 37, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(31, 37, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(32, 37, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(33, 37, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 15, 434.85, '[]', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(34, 38, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:20:52', '2025-10-08 15:20:52'),
(35, 39, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(36, 39, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(37, 39, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(38, 39, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 1, 28.99, '[]', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(39, 40, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:28:37', '2025-10-08 15:28:37'),
(40, 41, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(41, 41, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(42, 41, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 3, 68.97, '[]', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(43, 42, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(44, 42, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(45, 42, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 1, 28.99, '[]', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(46, 43, 20, 'AXIS-Y Heartleaf My Type Calming Cream - 75ml', 'AXISY-CREAM-001', 21.99, 1, 21.99, '[]', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(47, 43, 19, 'TONYMOLY Wonder Ceramide Mochi Toner - 500ml', 'TONYMOLY-TONER-001', 16.99, 1, 16.99, '[]', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(48, 43, 18, 'Beauty of Joseon Glow Deep Serum - 30ml', 'BOJ-GLOW-001', 19.99, 1, 19.99, '[]', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(49, 43, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '[]', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(50, 44, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '[]', '2025-10-08 15:40:30', '2025-10-08 15:40:30'),
(51, 45, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 2, 374.00, '[]', '2025-10-08 15:41:05', '2025-10-08 15:41:05'),
(52, 46, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(53, 46, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(54, 47, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(55, 47, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(56, 48, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(57, 48, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(58, 48, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(59, 49, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(60, 49, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(61, 49, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 3, 86.97, '[]', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(62, 50, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 16:11:28', '2025-10-08 16:11:28'),
(63, 51, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(64, 51, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(65, 51, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(66, 51, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 1, 28.99, '[]', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(67, 52, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(68, 52, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(69, 52, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(70, 53, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(71, 53, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(72, 53, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(73, 53, 16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'AXISY-SERUM-001', 28.99, 1, 28.99, '[]', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(74, 54, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 16:54:14', '2025-10-08 16:54:14'),
(75, 54, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 16:54:14', '2025-10-08 16:54:14'),
(76, 55, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 16:55:49', '2025-10-08 16:55:49'),
(77, 56, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 16:56:47', '2025-10-08 16:56:47'),
(78, 57, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:01:46', '2025-10-08 17:01:46'),
(79, 58, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:07:48', '2025-10-08 17:07:48'),
(80, 59, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:08:08', '2025-10-08 17:08:08'),
(81, 60, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:10:03', '2025-10-08 17:10:03'),
(82, 61, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:12:34', '2025-10-08 17:12:34'),
(83, 61, 14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'COSRX-SNAIL-001', 18.99, 1, 18.99, '[]', '2025-10-08 17:12:34', '2025-10-08 17:12:34'),
(84, 61, 15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'TONYMOLY-RETINOL-001', 12.99, 1, 12.99, '[]', '2025-10-08 17:12:35', '2025-10-08 17:12:35'),
(85, 62, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 17:23:42', '2025-10-08 17:23:42'),
(86, 63, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:29:19', '2025-10-08 17:29:19'),
(87, 64, 12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'Quaerat aut ut occae', 187.00, 1, 187.00, '[]', '2025-10-08 17:42:02', '2025-10-08 17:42:02'),
(88, 65, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:42:26', '2025-10-08 17:42:26'),
(89, 66, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:42:55', '2025-10-08 17:42:55'),
(90, 67, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:44:03', '2025-10-08 17:44:03'),
(91, 68, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:44:26', '2025-10-08 17:44:26'),
(92, 69, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 1, 22.99, '[]', '2025-10-08 17:45:49', '2025-10-08 17:45:49'),
(93, 70, 17, 'COSRX Low pH Good Morning Gel Cleanser - 150ml', 'COSRX-CLEANSER-001', 12.99, 1, 12.99, '[]', '2025-10-08 17:46:47', '2025-10-08 17:46:47'),
(94, 71, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 5, 114.95, '[]', '2025-10-09 08:48:41', '2025-10-09 08:48:41'),
(95, 72, 13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'BOJ-SPF-001', 22.99, 5, 114.95, '[]', '2025-10-09 12:15:25', '2025-10-09 12:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

CREATE TABLE `otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `type` enum('email','sms') NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified_at` timestamp NULL DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `user_id`, `identifier`, `otp`, `type`, `expires_at`, `is_verified`, `verified_at`, `attempts`, `created_at`, `updated_at`) VALUES
(2, 10, 'admins@admin.com', '830880', 'email', '2025-10-20 11:30:17', 0, NULL, 0, '2025-10-20 11:20:17', '2025-10-20 11:20:17'),
(14, 15, 'jpasher58@gmail.com', '613012', 'email', '2025-10-20 18:13:05', 1, '2025-10-20 12:13:05', 2, '2025-10-20 12:11:44', '2025-10-20 12:13:05'),
(15, 15, '01757657697', '333103', 'sms', '2025-10-20 18:15:06', 1, '2025-10-20 12:15:06', 0, '2025-10-20 12:11:52', '2025-10-20 12:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL DEFAULT 'sslcommerz',
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'BDT',
  `status` enum('pending','processing','completed','failed','cancelled','refunded') NOT NULL DEFAULT 'pending',
  `gateway_transaction_id` varchar(255) DEFAULT NULL,
  `gateway_session_id` varchar(255) DEFAULT NULL,
  `gateway_response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gateway_response`)),
  `customer_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`customer_info`)),
  `billing_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`billing_info`)),
  `shipping_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`shipping_info`)),
  `notes` text DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage products', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(2, 'manage categories', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(3, 'manage orders', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(4, 'manage users', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(5, 'view reports', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(6, 'manage roles', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(7, 'manage permissions', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(8, 'manage brand', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `weight` decimal(8,2) DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sizes`)),
  `images` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_new` tinyint(1) NOT NULL DEFAULT 0,
  `is_best_seller` tinyint(1) NOT NULL DEFAULT 0,
  `is_flash_sale` tinyint(1) NOT NULL DEFAULT 0,
  `flash_sale_price` decimal(10,2) DEFAULT NULL,
  `flash_sale_start` timestamp NULL DEFAULT NULL,
  `flash_sale_end` timestamp NULL DEFAULT NULL,
  `views_count` int(11) NOT NULL DEFAULT 0,
  `sold_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `colors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `brand_id`, `description`, `short_description`, `price`, `discount_price`, `sku`, `barcode`, `stock`, `weight`, `dimensions`, `sizes`, `images`, `material`, `tags`, `meta_title`, `meta_description`, `thumbnail`, `status`, `is_featured`, `is_new`, `is_best_seller`, `is_flash_sale`, `flash_sale_price`, `flash_sale_start`, `flash_sale_end`, `views_count`, `sold_count`, `created_at`, `updated_at`, `colors`) VALUES
(12, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'beauty-of-joseon-rice-probiotics-sunscreen-50ml', 15, NULL, 2, 'Sed aut nihil sed es', 'Quos numquam nulla p', 294.00, 187.00, 'Quaerat aut ut occae', 'Non possimus evenie', 3, 64.00, 'Harum aut quaerat et', 'null', NULL, 'Dolor inventore id', 'Mollitia vel in veni', 'Quia delectus rerum', 'Suscipit vitae conse', '1759184185_KM-0067-Beauty-of-Joseon-Rice-Probiotics-Sunscreen.jpg', 1, 1, 1, 0, 1, 215.00, NULL, NULL, 0, 0, '2025-09-29 16:16:25', '2025-10-07 15:35:54', 'Ad et dolore dolor d'),
(13, 'Beauty of Joseon Rice + Probiotics Sunscreen - 50ml', 'beauty-of-joseon-rice-probiotics-sunscreen', 15, NULL, 4, 'A lightweight, non-greasy sunscreen with rice and probiotics for daily protection.', NULL, 25.99, 22.99, 'BOJ-SPF-001', NULL, 5, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823399_3w-clinic-intensive-Uv-sunblock-cream-spf50-Pa-70ml.webp', 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 16:17:52', NULL),
(14, 'COSRX Advanced Snail 96 Mucin Power Essence - 100ml', 'cosrx-advanced-snail-96-mucin-power-essence', 15, NULL, 5, 'Hydrating essence with 96% snail secretion filtrate for smooth, glowing skin.', NULL, 18.99, NULL, 'COSRX-SNAIL-001', NULL, 30, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823417_Anua-Niacinamide-10-TXA-4-Serum-30ml.jpg', 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:50:17', NULL),
(15, 'TONYMOLY Red Retinol Radiance Whip Cleanser - 150ml', 'tonymoly-red-retinol-radiance-whip-cleanser', 15, NULL, 6, 'Gentle foaming cleanser with retinol for radiant, youthful skin.', NULL, 15.99, 12.99, 'TONYMOLY-RETINOL-001', NULL, 25, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823435_Anua-Niacinamide-10-TXA-4-Serum-30ml-1.webp', 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:50:35', NULL),
(16, 'AXIS-Y Dark Spot Correcting Glow Serum - 50ml', 'axis-y-dark-spot-correcting-glow-serum', 15, NULL, 7, 'Brightening serum that targets dark spots and evens skin tone.', NULL, 28.99, NULL, 'AXISY-SERUM-001', NULL, 40, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823477_Isntree-Hyaluronic-Acid-Watery-Sun-Gel-SPF50-PA-50ml.jpg', 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:51:17', NULL),
(17, 'COSRX Low pH Good Morning Gel Cleanser - 150ml', 'cosrx-low-ph-good-morning-gel-cleanser', 15, NULL, 5, 'Gentle morning cleanser with low pH to maintain skin balance.', NULL, 12.99, NULL, 'COSRX-CLEANSER-001', NULL, 35, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823497_KM-0192-Iunik-Centella-Calming-Gel-Cream.jpg', 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:51:37', NULL),
(18, 'Beauty of Joseon Glow Deep Serum - 30ml', 'beauty-of-joseon-glow-deep-serum', 15, NULL, 4, 'Intensive glow serum with rice and niacinamide for radiant skin.', NULL, 22.99, 19.99, 'BOJ-GLOW-001', NULL, 20, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823518_KM-0099-Cosrx-Salicylic-Acid-Daily-Gentle-Cleanser-150ml.jpg', 1, 1, 1, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:51:58', NULL),
(19, 'TONYMOLY Wonder Ceramide Mochi Toner - 500ml', 'tonymoly-wonder-ceramide-mochi-toner', 15, NULL, 6, 'Hydrating toner with ceramides for soft, supple skin.', NULL, 16.99, NULL, 'TONYMOLY-TONER-001', NULL, 45, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823538_The-face-shop-rice-water-bright-cleansing-foam-150ml.jpg', 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:52:33', NULL),
(20, 'AXIS-Y Heartleaf My Type Calming Cream - 75ml', 'axis-y-heartleaf-my-type-calming-cream', 15, NULL, 7, 'Soothing cream with heartleaf extract for sensitive skin.', NULL, 24.99, 21.99, 'AXISY-CREAM-001', NULL, 15, NULL, NULL, 'null', NULL, NULL, NULL, NULL, NULL, '1759823570_km-0612-Maxim-White-Gold-Mild-Coffee-12g.webp', 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2025-10-06 18:38:44', '2025-10-07 01:52:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(30, 12, '1759184185_KM-0067-Beauty-of-Joseon-Rice-Probiotics-Sunscreen.jpg', '2025-09-29 16:16:25', '2025-09-29 16:16:25'),
(31, 13, '1759823399_Anua-Niacinamide-10-TXA-4-Serum-30ml.jpg', '2025-10-07 01:49:59', '2025-10-07 01:49:59'),
(32, 13, '1759823399_Anua-Niacinamide-10-TXA-4-Serum-30ml-1.webp', '2025-10-07 01:49:59', '2025-10-07 01:49:59'),
(33, 14, '1759823417_3w-clinic-intensive-Uv-sunblock-cream-spf50-Pa-70ml.webp', '2025-10-07 01:50:17', '2025-10-07 01:50:17'),
(34, 14, '1759823417_Anua-Niacinamide-10-TXA-4-Serum-30ml.jpg', '2025-10-07 01:50:17', '2025-10-07 01:50:17'),
(35, 14, '1759823417_Anua-Niacinamide-10-TXA-4-Serum-30ml-1.webp', '2025-10-07 01:50:17', '2025-10-07 01:50:17'),
(36, 15, '1759823435_Anua-Niacinamide-10-TXA-4-Serum-30ml-1.webp', '2025-10-07 01:50:35', '2025-10-07 01:50:35'),
(37, 15, '1759823435_KM-0099-Cosrx-Salicylic-Acid-Daily-Gentle-Cleanser-150ml.jpg', '2025-10-07 01:50:35', '2025-10-07 01:50:35'),
(38, 15, '1759823435_KM-0114-Cosrx-Low-pH-Good-Morning-Gel-Cleanser.jpg', '2025-10-07 01:50:35', '2025-10-07 01:50:35'),
(39, 15, '1759823435_KM-0133-Cosrx-Advanced-Snail-96-Mucin-Power-Essence-30ml.jpg', '2025-10-07 01:50:35', '2025-10-07 01:50:35'),
(40, 16, '1759823477_Isntree-Hyaluronic-Acid-Watery-Sun-Gel-SPF50-PA-50ml.jpg', '2025-10-07 01:51:17', '2025-10-07 01:51:17'),
(41, 16, '1759823477_KM-0067-Beauty-of-Joseon-Rice-Probiotics-Sunscreen.jpg', '2025-10-07 01:51:17', '2025-10-07 01:51:17'),
(42, 16, '1759823477_KM-0099-Cosrx-Salicylic-Acid-Daily-Gentle-Cleanser-150ml.jpg', '2025-10-07 01:51:17', '2025-10-07 01:51:17'),
(43, 17, '1759823497_KM-0067-Beauty-of-Joseon-Rice-Probiotics-Sunscreen.jpg', '2025-10-07 01:51:37', '2025-10-07 01:51:37'),
(44, 17, '1759823497_KM-0099-Cosrx-Salicylic-Acid-Daily-Gentle-Cleanser-150ml.jpg', '2025-10-07 01:51:37', '2025-10-07 01:51:37'),
(45, 17, '1759823497_KM-0114-Cosrx-Low-pH-Good-Morning-Gel-Cleanser.jpg', '2025-10-07 01:51:37', '2025-10-07 01:51:37'),
(46, 18, '1759823518_Isntree-Hyaluronic-Acid-Watery-Sun-Gel-SPF50-PA-50ml.jpg', '2025-10-07 01:51:58', '2025-10-07 01:51:58'),
(47, 18, '1759823518_KM-0067-Beauty-of-Joseon-Rice-Probiotics-Sunscreen.jpg', '2025-10-07 01:51:58', '2025-10-07 01:51:58'),
(48, 18, '1759823518_KM-0099-Cosrx-Salicylic-Acid-Daily-Gentle-Cleanser-150ml.jpg', '2025-10-07 01:51:58', '2025-10-07 01:51:58'),
(49, 19, '1759823538_The-face-shop-rice-water-bright-cleansing-foam-150ml.jpg', '2025-10-07 01:52:18', '2025-10-07 01:52:18'),
(50, 19, '1759823538_WhatsApp-Image-2025-02-20-at-12.38.39-PM.jpeg', '2025-10-07 01:52:18', '2025-10-07 01:52:18'),
(51, 20, '1759823570_Anua-Niacinamide-10-TXA-4-Serum-30ml.jpg', '2025-10-07 01:52:50', '2025-10-07 01:52:50'),
(52, 20, '1759823570_Anua-Niacinamide-10-TXA-4-Serum-30ml-1.webp', '2025-10-07 01:52:50', '2025-10-07 01:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_verified_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `helpful_votes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`helpful_votes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `title`, `comment`, `is_verified_purchase`, `is_approved`, `is_featured`, `helpful_votes`, `created_at`, `updated_at`) VALUES
(1, 7, 12, 3, 'Et quibusdam perspiciatis sit laborum Sit est saepe', 'Sint dicta sunt et dolores amet', 0, 1, 0, NULL, '2025-10-07 12:04:38', '2025-10-07 12:04:38'),
(2, 1, 13, 5, 'Praesentium et doloremque quas perferendis officia hic et qui', 'Earum in eligendi non porro velit soluta tempora nulla quasi anim id placeat deleniti', 0, 1, 0, NULL, '2025-10-07 14:38:20', '2025-10-07 14:38:20'),
(3, 1, 19, 3, 'dfgsdfg', 'sdfgsdfg', 1, 1, 0, NULL, '2025-10-09 08:44:55', '2025-10-09 08:44:55'),
(4, 8, 12, 5, 'dfads', 'gsdfg', 0, 1, 0, NULL, '2025-10-09 12:18:58', '2025-10-09 12:18:58'),
(5, 8, 13, 4, 'ghdfgh', 'dfghdgh', 1, 1, 0, NULL, '2025-10-09 12:19:39', '2025-10-09 12:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(2, 'manager', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(3, 'user', 'web', '2025-09-28 12:29:37', '2025-09-28 12:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RovLhWxlV1q0afktGhKjJnDLp57A9KsZLwFCPNqz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTEpWSERubmljNkFPMkQ2NGpMUHpVRzhzMndDT0ZmQVc3dXI3Q240RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvbm90aWZpY2F0aW9ucy9jb3VudCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1761002237);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'string',
  `group` varchar(255) NOT NULL DEFAULT 'general',
  `description` text DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `type`, `group`, `description`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'K-Glow BD', 'string', 'general', 'Site name', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(2, 'site_url', 'https://k-glowbd.com', 'string', 'general', 'Site URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(3, 'admin_email', 'admin@k-glowbd.com', 'string', 'general', 'Admin email address', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(4, 'support_email', 'support@k-glow.com', 'string', 'general', 'Support email', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(5, 'default_currency', 'BDT', 'string', 'general', 'Default currency code', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(6, 'currency_symbol', '৳', 'string', 'general', 'Currency symbol', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(7, 'timezone', 'Asia/Dhaka', 'string', 'general', 'Default timezone', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(8, 'language', 'en', 'string', 'general', 'Default language', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(9, 'date_format', 'Y-m-d', 'string', 'general', 'Date format', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(10, 'time_format', 'H:i:s', 'string', 'general', 'Time format', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(11, 'store_name', 'K-Glow Bangladesh', 'string', 'store', 'Store name', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(12, 'store_phone', '+880 123 456 789', 'string', 'store', 'Store phone', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(13, 'store_address', 'Dhaka, Bangladesh', 'string', 'store', 'Store address', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(14, 'store_city', 'Dhaka', 'string', 'store', 'Store city', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(15, 'store_state', 'Dhaka Division', 'string', 'store', 'Store state/division', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(16, 'store_postal_code', '1000', 'string', 'store', 'Store postal code', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(17, 'store_country', 'Bangladesh', 'string', 'store', 'Store country', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(18, 'business_hours', 'Mon-Fri, 9AM-5PM', 'string', 'store', 'Business hours', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(19, 'primary_color', '#f36c21', 'string', 'theme', 'Primary brand color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(20, 'secondary_color', '#0a0a0a', 'string', 'theme', 'Secondary color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(21, 'accent_color', '#fef3c7', 'string', 'theme', 'Accent color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(22, 'text_color', '#1f2937', 'string', 'theme', 'Primary text color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(23, 'heading_color', '#111827', 'string', 'theme', 'Heading text color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(24, 'background_color', '#ffffff', 'string', 'theme', 'Background color', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(25, 'footer_bg_color', '#0a0a0a', 'string', 'theme', 'Footer background', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(26, 'header_bg_color', '#ffffff', 'string', 'theme', 'Header background', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(27, 'primary_font', 'Inter, sans-serif', 'string', 'theme', 'Primary font family', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(28, 'heading_font', 'Poppins, sans-serif', 'string', 'theme', 'Heading font family', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(29, 'logo', 'admin-assets/logo.png', 'file', 'theme', 'Site logo', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(30, 'white_logo', 'admin-assets/white-logo.png', 'file', 'theme', 'White logo', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(31, 'favicon', 'favicon.ico', 'file', 'theme', 'Site favicon', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(32, 'mail_mailer', 'smtp', 'string', 'email', 'Mail driver', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(33, 'mail_host', 'mail.bismillahgoods.com', 'string', 'email', 'Mail host', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(34, 'mail_port', '465', 'string', 'email', 'Mail port', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(35, 'mail_username', 'jp@bismillahgoods.com', 'string', 'email', 'Mail username', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(36, 'mail_password', 'bV6{PmMCzYcB', 'string', 'email', 'Mail password', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(37, 'mail_encryption', 'ssl', 'string', 'email', 'Mail encryption', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(38, 'mail_from_address', 'jp@bismillahgoods.com', 'string', 'email', 'Mail from address', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(39, 'mail_from_name', 'K-Glow', 'string', 'email', 'Mail from name', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(40, 'meta_title', 'K-Glow BD - Premium Beauty & Skincare Products', 'string', 'seo', 'Default meta title', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(41, 'meta_description', 'Premium beauty and skincare products in Bangladesh. Shop the latest cosmetics, skincare, and beauty essentials.', 'string', 'seo', 'Default meta description', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(42, 'meta_keywords', 'beauty, skincare, cosmetics, Bangladesh, makeup, skincare products', 'string', 'seo', 'Default meta keywords', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(43, 'google_analytics', '', 'string', 'seo', 'Google Analytics ID', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(44, 'facebook_pixel', '', 'string', 'seo', 'Facebook Pixel ID', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(45, 'google_site_verification', '', 'string', 'seo', 'Google site verification code', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(46, 'free_shipping_threshold', '1000', 'string', 'shipping', 'Free shipping minimum amount', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(47, 'default_shipping_cost', '60', 'string', 'shipping', 'Default shipping cost', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(48, 'shipping_time', '3-5', 'string', 'shipping', 'Delivery time in days', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(49, 'express_shipping_cost', '120', 'string', 'shipping', 'Express shipping cost', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(50, 'express_shipping_time', '1-2', 'string', 'shipping', 'Express delivery time', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(51, 'cash_on_delivery', 'true', 'boolean', 'payment', 'Enable COD', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(52, 'sslcommerz_enabled', 'true', 'boolean', 'payment', 'Enable SSLCommerz', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(53, 'sslcommerz_store_id', 'nexkr6762cd9c100c3', 'string', 'payment', 'SSLCommerz Store ID', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(54, 'sslcommerz_store_password', 'nexkr6762cd9c100c3@ssl', 'string', 'payment', 'SSLCommerz Password', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(55, 'sslcommerz_testmode', 'true', 'boolean', 'payment', 'SSLCommerz test mode', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(56, 'bkash_enabled', 'false', 'boolean', 'payment', 'Enable bKash', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(57, 'nagad_enabled', 'false', 'boolean', 'payment', 'Enable Nagad', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(58, 'two_factor_auth', 'false', 'boolean', 'security', 'Enable 2FA', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(59, 'session_lifetime', '120', 'string', 'security', 'Session lifetime in minutes', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(60, 'password_min_length', '8', 'string', 'security', 'Minimum password length', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(61, 'require_strong_password', 'true', 'boolean', 'security', 'Require strong passwords', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(62, 'login_attempts_limit', '5', 'string', 'security', 'Max login attempts', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(63, 'lockout_duration', '15', 'string', 'security', 'Lockout duration in minutes', 0, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(64, 'facebook_url', 'https://facebook.com/k-glow', 'string', 'store', 'Facebook page URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(65, 'instagram_url', 'https://instagram.com/k-glow', 'string', 'store', 'Instagram profile URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(66, 'youtube_url', 'https://youtube.com/k-glow', 'string', 'store', 'YouTube channel URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(67, 'twitter_url', '', 'string', 'store', 'Twitter profile URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(68, 'tiktok_url', '', 'string', 'store', 'TikTok profile URL', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(69, 'tax_rate', '0', 'string', 'general', 'Tax rate percentage', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(70, 'tax_enabled', 'false', 'boolean', 'general', 'Enable tax calculation', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(71, 'maintenance_mode', 'false', 'boolean', 'general', 'Site maintenance mode', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(72, 'maintenance_message', 'We are currently under maintenance. Please check back soon!', 'string', 'general', 'Maintenance message', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(73, 'home_slogan', 'Discover Korean Beauty', 'string', 'general', 'Homepage main slogan', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38'),
(74, 'home_sub_slogan', 'Premium K-Beauty Products Delivered to Your Doorstep', 'string', 'general', 'Homepage sub slogan', 1, '2025-10-20 15:17:38', '2025-10-20 15:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `button_text`, `button_link`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'admin-assets/sliders/1760996686_1600w-PU4mkt0BX58.webp', NULL, NULL, 0, 1, '2025-10-20 15:44:46', '2025-10-20 15:44:46'),
(2, NULL, NULL, 'admin-assets/sliders/1760996702_1600w-9adjnUaoh9E.webp', NULL, NULL, 0, 1, '2025-10-20 15:45:02', '2025-10-20 15:45:02'),
(3, NULL, NULL, 'admin-assets/sliders/1760996784_1600w-khQgQh0MDHA.webp', NULL, NULL, 0, 1, '2025-10-20 15:45:17', '2025-10-20 15:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `slogans`
--

CREATE TABLE `slogans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slogans`
--

INSERT INTO `slogans` (`id`, `text`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Natural Beauty, Touch Of Science', 0, 1, '2025-10-20 16:08:56', '2025-10-20 16:08:56'),
(2, 'Discover the best K-Beauty products curated just for you!', 1, 1, '2025-10-20 16:08:56', '2025-10-20 16:08:56'),
(3, 'Top skincare, makeup & beauty tools at your fingertips!', 2, 1, '2025-10-20 16:08:56', '2025-10-20 16:08:56'),
(4, 'Special offers every week — Don\'t miss out!', 3, 1, '2025-10-20 16:08:56', '2025-10-20 16:08:56'),
(5, 'Your favorite K-Beauty brands, all in one place!', 4, 1, '2025-10-20 16:08:56', '2025-10-20 16:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out','adjustment','transfer','return','damage','expired') NOT NULL,
  `quantity` int(11) NOT NULL,
  `previous_stock` int(11) NOT NULL,
  `new_stock` int(11) NOT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `movement_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `product_id`, `inventory_id`, `type`, `quantity`, `previous_stock`, `new_stock`, `reference_type`, `reference_id`, `reason`, `notes`, `unit_cost`, `total_cost`, `user_id`, `movement_date`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 'in', 90, 0, 90, 'initial_stock', NULL, 'Initial stock setup', NULL, 176.40, 15876.00, 1, '2025-09-10 12:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(2, 12, 1, 'out', -2, 90, 88, 'random_movement', NULL, 'Damaged goods', NULL, 176.40, 352.80, 1, '2025-10-01 18:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(3, 12, 1, 'in', 5, 88, 93, 'random_movement', NULL, 'Stock received', NULL, 176.40, 882.00, 1, '2025-09-11 04:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(4, 12, 1, 'out', -14, 93, 79, 'random_movement', NULL, 'Sale', NULL, 176.40, 2469.60, 1, '2025-09-21 07:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(5, 12, 1, 'adjustment', 13, 79, 92, 'random_movement', NULL, 'Damaged goods write-off', NULL, 176.40, 2293.20, 1, '2025-09-28 21:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(6, 12, 1, 'out', -9, 92, 83, 'random_movement', NULL, 'Damaged goods', NULL, 176.40, 1587.60, 1, '2025-09-12 05:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(7, 12, 1, 'out', -19, 83, 64, 'random_movement', NULL, 'Return to supplier', NULL, 176.40, 3351.60, 1, '2025-09-29 21:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(8, 13, 2, 'in', 86, 0, 86, 'initial_stock', NULL, 'Initial stock setup', NULL, 15.59, 1340.74, 1, '2025-09-11 12:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(9, 13, 2, 'adjustment', 15, 86, 101, 'random_movement', NULL, 'Damaged goods write-off', NULL, 15.59, 233.85, 1, '2025-09-13 04:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(10, 13, 2, 'adjustment', 4, 101, 105, 'random_movement', NULL, 'Damaged goods write-off', NULL, 15.59, 62.36, 1, '2025-10-04 00:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(11, 13, 2, 'adjustment', 11, 105, 116, 'random_movement', NULL, 'Stock count correction', NULL, 15.59, 171.49, 1, '2025-09-20 14:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(12, 13, 2, 'in', 5, 116, 121, 'random_movement', NULL, 'Return from customer', NULL, 15.59, 77.95, 1, '2025-09-10 21:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(13, 13, 2, 'in', 3, 121, 124, 'random_movement', NULL, 'Stock received', NULL, 15.59, 46.77, 1, '2025-09-07 23:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(14, 14, 3, 'in', 76, 0, 76, 'initial_stock', NULL, 'Initial stock setup', NULL, 11.39, 865.64, 1, '2025-09-18 12:49:10', '2025-10-07 12:49:10', '2025-10-07 12:49:10'),
(15, 14, 3, 'in', 18, 76, 94, 'random_movement', NULL, 'Stock received', NULL, 11.39, 205.02, 1, '2025-09-20 08:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(16, 14, 3, 'in', 2, 94, 96, 'random_movement', NULL, 'Inventory adjustment', NULL, 11.39, 22.78, 1, '2025-09-23 01:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(17, 14, 3, 'adjustment', 15, 96, 111, 'random_movement', NULL, 'Inventory audit', NULL, 11.39, 170.85, 1, '2025-10-03 08:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(18, 14, 3, 'out', -19, 111, 92, 'random_movement', NULL, 'Return to supplier', NULL, 11.39, 216.41, 1, '2025-10-05 10:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(19, 14, 3, 'in', 13, 92, 105, 'random_movement', NULL, 'Inventory adjustment', NULL, 11.39, 148.07, 1, '2025-09-13 07:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(20, 15, 4, 'in', 8, 0, 8, 'initial_stock', NULL, 'Initial stock setup', NULL, 9.59, 76.72, 1, '2025-10-03 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(21, 15, 4, 'out', -18, 8, 0, 'random_movement', NULL, 'Return to supplier', NULL, 9.59, 172.62, 1, '2025-09-11 16:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(22, 15, 4, 'adjustment', 15, 0, 15, 'random_movement', NULL, 'Damaged goods write-off', NULL, 9.59, 143.85, 1, '2025-09-14 20:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(23, 15, 4, 'in', 8, 15, 23, 'random_movement', NULL, 'Return from customer', NULL, 9.59, 76.72, 1, '2025-09-21 13:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(24, 15, 4, 'out', -11, 23, 12, 'random_movement', NULL, 'Return to supplier', NULL, 9.59, 105.49, 1, '2025-09-24 15:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(25, 15, 4, 'in', 16, 12, 28, 'random_movement', NULL, 'Purchase order', NULL, 9.59, 153.44, 1, '2025-09-25 10:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(26, 15, 4, 'out', -15, 28, 13, 'random_movement', NULL, 'Sale', NULL, 9.59, 143.85, 1, '2025-09-09 18:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(27, 16, 5, 'in', 10, 0, 10, 'initial_stock', NULL, 'Initial stock setup', NULL, 17.39, 173.90, 1, '2025-09-14 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(28, 16, 5, 'out', -8, 10, 2, 'random_movement', NULL, 'Inventory adjustment', NULL, 17.39, 139.12, 1, '2025-09-19 11:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(29, 16, 5, 'out', -13, 2, 0, 'random_movement', NULL, 'Inventory adjustment', NULL, 17.39, 226.07, 1, '2025-09-28 08:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(30, 16, 5, 'in', 13, 0, 13, 'random_movement', NULL, 'Return from customer', NULL, 17.39, 226.07, 1, '2025-09-29 17:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(31, 16, 5, 'in', 9, 13, 22, 'random_movement', NULL, 'Stock received', NULL, 17.39, 156.51, 1, '2025-09-07 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(32, 16, 5, 'adjustment', 5, 22, 27, 'random_movement', NULL, 'System adjustment', NULL, 17.39, 86.95, 1, '2025-09-30 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(33, 16, 5, 'adjustment', 6, 27, 33, 'random_movement', NULL, 'Stock count correction', NULL, 17.39, 104.34, 1, '2025-09-11 23:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(34, 16, 5, 'adjustment', 7, 33, 40, 'random_movement', NULL, 'Damaged goods write-off', NULL, 17.39, 121.73, 1, '2025-09-18 20:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(35, 17, 6, 'in', 71, 0, 71, 'initial_stock', NULL, 'Initial stock setup', NULL, 7.79, 553.09, 1, '2025-09-24 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(36, 17, 6, 'out', -12, 71, 59, 'random_movement', NULL, 'Damaged goods', NULL, 7.79, 93.48, 1, '2025-09-16 05:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(37, 17, 6, 'in', 3, 59, 62, 'random_movement', NULL, 'Return from customer', NULL, 7.79, 23.37, 1, '2025-09-21 06:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(38, 17, 6, 'adjustment', 12, 62, 74, 'random_movement', NULL, 'Stock count correction', NULL, 7.79, 93.48, 1, '2025-09-11 11:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(39, 17, 6, 'in', 7, 74, 81, 'random_movement', NULL, 'Stock received', NULL, 7.79, 54.53, 1, '2025-09-22 18:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(40, 17, 6, 'in', 11, 81, 92, 'random_movement', NULL, 'Return from customer', NULL, 7.79, 85.69, 1, '2025-09-28 19:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(41, 18, 7, 'in', 8, 0, 8, 'initial_stock', NULL, 'Initial stock setup', NULL, 13.79, 110.32, 1, '2025-10-03 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(42, 18, 7, 'out', -12, 8, 0, 'random_movement', NULL, 'Damaged goods', NULL, 13.79, 165.48, 1, '2025-09-08 20:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(43, 18, 7, 'adjustment', 4, 0, 4, 'random_movement', NULL, 'Stock count correction', NULL, 13.79, 55.16, 1, '2025-09-21 22:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(44, 18, 7, 'in', 2, 4, 6, 'random_movement', NULL, 'Return from customer', NULL, 13.79, 27.58, 1, '2025-09-06 22:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(45, 18, 7, 'in', 14, 6, 20, 'random_movement', NULL, 'Inventory adjustment', NULL, 13.79, 193.06, 1, '2025-09-07 17:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(46, 18, 7, 'in', 10, 20, 30, 'random_movement', NULL, 'Stock received', NULL, 13.79, 137.90, 1, '2025-10-01 04:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(47, 18, 7, 'out', -13, 30, 17, 'random_movement', NULL, 'Inventory adjustment', NULL, 13.79, 179.27, 1, '2025-09-25 00:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(48, 19, 8, 'in', 69, 0, 69, 'initial_stock', NULL, 'Initial stock setup', NULL, 10.19, 703.11, 1, '2025-09-13 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(49, 19, 8, 'in', 1, 69, 70, 'random_movement', NULL, 'Purchase order', NULL, 10.19, 10.19, 1, '2025-09-12 10:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(50, 19, 8, 'adjustment', 4, 70, 74, 'random_movement', NULL, 'System adjustment', NULL, 10.19, 40.76, 1, '2025-09-22 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(51, 19, 8, 'adjustment', 17, 74, 91, 'random_movement', NULL, 'Inventory audit', NULL, 10.19, 173.23, 1, '2025-09-14 20:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(52, 19, 8, 'adjustment', 20, 91, 111, 'random_movement', NULL, 'Stock count correction', NULL, 10.19, 203.80, 1, '2025-09-21 14:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(53, 19, 8, 'in', 5, 111, 116, 'random_movement', NULL, 'Inventory adjustment', NULL, 10.19, 50.95, 1, '2025-09-27 21:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(54, 19, 8, 'in', 7, 116, 123, 'random_movement', NULL, 'Purchase order', NULL, 10.19, 71.33, 1, '2025-09-23 04:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(55, 19, 8, 'adjustment', 13, 123, 136, 'random_movement', NULL, 'System adjustment', NULL, 10.19, 132.47, 1, '2025-09-07 18:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(56, 19, 8, 'in', 5, 136, 141, 'random_movement', NULL, 'Purchase order', NULL, 10.19, 50.95, 1, '2025-10-03 23:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(57, 20, 9, 'in', 60, 0, 60, 'initial_stock', NULL, 'Initial stock setup', NULL, 14.99, 899.40, 1, '2025-10-01 12:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(58, 20, 9, 'out', -10, 60, 50, 'random_movement', NULL, 'Inventory adjustment', NULL, 14.99, 149.90, 1, '2025-09-22 23:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(59, 20, 9, 'adjustment', 5, 50, 55, 'random_movement', NULL, 'System adjustment', NULL, 14.99, 74.95, 1, '2025-09-16 05:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(60, 20, 9, 'in', 19, 55, 74, 'random_movement', NULL, 'Purchase order', NULL, 14.99, 284.81, 1, '2025-09-06 20:49:11', '2025-10-07 12:49:11', '2025-10-07 12:49:11'),
(61, 14, 3, 'out', -1, 105, 104, 'order', 12, 'Order #ORD-ATOZZGLX', NULL, NULL, NULL, 1, '2025-10-07 14:38:41', '2025-10-07 14:38:41', '2025-10-07 14:38:41'),
(62, 14, 3, 'return', 1, 104, 105, 'order_cancellation', 12, 'Order cancelled: #ORD-ATOZZGLX', NULL, NULL, NULL, 1, '2025-10-07 14:38:49', '2025-10-07 14:38:49', '2025-10-07 14:38:49'),
(63, 12, 1, 'in', 983, 64, 1047, 'manual_adjustment', NULL, NULL, NULL, NULL, NULL, 1, '2025-10-07 16:59:10', '2025-10-07 16:59:10', '2025-10-07 16:59:10'),
(64, 12, 1, 'in', 983, 1047, 2030, 'manual_adjustment', NULL, NULL, NULL, NULL, NULL, 1, '2025-10-07 16:59:29', '2025-10-07 16:59:29', '2025-10-07 16:59:29'),
(65, 14, 3, 'out', -1, 105, 104, 'order', 13, 'Order #ORD-O7Z1KSRZ', NULL, NULL, NULL, 1, '2025-10-08 12:53:58', '2025-10-08 12:53:58', '2025-10-08 12:53:58'),
(66, 13, 2, 'out', -6, 124, 118, 'order', 26, 'Order #ORD-PIKTRTRS', NULL, NULL, NULL, 1, '2025-10-08 14:13:26', '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(67, 19, 8, 'out', -1, 141, 140, 'order', 26, 'Order #ORD-PIKTRTRS', NULL, NULL, NULL, 1, '2025-10-08 14:13:26', '2025-10-08 14:13:26', '2025-10-08 14:13:26'),
(68, 12, 1, 'out', -1, 2030, 2029, 'order', 27, 'Order #ORD-LDW8PBEI', NULL, NULL, NULL, 1, '2025-10-08 14:34:29', '2025-10-08 14:34:29', '2025-10-08 14:34:29'),
(69, 13, 2, 'out', -1, 118, 117, 'order', 28, 'Order #ORD-HSHGPE97', NULL, NULL, NULL, 1, '2025-10-08 14:35:10', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(70, 14, 3, 'out', -1, 104, 103, 'order', 28, 'Order #ORD-HSHGPE97', NULL, NULL, NULL, 1, '2025-10-08 14:35:10', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(71, 15, 4, 'out', -1, 13, 12, 'order', 28, 'Order #ORD-HSHGPE97', NULL, NULL, NULL, 1, '2025-10-08 14:35:10', '2025-10-08 14:35:10', '2025-10-08 14:35:10'),
(72, 13, 2, 'out', -1, 117, 116, 'order', 29, 'Order #ORD-QK0YZEAO', NULL, NULL, NULL, 1, '2025-10-08 14:35:57', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(73, 14, 3, 'out', -1, 103, 102, 'order', 29, 'Order #ORD-QK0YZEAO', NULL, NULL, NULL, 1, '2025-10-08 14:35:57', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(74, 15, 4, 'out', -1, 12, 11, 'order', 29, 'Order #ORD-QK0YZEAO', NULL, NULL, NULL, 1, '2025-10-08 14:35:57', '2025-10-08 14:35:57', '2025-10-08 14:35:57'),
(75, 14, 3, 'out', -1, 102, 101, 'order', 30, 'Order #ORD-GTZYWZIB', NULL, NULL, NULL, 1, '2025-10-08 14:41:44', '2025-10-08 14:41:44', '2025-10-08 14:41:44'),
(76, 14, 3, 'out', -1, 101, 100, 'order', 31, 'Order #ORD-PQDTQYQO', NULL, NULL, NULL, 1, '2025-10-08 14:42:42', '2025-10-08 14:42:42', '2025-10-08 14:42:42'),
(77, 13, 2, 'out', -1, 116, 115, 'order', 32, 'Order #ORD-MI6HXLZF', NULL, NULL, NULL, 1, '2025-10-08 14:43:11', '2025-10-08 14:43:11', '2025-10-08 14:43:11'),
(78, 13, 2, 'out', -1, 115, 114, 'order', 33, 'Order #ORD-JJWPWJQ1', NULL, NULL, NULL, 1, '2025-10-08 14:52:49', '2025-10-08 14:52:49', '2025-10-08 14:52:49'),
(79, 13, 2, 'out', -1, 114, 113, 'order', 34, 'Order #ORD-P99NWRVC', NULL, NULL, NULL, 1, '2025-10-08 15:11:06', '2025-10-08 15:11:06', '2025-10-08 15:11:06'),
(80, 13, 2, 'out', -1, 113, 112, 'order', 35, 'Order #ORD-OCGNCG2W', NULL, NULL, NULL, 1, '2025-10-08 15:18:52', '2025-10-08 15:18:52', '2025-10-08 15:18:52'),
(81, 14, 3, 'out', -1, 100, 99, 'order', 36, 'Order #ORD-S0W0AHRH', NULL, NULL, NULL, 1, '2025-10-08 15:20:06', '2025-10-08 15:20:06', '2025-10-08 15:20:06'),
(82, 13, 2, 'out', -1, 112, 111, 'order', 37, 'Order #ORD-CNGJCUK9', NULL, NULL, NULL, 1, '2025-10-08 15:20:30', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(83, 14, 3, 'out', -1, 99, 98, 'order', 37, 'Order #ORD-CNGJCUK9', NULL, NULL, NULL, 1, '2025-10-08 15:20:30', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(84, 15, 4, 'out', -1, 11, 10, 'order', 37, 'Order #ORD-CNGJCUK9', NULL, NULL, NULL, 1, '2025-10-08 15:20:30', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(85, 16, 5, 'out', -15, 40, 25, 'order', 37, 'Order #ORD-CNGJCUK9', NULL, NULL, NULL, 1, '2025-10-08 15:20:30', '2025-10-08 15:20:30', '2025-10-08 15:20:30'),
(86, 14, 3, 'out', -1, 98, 97, 'order', 38, 'Order #ORD-JVXXOLEV', NULL, NULL, NULL, 1, '2025-10-08 15:20:52', '2025-10-08 15:20:52', '2025-10-08 15:20:52'),
(87, 13, 2, 'out', -1, 111, 110, 'order', 39, 'Order #ORD-G5Q9QEHB', NULL, NULL, NULL, 1, '2025-10-08 15:28:16', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(88, 14, 3, 'out', -1, 97, 96, 'order', 39, 'Order #ORD-G5Q9QEHB', NULL, NULL, NULL, 1, '2025-10-08 15:28:16', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(89, 15, 4, 'out', -1, 10, 9, 'order', 39, 'Order #ORD-G5Q9QEHB', NULL, NULL, NULL, 1, '2025-10-08 15:28:16', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(90, 16, 5, 'out', -1, 25, 24, 'order', 39, 'Order #ORD-G5Q9QEHB', NULL, NULL, NULL, 1, '2025-10-08 15:28:16', '2025-10-08 15:28:16', '2025-10-08 15:28:16'),
(91, 13, 2, 'out', -1, 110, 109, 'order', 40, 'Order #ORD-VV3KUDF7', NULL, NULL, NULL, 1, '2025-10-08 15:28:37', '2025-10-08 15:28:37', '2025-10-08 15:28:37'),
(92, 14, 3, 'out', -1, 96, 95, 'order', 41, 'Order #ORD-THFUVQIW', NULL, NULL, NULL, 1, '2025-10-08 15:33:35', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(93, 15, 4, 'out', -1, 9, 8, 'order', 41, 'Order #ORD-THFUVQIW', NULL, NULL, NULL, 1, '2025-10-08 15:33:35', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(94, 13, 2, 'out', -3, 109, 106, 'order', 41, 'Order #ORD-THFUVQIW', NULL, NULL, NULL, 1, '2025-10-08 15:33:35', '2025-10-08 15:33:35', '2025-10-08 15:33:35'),
(95, 14, 3, 'out', -1, 95, 94, 'order', 42, 'Order #ORD-UZDRTBUT', NULL, NULL, NULL, 1, '2025-10-08 15:34:21', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(96, 15, 4, 'out', -1, 8, 7, 'order', 42, 'Order #ORD-UZDRTBUT', NULL, NULL, NULL, 1, '2025-10-08 15:34:21', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(97, 16, 5, 'out', -1, 24, 23, 'order', 42, 'Order #ORD-UZDRTBUT', NULL, NULL, NULL, 1, '2025-10-08 15:34:21', '2025-10-08 15:34:21', '2025-10-08 15:34:21'),
(98, 20, 9, 'out', -1, 74, 73, 'order', 43, 'Order #ORD-MLJ17QI7', NULL, NULL, NULL, 1, '2025-10-08 15:39:11', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(99, 19, 8, 'out', -1, 140, 139, 'order', 43, 'Order #ORD-MLJ17QI7', NULL, NULL, NULL, 1, '2025-10-08 15:39:11', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(100, 18, 7, 'out', -1, 17, 16, 'order', 43, 'Order #ORD-MLJ17QI7', NULL, NULL, NULL, 1, '2025-10-08 15:39:11', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(101, 12, 1, 'out', -2, 2029, 2027, 'order', 43, 'Order #ORD-MLJ17QI7', NULL, NULL, NULL, 1, '2025-10-08 15:39:11', '2025-10-08 15:39:11', '2025-10-08 15:39:11'),
(102, 12, 1, 'out', -2, 2027, 2025, 'order', 44, 'Order #ORD-OIH6FPIN', NULL, NULL, NULL, 1, '2025-10-08 15:40:30', '2025-10-08 15:40:30', '2025-10-08 15:40:30'),
(103, 12, 1, 'out', -2, 2025, 2023, 'order', 45, 'Order #ORD-Y2BI5XF4', NULL, NULL, NULL, 1, '2025-10-08 15:41:05', '2025-10-08 15:41:05', '2025-10-08 15:41:05'),
(104, 14, 3, 'out', -1, 94, 93, 'order', 46, 'Order #ORD-9DZUVD9J', NULL, NULL, NULL, 1, '2025-10-08 15:46:11', '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(105, 12, 1, 'out', -1, 2023, 2022, 'order', 46, 'Order #ORD-9DZUVD9J', NULL, NULL, NULL, 1, '2025-10-08 15:46:11', '2025-10-08 15:46:11', '2025-10-08 15:46:11'),
(106, 12, 1, 'out', -1, 2022, 2021, 'order', 47, 'Order #ORD-ZABYBOP1', NULL, NULL, NULL, 3, '2025-10-08 15:50:58', '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(107, 13, 2, 'out', -1, 106, 105, 'order', 47, 'Order #ORD-ZABYBOP1', NULL, NULL, NULL, 3, '2025-10-08 15:50:58', '2025-10-08 15:50:58', '2025-10-08 15:50:58'),
(108, 12, 1, 'out', -1, 2021, 2020, 'order', 48, 'Order #ORD-UJ8ERSFH', NULL, NULL, NULL, 1, '2025-10-08 15:56:00', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(109, 13, 2, 'out', -1, 105, 104, 'order', 48, 'Order #ORD-UJ8ERSFH', NULL, NULL, NULL, 1, '2025-10-08 15:56:00', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(110, 14, 3, 'out', -1, 93, 92, 'order', 48, 'Order #ORD-UJ8ERSFH', NULL, NULL, NULL, 1, '2025-10-08 15:56:00', '2025-10-08 15:56:00', '2025-10-08 15:56:00'),
(111, 13, 2, 'out', -1, 104, 103, 'order', 49, 'Order #ORD-VB42YOJ1', NULL, NULL, NULL, 1, '2025-10-08 16:02:07', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(112, 14, 3, 'out', -1, 92, 91, 'order', 49, 'Order #ORD-VB42YOJ1', NULL, NULL, NULL, 1, '2025-10-08 16:02:07', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(113, 16, 5, 'out', -3, 23, 20, 'order', 49, 'Order #ORD-VB42YOJ1', NULL, NULL, NULL, 1, '2025-10-08 16:02:07', '2025-10-08 16:02:07', '2025-10-08 16:02:07'),
(114, 12, 1, 'out', -1, 2020, 2019, 'order', 50, 'Order #ORD-WI6Y4RWM', NULL, NULL, NULL, 1, '2025-10-08 16:11:28', '2025-10-08 16:11:28', '2025-10-08 16:11:28'),
(115, 13, 2, 'out', -1, 103, 102, 'order', 51, 'Order #ORD-CD0PNDXO', NULL, NULL, NULL, 1, '2025-10-08 16:23:42', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(116, 14, 3, 'out', -1, 91, 90, 'order', 51, 'Order #ORD-CD0PNDXO', NULL, NULL, NULL, 1, '2025-10-08 16:23:42', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(117, 15, 4, 'out', -1, 7, 6, 'order', 51, 'Order #ORD-CD0PNDXO', NULL, NULL, NULL, 1, '2025-10-08 16:23:42', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(118, 16, 5, 'out', -1, 20, 19, 'order', 51, 'Order #ORD-CD0PNDXO', NULL, NULL, NULL, 1, '2025-10-08 16:23:42', '2025-10-08 16:23:42', '2025-10-08 16:23:42'),
(119, 13, 2, 'out', -1, 102, 101, 'order', 52, 'Order #ORD-VZW3NSNR', NULL, NULL, NULL, 3, '2025-10-08 16:29:45', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(120, 14, 3, 'out', -1, 90, 89, 'order', 52, 'Order #ORD-VZW3NSNR', NULL, NULL, NULL, 3, '2025-10-08 16:29:45', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(121, 15, 4, 'out', -1, 6, 5, 'order', 52, 'Order #ORD-VZW3NSNR', NULL, NULL, NULL, 3, '2025-10-08 16:29:45', '2025-10-08 16:29:45', '2025-10-08 16:29:45'),
(122, 13, 2, 'out', -1, 101, 100, 'order', 53, 'Order #ORD-BGHFIEFE', NULL, NULL, NULL, 1, '2025-10-08 16:40:35', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(123, 14, 3, 'out', -1, 89, 88, 'order', 53, 'Order #ORD-BGHFIEFE', NULL, NULL, NULL, 1, '2025-10-08 16:40:35', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(124, 15, 4, 'out', -1, 5, 4, 'order', 53, 'Order #ORD-BGHFIEFE', NULL, NULL, NULL, 1, '2025-10-08 16:40:35', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(125, 16, 5, 'out', -1, 19, 18, 'order', 53, 'Order #ORD-BGHFIEFE', NULL, NULL, NULL, 1, '2025-10-08 16:40:35', '2025-10-08 16:40:35', '2025-10-08 16:40:35'),
(126, 12, 1, 'out', -1, 2019, 2018, 'order', 54, 'Order #ORD-RKLKPBDP', NULL, NULL, NULL, 1, '2025-10-08 16:54:14', '2025-10-08 16:54:14', '2025-10-08 16:54:14'),
(127, 13, 2, 'out', -1, 100, 99, 'order', 54, 'Order #ORD-RKLKPBDP', NULL, NULL, NULL, 1, '2025-10-08 16:54:14', '2025-10-08 16:54:14', '2025-10-08 16:54:14'),
(128, 12, 1, 'out', -1, 2018, 2017, 'order', 55, 'Order #ORD-RDMXXNMZ', NULL, NULL, NULL, 1, '2025-10-08 16:55:49', '2025-10-08 16:55:49', '2025-10-08 16:55:49'),
(129, 12, 1, 'out', -1, 2017, 2016, 'order', 56, 'Order #ORD-SLUDGAGA', NULL, NULL, NULL, 1, '2025-10-08 16:56:47', '2025-10-08 16:56:47', '2025-10-08 16:56:47'),
(130, 13, 2, 'out', -1, 99, 98, 'order', 57, 'Order #ORD-KZ9KGIQX', NULL, NULL, NULL, 1, '2025-10-08 17:01:46', '2025-10-08 17:01:46', '2025-10-08 17:01:46'),
(131, 13, 2, 'out', -1, 98, 97, 'order', 58, 'Order #ORD-FZ3LT6LD', NULL, NULL, NULL, 1, '2025-10-08 17:07:48', '2025-10-08 17:07:48', '2025-10-08 17:07:48'),
(132, 13, 2, 'out', -1, 97, 96, 'order', 59, 'Order #ORD-A2KLZUH5', NULL, NULL, NULL, 1, '2025-10-08 17:08:08', '2025-10-08 17:08:08', '2025-10-08 17:08:08'),
(133, 13, 2, 'out', -1, 96, 95, 'order', 60, 'Order #ORD-OHUWXE5T', NULL, NULL, NULL, 1, '2025-10-08 17:10:03', '2025-10-08 17:10:03', '2025-10-08 17:10:03'),
(134, 13, 2, 'out', -1, 95, 94, 'order', 61, 'Order #ORD-8X0IQZV9', NULL, NULL, NULL, 1, '2025-10-08 17:12:34', '2025-10-08 17:12:34', '2025-10-08 17:12:34'),
(135, 14, 3, 'out', -1, 88, 87, 'order', 61, 'Order #ORD-8X0IQZV9', NULL, NULL, NULL, 1, '2025-10-08 17:12:34', '2025-10-08 17:12:34', '2025-10-08 17:12:34'),
(136, 15, 4, 'out', -1, 4, 3, 'order', 61, 'Order #ORD-8X0IQZV9', NULL, NULL, NULL, 1, '2025-10-08 17:12:35', '2025-10-08 17:12:35', '2025-10-08 17:12:35'),
(137, 12, 1, 'out', -1, 2016, 2015, 'order', 62, 'Order #ORD-3QJM9LZP', NULL, NULL, NULL, 1, '2025-10-08 17:23:42', '2025-10-08 17:23:42', '2025-10-08 17:23:42'),
(138, 13, 2, 'out', -1, 94, 93, 'order', 63, 'Order #ORD-QOFMEVXY', NULL, NULL, NULL, 1, '2025-10-08 17:29:19', '2025-10-08 17:29:19', '2025-10-08 17:29:19'),
(139, 12, 1, 'out', -1, 2015, 2014, 'order', 64, 'Order #ORD-Q0P57EP1', NULL, NULL, NULL, 1, '2025-10-08 17:42:02', '2025-10-08 17:42:02', '2025-10-08 17:42:02'),
(140, 13, 2, 'out', -1, 93, 92, 'order', 65, 'Order #ORD-ANPWUOXW', NULL, NULL, NULL, 1, '2025-10-08 17:42:26', '2025-10-08 17:42:26', '2025-10-08 17:42:26'),
(141, 13, 2, 'out', -1, 92, 91, 'order', 66, 'Order #ORD-9PUJCJMF', NULL, NULL, NULL, 1, '2025-10-08 17:42:55', '2025-10-08 17:42:55', '2025-10-08 17:42:55'),
(142, 13, 2, 'out', -1, 91, 90, 'order', 67, 'Order #ORD-RXLCAYQS', NULL, NULL, NULL, 1, '2025-10-08 17:44:03', '2025-10-08 17:44:03', '2025-10-08 17:44:03'),
(143, 13, 2, 'out', -1, 90, 89, 'order', 68, 'Order #ORD-MR8IFYRJ', NULL, NULL, NULL, 1, '2025-10-08 17:44:26', '2025-10-08 17:44:26', '2025-10-08 17:44:26'),
(144, 13, 2, 'out', -1, 89, 88, 'order', 69, 'Order #ORD-QQBR3CA5', NULL, NULL, NULL, 1, '2025-10-08 17:45:49', '2025-10-08 17:45:49', '2025-10-08 17:45:49'),
(145, 17, 6, 'out', -1, 92, 91, 'order', 70, 'Order #ORD-RYMOISBS', NULL, NULL, NULL, 1, '2025-10-08 17:46:47', '2025-10-08 17:46:47', '2025-10-08 17:46:47'),
(146, 13, 2, 'return', 1, 88, 89, 'order_cancellation', 65, 'Order cancelled: #ORD-ANPWUOXW', NULL, NULL, NULL, 1, '2025-10-09 08:42:19', '2025-10-09 08:42:19', '2025-10-09 08:42:19'),
(147, 13, 2, 'out', -5, 89, 84, 'order', 71, 'Order #ORD-BYBFIBEB', NULL, NULL, NULL, 1, '2025-10-09 08:48:41', '2025-10-09 08:48:41', '2025-10-09 08:48:41'),
(148, 13, 2, 'out', -5, 84, 79, 'order', 72, 'Order #ORD-DTSQBSWW', NULL, NULL, NULL, 8, '2025-10-09 12:15:25', '2025-10-09 12:15:25', '2025-10-09 12:15:25'),
(149, 12, 1, 'in', 111, 2014, 2125, 'manual_adjustment', NULL, NULL, NULL, 545.00, 60495.00, 1, '2025-10-09 12:37:20', '2025-10-09 12:37:20', '2025-10-09 12:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `nav` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `description`, `image`, `status`, `nav`, `featured`, `sort_order`, `created_at`, `updated_at`) VALUES
(11, 'Admin', 'admin', 15, NULL, '1759184140_cosmetics.png', 0, 0, 0, 0, '2025-09-29 16:15:40', '2025-10-20 16:55:40'),
(12, 'Moisturizers', 'moisturizers', 27, 'Hydrating creams and lotions', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(13, 'Serums', 'serums', 27, 'Concentrated treatment products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(14, 'Cleansers', 'cleansers', 27, 'Face wash and cleansing products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(15, 'Toners', 'toners', 27, 'Skin balancing and refreshing products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(16, 'Sunscreen', 'sunscreen', 27, 'UV protection products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(17, 'Essences', 'essences', 27, 'Lightweight hydrating products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(18, 'Masks', 'masks', 27, 'Treatment and pampering masks', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(19, 'Eye Care', 'eye-care', 27, 'Eye creams and treatments', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(20, 'Foundation', 'foundation', 28, 'Base makeup products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(21, 'Lipstick', 'lipstick', 28, 'Lip color products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(22, 'Eyeshadow', 'eyeshadow', 28, 'Eye color products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(23, 'Mascara', 'mascara', 28, 'Eyelash enhancement', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(24, 'Blush', 'blush', 28, 'Cheek color products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(25, 'Concealer', 'concealer', 28, 'Coverage products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(26, 'Primer', 'primer', 28, 'Makeup base products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(27, 'Setting Spray', 'setting-spray', 28, 'Makeup finishing products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(28, 'Shampoo', 'shampoo', 24, 'Hair cleansing products', '1761001397_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:03:17'),
(29, 'Conditioner', 'conditioner', 24, 'Hair conditioning products', '1761001489_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:04:49'),
(30, 'Hair Masks', 'hair-masks', 24, 'Deep treatment products', '1761001554_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:05:54'),
(31, 'Hair Oil', 'hair-oil', 24, 'Nourishing hair oils', '1761001630_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:07:10'),
(32, 'Hair Serum', 'hair-serum', 24, 'Styling and treatment serums', '1761001694_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:08:14'),
(33, 'Dry Shampoo', 'dry-shampoo', 24, 'Quick hair refresh products', '1761001762_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:09:22'),
(34, 'Hair Styling', 'hair-styling', 24, 'Styling and finishing products', '1761001822_Capture.PNG', 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-20 17:10:22'),
(35, 'Body Lotion', 'body-lotion', 29, 'Body moisturizing products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(36, 'Body Wash', 'body-wash', 29, 'Body cleansing products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(37, 'Body Scrub', 'body-scrub', 29, 'Exfoliating products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(38, 'Hand Cream', 'hand-cream', 29, 'Hand care products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(39, 'Foot Care', 'foot-care', 29, 'Foot treatment products', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(40, 'Body Oil', 'body-oil', 29, 'Nourishing body oils', NULL, 1, 1, 1, 0, '2025-10-07 02:32:55', '2025-10-07 02:32:55'),
(42, 'Normal Skin', 'normal-skin', 15, 'Products for normal skin type', '1761000580_Capture.PNG', 1, 0, 1, 0, '2025-10-20 16:24:16', '2025-10-20 16:49:40'),
(43, 'Oily Skin', 'oily-skin', 15, 'Oil control and mattifying products', '1761000418_Capture.PNG', 1, 0, 1, 1, '2025-10-20 16:24:16', '2025-10-20 16:46:58'),
(44, 'Dry Skin', 'dry-skin', 15, 'Hydrating and moisturizing solutions', '1761000652_Capture.PNG', 1, 0, 1, 2, '2025-10-20 16:24:16', '2025-10-20 16:50:52'),
(45, 'Combination Skin', 'combination-skin', 15, 'Balanced care for mixed skin types', '1761000721_Capture.PNG', 1, 0, 1, 3, '2025-10-20 16:24:16', '2025-10-20 16:52:01'),
(46, 'Sensitive Skin', 'sensitive-skin', 15, 'Gentle and soothing products', '1761000856_Capture.PNG', 1, 0, 1, 4, '2025-10-20 16:24:16', '2025-10-20 16:54:16'),
(47, 'Damaged Skin', 'damaged-skin', 15, 'Repair and recovery treatments', '1761000919_Capture.PNG', 1, 0, 1, 5, '2025-10-20 16:24:16', '2025-10-20 16:55:19'),
(60, 'Normal Hair', 'normal-hair', 24, 'Products for normal hair type', '1761001883_Capture.PNG', 1, 0, 1, 0, '2025-10-20 16:58:30', '2025-10-20 17:11:23'),
(61, 'Oily Hair', 'oily-hair', 24, 'Oil control and balancing products', '1761001949_Capture.PNG', 1, 0, 1, 1, '2025-10-20 16:58:30', '2025-10-20 17:12:29'),
(62, 'Dry Hair', 'dry-hair', 24, 'Deep moisturizing and nourishing solutions', '1761002038_Capture.PNG', 1, 0, 1, 2, '2025-10-20 16:58:30', '2025-10-20 17:13:58'),
(63, 'Damaged Hair', 'damaged-hair', 24, 'Repair and restore damaged hair', '1761002103_Capture.PNG', 1, 0, 1, 3, '2025-10-20 16:58:30', '2025-10-20 17:15:03'),
(64, 'Color-Treated Hair', 'color-treated-hair', 24, 'Protect and maintain hair color', '1761002151_Capture.PNG', 1, 0, 1, 4, '2025-10-20 16:58:30', '2025-10-20 17:15:51'),
(65, 'Curly Hair', 'curly-hair', 24, 'Define and enhance natural curls', NULL, 1, 0, 1, 5, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(66, 'Hair Loss/Thinning', 'hair-loss', 24, 'Strengthen and prevent hair loss', NULL, 1, 0, 1, 6, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(67, 'Dandruff/Scalp Care', 'dandruff-scalp', 24, 'Eliminate dandruff and soothe scalp', NULL, 1, 0, 1, 7, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(68, 'Hair Growth/Volume', 'hair-growth', 24, 'Promote hair growth and add volume', NULL, 1, 0, 1, 8, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(69, 'Split Ends/Breakage', 'split-ends', 24, 'Repair split ends and prevent breakage', NULL, 1, 0, 1, 9, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(70, 'Frizz Control', 'frizz-control', 24, 'Smooth and tame frizzy hair', NULL, 1, 0, 1, 10, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(71, 'Scalp Treatment', 'scalp-treatment', 24, 'Healthy scalp for healthy hair', NULL, 1, 0, 1, 11, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(72, 'Hair Mask/Treatment', 'hair-mask', 24, 'Intensive deep conditioning treatments', NULL, 1, 0, 1, 14, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(73, 'Hair Oil/Serum', 'hair-oil-serum', 24, 'Nourishing oils and serums', NULL, 1, 0, 1, 15, '2025-10-20 16:58:30', '2025-10-20 16:58:30'),
(74, 'Hair Color/Dye', 'hair-color', 24, 'Hair coloring and dyeing products', NULL, 1, 0, 1, 17, '2025-10-20 16:58:30', '2025-10-20 16:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_method` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `phone_verified_at`, `avatar`, `location`, `website`, `bio`, `email_verified_at`, `password`, `is_verified`, `verification_method`, `remember_token`, `profile_photo`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '01757657698', NULL, '1759964606_RMbjyiN1Oo.jfif', NULL, NULL, NULL, NULL, '$2y$12$ccTQyLg2tCYqfsRASOfOPeTqXQiKuoqtha46pIA7R4Rb2.WdvhkhW', 0, NULL, NULL, NULL, '2025-09-28 11:02:13', '2025-10-08 17:03:26'),
(2, 'Manager User', 'manager@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$ccTQyLg2tCYqfsRASOfOPeTqXQiKuoqtha46pIA7R4Rb2.WdvhkhW', 0, NULL, NULL, NULL, '2025-09-28 12:29:37', '2025-09-28 12:29:37'),
(3, 'Normal User', 'user@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$U61n5zTap8.unV8lWq6FMOQQyFWe2HWUKP9oGhQPTdMrEm98e6Pbq', 0, NULL, NULL, NULL, '2025-09-28 12:29:38', '2025-10-06 18:18:32'),
(4, 'Mohammad Jewel', 'jp@admin.com', '01757657665', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$BUG1MdN5fRLMt3BQRwuoXOvMiFRlu9oo61ysN3TYqwSAWLRxpZQ1i', 0, NULL, NULL, NULL, '2025-10-06 11:11:00', '2025-10-06 11:11:00'),
(5, 'Jaden Beasley', 'sanunefe@mailinator.com', '+1 (416) 733-4199', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$qnTPUNveNlQz4M/Zkddc9.zdq8l0JtIkLWscONbnC0BHwjzWRaLei', 0, NULL, NULL, NULL, '2025-10-06 18:07:00', '2025-10-06 18:07:00'),
(6, 'Kelsie Estes', 'zupuqihaja@mailinator.com', '+1 (115) 475-6392', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$cODGS7qKZvKQrssq2gFjxeB0ZQiwdW7oNeaPsgbFI/.sMruQBylHS', 0, NULL, NULL, NULL, '2025-10-06 18:10:37', '2025-10-06 18:10:37'),
(7, 'Chaim Roy', 'pabefam@mailinator.com', '+1 (957) 318-4768', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$uvGuPy.vTRJ3u3cGJCCHheNCnUl2sCQXrHIXcF5JJL/V.idRgZYoC', 0, NULL, NULL, NULL, '2025-10-07 11:55:07', '2025-10-07 11:55:07'),
(8, 'Farhan Tanvir', 'farhan@gmail.com', '01000000000', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$8RVN8ij1.noAJzUiW5pZBurNNZBw70ZNiLmxqrfh/irvH1oRQWQ5m', 0, NULL, NULL, NULL, '2025-10-09 12:11:32', '2025-10-09 12:11:32'),
(10, 'Jp Asher', 'admins@admin.com', '01757657694', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$12$La3y83jQjAt3KecIP7TYuOYOulyYdncAKb4Xr9mx8LCquM9IE4S9K', 0, 'both', NULL, NULL, '2025-10-20 11:19:41', '2025-10-20 11:20:17'),
(15, 'Jp Asher', 'jpasher58@gmail.com', '01757657697', '2025-10-20 12:15:06', NULL, NULL, NULL, NULL, '2025-10-20 12:13:05', '$2y$12$23E9jrtDwL5Id/hFgqIGl.Olgx6akXr9cfkt0JWTXM86cfL7uaKB6', 1, 'both', NULL, NULL, '2025-10-20 12:11:40', '2025-10-20 12:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `verification_settings`
--

CREATE TABLE `verification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'string',
  `group` varchar(255) NOT NULL DEFAULT 'verification',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verification_settings`
--

INSERT INTO `verification_settings` (`id`, `key`, `value`, `type`, `group`, `description`, `created_at`, `updated_at`) VALUES
(1, 'email_verification_enabled', 'true', 'boolean', 'email', 'Enable email OTP verification', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(2, 'email_otp_length', '6', 'string', 'email', 'Length of email OTP code', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(3, 'email_otp_expiry', '10', 'string', 'email', 'Email OTP expiry time in minutes', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(4, 'email_max_attempts', '5', 'string', 'email', 'Maximum verification attempts for email OTP', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(5, 'email_resend_cooldown', '60', 'string', 'email', 'Cooldown time in seconds before resending email OTP', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(6, 'sms_verification_enabled', 'true', 'boolean', 'sms', 'Enable SMS OTP verification', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(7, 'sms_otp_length', '6', 'string', 'sms', 'Length of SMS OTP code', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(8, 'sms_otp_expiry', '10', 'string', 'sms', 'SMS OTP expiry time in minutes', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(9, 'sms_max_attempts', '5', 'string', 'sms', 'Maximum verification attempts for SMS OTP', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(10, 'sms_resend_cooldown', '60', 'string', 'sms', 'Cooldown time in seconds before resending SMS OTP', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(11, 'sms_api_key', 'iSGZnhYmaTSPMiDzx3sfs3BXumiUQqR4sY6coSgEdwU=', 'string', 'sms', 'SMS API Key', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(12, 'sms_client_id', '', 'string', 'sms', 'SMS Client ID', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(13, 'sms_sender_id', '8809617615681', 'string', 'sms', 'SMS Sender ID', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(14, 'sms_api_url', 'http://103.69.149.50/api/v2/SendSMS', 'string', 'sms', 'SMS API URL', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(15, 'both_verification_enabled', 'true', 'boolean', 'both', 'Allow users to verify both email and SMS', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(16, 'both_verification_required', 'false', 'boolean', 'both', 'Require both email and SMS verification', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(17, 'skip_verification_in_debug', 'true', 'boolean', 'general', 'Allow skipping verification in debug mode', '2025-10-20 14:39:32', '2025-10-20 14:39:32'),
(18, 'verification_required_for_checkout', 'true', 'boolean', 'general', 'Require verification before checkout', '2025-10-20 14:39:32', '2025-10-20 14:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 13, '2025-10-07 11:45:05', '2025-10-07 11:45:05'),
(3, 1, 12, '2025-10-09 12:07:50', '2025-10-09 12:07:50'),
(4, 1, 13, '2025-10-09 12:08:04', '2025-10-09 12:08:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_usages_user_id_foreign` (`user_id`),
  ADD KEY `coupon_usages_order_id_foreign` (`order_id`),
  ADD KEY `coupon_usages_coupon_id_user_id_index` (`coupon_id`,`user_id`),
  ADD KEY `coupon_usages_coupon_id_ip_address_index` (`coupon_id`,`ip_address`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_product_id_unique` (`product_id`),
  ADD KEY `inventory_product_id_is_active_index` (`product_id`,`is_active`),
  ADD KEY `inventory_current_stock_minimum_stock_index` (`current_stock`,`minimum_stock`),
  ADD KEY `inventory_sku_index` (`sku`),
  ADD KEY `inventory_barcode_index` (`barcode`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`),
  ADD KEY `notifications_product_id_foreign` (`product_id`),
  ADD KEY `notifications_user_id_is_read_index` (`user_id`,`is_read`),
  ADD KEY `notifications_type_is_sent_index` (`type`,`is_sent`),
  ADD KEY `notifications_created_at_index` (`created_at`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otp_verifications_user_id_foreign` (`user_id`),
  ADD KEY `otp_verifications_identifier_type_index` (`identifier`,`type`),
  ADD KEY `otp_verifications_otp_expires_at_index` (`otp`,`expires_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_transaction_id_unique` (`transaction_id`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_transaction_id_status_index` (`transaction_id`,`status`),
  ADD KEY `payments_user_id_status_index` (`user_id`,`status`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviews_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `reviews_product_id_is_approved_index` (`product_id`,`is_approved`),
  ADD KEY `reviews_user_id_index` (`user_id`),
  ADD KEY `reviews_rating_index` (`rating`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`),
  ADD KEY `settings_group_key_index` (`group`,`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogans`
--
ALTER TABLE `slogans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_movements_inventory_id_foreign` (`inventory_id`),
  ADD KEY `stock_movements_product_id_type_index` (`product_id`,`type`),
  ADD KEY `stock_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `stock_movements_movement_date_index` (`movement_date`),
  ADD KEY `stock_movements_user_id_index` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_slug_unique` (`slug`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `verification_settings`
--
ALTER TABLE `verification_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `verification_settings_key_unique` (`key`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlists_user_id_product_id_unique` (`user_id`,`product_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slogans`
--
ALTER TABLE `slogans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `verification_settings`
--
ALTER TABLE `verification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD CONSTRAINT `coupon_usages_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_usages_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_usages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `otp_verifications`
--
ALTER TABLE `otp_verifications`
  ADD CONSTRAINT `otp_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD CONSTRAINT `stock_movements_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_movements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
