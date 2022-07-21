-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 04:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localhost`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(8, 'Dede Aftafiadni', 'dede@s.com', 'public/logo/uHyB7xTKvMrI243VaxSXDnDhj8KyfP2R2reTVBEi.jpg', 'asdasdasd', '2022-07-19 11:28:42', '2022-07-19 12:00:16'),
(10, 'KFC Jakarta', 'kfc@gmai.test', 'public/logo/UIFvUOe7GBivp8LqeI9BV59csKYJZgT8Wbjr6xGC.png', 'kfc.co.test', '2022-07-19 23:42:55', '2022-07-19 23:42:55'),
(11, 'KFC Bogor', 'kfc@bogor.test', 'public/logo/u9ffSkMqXQkU1XatTINMpn8CdBuLWFEv40rNqTk2.png', 'kfc.bogor.test', '2022-07-19 23:43:28', '2022-07-19 23:43:28'),
(12, 'KFC Banten', 'kfc@banten.test', 'public/logo/P8ncUmufX4c9CfYrt17GglRu9WrDbugBx2H5jvVH.png', 'kfc.banten.test', '2022-07-19 23:43:58', '2022-07-19 23:43:58'),
(13, 'KFC Bali', 'kfc@bali.text', 'public/logo/3rbtjmdJa8JdO0U1jBDApzCV8FipH0GRjVmi3Uh5.png', 'kfc.bali.test', '2022-07-19 23:44:26', '2022-07-19 23:44:26'),
(14, 'KFC Padang', 'kfc@padang.test', 'public/logo/Q9Ck0MaNQ8tnf5aV1Qe3kWFNKg0vPQ4yLA4Vbn9C.png', 'kfc.padang.test', '2022-07-19 23:45:03', '2022-07-19 23:45:03'),
(15, 'KFC Aceh', 'kfc@aceh.test', 'public/logo/bFIFnFEVqcljrOfv8XjisNX2Xa3dE2QwvcPG0tFO.png', 'kfc.aceh.test', '2022-07-19 23:45:38', '2022-07-19 23:45:38'),
(16, 'KFC Medan', 'kfc@medan.test', 'public/logo/IL27CfHYC6zc1E7kPyLT5JFx8XEX7TLtTPzJkEwy.png', 'kfc.medan.test', '2022-07-19 23:46:04', '2022-07-19 23:46:04'),
(17, 'KFC Lampung', 'kfc@lampung.test', 'public/logo/iDJC6vGybBGLFMDyArm34f700o7srrblwhJXPLuN.png', 'kfc.lampung.test', '2022-07-19 23:46:29', '2022-07-19 23:46:29'),
(18, 'KFC Manado', 'kfc@manado.test', 'public/logo/i9dmfQBbYlbr5Bfmq6QZNX0jVuLraLQ6md5hg6zE.png', 'kfc.manado.test', '2022-07-19 23:47:04', '2022-07-19 23:47:04'),
(19, 'KFC Palembang', 'kfc@palembang.test', 'public/logo/Up0zrUb3o0aAn9rxmQEWqVBrSyF0XrZGRsKEgeae.png', 'kfc.palembang.test', '2022-07-19 23:47:33', '2022-07-19 23:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `companies_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `companies_id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 10, 'Reid', 'Green', 'fswift@hotmail.com', '+18783549875', '2022-07-20 09:21:06', '2022-07-20 11:49:14'),
(3, 12, 'Matteo', 'Hane', 'weber.clementine@gmail.com', '+18452523310', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(4, 11, 'Zoila', 'Russel', 'nya77@hotmail.com', '+19862137123', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(5, 10, 'Zora', 'Schinner', 'ned43@gmail.com', '+14256481376', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(6, 17, 'Emory', 'Hintz', 'rosalind21@erdman.org', '+18317649052', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(7, 15, 'Richard', 'Quigley', 'euna74@boyle.com', '+18126141555', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(8, 11, 'Rosalyn', 'Schaefer', 'claudia59@yahoo.com', '+17702289116', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(9, 16, 'Lester', 'Dibbert', 'kaleigh23@hotmail.com', '+18326358597', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(10, 15, 'Dannie', 'Haag', 'talon.veum@treutel.org', '+16404761282', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(11, 12, 'Bethel', 'Cassin', 'bradford68@yahoo.com', '+17739951192', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(12, 19, 'Cheyenne', 'Heller', 'trever.krajcik@price.com', '+18456454515', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(13, 16, 'Liliana', 'Considine', 'destany.wuckert@huels.com', '+18787642219', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(14, 15, 'Vincenzo', 'Botsford', 'vkonopelski@botsford.com', '+16802591345', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(15, 15, 'Julio', 'Kertzmann', 'oleta36@kulas.com', '+13602240160', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(16, 12, 'Herman', 'Marvin', 'eryan@yahoo.com', '+15418921214', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(17, 12, 'Elvie', 'Stracke', 'mccullough.rhianna@raynor.biz', '+19286266046', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(18, 16, 'Liliane', 'Cole', 'jon95@hotmail.com', '+14636036370', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(19, 16, 'Rosalee', 'Jenkins', 'garett.halvorson@gmail.com', '+15054608413', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(20, 10, 'Bridgette', 'Dooley', 'jo.boyer@rempel.com', '+19103992887', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(21, 16, 'Bobby', 'Jacobs', 'wisoky.kaya@crist.com', '+18632681094', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(22, 18, 'Lenora', 'Block', 'hills.chaim@yahoo.com', '+18455775899', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(23, 11, 'Ellen', 'Williamson', 'emmet.lockman@altenwerth.com', '+14692318800', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(24, 12, 'Cecelia', 'Casper', 'armando.schumm@sporer.com', '+15136756694', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(25, 18, 'Shana', 'Mitchell', 'genevieve28@yahoo.com', '+15093943528', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(26, 11, 'Louie', 'Jacobi', 'precious75@yahoo.com', '+19378427506', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(27, 19, 'Karelle', 'Dooley', 'corine.walter@herzog.biz', '+16284157138', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(28, 18, 'Myrl', 'Erdman', 'wsporer@dickens.net', '+13865413990', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(29, 19, 'Marietta', 'Rau', 'susanna37@bailey.info', '+18438280056', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(30, 14, 'Darwin', 'Green', 'alex.russel@wolff.com', '+19342826102', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(31, 16, 'Ruthe', 'Little', 'abernathy.vaughn@franecki.com', '+19546373559', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(32, 13, 'Roger', 'Franecki', 'jeramie81@roob.com', '+18548564510', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(33, 14, 'Eileen', 'Fahey', 'ulises38@koss.com', '+18439454887', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(34, 10, 'Brendan', 'Koelpin', 'jamaal.emard@upton.com', '+16209746198', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(35, 19, 'Freida', 'Waters', 'jed.shanahan@hotmail.com', '+13477268693', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(36, 16, 'Keara', 'Fritsch', 'lhermiston@ratke.com', '+12833598305', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(37, 10, 'Guiseppe', 'Hermann', 'gkulas@mertz.com', '+19298938227', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(38, 18, 'Janelle', 'Bayer', 'berry.lemke@yahoo.com', '+16418935082', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(39, 16, 'Jacques', 'Schmeler', 'afay@hotmail.com', '+15732155900', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(40, 12, 'Lilian', 'Kuvalis', 'dboyer@ruecker.info', '+17318326999', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(41, 14, 'Linnie', 'Kshlerin', 'lamar01@cummerata.com', '+14703697787', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(42, 11, 'Wilton', 'Witting', 'nicolas48@considine.info', '+13344206943', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(43, 14, 'Lempi', 'Stehr', 'cklein@predovic.com', '+17263149194', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(44, 13, 'Polly', 'Bechtelar', 'braeden.mayert@baumbach.com', '+14406549861', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(45, 14, 'Fausto', 'Kutch', 'diego45@gmail.com', '+14405310717', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(46, 13, 'Norberto', 'Wilderman', 'felix.christiansen@durgan.com', '+13326609551', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(47, 13, 'Dandre', 'Breitenberg', 'wlesch@yahoo.com', '+19019132725', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(48, 18, 'Trycia', 'Gibson', 'runte.antonia@gmail.com', '+18638915345', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(49, 11, 'Cristina', 'Crooks', 'thompson.terry@schulist.info', '+13322351948', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(50, 16, 'Cedrick', 'Kautzer', 'gonzalo57@hayes.com', '+12077854931', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(51, 16, 'Humberto', 'Rutherford', 'kiara31@torphy.com', '+12834085583', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(52, 19, 'Emilio', 'Huel', 'gay.jacobi@gmail.com', '+14178221005', '2022-07-20 09:22:34', '2022-07-20 09:22:34'),
(54, 8, 'Dede', 'Aftafiandi', 'deded@test.com', '+5256778890', '2022-07-20 11:54:59', '2022-07-20 11:54:59'),
(55, 8, 'Dede', 'Aftafiandi', 'deded@test.com', '+5256778890', '2022-07-20 11:55:28', '2022-07-20 11:55:28'),
(56, 8, 'Dede', 'Aftafiandi', 'deded@test.com', '+5256778890', '2022-07-20 11:56:27', '2022-07-20 11:56:27'),
(57, 8, 'Dede', 'Aftafiandi', 'dede@test.com', '+627890', '2022-07-20 11:57:16', '2022-07-20 11:57:16'),
(58, 8, 'Dede', 'Aftafiandi', 'dede@test.com', '+627890', '2022-07-20 11:57:20', '2022-07-20 11:57:20');

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_07_19_141135_create_companies_table', 1),
(27, '2022_07_19_142531_create_employees_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'guest',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `auth`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@folkatech.com', NULL, '$2y$10$WV17BGzKhV3r0/IloD4FoOwp19bW4WDwxef3B7ouPG.exHrekfxBm', 'admin', NULL, NULL, NULL),
(2, 'Marcellus Cassin', 'rcorwin@example.net', '2022-07-20 09:17:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'guest', 'WFJiTHMWub', '2022-07-20 09:17:18', '2022-07-20 09:17:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_companies_id_foreign` (`companies_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
