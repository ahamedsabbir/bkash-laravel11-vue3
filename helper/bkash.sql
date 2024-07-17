-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 08:49 PM
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
-- Database: `bkash`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2024_07_14_150046_create_personal_access_tokens_table', 1),
(5, '2024_07_14_150955_create_products_table', 1),
(6, '2024_07_14_153631_create_transactions_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(14, 'App\\Models\\User', 6, 'main', 'c7aef254c787b73d87fc43c28a6e69a91c0051e4ef3b875fc020a4e92bd2da1f', '[\"*\"]', NULL, NULL, '2024-07-14 13:46:52', '2024-07-14 13:46:52'),
(15, 'App\\Models\\User', 6, 'main', 'b82d977691c5064c84b0e188dfc3cd9d30910f9cd7e4994d9d9062182a31b7ef', '[\"*\"]', NULL, NULL, '2024-07-14 13:48:05', '2024-07-14 13:48:05'),
(16, 'App\\Models\\User', 6, 'main', '2d03754afa85c95ce11615c8593d62b854f4e484261c440203a892f00c10bfc3', '[\"*\"]', '2024-07-14 14:12:13', NULL, '2024-07-14 13:48:56', '2024-07-14 14:12:13'),
(17, 'App\\Models\\User', 6, 'main', 'd99b61435f30e39e82af4ddec8d36f2a882f9196aa31bbc6a7cfd047bece24de', '[\"*\"]', '2024-07-14 14:32:53', NULL, '2024-07-14 14:12:14', '2024-07-14 14:32:53'),
(18, 'App\\Models\\User', 6, 'main', 'f997a52db22e1959edde594e8fc4ca8e693b3a1b7ce475f1f889bea640670a32', '[\"*\"]', '2024-07-14 14:36:26', NULL, '2024-07-14 14:36:03', '2024-07-14 14:36:26'),
(19, 'App\\Models\\User', 6, 'main', '7162720cb55826f5532399ebf91e75cd239eecf14a71209a3273fb27cb04c407', '[\"*\"]', '2024-07-14 20:47:51', NULL, '2024-07-14 20:47:45', '2024-07-14 20:47:51'),
(20, 'App\\Models\\User', 6, 'main', 'bd079bc4b0e1cd18c158ba3450d4150523223a72b7ae66c953657955f9565304', '[\"*\"]', '2024-07-14 21:55:18', NULL, '2024-07-14 20:55:12', '2024-07-14 21:55:18'),
(21, 'App\\Models\\User', 6, 'main', '120e8d269f0bd6cf2ee6f51baa211f4266e4d0ed36d9fe5163a72ba376344c1b', '[\"*\"]', '2024-07-14 22:45:07', NULL, '2024-07-14 21:56:03', '2024-07-14 22:45:07'),
(22, 'App\\Models\\User', 6, 'main', 'dfb1f7f7b28ce4974e015762302f830bd47935de058ae55496ce65885683a1e6', '[\"*\"]', '2024-07-14 22:49:49', NULL, '2024-07-14 22:45:53', '2024-07-14 22:49:49'),
(23, 'App\\Models\\User', 6, 'main', 'c85d1bfed8465f45a36a4edd2fb59b5e1c318625b6977b75de84542b106f5499', '[\"*\"]', '2024-07-14 22:52:06', NULL, '2024-07-14 22:49:50', '2024-07-14 22:52:06'),
(24, 'App\\Models\\User', 6, 'main', 'ae8490ad58a9c732c3a586ac191431d41dc8dd894868fdb509bcf7b2b8881c7d', '[\"*\"]', NULL, NULL, '2024-07-14 22:52:06', '2024-07-14 22:52:06'),
(25, 'App\\Models\\User', 6, 'main', '885d06af8ad645bbe552a5cebcd4944458ff6211edaf1b7e71d18d03ab27624a', '[\"*\"]', NULL, NULL, '2024-07-14 22:53:02', '2024-07-14 22:53:02'),
(26, 'App\\Models\\User', 6, 'main', '946886af73c07809fb4592028d4d0ed3b7e25be308cfddd8c2d49ff846ddab32', '[\"*\"]', NULL, NULL, '2024-07-14 22:53:46', '2024-07-14 22:53:46'),
(27, 'App\\Models\\User', 6, 'main', '75d3e1c51526bd72334e3c4feda4b7165f44df84e8e8762e85b336723ff8b73c', '[\"*\"]', '2024-07-14 23:04:28', NULL, '2024-07-14 23:01:08', '2024-07-14 23:04:28'),
(28, 'App\\Models\\User', 6, 'main', 'f98b3f2f280db1ee3485b53e105261c8ba0971c6b9bdab7cfe011ba76358ca63', '[\"*\"]', NULL, NULL, '2024-07-14 23:04:44', '2024-07-14 23:04:44'),
(29, 'App\\Models\\User', 6, 'main', '55924f7ce623616b4cbafdf83f4dee560e642588249642eb60a0b920d1a85cfd', '[\"*\"]', NULL, NULL, '2024-07-14 23:05:16', '2024-07-14 23:05:16'),
(30, 'App\\Models\\User', 6, 'main', '85e504f6ad075aacf9e344388cdb0fe8a6e455d5723f6d0d06fc813b4e34dbab', '[\"*\"]', NULL, NULL, '2024-07-14 23:05:54', '2024-07-14 23:05:54'),
(31, 'App\\Models\\User', 6, 'main', '3dd42be49d74a2b9e3500cb2ab7927156b7e37c0890ee6821901acdeca7541e9', '[\"*\"]', NULL, NULL, '2024-07-14 23:09:54', '2024-07-14 23:09:54'),
(32, 'App\\Models\\User', 6, 'main', '78dd255a44a512d0efcfc364df637fc600b333074dba3aaaebfa98acc81993e6', '[\"*\"]', NULL, NULL, '2024-07-14 23:14:19', '2024-07-14 23:14:19'),
(33, 'App\\Models\\User', 6, 'main', '98b4f0e71778e437a8e839010ddc2edcfb6199f38d4f499a3ca243989428033a', '[\"*\"]', NULL, NULL, '2024-07-14 23:16:19', '2024-07-14 23:16:19'),
(34, 'App\\Models\\User', 6, 'main', '11567f3256416e745d95df7e82f950133bf844d3a1f1cbe296f50dac5897aab7', '[\"*\"]', NULL, NULL, '2024-07-14 23:18:30', '2024-07-14 23:18:30'),
(35, 'App\\Models\\User', 6, 'main', '9cc3b5324ac622bb98834180c819606088773bfdfc92428f186f8ebe022704ce', '[\"*\"]', NULL, NULL, '2024-07-14 23:19:52', '2024-07-14 23:19:52'),
(36, 'App\\Models\\User', 6, 'main', '275c40b7b58a7dc43981eaca06eca920d532326bb2839b1d6ed97d0684dbf4f8', '[\"*\"]', NULL, NULL, '2024-07-14 23:20:43', '2024-07-14 23:20:43'),
(37, 'App\\Models\\User', 6, 'main', '76f1ee6d1f68e309680687e5eb4dcceb17b35b95058dedb222d9e47a57faff49', '[\"*\"]', NULL, NULL, '2024-07-14 23:21:31', '2024-07-14 23:21:31'),
(38, 'App\\Models\\User', 6, 'main', 'b09dd6a57bdc0794777e38e9dcce90078565019c5a9b708f3c2094a9d38d24ee', '[\"*\"]', NULL, NULL, '2024-07-14 23:22:37', '2024-07-14 23:22:37'),
(39, 'App\\Models\\User', 6, 'main', '6c25597e43f6be27335eeeec542d3580f61f934da0313d60d25cee01e278ccf8', '[\"*\"]', '2024-07-14 23:31:22', NULL, '2024-07-14 23:23:11', '2024-07-14 23:31:22'),
(40, 'App\\Models\\User', 6, 'main', '00d51ce59a30d42181c4517c9c367be4daf6564032bcf570e5e46453037a2420', '[\"*\"]', '2024-07-14 23:31:35', NULL, '2024-07-14 23:31:32', '2024-07-14 23:31:35'),
(41, 'App\\Models\\User', 6, 'main', 'c086164e07d39c6295f10a7679a0f69d4e1f9b52c7ad2c979172355fc1657839', '[\"*\"]', NULL, NULL, '2024-07-14 23:34:41', '2024-07-14 23:34:41'),
(42, 'App\\Models\\User', 6, 'main', '0e0e2e9e39ce7a7efe52963fce3288f4cd755860ec1b9c92b99c853246c2a609', '[\"*\"]', NULL, NULL, '2024-07-14 23:37:02', '2024-07-14 23:37:02'),
(43, 'App\\Models\\User', 6, 'main', '644637cd631cc4d4dfae276f5af0da312c0ca98687f2964ad94460320fbce8cd', '[\"*\"]', '2024-07-15 00:03:42', NULL, '2024-07-14 23:49:58', '2024-07-15 00:03:42'),
(44, 'App\\Models\\User', 6, 'main', '9c80fa68e64d13f28d8b464e9b5de2b31a00ec462f747e8632147b638705a805', '[\"*\"]', NULL, NULL, '2024-07-15 00:03:42', '2024-07-15 00:03:42'),
(45, 'App\\Models\\User', 6, 'main', 'b580739a7fa507d04b1420d92c827564f85682ee500b8b9befa950e347620e1f', '[\"*\"]', NULL, NULL, '2024-07-15 00:04:05', '2024-07-15 00:04:05'),
(46, 'App\\Models\\User', 6, 'main', 'ec3c252b60baae8b389c5fbb79ee68992862162ae000b6052cb3ab7460aa682a', '[\"*\"]', NULL, NULL, '2024-07-15 00:05:42', '2024-07-15 00:05:42'),
(47, 'App\\Models\\User', 6, 'main', '1ba1264160115f944cda0dbee8f96ed07e1b5834e347d82f549b719d48efbcb2', '[\"*\"]', NULL, NULL, '2024-07-15 00:06:32', '2024-07-15 00:06:32'),
(48, 'App\\Models\\User', 6, 'main', '972e91183639fd6dfff27166b5f9d043218e02ec6b4c2f4cc39e00cfe97d2889', '[\"*\"]', NULL, NULL, '2024-07-15 00:06:58', '2024-07-15 00:06:58'),
(49, 'App\\Models\\User', 6, 'main', '255192ae420f2e051dfd5e00c018cd2d6d051eb025524cff7fb70cd3ee3b1f5d', '[\"*\"]', NULL, NULL, '2024-07-15 00:08:04', '2024-07-15 00:08:04'),
(50, 'App\\Models\\User', 6, 'main', '1f1be0ca47bd86043ccf17203e5baa2b75866ddea1e6562f02c32d647996a419', '[\"*\"]', NULL, NULL, '2024-07-15 00:09:28', '2024-07-15 00:09:28'),
(51, 'App\\Models\\User', 6, 'main', 'f177def7e3cd77f3225138f838c7eb38ac660357a624c33087e324505dc9c80b', '[\"*\"]', NULL, NULL, '2024-07-15 00:10:38', '2024-07-15 00:10:38'),
(52, 'App\\Models\\User', 6, 'main', 'edb7f2d86ede628c197a42b3cf7a1b567f3b3c4b988cd125c31959fd2dc841e1', '[\"*\"]', NULL, NULL, '2024-07-15 00:16:41', '2024-07-15 00:16:41'),
(53, 'App\\Models\\User', 6, 'main', 'b1eeaea19d1553bc1e819a8425fd6dea04feb0fdda3cdaeaecee0d96d33d9038', '[\"*\"]', NULL, NULL, '2024-07-15 00:18:37', '2024-07-15 00:18:37'),
(54, 'App\\Models\\User', 6, 'main', 'b7d09158c90f331d84393b55229c36621c2dd6f60ac718d27f217dad5c2711c8', '[\"*\"]', NULL, NULL, '2024-07-15 00:20:23', '2024-07-15 00:20:23'),
(55, 'App\\Models\\User', 6, 'main', '981cbd21e3343fc067c124f10a687897dcf6281735cbba69edfcd11d60714fd7', '[\"*\"]', NULL, NULL, '2024-07-15 00:20:29', '2024-07-15 00:20:29'),
(56, 'App\\Models\\User', 6, 'main', '72ced7157c06bcd47845d80475533cbd2c3d5fb5da79156d159055f972d59265', '[\"*\"]', NULL, NULL, '2024-07-15 00:21:54', '2024-07-15 00:21:54'),
(57, 'App\\Models\\User', 6, 'main', '7aeb56f29c534000b41f689dad14e006a592fb2eaa8d15cc620a36246dd7e1a3', '[\"*\"]', NULL, NULL, '2024-07-15 00:28:18', '2024-07-15 00:28:18'),
(58, 'App\\Models\\User', 6, 'main', 'e213c79d1d577c358b7112bd01c8794028e00a042a49bee8bb2e4506a113952b', '[\"*\"]', NULL, NULL, '2024-07-15 00:29:41', '2024-07-15 00:29:41'),
(59, 'App\\Models\\User', 6, 'main', 'ec5ca1a59dbbef38ba00d1e58198f3b6023ef4cfd88fe53ac3a0329125139494', '[\"*\"]', NULL, NULL, '2024-07-15 00:40:21', '2024-07-15 00:40:21'),
(60, 'App\\Models\\User', 6, 'main', '181d9404f6dc0f92f31a79b38314c0c8ec7083ba3a8566055476838a46e86138', '[\"*\"]', NULL, NULL, '2024-07-15 00:40:38', '2024-07-15 00:40:38'),
(61, 'App\\Models\\User', 6, 'main', 'b5ff24d5e062d8baa27e7db3d8771c8626253d6bb77732a63f04f00c165b3344', '[\"*\"]', NULL, NULL, '2024-07-15 00:42:48', '2024-07-15 00:42:48'),
(62, 'App\\Models\\User', 6, 'main', 'e7fe1169a9a2814027fad1b7239511030ebfde37e5618c3e03394dfc6ac7c06e', '[\"*\"]', NULL, NULL, '2024-07-15 00:43:07', '2024-07-15 00:43:07'),
(63, 'App\\Models\\User', 6, 'main', '9b18e17cd000d67292b661c825a3f3c18c7ad3afc5a1cab935f350a05400638c', '[\"*\"]', NULL, NULL, '2024-07-15 00:46:36', '2024-07-15 00:46:36'),
(64, 'App\\Models\\User', 6, 'main', '21319ce6d60e3350b1aac80a35b96efca78770dd79b950c715a39c998a051559', '[\"*\"]', NULL, NULL, '2024-07-15 00:47:49', '2024-07-15 00:47:49'),
(65, 'App\\Models\\User', 6, 'main', 'cef6a0cb2237cb9b7e72637f391a4bb4ba308a2b3e3a26a25118392b454ab7c1', '[\"*\"]', NULL, NULL, '2024-07-15 00:48:26', '2024-07-15 00:48:26'),
(66, 'App\\Models\\User', 6, 'main', '88b5131b4e9cf9859d8a124a3c2168aae29abe817b314ca1f2a15ad20cbef090', '[\"*\"]', '2024-07-15 00:56:52', NULL, '2024-07-15 00:52:40', '2024-07-15 00:56:52'),
(67, 'App\\Models\\User', 6, 'main', '3c5fe59033ee9afcb7c7abad45c655ad18d2c199a7980f1e1d1c95ac7ef284af', '[\"*\"]', '2024-07-15 00:57:57', NULL, '2024-07-15 00:57:41', '2024-07-15 00:57:57'),
(68, 'App\\Models\\User', 6, 'main', 'e0639b0b02b348ab06f3181e394f180541c977e93e01708500a4f34bdc6fc628', '[\"*\"]', '2024-07-15 01:00:14', NULL, '2024-07-15 00:59:39', '2024-07-15 01:00:14'),
(69, 'App\\Models\\User', 6, 'main', '08e852d2aa3bfcea002a792fd87c796649e235dfd0afc6a7b4ac7dc6e8974c67', '[\"*\"]', '2024-07-15 03:31:56', NULL, '2024-07-15 02:51:13', '2024-07-15 03:31:56'),
(70, 'App\\Models\\User', 6, 'main', 'cc65083fe80a22b35b866fdc2755ba1119ed8a7dbbd9dcde3df92a082436dedf', '[\"*\"]', NULL, NULL, '2024-07-15 02:51:13', '2024-07-15 02:51:13'),
(71, 'App\\Models\\User', 6, 'main', '6683367ecf32a8a94b29009544eb9ea221789b8c56471902105777225651d8d6', '[\"*\"]', NULL, NULL, '2024-07-15 08:15:35', '2024-07-15 08:15:35'),
(72, 'App\\Models\\User', 6, 'main', '52e44058d0575fb5d2074a63624da3343d15b49f0ffc51473e390cc9759842ab', '[\"*\"]', NULL, NULL, '2024-07-15 08:15:35', '2024-07-15 08:15:35'),
(73, 'App\\Models\\User', 8, 'main', '5e809aadd895ea6cb18582d93b10cdd1a18b083c9b1cb4dcf42306925413379f', '[\"*\"]', '2024-07-15 08:22:32', NULL, '2024-07-15 08:17:01', '2024-07-15 08:22:32'),
(74, 'App\\Models\\User', 8, 'main', 'be0920f5f127f04958acddf6cf9f1c34de33fd1292c7a3b9464be0f659d24b35', '[\"*\"]', '2024-07-15 08:49:44', NULL, '2024-07-15 08:32:36', '2024-07-15 08:49:44'),
(75, 'App\\Models\\User', 6, 'main', 'b8535ae862eae5b994a460344dac5d9253a319af6243962de782926e2833970f', '[\"*\"]', NULL, NULL, '2024-07-15 10:08:25', '2024-07-15 10:08:25'),
(76, 'App\\Models\\User', 6, 'main', '021423672832dc7ffca0584c529bc04339b467032e99151f231d14276c323ff1', '[\"*\"]', NULL, NULL, '2024-07-15 10:08:25', '2024-07-15 10:08:25'),
(77, 'App\\Models\\User', 6, 'main', '0cff060e8746e14949834a337d47bc85ce25a84f390c7bdbc32951457a5a0499', '[\"*\"]', NULL, NULL, '2024-07-15 11:23:05', '2024-07-15 11:23:05'),
(78, 'App\\Models\\User', 6, 'main', '2947854e0a0752028351e57e24546699b7b1b125aed21d6f74f462a06240329f', '[\"*\"]', NULL, NULL, '2024-07-15 11:25:50', '2024-07-15 11:25:50'),
(79, 'App\\Models\\User', 6, 'main', '973c11252bc5237812fc3c1ed48ca05f43fc248bd01272d11be87491b189d464', '[\"*\"]', NULL, NULL, '2024-07-15 11:26:32', '2024-07-15 11:26:32'),
(80, 'App\\Models\\User', 6, 'main', '360059cff923ed5d25c5962c9493df9c43467e5ee1c076a5b95f7005950ac269', '[\"*\"]', NULL, NULL, '2024-07-15 11:27:37', '2024-07-15 11:27:37'),
(81, 'App\\Models\\User', 6, 'main', 'd84342d25a0cb0dfa4bc00a8aa4437606067003f919a801ae6694c64c974dcde', '[\"*\"]', NULL, NULL, '2024-07-15 11:27:56', '2024-07-15 11:27:56'),
(82, 'App\\Models\\User', 6, 'main', '58bf4638136c3e63b1e9940f3b78a362b87e6524d63d560db828b418c923a3fd', '[\"*\"]', '2024-07-15 11:49:42', NULL, '2024-07-15 11:49:21', '2024-07-15 11:49:42'),
(83, 'App\\Models\\User', 8, 'main', '5f269fb99d53099f285bbb9c81c4b2ae720d7c3a80bb7f18e6220e1be641b94b', '[\"*\"]', '2024-07-15 12:09:27', NULL, '2024-07-15 11:53:12', '2024-07-15 12:09:27'),
(84, 'App\\Models\\User', 8, 'main', '3a2e3f4c784c167964f77eb6831d84d34dea638e4a6e1878d59cd5437f80a528', '[\"*\"]', '2024-07-15 12:28:18', NULL, '2024-07-15 12:15:24', '2024-07-15 12:28:18'),
(85, 'App\\Models\\User', 6, 'main', '367f5d6d476af85f4eeaa636778dcf35bb1efa980179aecfd3c0c9c1d143157d', '[\"*\"]', '2024-07-15 12:47:35', NULL, '2024-07-15 12:28:47', '2024-07-15 12:47:35'),
(86, 'App\\Models\\User', 6, 'main', 'cfed9e7a6337f934d4ca1df5aef064589927541cd59478b736b29f66e58959ac', '[\"*\"]', '2024-07-15 12:48:12', NULL, '2024-07-15 12:47:52', '2024-07-15 12:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 10.99, 100, 'image1.jpg', 'Description for product 1', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(2, 'Product 2', 15.49, 50, 'image2.jpg', 'Description for product 2', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(3, 'Product 3', 12.00, 200, 'image3.jpg', 'Description for product 3', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(4, 'Product 4', 25.99, 150, 'image4.jpg', 'Description for product 4', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(5, 'Product 5', 5.75, 80, 'image5.jpg', 'Description for product 5', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(6, 'Product 6', 8.99, 30, 'image6.jpg', 'Description for product 6', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(7, 'Product 7', 13.50, 60, 'image7.jpg', 'Description for product 7', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(8, 'Product 8', 20.00, 40, 'image8.jpg', 'Description for product 8', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(9, 'Product 9', 7.99, 90, 'image9.jpg', 'Description for product 9', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(10, 'Product 10', 9.49, 70, 'image10.jpg', 'Description for product 10', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(11, 'Product 11', 14.99, 120, 'image11.jpg', 'Description for product 11', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(12, 'Product 12', 17.99, 140, 'image12.jpg', 'Description for product 12', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(13, 'Product 13', 21.50, 30, 'image13.jpg', 'Description for product 13', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(14, 'Product 14', 18.75, 100, 'image14.jpg', 'Description for product 14', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(15, 'Product 15', 6.99, 200, 'image15.jpg', 'Description for product 15', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(16, 'Product 16', 11.99, 60, 'image16.jpg', 'Description for product 16', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(17, 'Product 17', 23.99, 40, 'image17.jpg', 'Description for product 17', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(18, 'Product 18', 16.49, 70, 'image18.jpg', 'Description for product 18', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(19, 'Product 19', 19.99, 80, 'image19.jpg', 'Description for product 19', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(20, 'Product 20', 22.50, 50, 'image20.jpg', 'Description for product 20', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(21, 'Product 21', 9.00, 100, 'image21.jpg', 'Description for product 21', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(22, 'Product 22', 5.50, 90, 'image22.jpg', 'Description for product 22', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(23, 'Product 23', 7.25, 200, 'image23.jpg', 'Description for product 23', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(24, 'Product 24', 10.75, 70, 'image24.jpg', 'Description for product 24', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(25, 'Product 25', 12.99, 40, 'image25.jpg', 'Description for product 25', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(26, 'Product 26', 8.75, 80, 'image26.jpg', 'Description for product 26', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(27, 'Product 27', 14.49, 120, 'image27.jpg', 'Description for product 27', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(28, 'Product 28', 11.25, 30, 'image28.jpg', 'Description for product 28', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(29, 'Product 29', 16.00, 60, 'image29.jpg', 'Description for product 29', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(30, 'Product 30', 18.25, 50, 'image30.jpg', 'Description for product 30', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(31, 'Product 31', 13.75, 90, 'image31.jpg', 'Description for product 31', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(32, 'Product 32', 15.99, 100, 'image32.jpg', 'Description for product 32', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(33, 'Product 33', 20.75, 200, 'image33.jpg', 'Description for product 33', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(34, 'Product 34', 6.50, 70, 'image34.jpg', 'Description for product 34', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(35, 'Product 35', 22.99, 40, 'image35.jpg', 'Description for product 35', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(36, 'Product 36', 9.99, 60, 'image36.jpg', 'Description for product 36', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(37, 'Product 37', 12.49, 50, 'image37.jpg', 'Description for product 37', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(38, 'Product 38', 8.25, 100, 'image38.jpg', 'Description for product 38', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(39, 'Product 39', 19.75, 90, 'image39.jpg', 'Description for product 39', 'inactive', '2024-07-14 19:03:42', '2024-07-14 19:03:42'),
(40, 'Product 40', 5.99, 80, 'image40.jpg', 'Description for product 40', 'active', '2024-07-14 19:03:42', '2024-07-14 19:03:42');

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
('9Vr9CI5CJ6xhjq2i32zlKafaira0Mv4gdlpgxphq', 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVTVVQTJhYkZmaklpR0phckJHbUUxRWNWSkRRaXNuVEJIT083d0RTYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvYmthc2gvbGFyYXZlbC9wdWJsaWMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1721039116),
('AIHWVXpHd1KmXym0dSglWikO2vHH0KXz7TE3L2xQ', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTgxSHZmMk1BTXBSeGZadG41TW9ZQ2VHRk0zUE9uc2VobUxZZENJbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvYmthc2gvbGFyYXZlbC9wdWJsaWMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1720989143),
('auQYl91A7DN27V9S8Pcp1YYCqzZHPm25mM41xOMf', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE1kNWxHZm5xRFhLdXRDTGJFMm9wSHNxSXJUbGtLdGpCbmphMXd3TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvYmthc2gvbGFyYXZlbC9wdWJsaWMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1721068353),
('iA1E0u7qaxaJrprKvZ0MRFsGD7UfoelFb70bRvBf', 7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVWR0b3J6dGJWdGNOV0ZRaHlFTHdta09tYWdCM3pLS1M5YlNWdU14QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvYmthc2gvbGFyYXZlbC9wdWJsaWMvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9', 1721039819),
('pjK5yG7dB8g3NFrvRAz4ITQuBHrVEDxE1BucSTZA', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTJhNVU3OEV6Q0NsQU5zS3dNdFhZMjRrZ2FWVzQ4cmdjNTNyamZGQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3QvYmthc2gvbGFyYXZlbC9wdWJsaWMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1721041111);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `trxid` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `type` enum('income','expense') NOT NULL,
  `status` enum('processing','completed','canceled') NOT NULL DEFAULT 'processing',
  `pin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `email`, `trxid`, `amount`, `description`, `type`, `status`, `pin`, `created_at`, `updated_at`) VALUES
(8, 8, 'sabbir@gmail.com', '6695569e135ee', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:04:30', '2024-07-15 11:04:30'),
(9, 6, 'user@gmail.com', '6695569e135ee', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:04:30', '2024-07-15 11:04:30'),
(10, 8, 'sabbir@gmail.com', '669557664e2e8', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:07:50', '2024-07-15 11:07:50'),
(11, 6, 'user@gmail.com', '669557664e2e8', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:07:50', '2024-07-15 11:07:50'),
(12, 6, 'user@gmail.com', '66955a982a3d6', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:21:33', '2024-07-15 11:21:33'),
(13, 6, 'user@gmail.com', '66955a982a3ac', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:21:33', '2024-07-15 11:21:33'),
(14, 8, 'sabbir@gmail.com', '66955a982a3d6', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:21:33', '2024-07-15 11:21:33'),
(15, 8, 'sabbir@gmail.com', '66955a982a3ac', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:21:34', '2024-07-15 11:21:34'),
(16, 6, 'user@gmail.com', '66955baaad9f4', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:26:02', '2024-07-15 11:26:02'),
(17, 8, 'sabbir@gmail.com', '66955baaad9f4', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:26:02', '2024-07-15 11:26:02'),
(18, 6, 'user@gmail.com', '66955bec3a7d6', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:27:08', '2024-07-15 11:27:08'),
(19, 8, 'sabbir@gmail.com', '66955bec3a7d6', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:27:10', '2024-07-15 11:27:10'),
(20, 6, 'user@gmail.com', '66955c31a2e5b', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:28:17', '2024-07-15 11:28:17'),
(21, 8, 'sabbir@gmail.com', '66955c31a2e5b', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:28:17', '2024-07-15 11:28:17'),
(22, 6, 'user@gmail.com', '66956130a7bb6', 500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:49:36', '2024-07-15 11:49:36'),
(23, 8, 'sabbir@gmail.com', '66956130a7bb6', 500, NULL, 'income', 'completed', NULL, '2024-07-15 11:49:36', '2024-07-15 11:49:36'),
(24, 8, 'sabbir@gmail.com', '669562d104f8c', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 11:56:33', '2024-07-15 11:56:33'),
(25, 6, 'user@gmail.com', '669562d104f8c', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 11:56:33', '2024-07-15 11:56:33'),
(26, 8, 'sabbir@gmail.com', '669569639b13d', 500, NULL, 'expense', 'completed', NULL, '2024-07-15 12:24:36', '2024-07-15 12:24:36'),
(27, 6, 'user@gmail.com', '669569639b13d', 500, NULL, 'income', 'completed', NULL, '2024-07-15 12:24:36', '2024-07-15 12:24:36'),
(28, 8, 'sabbir@gmail.com', '669569ebbb5ed', 2500, NULL, 'expense', 'completed', NULL, '2024-07-15 12:26:51', '2024-07-15 12:26:51'),
(29, 6, 'user@gmail.com', '669569ebbb5ed', 2500, NULL, 'income', 'completed', NULL, '2024-07-15 12:26:52', '2024-07-15 12:26:52'),
(30, 8, 'sabbir@gmail.com', '66956a40586a6', 11, NULL, 'expense', 'completed', NULL, '2024-07-15 12:28:16', '2024-07-15 12:28:16'),
(31, 6, 'user@gmail.com', '66956a40586a6', 11, NULL, 'income', 'completed', NULL, '2024-07-15 12:28:16', '2024-07-15 12:28:16'),
(32, 6, 'user@gmail.com', '66956d7c7236f', 11, NULL, 'expense', 'completed', NULL, '2024-07-15 12:42:04', '2024-07-15 12:42:04'),
(33, 6, 'user@gmail.com', '66956d7c7236f', 11, NULL, 'income', 'completed', NULL, '2024-07-15 12:42:05', '2024-07-15 12:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `staus` enum('active','inactive') NOT NULL DEFAULT 'active',
  `type` enum('current','savings') NOT NULL DEFAULT 'current',
  `balance` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `image`, `address`, `nid`, `dob`, `gender`, `staus`, `type`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'user', 'user@gmail.com', NULL, NULL, '$2y$12$0cur3rXvC9IFiGb.CcK3RuZOz4IpZgJb/mE6FumA7YdAC1qK7WahW', 'user', NULL, NULL, NULL, NULL, NULL, 'active', 'current', 7511, NULL, '2024-07-14 12:38:35', '2024-07-15 12:42:05'),
(7, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$12$.hbvjodII2lyCPx5XhtGOu2LdlF3RmGlJiSZ40bKy4Pfcx8Xvs/kC', 'admin', NULL, NULL, NULL, NULL, NULL, 'active', 'current', 10000, NULL, '2024-07-14 12:41:06', '2024-07-14 12:41:06'),
(8, 'sabbir', 'sabbir@gmail.com', NULL, NULL, '$2y$12$MjFfEF3HCixWf8XEtAlVwOD2m.tX0JNnud.URYytaOx.7wMxI5faK', 'user', NULL, NULL, NULL, NULL, NULL, 'active', 'current', 27489, NULL, '2024-07-15 08:17:01', '2024-07-15 12:28:16');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
