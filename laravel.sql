-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2023 at 12:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_02_105341_create_questions_table', 2),
(6, '2023_06_02_110442_create_questions_table', 3),
(7, '2023_06_02_150742_create_questions_table', 4),
(8, '2023_06_02_181846_create_signs_table', 5);

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
(1, 'App\\Models\\User', 3, 'authToken', 'a9b062a750896cef623958f6f6b6406a1de076cb544a9a8c993d795b18699f12', '[\"*\"]', NULL, NULL, '2023-06-01 21:58:27', '2023-06-01 21:58:27'),
(2, 'App\\Models\\User', 1, 'authToken', '1d1a19699eefd8e285e9aef56b00330c689abacfce2cecc189dba550dc07875c', '[\"*\"]', NULL, NULL, '2023-06-02 02:57:59', '2023-06-02 02:57:59'),
(3, 'App\\Models\\User', 1, 'authToken', '67aec58fc838ca24af0083f742a9b1cebbdfbebfc73943144a153b3982e99138', '[\"*\"]', NULL, NULL, '2023-06-02 03:10:50', '2023-06-02 03:10:50'),
(4, 'App\\Models\\User', 1, 'authToken', 'f5c23411e03124acc643e71e7297a6059e9052e3559323c725e6233a566c8d17', '[\"*\"]', NULL, NULL, '2023-06-02 03:14:50', '2023-06-02 03:14:50'),
(5, 'App\\Models\\User', 1, 'authToken', '185a3ad7531165efa27de4d71a29b8d7408eaf2f00d51f46479725bc0373fdc0', '[\"*\"]', NULL, NULL, '2023-06-02 03:28:50', '2023-06-02 03:28:50'),
(6, 'App\\Models\\User', 1, 'authToken', 'a6df96815373719bee90636fd6c7b8a16c5d551ad1139cc6c0d495ac51dde9cb', '[\"*\"]', NULL, NULL, '2023-06-02 03:37:50', '2023-06-02 03:37:50'),
(7, 'App\\Models\\User', 1, 'authToken', '8c809beca4ade074436543d8644308d0a64318cad188d190e70621360a5ca391', '[\"*\"]', NULL, NULL, '2023-06-02 03:39:56', '2023-06-02 03:39:56'),
(8, 'App\\Models\\User', 1, 'authToken', 'a35d70bb1a21dcc7e3233ab3adb5cc0fe02f19499fe1ddfadcf64263dc7db31c', '[\"*\"]', NULL, NULL, '2023-06-02 03:50:49', '2023-06-02 03:50:49'),
(9, 'App\\Models\\User', 1, 'authToken', 'fc24650fa1d3bad35188f2beca1554585886e0cf3b1703523f015be50d3f8003', '[\"*\"]', NULL, NULL, '2023-06-02 03:54:26', '2023-06-02 03:54:26'),
(10, 'App\\Models\\User', 1, 'authToken', 'de68d4b20ab1fc5d6e3314836d8ecc496f0233dc928160399a78c6ea90e41165', '[\"*\"]', NULL, NULL, '2023-06-02 03:55:10', '2023-06-02 03:55:10'),
(11, 'App\\Models\\User', 1, 'authToken', 'dfdcc9841dc349157281149bd2c83e1a2e94f108b789b7b57d1c19a1f2559139', '[\"*\"]', NULL, NULL, '2023-06-02 03:55:56', '2023-06-02 03:55:56'),
(12, 'App\\Models\\User', 1, 'authToken', '5c750f4a1e0982cc0c509e37e2ed03d3080c454b94c737b430a6f621233b89f7', '[\"*\"]', NULL, NULL, '2023-06-02 03:59:18', '2023-06-02 03:59:18'),
(13, 'App\\Models\\User', 1, 'authToken', '99d25af269bfa68767462609ffcabbc9296fcb52a1173939d2f5e519737d629c', '[\"*\"]', NULL, NULL, '2023-06-02 04:00:53', '2023-06-02 04:00:53'),
(14, 'App\\Models\\User', 1, 'authToken', 'c087c23f39ba9cf9e0f251d8d3606b0ee30928b46e5a6b6a8f253dbcf5e3ab2b', '[\"*\"]', NULL, NULL, '2023-06-02 04:02:53', '2023-06-02 04:02:53'),
(15, 'App\\Models\\User', 1, 'authToken', '0db350180703869e032027623146dbff55798aece9f15a23b98f6f8150a475fb', '[\"*\"]', NULL, NULL, '2023-06-02 04:03:22', '2023-06-02 04:03:22'),
(16, 'App\\Models\\User', 1, 'authToken', '57defff7b7c7f2176af500077c018a8d226710fb4d2327b5b92dadf1ca5ac113', '[\"*\"]', NULL, NULL, '2023-06-02 16:28:49', '2023-06-02 16:28:49'),
(17, 'App\\Models\\User', 1, 'authToken', '465b7d0d81dba0e3ee2b786f8a6393a083472024c193481261a1b1bed291b8a7', '[\"*\"]', NULL, NULL, '2023-06-02 17:38:43', '2023-06-02 17:38:43'),
(18, 'App\\Models\\User', 1, 'authToken', '4a4e134e23dbc9fca5d1e312f0f0c95ece537a013eccdaa72fd6f2eb1fb47e4d', '[\"*\"]', NULL, NULL, '2023-06-02 17:42:20', '2023-06-02 17:42:20'),
(19, 'App\\Models\\User', 1, 'authToken', '1c350b7f08e09129dbffea541aa3b449abe3ce8797ff5ad6f281dc95216a776b', '[\"*\"]', NULL, NULL, '2023-06-02 18:25:00', '2023-06-02 18:25:00'),
(20, 'App\\Models\\User', 1, 'authToken', '00b1fd8d0765c0571219ae3c1747a81cd8bba899d6d0245b4b9a54546990cc94', '[\"*\"]', NULL, NULL, '2023-06-02 18:58:28', '2023-06-02 18:58:28'),
(21, 'App\\Models\\User', 1, 'authToken', 'ac55a2745e9bbd2e929866b22a2ef772800079a6a3c95145d9ca8d9f8b7bb730', '[\"*\"]', NULL, NULL, '2023-06-02 19:43:55', '2023-06-02 19:43:55'),
(22, 'App\\Models\\User', 1, 'authToken', 'de819a3dc5ab3fafc2e6566d246aa54e224a7cd6bc6700d590ef7b7b96230e8e', '[\"*\"]', NULL, NULL, '2023-06-02 22:30:35', '2023-06-02 22:30:35'),
(23, 'App\\Models\\User', 1, 'authToken', '2e02ec30ce46c8b3724ff105e7df8c6290c065e4917de615b6a5f736347e0b9f', '[\"*\"]', NULL, NULL, '2023-06-02 22:50:03', '2023-06-02 22:50:03'),
(24, 'App\\Models\\User', 1, 'authToken', '87af93301e0dd0fc17b414632badc43271c9f296b41bdc770ac69af50862e86b', '[\"*\"]', NULL, NULL, '2023-06-03 00:25:06', '2023-06-03 00:25:06'),
(25, 'App\\Models\\User', 1, 'authToken', 'dfef5a2493b8a5fb4a735e96b7ed0db243bd0e7319a0dc10a4104dc63123d888', '[\"*\"]', NULL, NULL, '2023-06-03 00:36:23', '2023-06-03 00:36:23'),
(26, 'App\\Models\\User', 1, 'authToken', '22e4ef4ce5eaadcab2af48afe95790be74e2c1144f893ed0e7dc0e18c6e4889d', '[\"*\"]', NULL, NULL, '2023-06-03 00:41:59', '2023-06-03 00:41:59'),
(27, 'App\\Models\\User', 1, 'authToken', '31bc9eaf86c57ce17f91f1c7ddbc076836f4169984422854bc22c9669b642426', '{\"expires_in\":100}', NULL, NULL, '2023-06-03 00:44:57', '2023-06-03 00:44:57'),
(28, 'App\\Models\\User', 1, 'authToken', 'f4698fba96224e6e0eb0108888c83a69e8e154bed083ce92bc263058c95c1beb', '[\"*\"]', NULL, NULL, '2023-06-03 15:44:54', '2023-06-03 15:44:54'),
(29, 'App\\Models\\User', 1, 'authToken', 'e3125738f49ea1c30572d9fe2ef89a4e716711463708069a28a211f3566b2150', '[\"*\"]', NULL, NULL, '2023-06-03 15:54:23', '2023-06-03 15:54:23'),
(30, 'App\\Models\\User', 1, 'authToken', 'f02dbf545adf98b36bbd429b0bba7ec678c55e1f71b0fbc1361c346b02243ddd', '[\"*\"]', NULL, NULL, '2023-06-03 15:57:53', '2023-06-03 15:57:53'),
(31, 'App\\Models\\User', 1, 'authToken', '5e786c15b71812c21246da64db4c09c8a6179d9815de9aa878ced6459d8cede4', '[\"*\"]', NULL, NULL, '2023-06-03 17:18:41', '2023-06-03 17:18:41'),
(32, 'App\\Models\\User', 1, 'authToken', '9420393fd1b9fc691914166b2b45d139bd19b1fd3a695895833ac25a3f5496d3', '[\"*\"]', NULL, NULL, '2023-06-04 01:29:08', '2023-06-04 01:29:08'),
(33, 'App\\Models\\User', 1, 'authToken', '5aa8bb73ed4e03bac4589e438fc4f964c7a8f3b0b66205aa239a749264543494', '[\"*\"]', NULL, NULL, '2023-06-04 15:22:16', '2023-06-04 15:22:16'),
(34, 'App\\Models\\User', 1, 'authToken', 'b9a8ec61bf5c5d9c33d27012e5291cf09060b8e6d2b76e09b859bfffe220fdee', '[\"*\"]', NULL, NULL, '2023-06-04 15:23:11', '2023-06-04 15:23:11'),
(35, 'App\\Models\\User', 1, 'authToken', 'aaa8a010fb218213b243ab6c3a5fa7289f1547dba3d0ed5b40325a471a9480c9', '[\"*\"]', NULL, NULL, '2023-06-04 15:32:13', '2023-06-04 15:32:13'),
(36, 'App\\Models\\User', 1, 'authToken', '7765bb07c68136ae7defd3501cc707013cb25bfb5dcb84d03cf9ee9f9075b0fd', '[\"*\"]', NULL, NULL, '2023-06-04 15:38:06', '2023-06-04 15:38:06'),
(37, 'App\\Models\\User', 1, 'authToken', '9fcdd23f619084b3e8433109def95ebb92f465362fbda7d0649ca485d90e17eb', '[\"*\"]', NULL, NULL, '2023-06-04 16:08:54', '2023-06-04 16:08:54'),
(38, 'App\\Models\\User', 1, 'authToken', 'f0d60be3c5a1bd0c49c4c1c662e03dc1611676a4e55d09fa7b09c27398a547fc', '[\"*\"]', NULL, NULL, '2023-06-04 16:13:40', '2023-06-04 16:13:40'),
(39, 'App\\Models\\User', 1, 'authToken', '1e9783eecefe92005d5ce611392a09b8c5c73adf1638b4ddef39c1752a456a7b', '[\"*\"]', NULL, NULL, '2023-06-04 16:17:40', '2023-06-04 16:17:40'),
(40, 'App\\Models\\User', 1, 'authToken', '19113158af06e212c40ef592612a8dc0cbe804a130172ce17c3dfed40f8b751b', '[\"*\"]', NULL, NULL, '2023-06-04 16:20:27', '2023-06-04 16:20:27'),
(41, 'App\\Models\\User', 1, 'authToken', 'fb0f747ce0b13050b34342df2ec3f58866903dace2824ec899c64130a24b3f23', '[\"*\"]', NULL, NULL, '2023-06-04 16:29:11', '2023-06-04 16:29:11'),
(42, 'App\\Models\\User', 1, 'authToken', '2d40a8a3abd1aefb030229290bad9f7916ae465178b167c45bdaadd4d478e75f', '[\"*\"]', NULL, NULL, '2023-06-04 16:45:10', '2023-06-04 16:45:10'),
(43, 'App\\Models\\User', 1, 'authToken', '41e7bbdc04a2612445fe41efcf1046f7b2c2018d82f5e2e2319ee18ae2397bfe', '[\"*\"]', NULL, NULL, '2023-06-04 16:49:47', '2023-06-04 16:49:47'),
(44, 'App\\Models\\User', 1, 'authToken', '22ca07e2157e2b2ba80214b6038c036905d0b677c256dd08568c990990f05064', '[\"*\"]', NULL, NULL, '2023-06-04 19:57:22', '2023-06-04 19:57:22'),
(45, 'App\\Models\\User', 1, 'authToken', '8ef136a74f075732b5e2a37dbddb20f44ea254cacad229590449f02ea419268c', '[\"*\"]', NULL, NULL, '2023-06-05 01:59:16', '2023-06-05 01:59:16'),
(46, 'App\\Models\\User', 1, 'authToken', '8a212951f072f87c588c44e733cf282193e40a2fb5336e25dbbd8c8911292f17', '[\"*\"]', NULL, NULL, '2023-06-05 02:02:42', '2023-06-05 02:02:42'),
(47, 'App\\Models\\User', 1, 'authToken', 'a84fd462752850d0c3880f4bdc98440c9bbb2b8596402df5ad616eeba72527eb', '[\"*\"]', NULL, NULL, '2023-06-05 02:11:18', '2023-06-05 02:11:18'),
(48, 'App\\Models\\User', 1, 'authToken', '46e9c57ea8d1f7f1a47509969e22afce6ef35c0dd5c048cfc9ecdcd543895c6c', '[\"*\"]', NULL, NULL, '2023-06-05 02:12:43', '2023-06-05 02:12:43'),
(49, 'App\\Models\\User', 1, 'authToken', 'a1b525d2542e0b99ebf5d5333695708a777e4b74b96d45a2f0478dc3b0043c96', '[\"*\"]', NULL, NULL, '2023-06-05 02:15:47', '2023-06-05 02:15:47'),
(50, 'App\\Models\\User', 1, 'authToken', '715bc8da6b9699cbe9ba9e25a27bb17718b186f263e49feaa6177291434b1f8f', '[\"*\"]', NULL, NULL, '2023-06-05 02:16:17', '2023-06-05 02:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `serie` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `answer`, `serie`, `image`) VALUES
(1, 'The speed is limited to 70 km\\/h', 'After the panel', 'Befor the panel', 'Before and after panel', 'After the panel', 1, 'question1.jpg'),
(2, 'I can overtake', 'True', 'False', 'None answer', 'True', 1, 'question2.jpg'),
(3, 'I can drive to', '60 km\\/h', '80 km\\/h', '110 km\\/h', '80 km\\/h', 1, 'question3.jpg'),
(4, 'Signage tells me I\'m going to meet', 'The first of which is to the right', 'The first of which is on the left', 'Other', 'The first of which is on the left', 1, 'question4.jpg'),
(5, 'After this panel, I can', 'Park', 'Stop me', 'Other', 'Stop me', 1, 'question5.jpg'),
(6, 'Signaling authorizes overtaking', 'In my direction of traffic', 'In the opposite direction of traffic', 'When the vehicle is signaling a right turn', 'In my direction of traffic', 1, 'question6.jpg'),
(7, 'One drink of alcohol corresponds to a blood alcohol level of', '0.20g\\/L of blood', '0.40g\\/L of blood', '1.75g\\/L of blood', '0.20g\\/L of blood', 1, 'question7.jpg'),
(8, 'At the next intersection, I can turn right to go home', 'True', 'False', 'Other', 'True', 1, 'question8.jpg'),
(9, 'I\'ll take the freeway if I\'m going to', 'Chartres', 'Bordeaux', 'Evry', 'Chartres', 1, 'question9.jpg'),
(10, 'I can pass this vehicle', 'True', 'False', 'Other', 'True', 2, 'question13.jpg'),
(11, 'I can park', 'True', 'False', 'other', 'False', 2, 'question14.jpg'),
(12, 'Signage indicates an authorization to overtake for all vehicles.', 'True', 'False', 'Other', 'False', 2, 'question15.jpg'),
(13, 'Signage warns me of danger', '50 meters away', '100 meters away', '150 meters away', '150 meters away', 2, 'question16.jpg'),
(14, 'I am well placed ', 'True', 'False', 'Other', 'True', 2, 'question17.jpg'),
(15, 'I am well placed to circulate', 'True', 'False', 'True', 'True', 2, 'question18.jpg'),
(16, 'To pass this pedestrian, I must leave a side space of', '1 meter', '1.5 meter', '2 meter', '1 meter', 2, 'question19.jpg'),
(17, 'I am traveling at 70 km/h, the safety distance that I must leave in relation to the vehicle in front of me is', '30 meters', '42 meters', '56 meters', '42 meters', 2, 'question20.jpg'),
(18, 'I can drive in traffic lights', 'Standing alone', 'Crossing', 'Rear fog', 'Crossing', 2, 'question21.jpg'),
(19, 'I can enter this roundabout.', 'True', 'False', 'Other', 'True', 3, 'question22.jpg'),
(20, 'L\'ambulance sur ma gauche est en intervention', 'True', 'False', 'Other', 'True', 3, 'question23.jpg'),
(21, 'At this intersection, I have priority', 'True', 'False', 'Other', 'True', 3, 'question24.jpg'),
(22, 'I can drive in traffic lights', 'Standing alone', 'Rear fog', 'Other', 'Rear fog', 3, 'question25.jpg'),
(23, 'At this intersection', 'I pass', 'I stop', 'Other', 'I stop', 3, 'question26.jpg'),
(24, 'On my right, the vehicles are parked', 'In niche', 'In battle', 'Other', 'In battle', 3, 'question27.jpg'),
(25, 'At this place, I can turn around', 'True', 'False', 'Other', 'True', 3, 'question28.jpg'),
(26, 'What is the speed limit', '80 km/h', '100 km/h', '110 km/h', '110 km/h', 3, 'question29.jpg'),
(27, 'Signage tells me I\'m going to meet', 'A speed bump type speed', 'A pothole', 'Other', 'A speed bump type speed', 3, 'question30.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `signs`
--

CREATE TABLE `signs` (
  `id_sign` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signs`
--

INSERT INTO `signs` (`id_sign`, `image`, `description`) VALUES
(1, 'pic10.jpg', 'Circular road signs give orders, and those that include red borders let you know that an action is prohibited. An example of this could be a sign indicating that no right turns are permitted at a specific junction, or when a national speed limit applies.'),
(2, 'pic11.jpg', 'Triangular signs are used as warning signs to road users. These traffic signs will typically have a red border and advise of potential road hazards like animals and sharp bends.'),
(3, 'pic12.jpg', 'Rectangular signs are most commonly used and provide road users with information and directions. Rectangular signs with a blue background on motorways will give directions. On other roads, they will give the drivers information.'),
(4, 'pic13.jpg', 'Like a stop sign, the only use of an upside-down triangle is for a ‘Give Way’ sign. The white sign with a red border and black writing lets road users know the instruction, even if it is partially obstructed.'),
(5, 'pic14.jpg', 'The use of colour on road signs also advises the driver of the information or instruction.\r\n\r\n'),
(6, 'pic15.jpg', 'Brown signs are used for tourist destinations or attractions and will usually have an image or symbol letting you know what it is for.\r\n\r\n'),
(7, 'pic16.jpg', 'Yellow road signs draw the road users’ attention and typically indicate regulations such as loading, waiting, and parking restrictions.\r\nTemporary diversions and directions are also indicated on yellow signs.\r\n'),
(8, 'pic17.jpg', 'While black writing is used on many lighter coloured signs, signs with black backgrounds are only used for heavy goods vehicles (HGVs) and usually include an image of a lorry.\r\n'),
(9, 'pic18.jpg', 'Some signs are there to tell you precisely what you can and can’t do. Road signs that give orders do this for a reason, and adhering to them ensures a better level of road safety for all road users and pedestrians.'),
(10, 'pic19.jpg', 'Most warning signs are triangular, have a white background and red border. They let you know about potential hazards ahead, such as bends in the road, approaching crossroads, or roundabouts.'),
(11, 'pic20.jpg', 'Direction signs help drivers know where and when to turn off for specific destinations. They are different colours depending on the road they are found on.'),
(12, 'pic21.jpg', 'Yellow road signs are general warning signs to indicate potential hazards or changing road conditions ahead.'),
(13, 'pic22.jpg', 'This color is relatively new on our roadways, but it is used for signs relating to pedestrians, bicycles, and school warning signs. They are increasingly being used for some constructions signs as well. '),
(14, 'pic23.jpg', 'Orange road signs are usually temporary signs relating to road work, temporary traffic control, and maintenance warnings. When you see orange road signs, be sure to watch for workers on or near the roadway.'),
(15, 'pic24.jpg', 'This sign shape is used for yield signs. Yield the right of way. Slow down and let vehicles crossing your path go by. If necessary, stop before going ahead.'),
(16, 'pic25.jpg', 'This sign will be on the left-hand side of the road or highway. It warns you of a no-passing zone.'),
(17, 'pic26.jpg', 'Indicates the maximum speed on a road for standard vehicles. This maximum speed indicates the safest maximum speed during ideal driving conditions.'),
(18, 'pic27.jpg', 'Usually seen on highways and expressways, this sign indicates the minimum allowable speed during regularly flowing traffic.'),
(19, 'pic28.jpg', 'On some roadways, larger vehicles must abide by different speed limits. This sign indicates the maximum speed for larger trucks and vehicles.'),
(20, 'pic30.jpg', 'This sign is used to indicate a street that you can not turn right onto. Most often, you will see these in downtown areas.'),
(21, 'pic31.jpg', ' This sign is used to indicate a street that you can’t turn left onto. Again, most often seen in downtown areas.'),
(22, 'pic32.jpg', 'This indicates that a U-turn is not legal in an area where this sign is posted. Typically, it is because the area has too much traffic  to safely allow a U-turn.'),
(23, 'pic33.jpg', 'These will usually be paired with the no-turn equivalent of its opposite sign.'),
(24, 'pic34.jpg', 'This one means you should keep right. It is usually seen in areas where a divided median begins, or in construction areas.'),
(25, 'pic35.jpg', 'If you see this sign, it means you don’t belong there, and should probably stay out. Usually, it’ll be posted at the beginning of an exit that is meant to come out where you’re trying to go in but can also be used for other areas as well.'),
(26, 'pic36.jpg', 'Much like the ‘Do Not Enter’ sign, it indicates that you’re where you shouldn’t be. For example, you’ll see this sign posted on one-way roads facing away from flowing traffic.'),
(27, 'pic37.jpg', 'This one means you can’t park wherever it is. Some no parking signs can be a bit confusing with different days and times shown. Be sure to read them carefully.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'soufiane', 'soufiane@gmail.com', NULL, '$2y$10$wEUCIHFI.VG4n.GQh9IixuRJq3tlgZNJruobpugQExPsLHZOoJiei', NULL, '2023-06-01 20:29:56', '2023-06-01 20:29:56'),
(2, 'younes', 'younes@gmail.com', NULL, '$2y$10$294/b1z4h7k34db76dx0z.7iXUzbj869BtHJCUzqR6mgcBOFzsbdO', NULL, '2023-06-01 20:31:20', '2023-06-01 20:31:20'),
(3, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$8rpTAFkTHKlReQrKAlnZ3.BBZvKLwBbPziYgPwQ6hTES7br4gmJuy', NULL, '2023-06-01 21:58:11', '2023-06-01 21:58:11'),
(4, 'karim', 'karim@gmail.com', NULL, '$2y$10$SjEqwSU2VuePwyjzL1yjkO2knyBzDUgnhkVtiUajVBBFlyfJty9XO', NULL, '2023-06-02 02:48:46', '2023-06-02 02:48:46');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signs`
--
ALTER TABLE `signs`
  ADD PRIMARY KEY (`id_sign`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `signs`
--
ALTER TABLE `signs`
  MODIFY `id_sign` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
