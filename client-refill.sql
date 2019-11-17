-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2019 at 12:04 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `client-refill`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank__details`
--

CREATE TABLE `bank__details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acct_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bid_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount_bid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `weeks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owners_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `proposal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `bid_id`, `project_id`, `user_id`, `amount_bid`, `status`, `date`, `time`, `created_at`, `updated_at`, `weeks`, `owners_id`, `viewed`, `proposal`, `image`) VALUES
(6, '239904', '237049', 698950, '30000', 'Awaiting acceptance', '2019-10-02', '13-24-05', '2019-10-02 12:24:06', '2019-10-19 20:36:37', '2 weeks', '335744', '1', 'I can do the job for you', NULL),
(7, '573606', '816367', 335744, '30000', 'Accepted', '2019-10-02', '13-31-07', '2019-10-02 12:31:07', '2019-10-09 14:54:14', '1 week', '698950', '1', 'I can do the job for you', '1_WIN_20180713_18_13_13_Pro.jpg\r\n'),
(8, '991674', '816367', 335744, '30000', 'Accepted', '2019-10-06', '23-12-09', '2019-10-06 22:12:09', '2019-10-08 15:38:00', '1 day', '698950', '1', 'I can do the job for you', '1_WIN_20180713_18_13_13_Pro.jpg\r\n'),
(9, '069764', '816367', 335744, '40000', 'Awaiting acceptance', '2019-10-06', '23-15-45', '2019-10-06 22:15:45', '2019-10-09 16:57:46', '1 day', '698950', '1', 'I can do the job for you', '1_WIN_20180713_18_13_13_Pro.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, '23467', 'job', '2019-09-24 03:15:13', '2019-09-24 03:15:13'),
(2, '67525', 'product', '2019-09-24 03:15:13', '2019-09-24 03:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `credit_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_unit` mediumint(100) NOT NULL,
  `unit_charge` mediumint(100) NOT NULL,
  `vat` mediumint(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `credit_id`, `credit_unit`, `unit_charge`, `vat`, `created_at`, `updated_at`) VALUES
(1, '782376', 50, 100, 5, '2019-10-13 05:28:36', '2019-10-13 05:28:36'),
(2, '346735', 100, 100, 5, '2019-10-13 05:28:36', '2019-10-13 05:28:36'),
(3, '8374673', 150, 100, 5, '2019-10-13 04:28:22', '2019-10-13 04:28:22'),
(4, '465747', 200, 100, 5, '2019-10-13 04:28:22', '2019-10-13 04:28:22'),
(5, '23456', 250, 100, 5, '2019-10-13 07:31:20', '2019-10-13 07:31:20'),
(6, '	\r\n346573', 300, 100, 5, '2019-10-13 07:31:20', '2019-10-13 07:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_per` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobcategories`
--

CREATE TABLE `jobcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobcategories`
--

INSERT INTO `jobcategories` (`id`, `catname`, `cat_type`, `created_at`, `updated_at`) VALUES
(1, 'Advertising&Marketing', 'jobs', '2019-09-24 10:36:11', '2019-09-24 10:36:11'),
(2, 'Agriculture,Fishing&Forestry', 'jobs', '2019-09-24 10:36:11', '2019-09-24 10:36:11'),
(3, 'Art&Design', 'jobs', '2019-09-24 10:39:31', '2019-09-24 10:39:31'),
(4, 'Automotive&Aviation', 'jobs', '2019-09-24 10:39:31', '2019-09-24 10:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `no_bids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `ad_id`, `user_id`, `no_bids`, `ad_name`, `ad_description`, `skills_required`, `category`, `price_range`, `status`, `state`, `location`, `date`, `time`, `created_at`, `updated_at`, `new`) VALUES
(1, '237049', 335744, '2', 'Second test', 'A build a second post', 'nodejs, PHP', 'Advertising&Marketing', '20000-40000', 'Awarded', 'lagos', 'lagos', '20190924', '104918', '2019-09-24 09:49:18', '2019-09-24 09:49:18', '0'),
(2, '772632', 335744, '0', 'Third test', 'Building a new app', 'Vuejs, Nodejs', 'subcategory', '60000-80000', 'open', 'lagos', 'lagos', '20190924', '105129', '2019-09-24 09:51:29', '2019-09-24 09:51:29', '0'),
(3, '174278', 335744, '3', 'Another post', 'another project in this category', 'PHP,Laravel,Vuejs', 'Advertising&Marketing', '60000-80000', 'Awarded', 'lagos', 'lagos', '20190924', '224627', '2019-09-24 21:46:27', '2019-09-24 21:46:27', '0'),
(4, '936297', 698950, '0', 'New post', 'new post', 'php,laravel,Java', 'Advertising&Marketing', '3000-4000', 'open', 'lagos', 'lagos', '20190929', '220551', '2019-09-29 21:05:51', '2019-09-29 21:05:51', '0'),
(5, '638112', 698950, '0', 'New post', 'new post', 'php, laravel', 'Art&Design', '2000-3000', 'open', 'lagos', 'lagos', '20190929', '220838', '2019-09-29 21:08:38', '2019-09-29 21:08:38', '0'),
(6, '185726', 698950, '0', 'New post new', 'new post made today', 'php, laravel', 'Art&Design', '4000-6000', 'open', 'lagos', 'lagos', '20190929', '221022', '2019-09-29 21:10:22', '2019-09-29 21:10:22', '0'),
(7, '499595', 698950, '0', 'Something new', 'Something new', 'php,php,php', 'Advertising&Marketing', '5000 8000', 'open', 'lagos', 'ikeja', '2019-11-04', '17-39-56', '2019-11-04 16:39:56', '2019-11-04 16:39:56', '0'),
(8, '773080', 698950, '0', 'Wewew', 'Tell me something', 'php,laravel,vuejs', 'Art&Design', '6000 - 7000', 'open', 'lagos', 'ikeja', '2019-11-04', '18-11-51', '2019-11-04 17:11:51', '2019-11-04 17:11:51', '0');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_16_083604_create_jobcategories_table', 1),
(5, '2019_09_16_085706_create_jobs_table', 1),
(6, '2019_09_16_085839_create_productcategories_table', 1),
(7, '2019_09_16_085932_create_bank__details_table', 1),
(8, '2019_09_16_090351_create_categories_table', 1),
(9, '2019_09_16_090437_create_credits_table', 1),
(10, '2019_09_16_090722_create_invoices_table', 1),
(11, '2019_09_16_090758_create_products_table', 1),
(12, '2019_09_16_090852_create_price_ranges_table', 1),
(13, '2019_09_16_090943_create_subscriptions_table', 1),
(14, '2019_09_16_091033_create_bids_table', 1),
(15, '2019_09_16_131151_add_access_to_users_table', 1),
(16, '2019_09_18_170754_add_first_name_to_users_table', 1),
(17, '2019_09_18_171430_add_last_name_to_users_table', 1),
(18, '2019_09_18_171711_add_middle_name_to_users_table', 1),
(19, '2019_09_18_171908_add_gender_to_users_table', 1),
(20, '2019_09_18_172458_add_phone_to_users_table', 1),
(21, '2019_09_18_172939_add_total_bids_to_users_table', 1),
(22, '2019_09_18_181135_add_plan_to_users_table', 1),
(23, '2019_09_18_181206_add_country_to_users_table', 1),
(24, '2019_09_18_181254_add_state_to_users_table', 1),
(25, '2019_09_18_181321_add_location_to_users_table', 1),
(26, '2019_09_18_192445_add_address_to_users_table', 1),
(27, '2019_09_18_192743_add_profile_pic_to_users_table', 1),
(28, '2019_09_19_035137_add_verified_email_to_users_table', 1),
(29, '2019_09_25_113726_add_weeks_to_bids_table', 2),
(30, '2019_09_25_153117_add_verification_code_to_users_table', 3),
(31, '2019_09_30_013659_add_state_to_products_table', 4),
(32, '2019_09_30_014106_add_location_to_products_table', 4),
(33, '2019_10_01_001057_create_projects_table', 5),
(34, '2019_10_01_165043_create_notifications_table', 6),
(35, '2019_10_01_204925_add_owners_id_to_bids_table', 6),
(36, '2019_10_02_085803_add_new_to_jobs_table', 7),
(37, '2019_10_02_092653_add_viewed_to_bids_table', 7),
(38, '2019_10_06_220048_add_proposal_to_bids_table', 8),
(39, '2019_10_08_143058_add_projectowner_id_to_projects_table', 9),
(40, '2019_10_08_151540_add_project_desc_to_projects_table', 9),
(41, '2019_10_08_151713_add_budget_to_projects_table', 9),
(42, '2019_10_08_152220_add_pay_amount_to_projects_table', 9),
(43, '2019_10_08_152358_add_project_length_to_projects_table', 9),
(44, '2019_10_08_152448_add_tools_required_to_projects_table', 9),
(45, '2019_10_09_122833_add_image_to_bids_table', 10),
(46, '2019_10_19_111340_create_notifications_table', 11),
(47, '2019_10_23_185301_add_skills_to_table_users', 12),
(48, '2019_10_27_145044_create_states_table', 13),
(49, '2019_10_27_145514_add_status_to_table_users', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receivers_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `receivers_id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('020d7aae-553b-4f1d-924c-9995bc023493', NULL, 'App\\Notifications\\notifyUser', 'App\\User', 1, '{\"url\":\"\\/dashboard\\/myproposals\",\"receiver\":335744,\"content\":\"Your bid as been accepted by the employer\"}', NULL, '2019-10-19 20:30:55', '2019-10-19 20:30:55'),
('04c622db-7c75-4303-8a2b-0dea94c0c54f', NULL, 'App\\Notifications\\userRegistered', 'App\\User', 1, '{\"data\":\"A new user just registered on client refil\"}', NULL, '2019-10-19 19:33:05', '2019-10-19 19:33:05'),
('09043a45-8ee8-4c8a-b645-038b521f13eb', NULL, 'App\\Notifications\\userRegistered', 'App\\User', 1, '{\"receiver\":{\"id\":1,\"user_id\":335744,\"name\":null,\"email\":\"uchennaanih26@gmail.com\",\"provider\":null,\"provider_id\":null,\"email_verified_at\":null,\"created_at\":\"2019-09-24 03:47:30\",\"updated_at\":\"2019-10-02 13:31:07\",\"access\":\"admin\",\"first_name\":\"James\",\"last_name\":\"james\",\"middle_name\":\"law\",\"gender\":\"Male\",\"phone\":8131957834,\"total_bids\":\"2\",\"plan\":\"free\",\"country\":\"nigeria\",\"state\":\"lagos\",\"location\":\"lagos\",\"address\":\"ikeja\",\"profile_pic\":\"1_WIN_20180713_18_13_13_Pro.jpg\",\"verified_email\":1,\"verification_code\":\"\"}}', NULL, '2019-10-19 20:03:17', '2019-10-19 20:03:17'),
('16ce0d68-8514-4586-91b9-ab5d6504d0b9', NULL, 'App\\Notifications\\notifyUser', 'App\\User', 7, '{\"url\":\"\\/dashboard\\/myproposals\",\"receiver\":698950,\"content\":\"A new project as started\"}', NULL, '2019-10-19 20:41:42', '2019-10-19 20:41:42'),
('1fbaceb3-f920-461c-8917-2ae7263d0a62', NULL, 'App\\Notifications\\notifyUser', 'App\\User', 7, '{\"url\":\"\\/dashboard\\/myproposals\",\"receiver\":698950,\"content\":\"A new project as started\"}', NULL, '2019-10-19 20:36:37', '2019-10-19 20:36:37'),
('2ea22fa8-7e6e-4406-acf7-4fdb85733cf9', NULL, 'App\\Notifications\\notifyUser', 'App\\User', 7, '{\"url\":\"\\/dashboard\\/myproposals\",\"receiver\":698950,\"content\":\"A new project as started\"}', NULL, '2019-10-19 20:42:49', '2019-10-19 20:42:49'),
('5b541816-1e7a-4b97-9aee-f8de9b8eee19', NULL, 'App\\Notifications\\userRegistered', 'App\\User', 1, '{\"receiver\":\"admin\"}', NULL, '2019-10-19 20:06:10', '2019-10-19 20:06:10'),
('cfef405f-7f32-4bd3-a71e-86f03eb9ad9f', NULL, 'App\\Notifications\\notifyUser', 'App\\User', 1, '{\"url\":\"\\/dashboard\\/myproposals\",\"receiver\":335744,\"content\":\"Your bid as been accepted by the employer\"}', NULL, '2019-10-19 20:30:56', '2019-10-19 20:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_ranges`
--

CREATE TABLE `price_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_ranges` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_ranges`
--

INSERT INTO `price_ranges` (`id`, `price_ranges`, `created_at`, `updated_at`) VALUES
(1, '20000-40000', '2019-09-24 10:43:46', '2019-09-24 10:43:46'),
(2, '60000-80000', '2019-09-24 10:43:46', '2019-09-24 10:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `catname`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2019-09-24 03:15:13', '2019-09-24 03:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `no_bids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ad_id`, `user_id`, `no_bids`, `category`, `ad_name`, `ad_description`, `file_link`, `price`, `created_at`, `updated_at`, `state`, `location`) VALUES
(1, '666915', 335744, '0', 'Electronics', 'Test post', 'testing', '5d899358bfc9f_WIN_20180710_14_39_02_Pro.jpg,5d899358bfcac_WIN_20180719_16_09_45_Pro.jpg', '2000', '2019-09-24 02:54:00', '2019-09-24 02:54:00', 'lagos', 'ikeja'),
(9, '772034', 698950, '0', 'Electronics', 'New post test', 'new post', '2019-09-300698950.jpg', '4000', '2019-09-30 02:10:20', '2019-09-30 02:10:20', 'lagos', 'ikeja'),
(10, '782892', 698950, '0', 'Electronics', 'Another post new', 'new something', '2019-09-300698950.jpg,2019-09-301698950.jpg,2019-09-302698950.jpg', '5000 ', '2019-09-30 02:20:24', '2019-09-30 02:20:24', 'lagos', 'ikeja'),
(11, '936190', 698950, '0', 'Electronics', 'Product something', 'something', '2019-11-040698950.jpg,2019-11-041698950.jpg', '5000', '2019-11-04 17:22:15', '2019-11-04 17:22:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `projectowner_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_length` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tools_required` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `project_id`, `user_id`, `job_id`, `status`, `created_at`, `updated_at`, `projectowner_id`, `project_desc`, `budget`, `pay_amount`, `project_length`, `tools_required`) VALUES
(1, 'Second test', '091446', '698950', '237049', 'completed', '2019-10-09 18:31:28', '2019-10-09 18:31:28', '335744', 'A build a second post', '20000-40000', '40000', '1 day', 'nodejs, PHP'),
(2, 'Another post', '503273', '698950', '174278', 'in progress', '2019-10-09 18:38:33', '2019-10-09 18:38:33', '335744', 'another project in this category', '60000-80000', '60000', '1 days', 'PHP,Laravel,Vuejs'),
(3, 'Second test', '986261', '698950', '237049', 'complete', '2019-10-11 14:45:53', '2019-10-12 17:14:34', '335744', 'A build a second post', '20000-40000', '30000', '2 weeks', 'nodejs, PHP'),
(4, 'Another post', '316736', '698950', '174278', 'complete', '2019-10-11 14:50:21', '2019-10-12 17:06:15', '335744', 'another project in this category', '60000-80000', '60000', '1 days', 'PHP,Laravel,Vuejs'),
(5, 'Second test', '715067', '698950', '237049', 'completed', '2019-10-13 08:14:50', '2019-10-13 16:45:47', '335744', 'A build a second post', '20000-40000', '30000', '2 weeks', 'nodejs, PHP');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Lagos', 'lagos', '2019-10-27 03:07:03', '2019-10-27 03:07:03'),
(2, 'Jos', 'jos', '2019-10-27 03:07:03', '2019-10-27 03:07:03'),
(3, 'Enugu', 'Enugu', '2019-10-27 03:07:03', '2019-10-27 03:07:03'),
(4, 'Anambra', 'Anambra', '2019-10-27 03:07:03', '2019-10-27 03:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `sub_id`, `sub_name`, `ad`, `credit`, `bid`, `vat`, `status`, `created_at`, `updated_at`) VALUES
(1, '234567', 'Daily', '5', '2,000', '', '55', 'open', '2019-10-13 05:23:18', '2019-10-13 05:23:18'),
(2, '543627', 'Weekly', '10', '3,000', '10', '5', '	\r\nopen', '2019-10-13 05:23:18', '2019-10-13 05:23:18'),
(3, '689765', 'Monthly', '15', '5,000', '	\r\n20', '	\r\n5', 'open', '2019-10-13 05:23:18', '2019-10-13 05:23:18'),
(4, '765676', '6 months', '20', '9,000', '20', '5', 'open', '2019-10-13 05:23:18', '2019-10-13 05:23:18'),
(5, '235675', 'Yearly', '20', '11,000', '20', '5', 'open', '2019-10-13 05:23:18', '2019-10-13 05:23:18'),
(6, '987653', '3 months', '15', '7,000', '20', '5', 'open', '2019-10-13 04:47:00', '2019-10-13 04:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_bids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '8',
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_email` tinyint(1) NOT NULL DEFAULT '0',
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `email`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `access`, `first_name`, `last_name`, `middle_name`, `gender`, `phone`, `total_bids`, `plan`, `country`, `state`, `location`, `address`, `profile_pic`, `verified_email`, `verification_code`, `skills`, `status`) VALUES
(1, 335744, NULL, 'uchennaanih26@gmail.com', NULL, NULL, NULL, '$2y$10$NLYfAS2/klZ0DieKrP2M...mlLNVDFYr37moCUjGK2q7nSmDcbY5u', NULL, '2019-09-24 02:47:30', '2019-10-02 12:31:07', 'admin', 'James', 'james', 'law', 'Male', '8131957834', '2', 'free', 'nigeria', 'lagos', 'lagos', 'ikeja', '1_WIN_20180713_18_13_13_Pro.jpg', 1, '', NULL, 'pending'),
(7, 698950, 'James john mark', 'uchennaanih16@gmail.com', NULL, NULL, NULL, '$2y$10$/kaSEAyIW/odP3CDuTCkt.SfUUa3XKOU0zR4/B3WT1YKrNb0xccQy', NULL, '2019-09-25 19:18:31', '2019-11-02 08:50:21', NULL, 'James', 'mark', 'john', 'male', '08131957834', '6', 'free', 'nigeria', 'lagos', 'ikeja', 'ikeja', 'WIN_20180710_14_38_47_Pro.jpg', 1, '184Q5369423', NULL, 'activated'),
(12, 546267, NULL, 'uchennaanih67@gmail.com', NULL, NULL, NULL, '$2y$10$LIg0inVmz.FVsjGsw8wQHOAlcoUxLUocSw7cSnBgulZurTo93QYUK', NULL, '2019-10-19 18:41:32', '2019-10-19 18:41:32', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'free', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pending'),
(13, 607591, NULL, 'uchennaanih77@gmail.com', NULL, NULL, NULL, '$2y$10$/QMYwd24d5LWlRJKHXzgH.Uq4BaS20qFIFFnwy/AX3i7eiZ.EHGIa', NULL, '2019-10-19 19:06:59', '2019-10-19 19:06:59', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'free', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pending'),
(15, 995945, NULL, 'uchennaanih88@gmail.com', NULL, NULL, NULL, '$2y$10$90v/xiKPqHKSk4/g2gije.JOOBZN1VvFvcw.n3o/VchxKAjkpcO0a', NULL, '2019-10-19 19:10:30', '2019-10-19 19:10:30', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'free', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pending'),
(17, 987322, NULL, 'uchennaanih99@gmail.com', NULL, NULL, NULL, '$2y$10$U7u9wXtbvQtRdD4jmOaotePRTV9BtcO.1p1/GVf9PclFL3i.l6eJu', NULL, '2019-10-19 20:03:17', '2019-10-19 20:03:17', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'free', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pending'),
(19, 614198, NULL, 'uchennaanih55@gmail.com', NULL, NULL, NULL, '$2y$10$xCepvsQznHLJe.D/RxLqXe5lObAj.mbhPxMlJO/Y9ZNOP6cYv0Fxa', NULL, '2019-10-19 20:06:10', '2019-10-19 20:06:10', NULL, NULL, NULL, NULL, NULL, NULL, '8', 'free', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'pending'),
(20, 105481, 'admin admin admin', 'admin@demo.com', NULL, NULL, NULL, '$2y$10$2jYq2yvzqSDihJANdlO7gu9qqcqAKWcRY9nvInhTOfHOgHItSuPjC', NULL, '2019-11-02 16:07:23', '2019-11-02 16:13:36', NULL, 'admin', 'admin', 'admin', 'male', '08131957834', '8', 'free', 'nigeria', 'lagos', 'ikeja', 'admin address', 'WIN_20180710_14_39_06_Pro.jpg', 0, '4931E329180', NULL, 'activated');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank__details`
--
ALTER TABLE `bank__details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobcategories`
--
ALTER TABLE `jobcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `price_ranges`
--
ALTER TABLE `price_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank__details`
--
ALTER TABLE `bank__details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcategories`
--
ALTER TABLE `jobcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `price_ranges`
--
ALTER TABLE `price_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
