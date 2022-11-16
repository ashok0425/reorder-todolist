-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2021 at 07:14 AM
-- Server version: 10.3.29-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfacode_krafftbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Krafftbox', 'admin@krafftbox.com', NULL, '$2y$10$fjQMjAaPAdTYDlFQcmsY4.ATnJwgNqlPB.63Bj5w2aZKxnXoIlkGq', NULL, NULL, 'upload/admin/689647005admin.png', NULL, '2021-08-07 15:52:48'),
(2, 'Admin', 'admin@admin.com', NULL, '$2a$12$sFJusXC1QPklm72td.WZLuRhA.R93Z2PByoLTxXJYI22RSjWLe/3e', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advertisments`
--

CREATE TABLE `advertisments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisments`
--

INSERT INTO `advertisments` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`) VALUES
(8, 'upload/add/1138190995banner.png', 'https://krafftbox.com/vendor/register', 1, '2021-08-06 11:52:58', '2021-08-13 13:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `text`, `status`, `created_at`, `updated_at`) VALUES
(25, 'upload/setting/banner/889497978banner.png', 'Banner 1', 'Banner 1', '1', '2021-08-11 08:31:38', '2021-08-13 12:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `category`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blogcategory1', NULL, 1, '2021-06-02 01:35:49', '2021-06-02 01:35:49'),
(2, 'DIY', NULL, 1, '2021-06-02 01:36:01', '2021-07-25 02:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `buynow` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_value` int(11) DEFAULT NULL,
  `price_after_comission` int(11) NOT NULL,
  `actual_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Clothings', 'upload/category/787148716category.jpg', 1, '2021-05-29 04:36:16', '2021-08-11 14:51:36'),
(2, 'Bath & Beauty', 'upload/category/1442449336category.jpg', 1, '2021-05-29 04:36:37', '2021-08-11 14:55:59'),
(3, 'Accessories', 'upload/category/1295968061category.jpg', 1, NULL, '2021-08-11 13:29:53'),
(4, 'Art & Collectibles', 'upload/category/1405421564category.jpg', 1, NULL, '2021-08-11 15:04:07'),
(5, 'Jewelry', 'upload/category/1994902493category.jpg', 1, NULL, '2021-08-11 14:53:12'),
(6, 'Home & Living', 'upload/category/1591448967category.jpg', 1, NULL, '2021-08-11 15:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contactvendors`
--

CREATE TABLE `contactvendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `expire_at` date NOT NULL,
  `card_value` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desrc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `desrc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi!', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi!  Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi!', 1, '2021-07-16 06:10:59', '2021-07-16 06:10:59'),
(2, 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi!', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas, sequi!', 1, '2021-07-16 06:11:15', '2021-07-16 06:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_11_233951_create_sessions_table', 1),
(7, '2021_05_12_005932_create_admins_table', 1),
(8, '2021_05_13_091222_create_categories_table', 1),
(9, '2021_05_13_150726_create_subcategories_table', 1),
(10, '2021_05_14_103039_create_products_table', 1),
(11, '2021_05_14_123014_create_productcolors_table', 1),
(12, '2021_05_14_160154_create_productvariations_table', 1),
(13, '2021_05_14_233020_create_coupons_table', 1),
(14, '2021_05_15_030047_create_blogcategories_table', 1),
(15, '2021_05_15_031734_create_blogs_table', 1),
(16, '2021_05_15_054500_create_subscribers_table', 1),
(17, '2021_05_15_064016_create_banners_table', 1),
(18, '2021_05_17_014812_create_pages_table', 1),
(19, '2021_05_17_014917_create_websites_table', 1),
(20, '2021_05_17_050009_create_contacts_table', 1),
(21, '2021_05_20_022520_create_orders_table', 1),
(22, '2021_05_20_044632_create_shippings_table', 1),
(23, '2021_05_20_045145_create_order_details_table', 1),
(24, '2021_05_29_043147_create_shops_table', 2),
(25, '2021_05_30_053830_create_vendorcoupons_table', 3),
(26, '2021_05_30_073856_create_productreports_table', 4),
(27, '2021_05_30_074336_create_productcustomizes_table', 4),
(28, '2021_05_30_133509_create_contactvendors_table', 5),
(29, '2021_05_30_233412_create_payments_table', 6),
(30, '2021_05_30_233944_create_tickets_table', 6),
(31, '2021_05_31_080608_create_vendortotals_table', 7),
(32, '2021_05_31_123125_create_productreviews_table', 8),
(33, '2021_06_01_024057_create_carts_table', 9),
(34, '2021_06_01_225651_create_wishlists_table', 10),
(35, '2021_06_13_030824_create_shop_galleries_table', 11),
(36, '2021_06_14_235832_create_shopreviews_table', 12),
(37, '2021_06_15_034419_create_buynows_table', 13),
(38, '2021_06_15_090312_create_favourites_table', 14),
(39, '2021_06_15_101516_create_advertisments_table', 15),
(40, '2021_07_15_234013_create_faqs_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `tracking_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ispaid` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_value` float DEFAULT NULL,
  `cart_value` float NOT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `shipping_charge` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `comission` float NOT NULL,
  `price_after_comission` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_after_coupon` float DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_value` int(11) DEFAULT NULL,
  `actual_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about`, `term`, `price`, `policy`, `image`, `created_at`, `updated_at`) VALUES
(1, '<h2></h2><h5></h5><h6></h6><h5></h5><p><span style=\"font-family: Helvetica;\">﻿</span><span style=\"font-family: &quot;Arial Black&quot;;\"><span style=\"font-family: Helvetica;\">Krafftbox is a world for creative handmade and handcrafted\r\ngoods. We have artisans who are following\r\ntheir passion and selling their c</span><span style=\"font-family: Helvetica;\">raft to you. You can sell handmade goods and\r\ncraft supplies on Krafftbox.</span></span></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><span style=\"font-family: Helvetica;\">Find items that are made with love and care for special\r\nmoments in your life. Connect with artists, small businesses and creators who\r\npour their heart into their work.</span></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><b><span style=\"font-family: Helvetica;\">HOW KRAFFTBOX WORKS?</span></b></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><span style=\"font-family: Helvetica;\">Our marketplace is a community of enthusiasts who love unique\r\nhandcrafted pieces. It is made up of ordinary sellers with extraordinary talent\r\nwho can continue doing what they love and buyers who can find what they love.</span></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><b><span style=\"font-family: Helvetica;\">For Sellers</span></b></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><span style=\"font-family: Helvetica;\">We help creative hands start, manage and scale their\r\nbusinesses. Creating your shop and listing products is free. When you make a\r\nsale, a small percentage is deducted as a fee.</span></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><b><span style=\"font-family: Helvetica;\">For Buyers</span></b></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p><span style=\"font-family: Helvetica;\">Explore one-of-a-kind items offered by our sellers at Krafftbox.\r\nYou could also get your items custom-made from our handpicked sellers.</span></p><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n</span><span style=\"font-family: Helvetica;\">\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">\r\n\r\n\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">\r\n\r\n\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\"><o:p></o:p></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p></o:p></p>', '<h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">TERMS OF USE</span></font></h3><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Hi there, welcome! You\'re here. That means you have decided to use our services. The Terms of use (simply referred as \"Terms\" hereafter) that we reference below set out the terms between you and us; under which you may access our website and services at Krafftbox.com (or Krafftbox or Site or collectively as Services), whether as a guest or as a registered user.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Your use of our Site (even just browsing the website) means that you accept, and agree to abide by all the terms in this Terms of Use, which supplement all of our website policies. Also, these Terms don\'t create any partnership, employment, agency, joint venture or franchisee relationship between you and Krafftbox. You may not use our Services if you don\'t agree with the Terms.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Privacy</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Your personal information is important to you; so, it is important for us to keep it private. Please refer to our <b>Privacy Policy </b>to understand how your information is used and processed when you use our Services. By using our Services, you agree that we can process your information in the ways mentioned but not limited to the Privacy Policy.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Your Krafftbox Account</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You\'ll need to register with Krafftbox to use our Services. Here are a few rules about your account with Krafftbox:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">1. <b>Let\'s trust each other. Be honest with us.</b>&nbsp;It is prohibited to provide and/or use false information or mimic another persona, institution or company via your account. Kindly provide us accurate information.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">2. <b>Make sure you choose an appropriate name for your account. </b>Don\'t use language that is vulgar, offensive, infringes other\'s intellectual property rights, or otherwise violates the Terms.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Your Content on Krafftbox</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">The content (like shop name, profile pictures, cover photo, listing photos, listing descriptions, comments, reviews, usernames, profile information, etc.) that you post using our Services is Your Content and we don\'t have any claim to it. So, you\'re fully responsible for and you\'ve have all necessary rights to Your Content. Please make sure you\'re not violating or encroaching on any third party\'s right by posting it.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>By posting Your Content through our Services, you grant Krafftbox a license and permission to use it. </b>However, as aforementioned, we don\'t claim any ownership to Your Content. We may use Your Content to help Krafftbox function and help you grow with us. That means, you acknowledge, allow and agree that Krafftbox may offer you or Krafftbox buyers promotions to our Site, from time to time and that may relate to your product listings. Further, you grant Krafftbox a royalty-free, irrevocable, non-exclusive, sub-licensable and perpetual license to use, display, reproduce, distribute, store and prepare derivative works of Your Content in any way (includes editing and modifying). It might seem that we\'re asking a lot but all of this allows us to provide the Services and to promote Krafftbox, your Krafftbox shop or the Services in general. Thus, by posting Your Content, you allow us to use Your Content in any way mentioned before in any formats, through any channels and advertising medium, to the extent Your Content contains any personal information.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Needless to say, we do not allow content that is threatening, abusive, vulgar, obscene, defamatory, offensive or in violation to our Policies and Terms of Use. </b>Also, you agree not to any content that is misleading, false or deceptive.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Use of Krafftbox Services</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We allow you to use our Services with a limited, non-exclusive, non-transferable and revocable license-subject to the Terms and following restrictions:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">1. You agree not to violate any laws in association with your use of the Services. You are liable to follow any local, state and national laws that apply to you. It\'s your responsibility to obtain any permits or licenses that your shop required and to meet applicable legal requirements in applicable jurisdiction(s). You may not engage in any fraudulent and illegal conduct or in any other unlawful acts against Krafftbox, another Krafftbox user or a third party.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">2. You are responsible to pay all fees that you owe to Krafftbox. You are also liable to pay any applicable taxes for any purchases or sales you make&nbsp;through our Services.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Termination</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">If we have a reason to believe that your use of Services violate our Terms, <b>we may terminate your account and suspend your access to the Services. </b>You don\'t have any legal or contractual right to continue using our Services in case we terminate your account. Needless to say, you\'ll still have to pay any outstanding bills.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>We reserve the right to suspend, discontinue or change any of the Services for you, any or all users, at any time, for any reasons. </b>We will not be liable to you for any effect (of such changes on the Services) that may have on you.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">If your account is terminated (by Krafftbox), you may lose any information associated with your account. The Terms will continue to be in effect even after the termination or end of your access to the Services.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Warranties, Liabilities and Representations</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Krafftbox doesn\'t manufacture, store or inspect any items that you purchase through our Services. The items in our marketplaces are produced, created, listed and sold by independent sellers. Thus, Krafftbox doesn\'t make any warranties about their safety, quality or their legality. Any claims (including defective items, deception by sellers, or items that caused injury of any kind) related to the items you purchase must be brought directly against the seller of the item.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Krafftbox is not responsible for the content and materials that you come across in the Services. We hold no liability of the content posted by users that you might find offensive, inappropriate, inaccurate and, copyright infringed.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You might have to use third-party\'s websites, products or services during the use of the Services. When you access the third-party services (viz. Facebook, Google, Instagram and Pinterest) that we don\'t own or control, you do so at your own risk. The terms of use that you might have to accept when using the third-party\'s services, is solely between you and the third party.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b><br></b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Use of Customer/Buyer Information</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">In case you receive any customer information such as name, contact number and addresses, to fulfill the orders, you are liable to maintain the privacy of such information. You may use customer information only to fulfill the orders and must get rid of such information after the fulfillment of the orders. You may not share any customer information with any third-party; may not try contacting them for any reason whatsoever. If you accidentally disclose a buyer\'s name and other information when fulfilling another buyer\'s order, you (the seller), not Krafftbox, will be responsible for that unsanctioned disclosure.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">However, in some cases, Krafftbox and sellers can be joint controllers of buyer\'s personal information; and if Krafftbox is sued or fined and incurs expenses because of something that you did as a shared controller of buyer\'s information, you agree to compensate Krafftbox for the expenses it occurs in connection to the aforementioned scenario.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Indemnification</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">In case Krafftbox gets sued because of something you did, you agree to defend and indemnify us. Defending us means defending Krafftbox, including any of our employees and holding us harmless from any legal claim that occurs due to your actions. Even if you indemnify us, we reserve the right to handle our legal defense however appropriate we see. You agree to cooperate with us so that we can execute our applicable strategy.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>Changes in the Terms</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We may update the Terms from time to time. It is your responsibility to review and become familiar with any changes. You use of the Services, subsequent to any change in the Terms establishes your acceptance of the updated Terms.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">If you have any queries about the Terms, please email us at support@krafftbox.com.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Last updated on 12 August, 2021.</font></p>', '<h2></h2><h3 style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 20pt; font-family: Helvetica;\">WAYS TO SELL ON KRAFFTBOX</span></b></h3><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">You can choose to sell on Krafftbox by choosing either of the\r\nfollowing ways:</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica;\">As a BASIC Seller:</span></b><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">What you\'ll get:</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:Helvetica;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial\">Set\r\n     up your shop and start selling</span><span style=\"font-size:10.5pt;\r\n     font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;\r\n     font-family:Helvetica;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\n     mso-bidi-font-family:Arial\">Fee charged per sales</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica;\">&nbsp;</span></b></p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica;\">As a Member:</span></b><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">In addition to all the perks as a basic seller, you can also\r\nenjoy:</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:Helvetica;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial\">Personalization\r\n     requests from buyers</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:10.5pt;font-family:Helvetica;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial\">Advertisement\r\n     services</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;\"><o:p></o:p></span></li>\r\n</ul><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">Become a member and <b>start\r\nselling today!</b></span></p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\"><b><br></b></span></p><h3 style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\"><b>ABOUT FEES ON KRAFFTBOX</b></span></font></h3><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We charge minimal fees for the services offered on Krafftbox. The fees are simple and transparent for you:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b style=\"font-family: Helvetica; font-size: 0.875rem;\">1. Membership Fee</b><br></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Membership fee are the nominal amount of fee for the services offered to you as a member on Krafftbox. It will only cost you NRs. 140 per month (for a 6 month plan) and NRs. 100 per month, if you choose a 1 year plan. When you choose to be a member, you\'re committing to the duration of the plan. However, you can choose to cancel the membership plan at the end of the period. <b>Not a member yet? Become a member today and enjoy the perks of selling as a member on Krafftbox.</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>2. Transaction Fee</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Transaction fee refer to the fees Krafftbox collects when a customer buys an item from you. Transaction fee of 10% is charged on the listings that sell.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>3. Advertisement Fee</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">The advertising fee is applicable only for those members who choose to advertise on Krafftbox. If you opt for advertising, your shop shall be showcased at the homepage of our website for the stated period of time.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">BEGINNER\'S GUIDE TO SELLING ON KRAFFTBOX</span></font></h3><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">This guide assists you through the initial steps of setting up your shop on the platform:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>1. Opening your shop</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Before you set up your shop, create an account with Krafftbox. With this account, you can run your shop on Krafftbox.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">To open you shop, after you\'ve logged in:</font></p><ul><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Click on <b>Shop List</b> under <b>Manage Shop </b>section on the left side of your dashboard.</font></li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Make sure you open up a Shop to let your buyers know who you are.</font></li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">To set up a shop, click on <b>Add Shops</b>.</font></li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Choose your shop name, upload a profile picture and a cover image for your shop and introduce your shop in the Description. Then, click Create.</font></li></ul><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-weight: 600;\">2. Choosing your shop name</span></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Choose a name that reflects your style. Shop names should meet the following requirements:</font></p><ul><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Maximum 20 characters in length</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">No special characters</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">No profanity</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Should not infringe on another\'s trademark</li></ul><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><br></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-weight: 600;\">3. Stock your shop</span></font></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">List your products in the shop. Add a product by doing the following:</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Go to <b>Product </b>under <b>Manage Product </b>section and click on <b>Add Product</b>. Here, add all the details and images as applicable. Choose the relevant category of the products.</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">How your products are found upon searching and how they are categorized is determined by the details you add in your listing.</p><ul><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Product Name: </b>Create a descriptive name. How would a buyer search for your item? Add such words in your title. However, keep them short and subtle.</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Categorize: </b>Choose the category your time belongs to. An item might belong to multiple categories. Pick the category you think buyers will most likely choose.</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Images: </b>Make sure you upload quality photos. Don\'t scale down your photos to a smaller size. Larger photos enable buyers to zoom in to see details in the item. Add photos of an item with variations.</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Describe: </b>Describe your listing. Tell the shoppers more about your product, materials used, size, unique features, etc.</li></ul><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><br></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-weight: 600;\">4. Add Pricing and Inventory</span></font></p><ul><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Clearly mention how much your time will cost to the buyers.</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Mention the number of items you have in stock. This will create urgency among buyers to buy your products.</li></ul><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b style=\"font-family: var(--bs-font-sans-serif); font-size: 0.875rem;\"><br></b></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-weight: 600;\">5. Miscellaneous setups</span></font></p><ul><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Add Tags or Keywords: </b>Tags help shoppers find you on Krafftbox. Make use of popular keywords and be descriptive as possible.</li><li style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><b>Personalization: </b>In case you offer personalization for the product, don\'t forget to turn it on. This will allow buyers to get their goods custom made.</li></ul><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><br></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\">Now you\'re done adding your product and ready to sell. Click <b>Add Product </b>to complete your listing. The product is now live and available for shoppers on Krafftbox. Tell everybody about your new item and share it on your social media handles too.</p><p class=\"MsoNormal\" style=\"line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><o:p></o:p></p><span style=\"font-family: Helvetica;\">\r\n\r\n\r\n\r\n</span><p class=\"MsoNormal\"><o:p></o:p></p>', '<h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">RETURN AND REFUND POLICY</span></font></h3><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica; font-size: 0.875rem;\">﻿If you\'re unsatisfied with your purchase, you may be able to return or exchange your order depending under the following conditions/reasons:</span><br></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">1. If the item was defective</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">2. If the item was damaged during delivery/shipping</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">3. If a wrong item was delivered to you</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">4. If any/some parts of the product were missing</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">Once, the return request is received; we shall inform you if the return request is valid and approved/rejected, after thorough review and coordination with the respective shop/seller. If the return request is found valid, a replacement product will be provided only after we receive the returned product. In case, a replacement isn\'t available, Krafftbox shall initiate to provide a refund to you and you shall be obligated to accept the refund instead of the replacement. If your request is eligible for refund, the total refund amount shall include the delivery/shipping fee with the amount paid for your purchased (now returned) item.</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">Under following conditions, you\'re not liable to make a request for returns:</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">1. If the item has been used, worn, washed, damaged or altered after receipt (as applicable with the item)</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">2. If the items have been accurately described but do not meet a buyer\'s expectations after purchase</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\">3. If the items hadn\'t been purchased/sold on Krafftbox</span></p><p style=\"line-height: normal;\"><span style=\"font-family: Helvetica;\"><br></span></p><h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">BUYER POLICY</span></font></h3><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">Krafftbox is a marketplace where you can purchase handmade and handcrafted goods from our creative sellers. We want you to have a great shopping experience on Krafftbox. To keep the experience best, please have a look at what is expected of you and learn about your rights as a buyer, on Krafftbox.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">The policy is a part of our Terms of Use; by shopping on Krafftbox, you\'re agreeing to this policy and our Terms of Use.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>1. Krafftbox, a Marketplace</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">Krafftbox provides a platform for buyers and sellers to find each other. When shopping on Krafftbox, it is important for you to know that:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- You\'re not directly buying or transacting with/from Krafftbox, but from one of the many creative sellers on Krafftbox.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Each seller has their own order processing times and shop policies.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- If you provide your own materials for a custom order, you assume sole responsibility of them.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>2. Using the messaging service</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">When communicating with the sellers, any information you share with them will be your own decision and you\'re liable to take the sole responsibility of the same. However, messages may not be used for the following activities:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Sending requests for donations, unsolicited advertising or promotions or spam</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Harassing or abusing in any way</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Interfering or hindering other seller\'s/buyer\'s business</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Contacting someone even after they have asked you not to</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Spread hate and negativity of any kind whatsoever</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>3. Making a purchase</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">By making a purchase from a seller on Krafftbox, you agree that you have:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Read the listing/item descriptions before making a purchase</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Complied with their shop policies before, during and after making a purchase (however applicable)</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Submitted liable payment for item(s) purchased</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Provided accurate delivery information</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>4. Ratings and Reviews</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We encourage you to rate and leave a review of the items and shops you purchased from. It helps other buyers learn about good sellers and items; letting our sellers build a strong reputation. Further, it warns other buyers of poor experience as well.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You can rate and leave a review after you have made a purchase and received your delivery of the item. By leaving a review, you acknowledge that your content/review may not:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Contain abusive, racist, obscene or harassing language</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Contain any private information</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Contain advertising or spam</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Be about things that are outside the control of seller, Krafftbox or a third party</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Asking for donations, contain extortion or threat</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- False experiences and information of any kind</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You are not allowed to purchase a product for intentionally and solely leaving a negative review. You may not undermine the integrity of the Reviews system. We reserve the right to remove ratings and/or reviews that violate our Terms of Use and policies.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">SELLER POLICY</span></font></h3><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">Krafftbox is a marketplace where you can sell your unique handmade/handcrafted products to our buyers. We want you and the buyers to have a great experience on Krafftbox. To keep the experience best, please have a look at what is expected of you and learn about your rights as a seller, on Krafftbox.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">This policy is a part of our Terms of Use; by opening a shop on Krafftbox, you\'re agreeing to this policy and our Terms of Use.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\"><b>1. Selling on Krafftbox</b></span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">Please read on and learn the basic requirements to follow as a seller on Krafftbox:</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\"><b>a. What you can sell</b></span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">We like to keep the shopping experience for our buyers as unique as possible. Buyers come here to purchase products that are unique and that they might not find anywhere else. Everything you list for sale on Krafftbox must be either handmade or handcrafted. Handmade and Handcrafted items could be products that you literally make with your hands or tools; or, they could be something you designed and let others (or businesses) bring them to life in physical form.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">If you allow personalization or customization on your items, you agree that:</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">- There are no hidden/extra charges for the customization. The set price must be clearly mentioned in the product profile.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica;\">- You must clearly mention in the description of the product profile that the images shown are just examples or previous work of art.</span></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>b. What you cannot sell</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You\'re not allowed to sell the following (but not limited to) on Krafftbox:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Weapons and hazardous, dangerous items and weapons</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Items that promote, support or glorify hate</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Items that promote, support or glorify violence</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Items that are deemed illegal</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Mature content and pornography</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Items that are restricted for trade and sale by the prevalent law</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>c. Your Krafftbox shop</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You, as a creator and as a seller (business), both, are represented by your shop and shop policies. Thus, it is very important that you represent your items and shop honestly and accurately. Thus, by opening a shop and selling on Krafftbox, you agree that you will:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Accurately represent your shop item, listings and content of your listings</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Represent yourself with liable shop policies and honor them as well</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Provide honest and accurate information about yourself and your shop</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Ensure that any content you post doesn\'t represent hate, discrimination, racism and abide by Krafftbox\'s policies</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Pay all fees, as applicable</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Not coordinate with other sellers to fix pricings</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Not take action to manipulate search and sales of your items and shop</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>d. Selling Requirements</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You are solely liable to comply with all applicable rules, laws and regulations for the products you list for sale. You should include required warnings, labels and content with your listings and products; Krafftbox shall take no responsibility for any of such labeling or content for your listings products. Further, as a seller you must provide positive customer service and maintain trust with your buyers.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>e. Selling Fees</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We charge certain fees for using some of our Services. You can find information on fees in our <b>ABOUT FEES ON KRAFFTBOX </b>section.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>2. Creating a Safe Community</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">We intend to keep Krafftbox as a safe community for both buyers and sellers. As a seller on Krafftbox, we expect you to safeguard buyer\'s personal information; communicate promptly and properly with the buyers in order to create a positive customer experience.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>a. Your Content</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">As a seller on Krafftbox, you shall create and upload different content such as listings, images, text and messages. Thus, to keep our community respectful and safe for all, you agree that you will not upload any content that is:</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Vulgar or obscene</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- False, misleading and deceptive</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Threatening, discriminatory, harassing, defamatory or abusive</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Violating someone\'s privacy</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">- Violating someone\'s intellectual property rights</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><b>b. Maintain Privacy and Protect Personal Information</b></font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">You are liable to protect members\' personal information that you have received or processed while complying with all relevant legal requirements. You are required to comply with applicable data protection and privacy laws that administer the way in which you can Krafftbox user information. In case you receive any customer information such as name, contact number and addresses, to fulfill the orders, you are liable to maintain the privacy of such information. You may use customer information only to fulfill the orders and must get rid of such information after the fulfillment of the orders. You may not share any customer information with any third-party; may not try contacting them for any reason whatsoever. If you accidentally disclose a buyer\'s name and other information when fulfilling another buyer\'s order, you (the seller), not Krafftbox, will be responsible for that unsanctioned disclosure.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\">However, in some cases, Krafftbox and sellers can be joint controllers of buyer\'s personal information; and if Krafftbox is sued or fined and incurs expenses because of something that you did as a shared controller of buyer\'s information, you agree to compensate Krafftbox for the expenses it occurs in connection to the aforementioned scenario.</font></p><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><font face=\"Helvetica\"><br></font></p><h3 style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\">PRIVACY POLICY</span></font></h3><p style=\"line-height: normal;\"><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\"><br></span></font></p><div><font face=\"Helvetica\"><span style=\"font-size: 26.6667px;\"><br></span></font></div><p class=\"MsoNormal\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p>', NULL, NULL, '2021-08-12 15:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('smtptestmail9@gmail.com', '$2y$10$D9Ujly/WH29/XKjAODDhUuTZCKtJdkaDzk2iW5tr2icxlxMTRDNhS', '2021-07-05 04:01:48'),
('sujnmaha@gmail.com', '$2y$10$K.9kK4UHz7Eb1/bENtlqHO4VjCYnIyLl7bJIYpsbdBLStP3gc/sl2', '2021-07-16 15:15:06'),
('ashokmehta123y@gmail.com', '$2y$10$1RRG1nrTkawd8csZOwK6ZeF349J80a7isVTsqX6m.FM8tPIkVLzJG', '2021-07-18 02:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcustomizes`
--

CREATE TABLE `productcustomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreports`
--

CREATE TABLE `productreports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `price` float NOT NULL,
  `comission` float NOT NULL,
  `price_after_comission` float NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `top_rated` int(11) DEFAULT NULL,
  `bestseller` int(11) DEFAULT NULL,
  `Iscustomized` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productvariations`
--

CREATE TABLE `productvariations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comission` float NOT NULL,
  `price_after_comission` float NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0N1LojL1uFvZrhrYgX04iqXc6ZSUGO8Y5kADyTuO', NULL, '66.249.75.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkJjcjY2d3dsUEhkR09FenZpNm1qMzhDdnlrN3dMbW1IZlQ0MXRaUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wcm9kdWN0LzQvcHJvZHVjdCUyMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628920957),
('0px1qRBMtFTnv11xauZzT1L5F5iwwCIjB0Vqa2Md', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUhjaVpKUUJrc1FDU2NETTZFbzM4UW1NWWFQdnEwczN3Y1B1YnZKRCI7czo1OiJzdGF0ZSI7czo0MDoieWo5T2dhVVlvQUxPQXBQbVkzTFhGeHNJV2tPTlE0WnhqUnd2bmhCSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvYXV0aC9nb29nbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628919158),
('1ef24LOsjrSZdxaJcN8iS0Th4KqgmQbcdm7dAFpr', NULL, '2a03:2880:20ff:4::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3d6MUxJM09OYjZubElBUWFTc1RpMzN1dFczM0tidko4eVB4QXJyQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628917552),
('1OFfWSjzrFLhMzKUaJ3by9hfBxiKkIan970j2kIc', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXBBejFBdWlVaGZsQnE3dEl3ekM3UzdQTXcxOTNra0ZHMThBaUxkcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE2L2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628855019),
('20HjhXdZzjkuLaR5ePjlQax34TibheFNJxKduiBW', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2ZJMnZVOTNQamlGaFlJbk04Mzh2b2FJRXJUNUxWQTc0RkVqMml6SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvYmxvZy8xL2NhdGVnb3J5X2Jsb2ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628922398),
('32NcPBz6EjCK7KQJUMNuVcelho5vcXOu9O2sIt3W', NULL, '54.36.148.251', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam5XR1BWRDd1dG90VWpLNXNxQlY2VDBGc01zMmxpeXBHQXVUck52YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTkvTXVncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628886215),
('3hotmkV0ChZbCwfDFJ2JNPhy7IGR18BYWXoeENLq', NULL, '54.36.148.161', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTZjblczZnFma2N3eEI0ZnpQWWExNnY1Y1AxejJuVm14azNPWVE5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjIvU2NydW5jaGllcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628885748),
('4t0OYL6UPjxAgXQzQFdr1d3D97N5aLEJf4MBCmQq', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOTdIalNCT0F2RENKM2JZYkVQVE9XTmI5OVBaV05SRWNxSmVWazF6bSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MDoiaHR0cHM6Ly9rcmFmZnRib3guY29tL3B1YmxpYy9vcmRlcnMvbGlzdCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwczovL2tyYWZmdGJveC5jb20vcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854772),
('4YJQl3xixoxl3qMCLyUco75TCFGmVL6TVp4n0Ouf', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlNWDdId3o2U3Z2Z1hPSFlWeXdkbjJuOEFjdU1QTXZFeFpIT2puMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvdGVybS1jb25kaXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854760),
('548StI12dUlsZvXEtBUJLrmiG8poHFqPSQVsN2cP', NULL, '2a03:2880:20ff:5::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEhOaDBFT3NLMlRKa2VDZzdJQ1pxalpEbkxVYmFGTER3RDg2NThzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628917551),
('7eCmub1iknZVlnOCyzPZ7g4ovL6vaGfAajQuq6g5', NULL, '5.188.62.214', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2225.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2FiZ0dmN0pjNDgzSXB1TElOaWQ0SlRXMGU0MXhFQk94SUJyd1cxYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628895927),
('7gtz6hsjVKOyCQRDofrr9cw9jANIOKqc1J6trxAt', NULL, '66.249.75.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXg1Z2JPV2JwZG1EbUxCelhGTGYwQ1dHU0ZtOW1Hem14dnd1UnFQVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC8xL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628917358),
('7TTLjWZ6ig1d9VMdwG2fbTkT8vU9zBBta747qUNq', NULL, '2a03:2880:20ff:2::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm1KUUJUbldXM05pV1lCVm1yUm1kcmpWWmJyY2tKOHF4T0U5NnFZViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628917553),
('8sv719ACfKO8zpUx6EOn6KkBleUHz5gzi5jMHD01', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDVrNUpXSzdZdE15MngycGMxZjNkUGJxRUQ5VGxxZ0dZUXpUZnI4TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI2L2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628919878),
('8Yw8bouUcU6iDuC85nf1RvyFQKkwGGMmD46Kfiim', NULL, '36.252.97.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHBIZktrWWR1MjBiZDRXVkhHMzVFZUMxOHMxUFdnUnFiWW1ZN1VlUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjkvTWVuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cHM6Ly9rcmFmZnRib3guY29tL3dpc2hsaXN0L2xpc3QiO319', 1628903457),
('9aMWJT6kzNyeIiAaGppSOS8N8ORuc1dAq1xVdtQv', NULL, '66.249.75.175', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlpCSG1NZVZQOVFvNE9yVWhXR3FiYXlFWW5LeVhoU3VUSUd1dU5QVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC90eXBlLzIxL0tleXJpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628924560),
('a4yyAnLYA8uF8qKuLceyT6q0CZEZapdYpJ0BrZmq', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUVqR3Z3S3RrOFhkeDM3bUU4RElYckFyVE50NW03SWtncFBwSzMwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvYmxvZy8xL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628922422),
('abglmbOorF4N4187S1YGnuFpLNM0KWam145O3Pf1', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFJ6d3h5ZXNWenVvd3FNZWdFVUI4dWVrdHdFZW5pbzJTUkNXQXkybCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzIzL0JhbmRhbmFzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628920238),
('aDKogQLX1m3DlJBmZGa5CFKNQ4NUjyTXusn74BOJ', NULL, '2a03:2880:22ff:2::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHlseWZ0dEQ5R1FGVWtiZ1J5QzBqNFpPeVhGcFEzV0xJMTIxOEF0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628866785),
('ae8IyLaW7hH1GLiAlTx21hN8zF1QaDDtET5yqGcJ', NULL, '120.89.97.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGpiUm9tOGhmekhOdnF4NGV4M1JHeUtmTzF0Mm5udDYzN3BLV3RUUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628923593),
('aRz6fG4LUz7Z0xFL0BxeYmMyrrds42dl26GejzxI', NULL, '36.252.91.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHFza2pMRExBY2lBazNTQ0kxbm9iYlFGQ1U2RkpSOVhWSWhmajg5aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628924098),
('avWydYfmyGHDvR8R0f0J6I7w283xJOXkxtHfPsZ7', NULL, '66.249.75.189', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUhiaVN1cGRpSXlxYkNFeFkxSVRnUzFjTnN2Mk9YUU9WcTkzQkFuNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vYmxvZ2RldGFpbC81L3NpbmdsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628848237),
('B9mSeCn6CvidUcyLqyf4LzdS3DmUhzSSkxoKSwU2', NULL, '54.36.149.60', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlJPVVVnV09McVVZa04zT2hZTEhiTmlPQWVzQkR0SjlXWThEUTNkaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628925046),
('bJWpwF0PJ2q4yhBRfLCUg74C4yYwkO24401Jx5BZ', NULL, '110.44.127.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUhWem1SY0F1OHR3T29vM3BnRXZmUXljdXYxekxCa3pHTTlWWFJtMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwczovL2tyYWZmdGJveC5jb20iO319', 1628870252),
('bx84jttn3A4VKNU9uqX5ioZ6CaG4N4jBn5YUgTmr', NULL, '66.249.75.189', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZEt6Tkl5Qm41aFZxcjVaUVE2OVpaZ21HbDg5OThwYWNEZTE5Vkt4RiI7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL3d3dy5rcmFmZnRib3guY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628863232),
('cbruAdobJGnpqanVVdEqdTwVsst7xuNmQ3Aitqi3', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1FuSXFFb1BEaFNXaTRaY2FmaEFzVkw2QUlTemYwUmVKRDJrZDQyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzIwL1RvdGUlMjBCYWdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628924560),
('CFGV3vwK0lL8ztRtIPLjWIx62KZAdcXKZyrZkeV4', NULL, '66.249.75.106', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzFHd2xsNWQ2bm9URWcyenZ2OUN5TG0yUVVIQ0lVWjZNbWNCZ2x6RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvcHJpdmFjeS1wb2xpY3kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628917360),
('CIjPpgS8w7na1NqdJWAnPlQ1OWdM6qhMo2kMs5wF', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVpuNzB0c2ExZDhWcGpnQXM1dFpFbG5hOTBwVkpqbWp6R1BZTmhtbiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MjoiaHR0cHM6Ly9rcmFmZnRib3guY29tL3B1YmxpYy93aXNobGlzdC9saXN0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628923837),
('cKHNaVkaXNMhnhtEOzCGeZmEl95JwUqWpGM1Oc3R', NULL, '54.36.148.1', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3poUlNaVHc3bTNESU5CWTljQ3VFTjFjQ0xRTzBTM0dHRndXR2JUdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTIvRnJhZ3JhbmNlJTIwQ2FuZGxlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628880154),
('Cqa3xpUI2tAIh7PowY9OcYsJkQv2HKbUJwcXCzu2', NULL, '54.36.148.168', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHFvWmEwWW5udjI2VFVMTFpCMnZPazhiQ1pSN2pIZEJtNnhqckpSWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjcvS2lkcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628887161),
('cS5s6Us9UxvlmUbkOTYZcX3UCe70Le3d6L3E2YCY', NULL, '54.36.148.198', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFN2a3JUY0VMZm1NcUlpRVI2MFdtMm1sMWNaeWpiZGJ5SlZ4ZkRvVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjUvUHVyc2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628921113),
('cTZNeaqQ3myfmbu7jLXUOPCTThnUM7LjKmZPpMVm', NULL, '2a03:2880:22ff:d::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVNRWHcwM0hXM3ZsSG5tZ1JRVndVTUxvMXBOMnQ4M3hCUm90dzhiWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628866787),
('DF1vppzeJmKtInULoUBUDpMu6gXsxY1xuBca4VCM', NULL, '54.36.148.140', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTRqWmczdW52VEN1WTVoOHBUUWt1NkY3WHVRZHlpTVRQUUZuSFUxcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjMvQmFuZGFuYXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628888082),
('dp8UBXcsx8elklptiJSXNuDSjCmLA1JO7MUo6M9O', NULL, '66.249.75.179', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNENMREdWY25mMUZWYTFPeDl3Q3Z2VFZWTkdGSUs5eTJDMk83TXhDOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628881233),
('DyMHhTDqSEUHKVM5Hfx6AskVHiEfGJjyyXwsMb0H', NULL, '120.89.104.33', 'Mozilla/5.0 (Linux; Android 9; INE-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUM1Y3lzNG9kSE5GOGpMUnRKSHA4eVp3VTJCclY4dFpYZzFYRmRLaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628921205),
('E1AFTvZWelcSv8xACOpJEebAZCEIf4Ghrl8p9mwh', NULL, '66.249.75.185', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTNva3QybHE4Qm51anpTRk5iWmR5b09UYlIybm5nWHRyalFoVmxodiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vYmxvZ2RldGFpbC81L3NpbmdsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628872208),
('e8gxjpIAfW4uFc6iTy8H10oY00kz9uMBhCotW4Z8', NULL, '77.88.5.71', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3JCR3NLaVQ2SXplNzBPZGN5NjBaZWY2Q05jYW1SZDBXUXhOQ01GRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628893695),
('EiiJwgZZSTZKbe4BSJ2gGdRCh8lQawtvsJPwPLuv', NULL, '66.249.75.189', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlZyTkNlWUphRElMeEdUOU4wZENXSHNYTEN4R3pWdVNPdm43em45RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628859632),
('ekxP22KGVr2ZyqjqNxuFlSw1LsLyKxCmssuZk9Vc', NULL, '66.249.75.106', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0RGV2N3N2Q5TWlXVkdxVW5LTElqbmo2QXVBTEZLbXJoeFJnUXkzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0LzEvYWxscHJvZHVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628884833),
('eoJtP5II6AyC6CJyGAwUlAkGdaVpIEYahgmqUSXK', NULL, '54.36.148.29', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM09nWnM1TmRNZjBNU25ya1pjQnpjeFluWkhGY2FpVGtNQXp5aXdOYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628871026),
('Eozt7oWCLqf6Bee4vw52bSBZmzpUnBpOVj28qxGZ', NULL, '110.44.127.179', 'Mozilla/5.0 (Linux; Android 9; INE-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjFQRW9QTHMwZjZTeWl3RXBUZUZKTVAyVnZyRGE1NVVvZnpQa0NzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS92ZW5kb3IvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628860772),
('eTHYSeOzlLBs73t1QryHy7OJztOQehBQr76l0afc', NULL, '2a03:2880:13ff:78::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOER3Z0N1dmNOaUdrRDc1eGdpVUpXRGkwaTlrbHA4Q281ampTZmFBRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9rcmFmZnRib3guY29tL2Fib3V0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628919318),
('fgXWjCRIao6yNwoybaDPe7Y9fZHLcn64Rs1foMgZ', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlRQa2V3ampEZWRYRkd3b2ludXZ1bldYZWR2TFFQVktGM0QxVjFmbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvYWJvdXQtdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628925277),
('Fo8L6yOw8REI9CH3YtHQt4DJWpqtej0s4InLtok7', NULL, '54.36.148.165', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTR5ZWJkQUhLYlN3NHlHaXNiWFNKeWNXWjJ3aENpZ2UxUnpMSHl3diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628899722),
('fQYr4w89cdRw3foA4q8iAxRrjM2pF4PzBEosbUPm', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0pKWmRYMEFJcG1iaVZON2IxZ3RVWHBHcGpsazZkTnEweE5kTWxiRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI5L01lbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854815),
('g4rbGlc7Z99uKXCk6jA4TKGWsHhHcFrB0JGfUVfr', NULL, '54.36.148.216', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3M2WWxhMVV6d2txWURsamVBSWo5TmtUTjRsMUtMUnhJb2tCVmxSUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjEvS2V5cmluZ3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628884780),
('G7E30k055DFgNDR8iaHdwkwASaNUaDTFALySKFnp', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmZvUmk0SDZjektTOHRlVU9qOUM0TW1oT0RybUhheDJNcHN2V25SZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE3L1BhaW50aW5ncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854900),
('GqiRKTOkKvQSMbUGADKLjl9wn3ksjGcOGESuk7mf', NULL, '66.249.75.185', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1ZydTZucmw3QzhkOEJubVNXMjlEOUVIbDIySHh0TktHckZwY20yUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC90eXBlLzEzL05lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628868765),
('h4WKTOHl6nBG1kKC9ZI5CHcrKxOU57bHawd5bIXE', NULL, '54.36.149.77', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieVkwSHpOR2liM3ZuNmtSaTg1WURGMWZDQ1dMYTZoUzlhNWhaOW5scSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628858212),
('hFbXHPceiajnurHklvlxrfVQg7HDh4iL7IK1VE1L', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzkwYUw2Q2J0WUhrYTdkWXd4RkI5SWtGYkZyVjBTbDhwOFRwVzhqUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzExL01hY2FyYW1lcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854890),
('HgZJ6V1xO8q3oUCiaB44n7c46rEZ7awWlrZxBIDZ', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUh5b0FYNXl0eHpJRUdjOExDa0M5ZG85MW00MDFWaGczeUZ6T25pbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI5L2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628873848),
('hpDlKennVLscWuA00LGrRy0Ol7omzSNBaoN7tq3O', NULL, '66.249.75.108', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlV3dVVEcVBnRjhQREQ2MERGc1dnaDBWTVY2MU9BVXpyQU1PellRTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI3L0tpZHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628920960),
('hQwtyd5opJv4YE4AHW83dfyr0KfpojY1a3xqUHdw', NULL, '54.36.148.226', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaklzNmtNVzZNMnFHWFB4dGh1Z2IxblhkSkJVRWxmOTE5bVRINXl1byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjYvU29hcHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628923869),
('ibYHJ4S6V2S72gey9jm4ONY5jYfxaXXFX0Hu41iQ', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk0wMFQxU1d5WG9CYXozSHU0cWhGZkZQeEpIZ256N2o1cGVnQ3pkeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI2L1NvYXBzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854716),
('ijDluHukBNv5jYoMppY6LkrlZfAjyZb0KG5B4cEN', NULL, '54.36.148.208', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVlGTkJzdUdManNQd3pLMXI5WDJxYkg2N1p5eGhJaTQ2UGdidW9HMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTgvQm9va21hcmtzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628889073),
('IvkOs5qRP5MmEcJkhcHAaPq6AMIlZsXjc884y8pL', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOElORUtlUDdnNTZnbEViZmkydUxkYmpEYjh0Z3dFcHVaUWF5RWpZTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvcmVnaXN0ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854750),
('JcpKYHuqFQPNHEOLqjAONIE3dbvZE2pArLW4eWQH', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlRxQjVsMkUxY0hVQzVHVWY0OGlDVjhiUm51dGhRY3BLaUNUeDNObCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzIyL1NjcnVuY2hpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854910),
('jj4kmecyjz93gD2B57mlDWyRFFPJ4yKL0VLWwhEJ', NULL, '66.249.75.177', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEhKajVrVFRlMTdwRjYyRlhtZWpEQVNHTHh5Wm5EZEhuZ25Gd0FRcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC90eXBlLzI1L1B1cnNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628924558),
('JSBMsY6BceSWTvzUqxoCz1FjIBcnrXSXy0JlS2L2', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVJSektiQ1NzOGJDUzRLaU9ORTdUSFdxWjNiYXZOWmczQUxmazZPRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854726),
('jz9EGWkQa8i7YuAQBeqdrGBbLDpdRjRbhp7YQNwD', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekN0d25vZHg5cmhmRG5NZTBDdkdOUWtMcFRaRnZsOENRSld2WE9ZSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvZmFxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628918798),
('jZpIkqFiNYQrxRITDrLIqAqK78Wo3n23kkty6YEt', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRW1tTjlTSlNpajEycUpSMUY4T2c1QWxHSllLeGhiZ3l1MFRvVmxySiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI4L1dvbWVuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854837),
('kA4v9MmoQbrrMpoWs5WMqCME1blDw8RJjWGiUPEk', NULL, '2400:1a00:b1e0:a1bb:b46e:e4e:81b1:6f6d', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 200.1.0.20.118 (iPhone11,2; iOS 14_7_1; en_NP; en-NP; scale=3.00; 1125x2436; 310109037)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3ZVZWE4eDBLSG1ZQ2d4VzJocWdIRHBjNThQb0NSenk4cHhIaVQ2USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628919643),
('KE7lqhP9bX0dgHS3nL1GNK1RBYdBSEyBuiDznItB', NULL, '66.249.75.189', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTdnMTUyVFdVc0pwdTA2clJIRFlLaDh1dDJYcVJUTzZ5ZjJVdGJ5ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vYmxvZ2RldGFpbC81L3NpbmdsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628892831),
('kO3JFSEyhpcjIMS7zqMEQNKD467I5DziedlLn20a', NULL, '110.44.127.179', 'Mozilla/5.0 (Linux; Android 9; INE-LX2 Build/HUAWEIINE-LX2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.115 Mobile Safari/537.36 Instagram 198.0.0.32.120 Android (28/9; 480dpi; 1080x2128; HUAWEI; INE-LX2; HWINE; kirin710; en_GB; 307053317)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFhoczlsdkx6ekhpQUhQNEQ4SVA4d1JpTXdWa2RrNlByS2o0U3BVbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628866846),
('kQdEpQXPok9uSvlBjx8gVOjIOebcdcRh8aBlkm3p', NULL, '66.249.75.175', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmRZRExMeHgzRVdGNjFNUmJLZndFZWxuZ0NKQ2drYkdyd3M4VEU2eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC90eXBlLzEzL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628874032),
('ktliT20w5tCC4xmXtfvjQuLIx5lSRoNIThdW8Bnk', NULL, '66.249.75.177', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnphbUp6ZjUxSTNCSzFBQWd3OFJFa29xR0tDRTRPd0MyWGw5ZWFQcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC80L2NhdGVnb3J5JTIwNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628919518),
('KvqTXfYF1C681LcoVKEqBDtyoQd4VzkSQxiPFHO5', NULL, '34.213.48.113', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjFVQkhKNFZiMXJTQ3BMSlZWT2xDbHY1SERBT2Rpd1ZGOXpNOW5vaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628880226),
('kVs2XhMGOKo6UcOnK0OHhp0lTB8NiC8ZLN7p6uk4', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmhUdG1lYUNNWXB5azg5ZG9zVlF5bTUxM0pmU1Z2VWJZQk5jV2lKOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE5L2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628874629),
('lbNsSz4qYrMazhwcYx7NSwgLOSTfLoPRVIB95cX8', NULL, '66.249.75.177', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkRzNmpyT3dvRHoyVVlrMDZ0OHl2V1JCcHljWVU1N01PTTRKWWFncSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628924558),
('LpqzjTrG3tbL4hZ2gihI3q6pbXMeq6TbUj0HFbBl', NULL, '54.36.148.246', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGFLajBjQklhVUI3Z3NBREJqY0JwS3JWeWl5a2tPMjlWM1N4UE50cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTQvUmluZ3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628884286),
('ltIBMfmwLrSefD675TCpHVWlhkN1xpMowJ3Jkghf', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFJqbkpBYTNXcU44UXN4M0JwaUp5cEx5UWVPWnFMRFowMHU1Y2JOdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE2L0JyYWNlbGV0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854880),
('mGU4gPG5GR8OUP1JdB6E6ymB9IKXCProot34uEsN', NULL, '66.249.75.106', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnlmWktidW1zVjJ0bjJBTXpEZXdHbDJ4MDVWSkV1ZzdZMUFzM2VOaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE0L1JpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628917358),
('MjEWTkeqaGWo84tJ4vEUXpRjxkHPWh7pT8Rw5aj1', NULL, '54.36.148.99', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDFXVUpNQW1qamg3TzlRQmVTRHY2UWZBOHdUUUoxdmMyQnUwUHp4bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTEvTWFjYXJhbWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628878808),
('mRZqVj7FPs8DIxRYqdqGRXqZo25z97Ja8HCqYh4z', NULL, '110.44.127.179', 'Mozilla/5.0 (Linux; Android 9; INE-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.115 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2FjalFiVWIwclR0T1lRQjBPbXRKRXJFOGtQZHhJMHdYMmF2dXpQciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628863472),
('ndOBGCtC354B2dC88jLFwTXqsbYDSDnYsXie6hVS', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1RGbjdkMWVBbkd1RzQ3V0RSYThIUFByVGMyVVA2OU9pT1N3SkZhTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI0L0ZhY2UlMjBNYXNrcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854920),
('Nqw9lxhIRJCyeBj21eImzRvVkVuWo6SoEz36eUks', NULL, '110.44.127.179', 'Mozilla/5.0 (Linux; Android 9; INE-LX2 Build/HUAWEIINE-LX2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.115 Mobile Safari/537.36 Instagram 198.0.0.32.120 Android (28/9; 480dpi; 1080x2128; HUAWEI; INE-LX2; HWINE; kirin710; en_GB; 307053317)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN293NVJkazRnSUNsdWVRcFgxaXpxcUFRamtoRFNzZTFxdHdBTjduTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628860713),
('nr0vcjZ2IoL8GjYjFg3sx1UmOaJijiBOurY9NVqd', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWZWbWtLY0VhY3lKRlEyOW5qZ01nYWk0RUVaZ1lxbnFGMU9lNkMxZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzEwL0NvYXN0ZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854869),
('NZCyeD5UDvd5KWmhGuV2r9KaWs7YfdsyqIkhquQb', NULL, '2400:1a00:b011:5085:e0ef:b8e2:1e95:9218', 'Mozilla/5.0 (Linux; Android 9; moto g(6) plus Build/PPW29.116-16-30; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/325.0.0.16.118;]', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnJVYm04TEJmdFVJR25BY0RuOUxsbW1Hckt2M21sVGk4RWRJTUtwMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvdmVuZG9yL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628867093),
('o2qep5hPGei5nSaCoSbhoFQpY17xnczp6Gum1S5B', NULL, '36.252.91.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXpoa2RBUFM3a0ltVnNUb3RqQmtQZnp2QWVxTDNsc0tUTEJzd1NQeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0LzYvSG9tZSUyMCYlMjBMaXZpbmciO319', 1628923710),
('OD6qmIAL38FX83CudXlmlZnopNkWEZXAz5XNuCrq', NULL, '66.249.75.104', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFA5bGE5S1hyQjZZek9rdEQ5VTdBYVlINTVzU1FoWVVjQnRwS2R3dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzI4L2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628856502),
('of3MpTcql2dRbBIEcUZbrqvYwPF3EkPJ4MDqETkT', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaUtrVnBYVDh1SXFmbUZSZzNqdlpzOEdiSEpOTTVqbnUzTGNHUzlNUiI7czo1OiJzdGF0ZSI7czo0MDoidXJubUhPNDNDeGRWNUhESU9XMHEzbEJTN0FIN0NscHhkQnZMMXZQaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvYXV0aC9mYWNlYm9vayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628918438),
('OpjAdASN70L3tEeVtBrzGI1ND7ldpcQNfRymceKx', NULL, '54.36.148.192', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnVDZUZpRGdoR3I4bDA3cTNZTVdUaDhVOTJtVTkxdHVEVTl3UnlndCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTcvUGFpbnRpbmdzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628888554),
('p3K2tZNjAQBSp3pBa2kwDn0UNlCnnw9r81E4FWFa', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFhmQVU5VjhoSTVvUlFPeklpR2M1SVlKcGptMUNQUHFFbVMyVmE5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC8xL0Nsb3RoaW5ncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854793),
('p6GEH4JBiwwa9Vah9ea7uh2FEDBMWDJoYoCpKIZj', NULL, '66.249.75.187', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUNvWWZ6WWZHR1diNTJobjczZzNkWE1SZTBLSkg1VWozZVR0RDJpRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC8yL0JhdGglMjAmJTIwQmVhdXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628877632),
('pkrglxFwOjUiAh48Mx2f3kBA6XtXbErHElE7dGi0', NULL, '2a03:2880:22ff:74::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUJnRXpkb3ZCMzFkem5Cd1A1ajBVVko2VFdqR3phT0owa1BoUDBYTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628866783),
('pUy8ASQ1EDxI7fMdpQAqeN9wjbeTxDNa3iviV48c', NULL, '66.249.75.175', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3NuZ2lyczVmb3pqSG96aFlXcUc0eVZzZGxrY1VveWl2VmJDNWFWVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vYmxvZ2RldGFpbC81L3NpbmdsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628872806),
('PzEbV80oYuzR3sMcar1J0vWlLdHTkQU0DGmsyIbX', NULL, '54.36.148.201', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiekFjVE5hZlJ5dERLQjNueVFDQkVFdnQ1UVgyeUNhdFFhelRRRGRqYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cHM6Ly9rcmFmZnRib3guY29tL3dpc2hsaXN0L3N0b3JlLzE1Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS93aXNobGlzdC9zdG9yZS8xNSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628883765),
('QFTJkCcDnzZWI7Vr5wyvOjqSW1YJUxaEQ3wAicbK', NULL, '54.36.149.19', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2JYQzZFcXJvbzdXNWZTd2VMWVprSW03TFZkQ081NERFZ0c4d3FSaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjAvVG90ZSUyMEJhZ3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628895223),
('qGlpkMs7rArG3qWFhUxqtTdENxmPRXdwZJ08OPj3', NULL, '66.249.75.189', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU245QTRFaHJUTXQ3aUJraXlwTWxoMXJjTGtPNUcyQ0V3MXBTbGRlTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628856402),
('QXgUOSCglnalUp62jbrKqK7xPE4b2J8gZrsO5XIf', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlFFaUQ3U1JZZUYzVVlod254OUhyRnd1WFRSaTlIZ1I1MkFRNk5JaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wcm9kdWN0LzIvUHJvZHVjdDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628921678),
('r0RQtVrO8LbSdwxqy4Ay5tHhMd96Nmfh4NO9Ovkh', NULL, '54.36.148.165', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUFocHYzUlNUa0NseUR4cHpDYzJicFIzN3NONE1RRlJkVTR5WDNadSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628892357),
('rbGsttxT7DBrrWtSxH9wsmLNSGJVRoYpiZVFEgF9', NULL, '66.249.75.185', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXZLc3NvQk5ueVRWcG1SOWxsYmtTRGJtVW93bThwSFJPNG1QTTRyRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628868667),
('RstuqaK810ZtSyfK9nqsYJBQBqw5I2sDMpajje1H', NULL, '52.10.21.24', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienQ5NGdSd210OHd4alZ6RG5BdW94YjdlTEtKNnhIMXRPTUYxOGFkZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628880933),
('rzwWajNZ8b0OvbrGJ0kflz3TBuUEs5tm8PLy3n58', NULL, '93.158.161.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk42cWJCcEhvVUdnWHgxbGptNm12VnpCejNCYWJaT0MyQVUwblNSSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628893808),
('S0i3LKlBv2XOoBZ3VVGmzUUG1FHDF8d7SxM7REKA', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2k1TXNsYmNpSUgxYUN0cnZQSHp2VGdFSWg5cjlSZkVYcGhSNTI0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzE5L011Z3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854826),
('S2bb6dYk8VHbcP05ipHBSY3i6Ve3uP6t8w5KPrB1', NULL, '66.249.75.104', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUIyWmZVWWpFd2pFSWJoZXprWUIwNUVEM3Z2SkJIQVZQREY5T0Q3USI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cHM6Ly9rcmFmZnRib3guY29tL29yZGVycy9saXN0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628870434),
('SLla4KiFjawkHtdQsiZQ0dJzy8JnCfl4AGvRL77x', NULL, '54.36.148.187', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnpxSXN1ejliMDUxV3RMRHpKanRBQVNEemw5c0ozNnZ4R1pwV0ljYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjkvTWVuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628887644),
('sOAXehB9PfSeAGjcvY0V9TpiaYfiNnn8DDr8ZMQw', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOU45aWlUNGkzbkRFNkFWWEg0QXYzcHpEZVEwNUJ3OHJvTGZFVm9GMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC8xL2FsbHByb2R1Y3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854805);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SpIVOVIsbxpktCVaD7Sqfx82cNYf5npCCpCiKbVj', NULL, '66.249.75.175', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXBKNlRpdzdyZzJYZUFKdFlFNnBiUjdud0JHQ0JpMmFTNGRXcFBSNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vcHJvZHVjdC8xOS9hZnNkZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628866832),
('SteYSXwyqMxVpkDgLhfQsoRkSDPGiYPyKHd4uHIh', NULL, '93.158.161.10', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHNpanp0ak45ekt1bVcwOXlSZnB2am9XczBZVWM5ZnZhZlpRTjF6bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628893787),
('T3qmnFfBQyrChYERQEDroZVNka4mmWDz9PeLHoDy', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzlpTEo3dHhUY3lDWm9pSld3Z2VQSjd6VlNEZXFjb1U2MWRic2JZbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wcm9kdWN0LzE3L3NkZmRmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628849142),
('tbFOHjznGQbeRvSIQBDD75K0XsjRy9S9GMZe3gf4', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmt6WUhLb0padEhVTURub1hjUURuSmg5S2NiQnNQVDRWV20xNWFFbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvdmVuZG9yL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854782),
('tIQUWjLYRf9d6FYjjM82MvOAS1PTLUhnqXoCVW3J', NULL, '36.252.60.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3VUWXZ6M3dMNXNHc25weU94MTBFOVh2TGx6YUpOSW5tUHFNMUZ6eSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628848728),
('uKfbficjFnVLljNJITJxuoBYyd3rYKFI6fBg7xW1', NULL, '54.36.149.64', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUm1NRjkxa0JaNFlITGNEQXhKbzhHb3NheDhhR0JITWhGcXJFSWtIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMjQvRmFjZSUyME1hc2tzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628915437),
('usWzSUHABm7R1yZJ25cHrazu9yvuIxJynWDolFnH', NULL, '2a03:2880:13ff:c::face:b00c', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkt1WFZ3MTZHZ0syTWpQcE1JY2RsVlNQQkVxSFBRRFFiRmU4NnlmSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9rcmFmZnRib3guY29tL2NvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628919319),
('uxlUeyXfhtG8bTnOBUJW2WBX8yBq1oqi1n8c6uwC', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGd1c0VhUHlTWTVWSHg4Smk5SnJsWEZaRU1SMTNNTllMMUVkaEFmSyI7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwczovL2tyYWZmdGJveC5jb20vcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628923117),
('uy4iJ4sl0pAG5JPAoTSECFeComs0YU6tM8ZHxmNm', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmhFWEU3WHdQYkF4WWFBdTJoNnZvVXB6UllVNGZxT21ua1BqMDBmZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzEwL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628917717),
('vK3WF7yBquS9FlGiYL4aCmsvHKcehOzDoZpcWG59', NULL, '66.249.75.104', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2hkaWxQSzNhdEJtWVlSNUd2VWdJU2NSR1luekJOeWNSc3VCbmhDMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzMwL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628917360),
('VKFbrHlHURWrXcwo9yHnn5PjrJtJWIiGKqzHJ5Yj', NULL, '54.36.148.141', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFE3dTE0ZlhTbEtFaUNSUXR1dTFMNzlHR2EzNTJxQU1BaWFxNEtzUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTMvTmVja2xhY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628881342),
('vUF8u6ExAIUPpVSZ6XKNfKlgyTC1iFx0ewe38l6J', NULL, '27.34.19.4', 'Mozilla/5.0 (Linux; Android 9; ONEPLUS A3003 Build/PKQ1.181203.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36 [FB_IAB/Orca-Android;FBAV/324.0.0.15.119;]', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWlMc1N0cHE4QVhxQ0hnYU84RUNWeFdOb1k5eXFMMFhHQWpRamx2YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628867365),
('w1tKYvWq3zMEHtSMHrMFjU7U8wDpMYAhzmJtHo5Z', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnZCbDJXYTgxdnlVYWlFN1dsMUpMNGtKQXNpMTRNQXYyck5keVBPVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzMwL1VuaXNleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628854848),
('W9qG7D2s8991GByF1pntUzrHznF31uuI1iXURwgS', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZTZPcHdSVHVVMzJKRVNkN0tZRDk2aUJ1a2x6c0JwZzVJTmk5cnZtMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cHM6Ly9rcmFmZnRib3guY29tL3B1YmxpYy9wcm9maWxlIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854738),
('WUVpwdIckg8dMbkyiJiaDqBOj4oJ5YXrgouXaSgG', NULL, '66.249.75.177', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2R5aTg0U2RUdFRseVIyNmZSNnVHTjJUamVLSHkzckJHUkJpVnFobiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC90eXBlLzEzL05lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628865165),
('WVNh9Iz8bPDXXTiXJHdROS60BUTc4B19RxSuj5Br', NULL, '66.249.75.189', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0t3SW9iSDBBSmlXTndKSXVjR0NXWjJEdGdld1kzTlJWQWFvNkN4MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20vc3RvcmUvcHJvZHVjdC8yL0JhdGglMjAmJTIwQmVhdXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628918079),
('wxKxG9IuNcaE319kPK7rFZM5x7nbVMgWVKFfX5vO', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakVPQ2h3TjE1SUIwU3NTR3FmcGYydHpMZklSZ1hUVEhKZXo1TXFXVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzEzL05lY2tsYWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628854859),
('x00P16OwcgEpFO11fmf54e1WYfFUtNIhHr7xSthL', NULL, '110.44.121.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0JkVjE0Y3FXS2lQVzJwc0pnR1NFcUk2eFVUWnhEaURRanFoYmx5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628918344),
('Xd3LvOJJ18zWnGEA6uZiX0Fbt6BDgp6B3cJo8F4B', NULL, '54.36.148.211', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUVQNU1uWmgzRmNZVjdFbjdKcWE4cEkyU0k0T2xCN01Cc0VKbHhFSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTYvQnJhY2VsZXRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628886681),
('XxtPe9bC4pbbHz2DZ5g28MYs4TGeHWhWVec0rnIM', NULL, '103.225.244.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibzVTSWRvNk5Qc09ia25oQUk5V3pzU2hPOE10aXJhREhVTUZScndvQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628923592),
('Yj2gh2GzzMlQ6RMtoGarBr3CfYDWDXtgszLTpAXa', NULL, '66.249.75.114', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTJud2pFR1BJOVFUN2J4Z0JHbnU5NEUyVDUyTlNLT2FMd0tkbXJ6TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzExL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628861499),
('Yldyw3P357STDj64y4PLQnzFco4nQvsCY59xmweG', NULL, '66.249.75.189', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjFJNnN1cWU2dWM5YjEyS0h4OFlId21QOTVYRlcxNVNOeFNyNEpaTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LmtyYWZmdGJveC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628870466),
('Ysn7MUnKn1Ghzwnn4qo1RdZqHpCGSwUsgD1rncRr', NULL, '54.36.148.105', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU1hTXdUVG1DQW1lSGhiamdTYjhNczUydEFDMTVIRjBGdXFEQ1Y3VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTAvQ29hc3RlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628877438),
('yXckSe4SpSyO5NDKn6wjBjjFf60ctAVaY0oNbrBp', NULL, '110.44.127.179', 'Mozilla/5.0 (Linux; Android 9; INE-LX2 Build/HUAWEIINE-LX2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.115 Mobile Safari/537.36 Instagram 198.0.0.32.120 Android (28/9; 480dpi; 1080x2128; HUAWEI; INE-LX2; HWINE; kirin710; en_GB; 307053317)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjJHWUNMVlJXTzBQM2E4eTYxRmVKTXlzaEx1VUQzMWViM0dwMUNSbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628869570),
('z24o1WCdwHdUEL5OwyC5gdYjBb7Yy1gleZCHi2W1', NULL, '66.249.75.110', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3BQbXRuS3h5TXh3bzFHbGNJQjhVTzQ3VU1DeGpVRG5qVVJWaU9jbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628854602),
('ZHqiyMTweJeXGBimDFQwzhUYlzeoBs1GKQAAMXNy', NULL, '66.249.75.112', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.119 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaDdJVlFCY21raGRuMzlrQ2dvTGtaWUFnS2huN3RnOHhyTWdJU2hIWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9wdWJsaWMvc3RvcmUvcHJvZHVjdC90eXBlLzEzL2VzZXdhLmNvbS5ucCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628855951),
('zvhQfAINCKdOrZXy2sC9XxCCcCQRcD8Kktx276h2', NULL, '54.36.148.22', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0RnZmhBRmxGUkdIYVJieFVKYlZoNllaM0V1aloxZm11aFJVT0tFciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8va3JhZmZ0Ym94LmNvbS9zdG9yZS9wcm9kdWN0L3R5cGUvMTUvRWFycmluZ3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1628885290);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopreviews`
--

CREATE TABLE `shopreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_galleries`
--

CREATE TABLE `shop_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory`, `image`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Coasters', NULL, 6, 1, '2021-07-29 13:29:54', '2021-07-29 13:29:54'),
(11, 'Macarames', NULL, 6, 1, '2021-07-29 13:30:05', '2021-07-29 13:30:05'),
(12, 'Fragrance Candles', NULL, 6, 1, '2021-07-29 13:30:13', '2021-07-29 13:30:13'),
(13, 'Necklace', NULL, 5, 1, '2021-07-29 13:30:21', '2021-07-29 13:30:21'),
(14, 'Rings', NULL, 5, 1, '2021-07-29 13:30:28', '2021-07-29 13:30:28'),
(15, 'Earrings', NULL, 5, 1, '2021-07-29 13:30:34', '2021-07-29 13:30:34'),
(16, 'Bracelets', NULL, 5, 1, '2021-07-29 13:30:41', '2021-07-29 13:30:41'),
(17, 'Paintings', NULL, 4, 1, '2021-07-29 13:30:58', '2021-07-29 13:30:58'),
(18, 'Bookmarks', NULL, 4, 1, '2021-07-29 13:31:05', '2021-07-29 13:31:05'),
(19, 'Mugs', NULL, 4, 1, '2021-07-29 13:31:12', '2021-07-29 13:31:12'),
(20, 'Tote Bags', NULL, 3, 1, '2021-07-29 13:31:19', '2021-07-29 13:31:19'),
(21, 'Keyrings', NULL, 3, 1, '2021-07-29 13:31:26', '2021-07-29 13:31:26'),
(22, 'Scrunchies', NULL, 3, 1, '2021-07-29 13:31:38', '2021-07-29 13:31:38'),
(23, 'Bandanas', NULL, 3, 1, '2021-07-29 13:31:47', '2021-07-29 13:31:47'),
(24, 'Face Masks', NULL, 3, 1, '2021-07-29 13:31:54', '2021-07-29 13:31:54'),
(25, 'Purses', NULL, 3, 1, '2021-07-29 13:32:02', '2021-07-29 13:32:02'),
(26, 'Soaps', NULL, 2, 1, '2021-07-29 13:32:10', '2021-07-29 13:32:10'),
(27, 'Kids', NULL, 1, 1, '2021-07-29 13:32:20', '2021-07-29 13:32:20'),
(28, 'Women', NULL, 1, 1, '2021-07-29 13:32:27', '2021-07-29 13:32:27'),
(29, 'Men', NULL, 1, 1, '2021-07-29 13:32:34', '2021-07-29 13:32:34'),
(30, 'Unisex', NULL, 1, 1, '2021-07-29 13:32:41', '2021-07-29 13:32:41'),
(31, 'Hand Cream', NULL, 2, 1, '2021-08-06 11:54:28', '2021-08-06 11:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Isvendor` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_pan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership` int(11) DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `Isvendor`, `company_name`, `company_pan`, `company_address`, `company_state`, `remember_token`, `current_team_id`, `profile_photo_path`, `membership`, `google_id`, `facebook_id`, `status`, `created_at`, `updated_at`) VALUES
(99, 'Ashok Mehta', 'ashokmehta123y@gmail.com', NULL, NULL, 'eyJpdiI6ImhIc1loZTQrVVVkb1hCSjQzV2wyK2c9PSIsInZhbHVlIjoidXVxcDZpYU4xdlBJOVRSM0VYR2t5aE5TWjl6WnlCU2YzUlR4Y0Zvd2t0dz0iLCJtYWMiOiIzNzQwNmVmNWEwMDEwMDY5NTA5OWE2NTVkNjc4MTMxZDlkODUwNTk1MmY3Njg2YjY0MjQwZTBkZmE2ZGFmMmYwIn0=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '116235488158872079039', NULL, 1, '2021-08-13 03:53:23', '2021-08-13 03:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `vendorcoupons`
--

CREATE TABLE `vendorcoupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `expire_at` date NOT NULL,
  `Isapproved` int(11) DEFAULT NULL,
  `card_value` double(8,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendorcoupons`
--

INSERT INTO `vendorcoupons` (`id`, `vendor_id`, `coupon`, `price`, `expire_at`, `Isapproved`, `card_value`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'coupon1', 5.00, '2021-06-30', 1, 500.00, 'upload/coupon/vendor/450050615Coupon.jpg', '1', '2021-05-30 00:09:42', '2021-06-26 06:23:52'),
(2, 1, 'KB2', 100.00, '2021-07-08', 2, 1.00, NULL, '1', '2021-06-29 21:08:13', '2021-06-29 22:15:29'),
(3, 1, 'KB3', 10.00, '2021-07-09', 1, 1.00, NULL, '1', '2021-06-29 21:13:37', '2021-06-29 21:14:13'),
(4, 1, '123', 5.00, '2021-07-09', 1, NULL, NULL, '1', '2021-07-02 16:07:37', '2021-07-02 16:08:36'),
(5, 41, 'test', 5.00, '2021-07-15', 1, NULL, NULL, '1', '2021-07-09 01:59:29', '2021-07-09 02:00:54'),
(6, 1, 'Coupon', 10.00, '2021-07-24', 1, NULL, NULL, '1', '2021-07-09 09:11:55', '2021-07-09 09:13:19'),
(7, 41, 'supercoupon', 5.00, '2021-07-30', 1, NULL, NULL, '1', '2021-07-09 13:28:41', '2021-07-09 13:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `vendortotals`
--

CREATE TABLE `vendortotals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendortotals`
--

INSERT INTO `vendortotals` (`id`, `date`, `vendor_id`, `total`, `created_at`, `updated_at`) VALUES
(2, '2021-06-27', 1, 500, '2021-06-26 22:36:21', '2021-06-26 22:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comission` float NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `shipping_charge` float NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `comission`, `title`, `descr`, `keyword`, `url`, `tax`, `shipping_charge`, `image`, `phone1`, `email1`, `address1`, `facebook1`, `twitter1`, `instagram1`, `other1`, `phone2`, `email2`, `address2`, `facebook2`, `twitter2`, `instagram2`, `other2`, `created_at`, `updated_at`) VALUES
(1, 10, 'Krafftbox - Online Shop for handmade, custom and unique items in Nepal.', 'Krafftbox is a marketplace for handmade and personalized items. Shop & connect with creative makers and individual sellers on Krafftbox.', 'Nepal\'s Online Handmade Shopping Platform - Krafftbox', 'https://krafftbox.com/', NULL, 50, 'upload/setting/logo/52183714seeting.png', '9818212439', 'info@krafftbox.com', 'Kathmandu, Nepal', 'https://www.facebook.com/Krafftbox', NULL, 'https://www.instagram.com/thekrafftbox/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-13 13:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(12, 32, 5, '2021-07-02 01:08:08', '2021-07-02 01:08:08'),
(13, 32, 7, '2021-07-02 03:24:15', '2021-07-02 03:24:15'),
(20, 36, 5, '2021-07-02 14:58:19', '2021-07-02 14:58:19'),
(36, 42, 2, '2021-07-06 02:49:27', '2021-07-06 02:49:27'),
(37, 62, 4, '2021-07-06 02:52:28', '2021-07-06 02:52:28'),
(38, 64, 4, '2021-07-06 03:00:15', '2021-07-06 03:00:15'),
(39, 83, 4, '2021-07-08 02:31:22', '2021-07-08 02:31:22'),
(45, 1, 26, '2021-07-15 19:10:47', '2021-07-15 19:10:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advertisments`
--
ALTER TABLE `advertisments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactvendors`
--
ALTER TABLE `contactvendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcustomizes`
--
ALTER TABLE `productcustomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreports`
--
ALTER TABLE `productreports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productvariations`
--
ALTER TABLE `productvariations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopreviews`
--
ALTER TABLE `shopreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_galleries`
--
ALTER TABLE `shop_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendorcoupons`
--
ALTER TABLE `vendorcoupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendortotals`
--
ALTER TABLE `vendortotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisments`
--
ALTER TABLE `advertisments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactvendors`
--
ALTER TABLE `contactvendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productcustomizes`
--
ALTER TABLE `productcustomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `productreports`
--
ALTER TABLE `productreports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `productvariations`
--
ALTER TABLE `productvariations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `shopreviews`
--
ALTER TABLE `shopreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shop_galleries`
--
ALTER TABLE `shop_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `vendorcoupons`
--
ALTER TABLE `vendorcoupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendortotals`
--
ALTER TABLE `vendortotals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
