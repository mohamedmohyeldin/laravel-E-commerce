-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 05:36 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nti_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`) VALUES
(1, 'electronics', '1.png', 's'),
(2, 'Destiney', 'http://lorempixel.com/640/480/', '9'),
(3, 'Werner', 'http://lorempixel.com/640/480/', '3'),
(4, 'Robyn', 'http://lorempixel.com/640/480/', '6'),
(5, 'Susie', 'http://lorempixel.com/640/480/', '4'),
(6, 'Ebony', 'http://lorempixel.com/640/480/', '2'),
(8, 'Tad', 'http://lorempixel.com/640/480/', '9'),
(9, 'Abelardo', 'http://lorempixel.com/640/480/', '1'),
(10, 'Pauline', 'http://lorempixel.com/640/480/', '8'),
(11, 'Murl', 'http://lorempixel.com/640/480/', '6'),
(12, 'Ella', 'http://lorempixel.com/640/480/', '1'),
(13, 'Blaise', 'http://lorempixel.com/640/480/', '4'),
(14, 'Chesley', 'http://lorempixel.com/640/480/', '1'),
(15, 'Donald', 'http://lorempixel.com/640/480/', '6'),
(16, 'Filomena', 'http://lorempixel.com/640/480/', '5'),
(17, 'Cary', 'http://lorempixel.com/640/480/', '2'),
(18, 'Merl', 'http://lorempixel.com/640/480/', '3'),
(19, 'Orland', 'http://lorempixel.com/640/480/', '8'),
(20, 'Marcelino', 'http://lorempixel.com/640/480/', '6'),
(21, 'Meda', 'http://lorempixel.com/640/480/', '8'),
(22, 'Leonardo', 'http://lorempixel.com/640/480/', '7'),
(23, 'Braulio', 'http://lorempixel.com/640/480/', '6'),
(24, 'Kyle', 'http://lorempixel.com/640/480/', '9'),
(25, 'Theodore', 'http://lorempixel.com/640/480/', '1'),
(26, 'Gregory', 'http://lorempixel.com/640/480/', '9'),
(27, 'Aurelie', 'http://lorempixel.com/640/480/', '9'),
(28, 'Bettye', 'http://lorempixel.com/640/480/', '5'),
(29, 'Harry', 'http://lorempixel.com/640/480/', '4'),
(30, 'Cathrine', 'http://lorempixel.com/640/480/', '6'),
(31, 'Sigurd', 'http://lorempixel.com/640/480/', '1'),
(32, 'Morton', 'http://lorempixel.com/640/480/', '2'),
(33, 'Jocelyn', 'http://lorempixel.com/640/480/', '7'),
(34, 'Kaci', 'http://lorempixel.com/640/480/', '2'),
(35, 'Nella', 'http://lorempixel.com/640/480/', '2'),
(36, 'Dillan', 'http://lorempixel.com/640/480/', '4'),
(37, 'Trinity', 'http://lorempixel.com/640/480/', '9'),
(38, 'Colton', 'http://lorempixel.com/640/480/', '3'),
(39, 'Candida', 'http://lorempixel.com/640/480/', '2'),
(40, 'Juliana', 'http://lorempixel.com/640/480/', '8'),
(41, 'Jaqueline', 'http://lorempixel.com/640/480/', '7'),
(42, 'Raphael', 'http://lorempixel.com/640/480/', '1'),
(43, 'Penelope', 'http://lorempixel.com/640/480/', '4'),
(44, 'Lesley', 'http://lorempixel.com/640/480/', '1'),
(45, 'Judah', 'http://lorempixel.com/640/480/', '6'),
(46, 'Ezra', 'http://lorempixel.com/640/480/', '2'),
(47, 'Blaise', 'http://lorempixel.com/640/480/', '3'),
(48, 'Vern', 'http://lorempixel.com/640/480/', '7'),
(49, 'Albert', 'http://lorempixel.com/640/480/', '1'),
(50, 'Otis', 'http://lorempixel.com/640/480/', '7'),
(51, 'Rachel', 'http://lorempixel.com/640/480/', '8'),
(52, 'Claude', 'http://lorempixel.com/640/480/', '5'),
(53, 'Skylar', 'http://lorempixel.com/640/480/', '8'),
(54, 'Jessie', 'http://lorempixel.com/640/480/', '6'),
(55, 'Eunice', 'http://lorempixel.com/640/480/', '2'),
(56, 'Rigoberto', 'http://lorempixel.com/640/480/', '4'),
(57, 'Dennis', 'http://lorempixel.com/640/480/', '9'),
(58, 'Kristopher', 'http://lorempixel.com/640/480/', '1'),
(59, 'Annetta', 'http://lorempixel.com/640/480/', '2'),
(60, 'Emilie', 'http://lorempixel.com/640/480/', '6'),
(61, 'Noel', 'http://lorempixel.com/640/480/', '6'),
(62, 'Royal', 'http://lorempixel.com/640/480/', '6'),
(63, 'Derrick', 'http://lorempixel.com/640/480/', '8'),
(64, 'Meghan', 'http://lorempixel.com/640/480/', '3'),
(65, 'Sasha', 'http://lorempixel.com/640/480/', '8'),
(66, 'Demetrius', 'http://lorempixel.com/640/480/', '5'),
(67, 'Millie', 'http://lorempixel.com/640/480/', '9'),
(68, 'Violet', 'http://lorempixel.com/640/480/', '5'),
(69, 'Adrienne', 'http://lorempixel.com/640/480/', '8'),
(70, 'Danika', 'http://lorempixel.com/640/480/', '8'),
(71, 'Lisandro', 'http://lorempixel.com/640/480/', '9'),
(72, 'Nyasia', 'http://lorempixel.com/640/480/', '7'),
(73, 'Jamil', 'http://lorempixel.com/640/480/', '4'),
(74, 'Michele', 'http://lorempixel.com/640/480/', '2'),
(75, 'Elwin', 'http://lorempixel.com/640/480/', '4'),
(76, 'Isaias', 'http://lorempixel.com/640/480/', '2'),
(77, 'Aurelie', 'http://lorempixel.com/640/480/', '8'),
(78, 'Kirstin', 'http://lorempixel.com/640/480/', '3'),
(79, 'Gordon', 'http://lorempixel.com/640/480/', '9'),
(80, 'Donato', 'http://lorempixel.com/640/480/', '7'),
(81, 'Bulah', 'http://lorempixel.com/640/480/', '8'),
(82, 'Clarabelle', 'http://lorempixel.com/640/480/', '5'),
(83, 'Marcel', 'http://lorempixel.com/640/480/', '6'),
(84, 'Meaghan', 'http://lorempixel.com/640/480/', '3'),
(85, 'Walton', 'http://lorempixel.com/640/480/', '4'),
(86, 'Heath', 'http://lorempixel.com/640/480/', '4'),
(87, 'Chaim', 'http://lorempixel.com/640/480/', '2'),
(88, 'Heath', 'http://lorempixel.com/640/480/', '5'),
(89, 'Zula', 'http://lorempixel.com/640/480/', '9'),
(90, 'Santiago', 'http://lorempixel.com/640/480/', '3'),
(91, 'Jeffry', 'http://lorempixel.com/640/480/', '5'),
(92, 'Holden', 'http://lorempixel.com/640/480/', '3'),
(93, 'Rey', 'http://lorempixel.com/640/480/', '1'),
(94, 'Torrey', 'http://lorempixel.com/640/480/', '8'),
(95, 'Cordelia', 'http://lorempixel.com/640/480/', '5'),
(96, 'Vivien', 'http://lorempixel.com/640/480/', '1'),
(97, 'Heber', 'http://lorempixel.com/640/480/', '8'),
(98, 'Junius', 'http://lorempixel.com/640/480/', '2'),
(99, 'Crystal', 'http://lorempixel.com/640/480/', '6'),
(100, 'Dayna', 'http://lorempixel.com/640/480/', '3');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `stock` int(11) UNSIGNED NOT NULL,
  `details` text DEFAULT NULL,
  `sub_cat_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `code`, `image`, `stock`, `details`, `sub_cat_id`, `created_at`) VALUES
