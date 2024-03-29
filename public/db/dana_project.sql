-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2024 at 09:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dana_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint UNSIGNED NOT NULL,
  `offer_shares` int NOT NULL,
  `offer_price` double NOT NULL,
  `last_price` double NOT NULL,
  `bid_price` double NOT NULL,
  `bid_shares` int NOT NULL,
  `trade` int NOT NULL,
  `average` double NOT NULL,
  `money` int NOT NULL,
  `previous_close` double NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `analytics`
--

INSERT INTO `analytics` (`id`, `offer_shares`, `offer_price`, `last_price`, `bid_price`, `bid_shares`, `trade`, `average`, `money`, `previous_close`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 272606, 80.74, 44.4, 78.79, 311931, 29001, 62.48, 62699928, 74.19, 1, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(2, 442198, 31.87, 76.78, 41.66, 971176, 97341, 26.72, 8314106, 23.83, 2, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(3, 737162, 40.81, 16.72, 40.39, 598013, 70052, 89.73, 47980302, 75.19, 3, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(4, 573240, 77.05, 74.47, 15.39, 413746, 62627, 58.52, 26081618, 55.15, 4, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(5, 810088, 81.72, 43.77, 68, 629394, 70117, 59.07, 18429018, 82.9, 5, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(6, 794669, 22.51, 50.32, 24.52, 266355, 19249, 48.67, 36118978, 27.67, 6, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(7, 926099, 50.93, 21.01, 16.81, 751433, 43707, 65.61, 70576533, 28.48, 7, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(8, 944212, 96.02, 44.01, 72.74, 300616, 99250, 13.25, 50864033, 89.78, 8, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(9, 17826, 31.26, 88.27, 30.62, 510322, 83288, 79.04, 29752029, 49.44, 9, '2024-03-27 04:13:56', '2024-03-27 04:13:56'),
(10, 426017, 25.6, 22.1, 46.82, 682839, 31324, 56.67, 60202448, 82.77, 10, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(11, 97672, 86.33, 91.24, 22.56, 650561, 6029, 95.36, 26143471, 98.14, 11, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(12, 68007, 42.45, 40.52, 52.77, 315131, 64884, 14.09, 28766750, 79.76, 12, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(13, 541682, 66.35, 72.13, 90.17, 685556, 3070, 15.94, 86100335, 21.9, 13, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(14, 50220, 13.5, 11.26, 32.35, 84052, 28343, 33.47, 28612871, 56.57, 14, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(15, 954611, 29.14, 70.69, 80.97, 963578, 53561, 82.62, 88088631, 67.04, 15, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(16, 883679, 33.25, 91.39, 45.51, 9188, 34741, 19.74, 16756711, 49.52, 16, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(17, 386494, 62.01, 13.26, 69.92, 834115, 42765, 83.02, 99356693, 73.23, 17, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(18, 995048, 49.83, 18.25, 32.13, 677468, 15561, 61.13, 93428726, 99.03, 18, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(19, 982084, 93.29, 42.55, 70.76, 472470, 18894, 77.82, 57671962, 21.01, 19, '2024-03-27 04:13:57', '2024-03-27 04:13:57'),
(20, 337813, 27.94, 54.66, 38.85, 941789, 68577, 34.35, 98596469, 50.33, 20, '2024-03-27 04:13:57', '2024-03-27 04:13:57');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stock_symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `fulfilled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `stock_symbol`, `bid_price`, `quantity`, `fulfilled`, `created_at`, `updated_at`) VALUES
(1, 1, 'AAPL', 78.79, 1, 1, '2024-03-27 06:42:53', '2024-03-27 07:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `symbol`, `company_name`, `created_at`, `updated_at`) VALUES
(1, 'AAPL', 'Apple Inc.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(2, 'MSFT', 'Microsoft Corporation', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(3, 'AMZN', 'Amazon.com Inc.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(4, 'GOOGL', 'Alphabet Inc. (Google)', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(5, 'FB', 'Meta Platforms, Inc. (formerly Facebook)', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(6, 'TSLA', 'Tesla, Inc.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(7, 'JPM', 'JPMorgan Chase & Co.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(8, 'JNJ', 'Johnson & Johnson', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(9, 'V', 'Visa Inc.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(10, 'WMT', 'Walmart Inc.', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(11, 'NVDA', 'NVIDIA Corporation', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(12, 'MA', 'Mastercard Incorporated', '2024-03-27 03:22:41', '2024-03-27 03:22:41'),
(13, 'DIS', 'The Walt Disney Company', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(14, 'PYPL', 'PayPal Holdings, Inc.', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(15, 'BABA', 'Alibaba Group Holding Limited', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(16, 'BRK.A', 'Berkshire Hathaway Inc. (Class A shares)', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(17, 'HD', 'The Home Depot, Inc.', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(18, 'PG', 'Procter & Gamble Company', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(19, 'UNH', 'UnitedHealth Group Incorporated', '2024-03-27 03:22:42', '2024-03-27 03:22:42'),
(20, 'NFLX', 'Netflix, Inc.', '2024-03-27 03:22:42', '2024-03-27 03:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_25_033234_create_companies_table', 2),
(6, '2024_03_27_093548_create_analytics_table', 3),
(7, '2024_03_27_115545_create_bids_table', 4),
(8, '2024_03_27_115744_create_transactions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `bid_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stock_symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `bid_id`, `user_id`, `stock_symbol`, `transaction_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'AAPL', 78.79, 1, '2024-03-27 07:22:25', '2024-03-27 07:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', NULL, '$2y$10$97hOx5MeVEGV/xp1KJjXj.zPS9uehu1rZfz76/HiliP/x9r.xuNd2', 0, NULL, '2024-03-24 21:20:56', '2024-03-24 21:20:56'),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$fTzGk2kT0VpeVTbe3OnNo.R7kNRLQjG/XBmBcKrqYm7bO1nCpAoci', 1, NULL, '2024-03-27 08:02:27', '2024-03-27 08:02:27'),
(3, 'user', 'use@user.com', NULL, '$2y$10$v1AJ/VZlXpBUylW1aW8iz.i.qleVvy.B8u0eL/GKj8NUl4bKRFn3e', 0, NULL, '2024-03-29 03:07:45', '2024-03-29 03:07:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_company_id_foreign` (`company_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_company_name_unique` (`company_name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_bid_id_foreign` (`bid_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `analytics_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_bid_id_foreign` FOREIGN KEY (`bid_id`) REFERENCES `bids` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
