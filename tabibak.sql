-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 05:51 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabibak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `isdelete`, `status`, `user_id`, `created_by`, `updated_by`, `email`, `created_at`, `updated_at`) VALUES
(1, 'نور سليم أبو حصيرة', 0, 1, 1, 0, 0, 'noor@gmail.com', '2018-12-09 12:55:10', '2018-12-23 06:04:04'),
(2, 'لميس روك', 0, 1, 2, 1, 1, 'lamees@gmail.com', '2018-12-18 17:28:27', '2019-08-20 08:55:30'),
(3, 'سلوم', 1, 1, 3, 2, 1, 'sloom@gmail.com', '2018-12-18 17:34:16', '2019-08-20 08:49:09'),
(4, 'محمد', 0, 1, 4, 1, 1, 'moh@gmail.com', '2018-12-18 17:53:28', '2018-12-18 17:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `Link_id` int(11) NOT NULL,
  `Admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_link`
--

INSERT INTO `admin_link` (`id`, `Link_id`, `Admin_id`, `created_at`, `updated_at`) VALUES
(18, 6, 3, '2018-12-17 22:00:00', NULL),
(19, 7, 3, '2018-12-17 22:00:00', NULL),
(20, 8, 3, '2018-12-17 22:00:00', NULL),
(21, 6, 4, '2018-12-17 22:00:00', NULL),
(22, 7, 4, '2018-12-17 22:00:00', NULL),
(23, 8, 4, '2018-12-17 22:00:00', NULL),
(42, 1, 2, '2019-08-25 21:00:00', NULL),
(43, 2, 2, '2019-08-25 21:00:00', NULL),
(44, 3, 2, '2019-08-25 21:00:00', NULL),
(45, 4, 2, '2019-08-25 21:00:00', NULL),
(46, 5, 2, '2019-08-25 21:00:00', NULL),
(47, 12, 2, '2019-08-25 21:00:00', NULL),
(48, 6, 2, '2019-08-25 21:00:00', NULL),
(49, 7, 2, '2019-08-25 21:00:00', NULL),
(50, 8, 2, '2019-08-25 21:00:00', NULL),
(51, 9, 2, '2019-08-25 21:00:00', NULL),
(52, 10, 2, '2019-08-25 21:00:00', NULL),
(53, 11, 2, '2019-08-25 21:00:00', NULL),
(63, 1, 1, '2019-10-30 22:00:00', NULL),
(64, 2, 1, '2019-10-30 22:00:00', NULL),
(65, 3, 1, '2019-10-30 22:00:00', NULL),
(66, 4, 1, '2019-10-30 22:00:00', NULL),
(67, 5, 1, '2019-10-30 22:00:00', NULL),
(68, 12, 1, '2019-10-30 22:00:00', NULL),
(69, 6, 1, '2019-10-30 22:00:00', NULL),
(70, 7, 1, '2019-10-30 22:00:00', NULL),
(71, 8, 1, '2019-10-30 22:00:00', NULL),
(72, 9, 1, '2019-10-30 22:00:00', NULL),
(73, 10, 1, '2019-10-30 22:00:00', NULL),
(74, 11, 1, '2019-10-30 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `Content` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `Doctor_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `Content`, `isdelete`, `status`, `Doctor_id`, `user_id`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'دكتور رائع', 0, 1, 3, 5, NULL, '2018-12-20 14:55:19', '2018-12-20 14:55:19'),
(2, 'ممكن عنوان العيادة بالزبط', 0, 1, 5, 5, NULL, '2018-12-20 14:55:52', '2018-12-20 14:55:52'),
(3, 'دكتوري العظيم', 0, 1, 10, 1, NULL, '2018-12-20 14:58:08', '2018-12-21 18:02:34'),
(6, 'أفضل دكتور على الإطلاق', 0, 1, 11, 4, NULL, '2018-12-20 15:01:40', '2018-12-24 10:05:08'),
(7, 'دكتور طارق العظيم', 0, 1, 3, 4, NULL, '2018-12-20 15:02:18', '2018-12-20 15:02:18'),
(8, 'دكتوري القدير', 0, 1, 1, 4, NULL, '2018-12-20 15:02:38', '2018-12-20 15:02:38'),
(9, 'أفخم دكتور على الاطلاق', 0, 1, 5, 4, NULL, '2018-12-20 15:03:06', '2018-12-20 15:03:06'),
(10, 'دكتور ممكن مواعيد دوامك بالمستشفى؟؟', 1, 1, 7, 4, NULL, '2018-12-20 15:03:48', '2018-12-24 10:01:21'),
(11, 'منور دكتور أسامة', 0, 1, 8, 7, NULL, '2018-12-20 15:07:28', '2018-12-20 15:07:28'),
(12, 'دكتور سيء', 0, 1, 6, 7, NULL, '2018-12-20 15:08:04', '2018-12-22 12:48:45'),
(13, 'hello', 0, 1, 1, 8, NULL, '2018-12-23 05:59:55', '2018-12-23 05:59:55'),
(14, 'دكتور رائع', 0, 1, 2, 1, NULL, '2019-02-26 16:39:54', '2019-02-26 16:39:54'),
(15, 'دكتور رائع', 0, 1, 11, 1, NULL, '2021-03-14 22:55:20', '2021-03-14 22:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile`
--

CREATE TABLE `doctor_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `allowComment` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialized_at` int(10) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_profile`
--

INSERT INTO `doctor_profile` (`id`, `Name`, `isdelete`, `allowComment`, `status`, `summary`, `Image`, `specialized_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'أكرم ابراهيم الشيخ خليل', 0, 1, 0, 'مدير مستشفى الولادة بمجمع الشفاء الطبي سابقا\r\nحاصل على البورد الفلسطيني\r\nماجستير نساء وولادة -جامعة القاهرة\r\n\r\nالعيادة الخاصة:غزة الشجاعية شارع بغداد\r\nساعات العمل :يوميا من ال٢لل٨\r\nللتواصل:082802354 - 0599864438', 'GywZwQOs8gjTcwJFuJlsGhKWb0jbsPdbG89EEpZw.jpeg', 5, 1, 1, '2018-12-20 13:37:39', '2019-11-01 13:02:20'),
(2, 'حمدان حجاج', 0, 1, 1, '-حصل على شهادة بكالوريوس الطب والجراحة من جامعة القاهرة عام 1978\r\n-حصل على شهادة دبلوم امراض النساء والولادة من الجامعة السعودية عام 1988\r\n-حصل على شهادة دبلوم أمراض النساء والولادة من الجامعة البريطانية عام 1995\r\n-حصل على شهادة دبلوم الألتراساوند من الجامعة الأردنية عام 2000\r\n\r\nالعيادة الخاصة:عيادة الدكتور حمدان حجاج _غزة _الشجاعية\r\nساعات العمل:يوميا من4 لل 8\r\n*******************************', 'BYH3iEMUZCbSx8m6AkPxyvGHT0SeakzouDLZrvFv.png', 5, 1, 1, '2018-12-20 13:41:54', '2019-08-20 07:43:25'),
(3, 'طارق محمد مهاني', 0, 1, 1, 'طبيب جراحة متخصص حاصل على البورد الفلسطيني بالجراحة\r\nأماكن العمل:\r\n-مجمع الشفاء الطبي =>يوميا (8-2)\r\n-مجمع الصحابة الطبي=>الأحد و الثلاثاء (3-7)', 'Au47bIjXuth3W21YvNolzfjL5XkvVhzeZc8aVLGt.jpeg', 2, 1, 1, '2018-12-20 13:45:28', '2018-12-20 13:45:28'),
(4, 'جمال نعيم', 0, 1, 1, 'مكان العمل : المركز العربي التخصص \r\nالعنوان :شارع الجلاء عمارة الماسة الطابق الثاني\r\nرقم المركز:0599156411\r\nمواعيد العمل يوميا عدا الخميس و الجمعة \r\nالساعة :3:00 - 7:00', 'V5hPlz5mxCLLJCkxdqsmEBrS4XEWcXYKms3B5SRj.jpeg', 1, 1, 1, '2018-12-20 13:51:59', '2018-12-23 06:01:40'),
(5, 'جمال سليمان طرزي', 0, 1, 1, 'مكان العمل :عيادة الدكتور جمال طرزي (شارع الثورة )\r\nساعات العمل :يوميا عدا الجمعة \r\nالساعة :(9 -5)', 'ZSwS3wQNw5LRHI1Yeh300SY6rh5s1qyoJjwWFQb8.jpeg', 2, 1, 1, '2018-12-20 14:00:38', '2018-12-20 14:00:38'),
(6, 'محمد صيام', 0, 1, 1, 'مكان العمل :مركز الهدى الطبي \r\nساعات العمل:يوميا عدا الجمعة (2:00 - 5:00)\r\n\r\nالعيادة الخاصة :عيادة الدكتور محمد صيام (شارع الشهداء عمارة المزيني )\r\nللتواصل:0595140001\r\nساعات العمل :يوميا (8:00 - 1:00)', '4ByCDTKoPslE8OEOehnVCCYHSMo1qGVqvFcM6MNW.jpeg', 1, 1, 1, '2018-12-20 14:11:25', '2018-12-23 06:01:40'),
(7, 'جمال حرزالله', 0, 1, 1, 'رئيس قسم الأنف والأذن والحنجرة بمجمع الشفاء الطبي', 'XvjdBu9NAluw41DBzQSyXEu3o0EoRBJarTF63a5A.jpeg', 11, 1, 1, '2018-12-20 14:20:22', '2018-12-24 10:01:21'),
(8, 'أسامة أبو دية', 0, 0, 1, 'مكان العمل :المركز العالمي للأسنان \r\nالعنوان: شارع الوحدة خلف مطعم الجرجاوي \r\nللتواصل:0592626003 - 2846333\r\nساعات العمل: يوميا (8:00 - 5:00)', 'kPJRmz5Ooy77EPDUBHk0ggbpk0Gy7TFO4LbVdUFi.jpeg', 1, 1, 1, '2018-12-20 14:26:58', '2018-12-23 06:01:40'),
(9, 'محمد الجعبري', 0, 1, 1, 'مكان العمل: مدير مركز التوليب لطب وتجميل الوجه والأسنان\r\nالعنوان :غزة - شارع الثورة -عمارة الأمراء مقابل مطعم التايلندي\r\nساعات العمل:يوميا (8:00 -8:00)\r\nللتواصل: \r\nجوال :0599158011  \r\nهاتف :2838011', 'CA2to6hvXhaBUCWS7JSGZ7GvROmFmm3WWjLM4oXl.jpeg', 1, 1, 1, '2018-12-20 14:37:51', '2018-12-23 06:01:40'),
(10, 'سليمان جمال طرزي', 0, 1, 1, 'حاصل على ماجستير تقويم الأسنان الجامعة الأردنية \r\nمكان العمل :المركز العالمي للأسنان \r\nالعنوان: شارع الوحدة خلف مطعم الجرجاوي \r\nللتواصل:0592626003 - 2846333\r\n ساعات العمل:الأحد -الثلاثاء-الخميس (8:00 - 5:00)\r\nالعيادة الخاصة:عيادة الدكتور سليمان الطرزي\r\nالعنوان:شارع الثورة \r\nللتواصل:2867059\r\nساعات العمل:السبت -الاثنين -الأربعاء(8:00 - 5:00)', 'NGKj9H9vTx6o7PISYP1o8L2sOoxVtxO1oKGkQZ7Z.jpeg', 1, 1, 1, '2018-12-20 14:44:23', '2018-12-24 10:01:03'),
(11, 'مهدي خليل حرزالله', 0, 1, 1, 'استشاري أمراض النساء والولادة حاصل على البورد الفلسطيني ورئيس وحدة (2)بمستشفى الشفاء \r\nمكان العمل :مجمع الشفاء الطبي \r\nساعات العمل:(8:00 - 2:00)\r\nالعيادة الخاصة: عيادة الدكتور مهدي حرزالله\r\nالعنوان:شارع عمر بن العاصي بالقرب من عمارة الزهارنة\r\nللتواصل: \r\nهاتف:2845565\r\nجوال:0599403133\r\nساعات العمل:(4:00 - 8:00)', 'eMxQopQBOyxNx1hn9rwoQ7w4RlxfFw1aSiWd5qix.jpeg', 5, 1, 1, '2018-12-20 14:52:10', '2018-12-24 10:05:08'),
(12, 'mhcf', 1, 1, 0, '.vhk.v', 'xCGsJJtGNr8C64kmU5hkSNeRoPLpbkJhUXVpSba0.jpeg', 12, 1, 1, '2019-07-23 08:03:21', '2019-07-23 08:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `Title`, `Url`, `icon`, `parent_id`, `show_in_menu`, `created_at`, `updated_at`) VALUES
(1, 'الأطباء', '#', 'fa fa-file', 0, 1, '2018-12-08 21:24:30', '2018-12-08 21:24:30'),
(2, 'تخصصات الأطباء', '/admin/specialization', 'fa fa-list', 1, 1, '2018-12-08 21:24:30', '2018-12-08 21:24:30'),
(3, 'ادارة الأطباء', '/admin/doctorprofile', 'fa fa-file', 1, 1, '2018-12-08 21:24:30', '2018-12-08 21:24:30'),
(4, 'اضافة طبيب جديد', '/admin/doctorprofile/create', 'fa fa-plus', 1, 1, '2018-12-08 21:24:30', '2018-12-08 21:24:30'),
(5, 'ادارة التعليقات', '/admin/comment', 'fa fa-comment', 1, 1, '2018-12-08 21:24:30', '2018-12-08 21:24:30'),
(6, 'الشرائح', '#', 'fa fa-tv', 0, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(7, 'ادارة الشرائح', '/admin/slider', 'fa fa-list', 6, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(8, 'اضافة شريحة جديدة', '/admin/slider/create', 'fa fa-plus', 6, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(9, 'المستخدمين', '#', 'fa fa-users', 0, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(10, 'ادارة المستخدمين', '/admin/admin', 'fa fa-list', 9, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(11, 'اضافة مستخدم جديد', '/admin/admin/create', 'fa fa-plus', 9, 1, '2018-12-08 21:24:31', '2018-12-08 21:24:31'),
(12, 'اضافة تخصص جديد', '/admin/specialization/create', 'fa fa-plus', 1, 1, '2018-12-22 08:01:00', '2018-12-22 06:00:00');

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_12_08_155443_create_doctor_profile_table', 1),
(13, '2018_12_08_155537_create_specialization_table', 1),
(14, '2018_12_08_155701_create_admin_table', 1),
(15, '2018_12_08_155718_create_comment_table', 1),
(16, '2018_12_08_155732_create_link_table', 1),
(17, '2018_12_08_155814_create_admin_link_table', 1),
(18, '2018_12_08_155847_create_slider_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('meme@gmail.com', '$2y$10$tVeF4lxAWI6zqzv1pt5O/OHz1X.yPFtVobaZSD43YlOxT4fcqvkWC', '2018-12-16 12:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `summary` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `Title`, `isdelete`, `status`, `summary`, `Image`, `Url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'ما هو الغذاء الذي يقوي الذاكرة', 1, 0, NULL, 'rUd2MMOGSELASglKKPgDm3Cv421tGj3BeXOLUB9S.jpeg', 'https://mawdoo3.com/%D9%85%D8%A7_%D9%87%D9%88_%D8%A7%D9%84%D8%BA%D8%B0%D8%A7%D8%A1_%D8%A7%D9%84%D8%B0%D9%8A_%D9%8A%D9%82%D9%88%D9%8A_%D8%A7%D9%84%D8%B0%D8%A7%D9%83%D8%B1%D8%A9', 3, 1, '2018-12-18 18:06:46', '2018-12-24 10:01:40'),
(2, 'أهمية الغذاء الصحي', 0, 1, NULL, 'Q5CQPwJEWrOuODCKSmOGXUoTccZJpT5AWpqkJDE7.jpeg', 'https://mawdoo3.com/%D8%A3%D9%87%D9%85%D9%8A%D8%A9_%D8%A7%D9%84%D8%BA%D8%B0%D8%A7%D8%A1_%D8%A7%D9%84%D8%B5%D8%AD%D9%8A', 3, NULL, '2018-12-18 18:08:04', '2018-12-18 18:26:36'),
(3, 'فوائد وأضرار أشعة الشمس', 0, 1, NULL, 'XrqRNcGRiydzpFuZm2Ydc1JrFjEh1SV1G5OfogFo.jpeg', 'https://mawdoo3.com/%D9%81%D9%88%D8%A7%D8%A6%D8%AF_%D9%88%D8%A3%D8%B6%D8%B1%D8%A7%D8%B1_%D8%A3%D8%B4%D8%B9%D8%A9_%D8%A7%D9%84%D8%B4%D9%85%D8%B3', 3, NULL, '2018-12-18 18:09:43', '2018-12-18 18:09:43'),
(4, 'خفض درجة الحرارة عند الأطفال', 0, 1, NULL, '6qvauN1Edddlrt4r4rYZXO2Qv0HtOxrOKsMpYRRw.jpeg', 'https://mawdoo3.com/%D8%AE%D9%81%D8%B6_%D8%AF%D8%B1%D8%AC%D8%A9_%D8%A7%D9%84%D8%AD%D8%B1%D8%A7%D8%B1%D8%A9_%D8%B9%D9%86%D8%AF_%D8%A7%D9%84%D8%A3%D8%B7%D9%81%D8%A7%D9%84', 3, NULL, '2018-12-18 18:11:49', '2018-12-18 18:11:49'),
(5, 'ما هو تسمم الحمل وماهي أعراضه', 0, 1, NULL, 'rH4SLbbZk757XgXO61I4k1UwQ6kXFGhYSbaPV9OG.jpeg', 'https://mawdoo3.com/%D9%85%D8%A7_%D9%87%D9%88_%D8%AA%D8%B3%D9%85%D9%85_%D8%A7%D9%84%D8%AD%D9%85%D9%84_%D9%88%D9%85%D8%A7%D9%87%D9%8A_%D8%A3%D8%B9%D8%B1%D8%A7%D8%B6%D9%87', 3, NULL, '2018-12-18 18:13:38', '2018-12-18 18:27:51'),
(6, 'كيف أحصل على فيتامين د من الأكل', 0, 0, NULL, 'cTd3upLr9HT13lCvRLxYlDltBCU74fnsLwxEHkCH.jpeg', 'https://mawdoo3.com/%D9%83%D9%8A%D9%81_%D8%A3%D8%AD%D8%B5%D9%84_%D8%B9%D9%84%D9%89_%D9%81%D9%8A%D8%AA%D8%A7%D9%85%D9%8A%D9%86_%D8%AF_%D9%85%D9%86_%D8%A7%D9%84%D8%A3%D9%83%D9%84', 3, NULL, '2018-12-18 18:15:19', '2018-12-18 18:27:52'),
(7, 'ما أسباب الدوخة المستمرة', 0, 1, NULL, 'XOTP38HA9RaA0VHpLAYdX1sVuwtoItwlQRTXhncU.jpeg', 'https://mawdoo3.com/%D9%85%D8%A7_%D8%A3%D8%B3%D8%A8%D8%A7%D8%A8_%D8%A7%D9%84%D8%AF%D9%88%D8%AE%D8%A9_%D8%A7%D9%84%D9%85%D8%B3%D8%AA%D9%85%D8%B1%D8%A9', 3, NULL, '2018-12-18 18:17:10', '2018-12-18 18:17:10'),
(8, 'علاج إلتهاب الحلق', 0, 1, NULL, 'i6AbrCl7QzSHYTBTdu1l0kJNvZmwExpRlpPPe2pm.jpeg', 'https://mawdoo3.com/%D8%B9%D9%84%D8%A7%D8%AC_%D8%A5%D9%84%D8%AA%D9%87%D8%A7%D8%A8_%D8%A7%D9%84%D8%AD%D9%84%D9%82', 3, NULL, '2018-12-18 18:17:50', '2018-12-18 18:17:50'),
(9, 'تبيض الاسنان باستخدام الطبيعة', 0, 1, NULL, 'DJf61nL2G2qoXkA0nLj7dHJyF0l1t3NvFzXRLEQB.jpeg', 'https://mawdoo3.com/%D8%AA%D8%A8%D9%8A%D8%B6_%D8%A7%D9%84%D8%A7%D8%B3%D9%86%D8%A7%D9%86_%D8%A8%D8%A7%D8%B3%D8%AA%D8%AE%D8%AF%D8%A7%D9%85_%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%B9%D8%A9', 4, NULL, '2018-12-20 10:02:14', '2018-12-20 10:02:14'),
(10, 'مرض الرمد', 0, 1, NULL, 'xnZVrzlmY2fGcgv9nBCU2hQMEgBfvmJhjfmUsXlh.jpeg', 'https://mawdoo3.com/%D9%85%D8%B1%D8%B6_%D8%A7%D9%84%D8%B1%D9%85%D8%AF', 4, NULL, '2018-12-20 10:02:53', '2018-12-20 10:02:53'),
(11, 'متى تبدأ أعراض الحمل', 0, 1, NULL, 'rIR82bWABF9QNvlvlLZgmdYLU36MNhFdoUXjAYql.jpeg', 'https://mawdoo3.com/%D9%85%D8%AA%D9%89_%D8%AA%D8%A8%D8%AF%D8%A3_%D8%A3%D8%B9%D8%B1%D8%A7%D8%B6_%D8%A7%D9%84%D8%AD%D9%85%D9%84', 4, NULL, '2018-12-20 10:03:58', '2018-12-20 18:42:32'),
(12, 'كيف تحمي نفسك من هشاشة العظام', 0, 1, NULL, 'waWEI44UajcC0AHswuyoWXJjoDgzDaFaeWWi1cNO.jpeg', 'https://mawdoo3.com/%D9%83%D9%8A%D9%81_%D8%AA%D8%AD%D9%85%D9%8A_%D9%86%D9%81%D8%B3%D9%83_%D9%85%D9%86_%D9%87%D8%B4%D8%A7%D8%B4%D8%A9_%D8%A7%D9%84%D8%B9%D8%B8%D8%A7%D9%85', 1, NULL, '2018-12-20 10:08:06', '2018-12-20 10:08:06'),
(13, 'طريقة علاج شد الرقبه', 0, 1, NULL, 'Ec1PZ81SsNQIsz6SvdMRxUWUu1JTdGDmzLsGLRNI.jpeg', 'https://mawdoo3.com/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9_%D8%B9%D9%84%D8%A7%D8%AC_%D8%B4%D8%AF_%D8%A7%D9%84%D8%B1%D9%82%D8%A8%D9%87', 1, NULL, '2018-12-20 10:08:42', '2018-12-20 10:08:42'),
(14, 'أنواع الحروق وطرق علاجها', 0, 1, NULL, 'RX0YkwsrlmvltF93jV0uM6QSI8w0uuGDSsnmyk41.jpeg', 'https://mawdoo3.com/%D8%A3%D9%86%D9%88%D8%A7%D8%B9_%D8%A7%D9%84%D8%AD%D8%B1%D9%88%D9%82_%D9%88%D8%B7%D8%B1%D9%82_%D8%B9%D9%84%D8%A7%D8%AC%D9%87%D8%A7', 1, NULL, '2018-12-20 10:13:49', '2018-12-20 10:13:49'),
(15, 'ضيق التنفس بعد الأكل', 0, 1, NULL, 'K8U9lTHDDP3gO8yO1ywKzwQvqrqppIsh5q6cTtfp.jpeg', 'https://mawdoo3.com/%D8%B6%D9%8A%D9%82_%D8%A7%D9%84%D8%AA%D9%86%D9%81%D8%B3_%D8%A8%D8%B9%D8%AF_%D8%A7%D9%84%D8%A3%D9%83%D9%84', 1, NULL, '2018-12-20 10:14:19', '2018-12-20 10:14:19'),
(16, 'ما هو اختصاص الأمراض الداخلية و ما هي مهامه', 1, 1, NULL, 'NXezILUPJcAeKl8TdpYKUqKw78JMDqPqgLzaXpVq.jpeg', 'https://mawdoo3.com/%D9%85%D8%A7_%D9%87%D9%88_%D8%A7%D8%AE%D8%AA%D8%B5%D8%A7%D8%B5_%D8%A7%D9%84%D8%A3%D9%85%D8%B1%D8%A7%D8%B6_%D8%A7%D9%84%D8%AF%D8%A7%D8%AE%D9%84%D9%8A%D8%A9_%D9%88_%D9%85%D8%A7_%D9%87%D9%8A_%D9%85%D9%87%D8%A7%D9%85%D9%87', 1, 1, '2018-12-20 10:16:15', '2019-08-17 09:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`id`, `Name`, `status`, `isdelete`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'طب الأسنان', 1, 0, 1, 1, '2018-12-20 10:38:27', '2019-02-26 16:41:07'),
(2, 'جراحة', 1, 0, 1, NULL, '2018-12-20 10:38:36', '2018-12-20 10:38:36'),
(3, 'جلدية', 1, 0, 1, NULL, '2018-12-20 10:38:44', '2018-12-20 10:38:44'),
(4, 'أطفال', 1, 0, 1, 1, '2018-12-20 10:38:57', '2018-12-24 09:59:29'),
(5, 'نساء و توليد', 1, 0, 1, 1, '2018-12-20 10:39:05', '2018-12-22 12:44:41'),
(6, 'باطنة', 1, 0, 1, NULL, '2018-12-20 10:39:34', '2018-12-20 10:41:03'),
(7, 'مسالك بولية', 1, 0, 1, NULL, '2018-12-20 10:39:46', '2018-12-20 18:33:26'),
(8, 'تجميل', 0, 0, 1, 1, '2018-12-20 10:40:01', '2018-12-20 18:34:04'),
(9, 'عظام', 0, 0, 1, NULL, '2018-12-20 10:40:12', '2018-12-20 10:40:12'),
(10, 'أعصاب', 0, 0, 1, NULL, '2018-12-20 10:40:16', '2018-12-20 10:40:16'),
(11, 'أنف و أذن وحنجرة', 1, 0, 1, 1, '2018-12-20 10:40:36', '2018-12-21 18:12:02'),
(12, 'طب نفسي', 1, 0, 1, NULL, '2018-12-24 09:59:48', '2018-12-24 09:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'نور سليم أبو حصيرة', 'noor@gmail.com', '$2y$10$mb3pjJ9L7lPKTpnBaTFzmeLylBsFM9AStz/SmdTWGfHhV6.xE61cy', 'b69Yr5qsfASwmflEdy53E43QuvTPUrLJpBp3YtfO9PGk225x7qVdDo2xaw3I', '2018-12-18 16:57:11', '2018-12-18 16:57:11'),
(2, 'لميس روك', 'lamees@gmail.com', '$2y$10$e9n1xc.RlRq9P7p/ue3ptOce0.HfUbJqSeCalFZGk3qo/IzO3tBj2', 'KYZseiMQUOrjXXI6z2UDFzAobsE9MvqGeWHkclV2eDSTTkPFx1QacJpZz5vn', '2018-12-18 17:28:27', '2019-08-20 08:55:30'),
(3, 'سلوم', 'sloom@gmail.com', '$2y$10$0kkcDC9cAeGZEVXVtPrtcu.xoa96WjpAwZdMW606x5sPwlFHRBziy', 'a4DUqpivHoBty6KBid7avENMB8cNwFWUBe6Bhv9HU8YykxwppMb45vupoBhH', '2018-12-18 17:34:16', '2018-12-18 17:38:04'),
(4, 'محمد', 'moh@gmail.com', '$2y$10$B/Wc1G2T5o6iUUx5LEBgGOXMYREECG48LfIhUGM9flgETSwG0bqUa', 'XHtf5CW1jTG3PxrYwaSnz4nJZAPeW0yaupYRRx0tgJwTB5ug2SUglRl4vMAt', '2018-12-18 17:53:28', '2018-12-18 17:56:11'),
(5, 'رغد مهاني', 'raghad@gmail.com', '$2y$10$SS1g2DW4Je9hulliYf9fs.2vFc5tAGwgzeJXT7CI7lrO9KW5kLKF2', 'FnTgh8BNOvr5rM342bnp9NTw3nq2kJ87cwaQtKz2I6Jq35DIhfIHJaoTVDw9', '2018-12-20 14:54:50', '2018-12-20 14:54:50'),
(6, 'زينة حرزالله', 'zina@gmail.com', '$2y$10$fm6i64Yoa/6HZB22L3qhM.uX4ETSOukY8mFChMzl0HViQ.zyJqVmC', '4wtk0SrNFdXcojFQ4wmdiqPoNE6vV5wxlmpZImHd8YR9ZAxERjzXo0umIDZE', '2018-12-20 14:59:22', '2018-12-20 14:59:22'),
(7, 'كوكي', 'koky@gmail.com', '$2y$10$URlFc2KZjWYRrRChWVgPgu3Hcq3Zj3ucwcY1ncYyqlwsE4PKCI92m', 'lOzv0H92ugSfQCnTmLFgu4233wjEZQ8fwLeY6QtjlZtksMw4Xai21IDGoH6y', '2018-12-20 15:06:35', '2018-12-20 15:06:35'),
(8, 'نور', 'nabohasira@gmail.com', '$2y$10$BNE5YNBy0GVMauAK/Qc3luvWASPUG2SNc3lqEcZPE/xITi.M1Rd9q', 'OvduzHcXCdaAx89hogNFfW7MhJSm5Co0XMhnnnZhTjT9XHkSueKrVIZ9ClSU', '2018-12-23 05:57:14', '2018-12-23 05:57:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_link`
--
ALTER TABLE `admin_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Doctor_id` (`Doctor_id`);

--
-- Indexes for table `doctor_profile`
--
ALTER TABLE `doctor_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_profile_ibfk_1` (`specialized_at`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_link`
--
ALTER TABLE `admin_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `doctor_profile`
--
ALTER TABLE `doctor_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Doctor_id`) REFERENCES `doctor_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_profile`
--
ALTER TABLE `doctor_profile`
  ADD CONSTRAINT `doctor_profile_ibfk_1` FOREIGN KEY (`specialized_at`) REFERENCES `specialization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