(11, 'pubg', 1532, '155c', '6.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 2, '2020-11-16 12:18:24'),
(13, 'tshirt', 1532, '155c', '8.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 3, '2020-10-14 12:18:24'),
(14, 'short', 1532, '155c', '9.png', 55, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ', 3, '2020-12-16 12:18:24'),
(20, 'xxx', 15, '122551', 'C:\\xampp\\tmp\\php607A.tmp', 5, 'ksskksksksk', 2, '2020-12-25 21:29:19'),
(21, 'xxx', 15, '122551', '1.png', 5, 'ksskksksksk', 2, '2020-12-25 21:31:38'),
(22, 'xxx', 15, '122551', '1608932497.jpg', 5, 'ksskksksksk', 2, '2020-12-25 21:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `catagories_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `name`, `image`, `status`, `catagories_id`) VALUES
(1, 'electronics', '1.png', 's', 1),
(2, 'Destiney', 'http://lorempixel.com/640/480/', '9', 1),
(3, 'Werner', 'http://lorempixel.com/640/480/', '3', 1),
(4, 'Robyn', 'http://lorempixel.com/640/480/', '6', 1),
(5, 'Susie', 'http://lorempixel.com/640/480/', '4', 1),
(6, 'Ebony', 'http://lorempixel.com/640/480/', '2', 1),
(8, 'Tad', 'http://lorempixel.com/640/480/', '9', 1),
(9, 'Abelardo', 'http://lorempixel.com/640/480/', '1', 1),
(10, 'Pauline', 'http://lorempixel.com/640/480/', '8', 1),
(11, 'electronics2', '1.png', 's', 2),
(12, 'Destiney2', 'http://lorempixel.com/640/480/', '9', 2),
(13, 'Werne2r', 'http://lorempixel.com/640/480/', '3', 2),
(14, 'Robyn2', 'http://lorempixel.com/640/480/', '6', 2),
(15, 'Susie2', 'http://lorempixel.com/640/480/', '4', 2),
(16, 'Ebony2', 'http://lorempixel.com/640/480/', '2', 2),
(17, 'Tad2', 'http://lorempixel.com/640/480/', '9', 2),
(18, 'Abelardo2', 'http://lorempixel.com/640/480/', '1', 2),
(19, 'Pauline2', 'http://lorempixel.com/640/480/', '8', 2),
(20, 'electronics3', '1.png', 's', 3),
(21, 'Destiney23', 'http://lorempixel.com/640/480/', '9', 3),
(22, 'Werne2r', 'http://lorempixel.com/640/480/', '3', 3),
(23, 'Robyn2', 'http://lorempixel.com/640/480/', '6', 3),
(24, 'Susie2', 'http://lorempixel.com/640/480/', '4', 3),
(25, 'Ebony2', 'http://lorempixel.com/640/480/', '2', 3),
(26, 'Tad2', 'http://lorempixel.com/640/480/', '9', 3),
(27, 'Abelardo2', 'http://lorempixel.com/640/480/', '1', 3),
(28, 'Pauline2', 'http://lorempixel.com/640/480/', '8', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`) VALUES
(2, 'Mohamed Fathi', 'mohamedmohyeldin9090@gmail.com', '2020-12-26 02:21:50', '$2y$10$zN37in9QcdwbTCIfyvFEK.xl/dtfOAMWVB6Y6VhGw8JVZ50t.Pxky', NULL, '2020-12-26 02:15:52', '2020-12-26 02:21:50', 1064970826);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_cat_id_id` (`sub_cat_id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_cat_categories_id_id` (`catagories_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD CONSTRAINT `sub_cat_categories_id_id` FOREIGN KEY (`catagories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
