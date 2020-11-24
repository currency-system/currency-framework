-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 10:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currency_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numCode` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charCode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `numCode`, `charCode`, `name`, `value`, `date`, `created_at`, `updated_at`) VALUES
(1, '036', 'AUD', 'Австралийский доллар', 559764, '2020-11-14 00:00:00', '2020-11-15 18:41:36', '2020-11-15 18:41:36'),
(2, '944', 'AZN', 'Азербайджанский манат', 455128, '2020-11-14 00:00:00', '2020-11-15 18:41:36', '2020-11-15 18:41:36'),
(3, '826', 'GBP', 'Фунт стерлингов Соединенного королевства', 1017535, '2020-11-14 00:00:00', '2020-11-15 18:41:36', '2020-11-15 18:41:36'),
(4, '051', 'AMD', 'Армянских драмов', 156215, '2020-11-14 00:00:00', '2020-11-15 18:41:36', '2020-11-15 18:41:36'),
(5, '933', 'BYN', 'Белорусский рубль', 301208, '2020-11-14 00:00:00', '2020-11-15 18:41:36', '2020-11-15 18:41:36'),
(6, '975', 'BGN', 'Болгарский лев', 467002, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(7, '986', 'BRL', 'Бразильский реал', 141675, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(8, '348', 'HUF', 'Венгерских форинтов', 257282, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(9, '344', 'HKD', 'Гонконгских долларов', 997281, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(10, '208', 'DKK', 'Датская крона', 122670, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(11, '840', 'USD', 'Доллар США', 773262, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(12, '978', 'EUR', 'Евро', 913222, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(13, '356', 'INR', 'Индийских рупий', 103708, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(14, '398', 'KZT', 'Казахстанских тенге', 179749, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(15, '124', 'CAD', 'Канадский доллар', 588345, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(16, '417', 'KGS', 'Киргизских сомов', 918636, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(17, '156', 'CNY', 'Китайский юань', 116893, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(18, '498', 'MDL', 'Молдавских леев', 451672, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(19, '578', 'NOK', 'Норвежских крон', 843574, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(20, '985', 'PLN', 'Польский злотый', 203063, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(21, '946', 'RON', 'Румынский лей', 187617, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(22, '960', 'XDR', 'СДР (специальные права заимствования)', 1097328, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(23, '702', 'SGD', 'Сингапурский доллар', 573211, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(24, '972', 'TJS', 'Таджикских сомони', 682641, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(25, '949', 'TRY', 'Турецкая лира', 100786, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(26, '934', 'TMT', 'Новый туркменский манат', 221248, '2020-11-14 00:00:00', '2020-11-15 18:41:37', '2020-11-15 18:41:37'),
(27, '860', 'UZS', 'Узбекских сумов', 746320, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(28, '980', 'UAH', 'Украинских гривен', 275011, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(29, '203', 'CZK', 'Чешских крон', 344330, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(30, '752', 'SEK', 'Шведских крон', 894255, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(31, '756', 'CHF', 'Швейцарский франк', 845003, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(32, '710', 'ZAR', 'Южноафриканских рэндов', 494989, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(33, '410', 'KRW', 'Вон Республики Корея', 694742, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38'),
(34, '392', 'JPY', 'Японских иен', 735774, '2020-11-14 00:00:00', '2020-11-15 18:41:38', '2020-11-15 18:41:38');

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
(4, '2020_11_15_230436_create_currencies_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2020_11_15_234238_create_sessions_table', 2);

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
('ktKl8Xz6mb2odV7dq2QJKLWCqkT1es1Xf9oyThau', 1, '::1', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.193 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ2ZQTGx1YXlva09LajVzR0RKWmEzWU9iTWFaN0VRMnVJeURMNFN0bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly9sb2NhbGhvc3QvQ3VycmVuY3lfTGFyYXZlbC9wdWJsaWMvZGF0YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkbVFxY1pDejY3SmxrZFh6cmtwMnZzLk9PMXB6OG91b1RDQnRjTDNRWnJ4VDBDZWZ6M2Z4RTYiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJG1RcWNaQ3o2N0psa2RYenJrcDJ2cy5PTzFwejhvdW9UQ0J0Y0wzUVpyeFQwQ2VmejNmeEU2IjtzOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1605492277);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mahbub Alam', 'ju.mahbub@gmail.com', NULL, '$2y$10$mQqcZCz67JlkdXzrkp2vs.OO1pz8ouoTCBtcL3QZrxT0Cefz3fxE6', NULL, NULL, NULL, '2020-11-15 17:46:39', '2020-11-15 17:46:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
