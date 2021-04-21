-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 12:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `thumbnail`, `name`, `slug`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'recusandae', 'recusandae', 1, '2021-04-20 22:47:19', '2021-04-20 22:47:19'),
(2, 4, NULL, 'alias', 'alias', 0, '2021-04-20 22:47:19', '2021-04-20 22:47:19'),
(3, 1, NULL, 'perspiciatis', 'perspiciatis', 1, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(4, 4, NULL, 'inventore', 'inventore', 0, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(5, 4, NULL, 'voluptatem', 'voluptatem', 1, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(6, 2, NULL, 'rerum', 'rerum', 1, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(7, 2, NULL, 'suscipit', 'suscipit', 0, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(8, 2, NULL, 'exercitationem', 'exercitationem', 0, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(9, 3, NULL, 'iste', 'iste', 0, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(10, 5, NULL, 'culpa', 'culpa', 1, '2021-04-20 22:47:20', '2021-04-20 22:47:20'),
(11, 2, NULL, 'velit', 'velit', 1, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(12, 3, NULL, 'illum', 'illum', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(13, 2, NULL, 'quaerat', 'quaerat', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(14, 2, NULL, 'similique', 'similique', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(15, 4, NULL, 'et', 'et', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(16, 5, NULL, 'sed', 'sed', 1, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(17, 1, NULL, 'vitae', 'vitae', 1, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(18, 5, NULL, 'qui', 'qui', 1, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(19, 1, NULL, 'ratione', 'ratione', 1, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(20, 4, NULL, 'praesentium', 'praesentium', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(21, 3, NULL, 'voluptates', 'voluptates', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(22, 5, NULL, 'ipsam', 'ipsam', 0, '2021-04-20 23:37:59', '2021-04-20 23:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 20, 18, NULL, NULL),
(12, 40, 15, NULL, NULL),
(13, 22, 21, NULL, NULL),
(14, 6, 21, NULL, NULL),
(15, 19, 2, NULL, NULL),
(16, 20, 16, NULL, NULL),
(17, 45, 11, NULL, NULL),
(18, 7, 8, NULL, NULL),
(19, 52, 15, NULL, NULL),
(20, 32, 10, NULL, NULL),
(21, 3, 11, NULL, NULL),
(22, 46, 21, NULL, NULL),
(23, 35, 12, NULL, NULL),
(24, 36, 2, NULL, NULL),
(25, 15, 13, NULL, NULL),
(26, 35, 7, NULL, NULL),
(27, 19, 2, NULL, NULL),
(28, 3, 20, NULL, NULL),
(29, 50, 22, NULL, NULL),
(30, 16, 9, NULL, NULL);

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_20_025027_create_posts_table', 1),
(5, '2021_04_20_025044_create_categories_table', 1),
(6, '2021_04_20_025104_create_galleries_table', 1),
(7, '2021_04_20_034926_create_category_post_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `thumbnail`, `title`, `slug`, `details`, `is_published`, `post_type`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'Dolore dolorem nulla ut nisi nemo.', 'dolore-dolorem-nulla-ut-nisi-nemo', 'Cum eveniet omnis maxime est numquam. Reprehenderit labore libero consequatur totam et id. Error dolores minima aliquid doloribus veritatis possimus. Eaque rerum et rerum ad possimus velit dolore.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(2, 2, NULL, 'Est est id aperiam adipisci.', 'est-est-id-aperiam-adipisci', 'A consequatur voluptas voluptatum quae. Non porro magni aut molestiae.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(3, 5, NULL, 'Commodi perspiciatis voluptatem quam ullam velit nam quia.', 'commodi-perspiciatis-voluptatem-quam-ullam-velit-nam-quia', 'Iusto voluptatem dolorem est. Id at earum aut eligendi nulla culpa a tempore. Voluptas velit dolor exercitationem voluptatem quis. Sint reiciendis debitis ex laboriosam nihil nisi.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(4, 1, NULL, 'Corporis incidunt quis sunt deserunt voluptatum id.', 'corporis-incidunt-quis-sunt-deserunt-voluptatum-id', 'Nemo qui ut provident rerum laborum repudiandae molestias officiis. Aspernatur qui tempora ex. Iste modi iusto non voluptatum provident. Earum voluptatem animi harum eos aut sed porro.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(5, 1, NULL, 'Voluptatem nobis animi quasi pariatur dolore non.', 'voluptatem-nobis-animi-quasi-pariatur-dolore-non', 'Illo illo omnis dicta ea itaque et sint et. Architecto modi facere deleniti voluptas inventore nam. Quisquam quaerat eum qui magnam.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(6, 4, NULL, 'Qui repudiandae qui atque mollitia.', 'qui-repudiandae-qui-atque-mollitia', 'Esse maxime dignissimos eveniet molestias. Possimus facilis eos excepturi porro ex. Numquam eum ea sunt cum. Quisquam assumenda aut quidem ipsa exercitationem ut.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(7, 5, NULL, 'Qui qui illo aut molestiae.', 'qui-qui-illo-aut-molestiae', 'Eaque tempora aut adipisci libero enim. Vel ducimus consequatur ea architecto et quia quo id. Velit distinctio quidem quaerat enim nihil adipisci.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(8, 5, NULL, 'Nisi enim doloremque ut ut voluptas quam aut et.', 'nisi-enim-doloremque-ut-ut-voluptas-quam-aut-et', 'Error officiis nesciunt eius. Quos culpa aliquid nam tenetur. Rerum minima officiis saepe voluptas. In ipsam illo qui a.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(9, 1, NULL, 'Eum dolor veritatis corporis.', 'eum-dolor-veritatis-corporis', 'Est sunt omnis sed ab quaerat consequatur quibusdam. Rerum quae rem autem et. Fuga ea error magnam excepturi. Voluptas hic soluta sit odit.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(10, 5, NULL, 'Quod qui omnis vel praesentium quis.', 'quod-qui-omnis-vel-praesentium-quis', 'Velit debitis dolorem maxime et quasi. Voluptatem itaque ab dolorem autem hic.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(11, 5, NULL, 'Expedita nulla voluptas voluptatem voluptatem numquam ab ratione.', 'expedita-nulla-voluptas-voluptatem-voluptatem-numquam-ab-ratione', 'Aut illum veniam quia. Aspernatur omnis suscipit qui.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(12, 2, NULL, 'Omnis magni eos libero maxime consequatur exercitationem doloremque.', 'omnis-magni-eos-libero-maxime-consequatur-exercitationem-doloremque', 'Architecto inventore temporibus praesentium temporibus occaecati est. Possimus enim tenetur ipsum rerum aliquid. Facere distinctio adipisci sapiente ut veniam dolor. Natus quia sit voluptas impedit ipsam.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(13, 5, NULL, 'Sunt similique et distinctio unde quaerat sit et.', 'sunt-similique-et-distinctio-unde-quaerat-sit-et', 'Necessitatibus dolor reiciendis velit facilis fuga esse nostrum. Quae culpa consequatur ipsam sint voluptas ipsum. Nulla repellat sint enim sapiente et. Harum voluptatem officia quia aut voluptas ullam rerum molestiae.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(14, 5, NULL, 'Perferendis aut consectetur quas qui quis ullam.', 'perferendis-aut-consectetur-quas-qui-quis-ullam', 'Atque odit in non. Repellendus incidunt reiciendis quos repudiandae nam voluptas iusto provident. Repellat earum vero quae dolore voluptatem necessitatibus et. Id est dolore iure pariatur omnis.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(15, 5, NULL, 'Sed dolor temporibus officiis aut aut accusamus reiciendis.', 'sed-dolor-temporibus-officiis-aut-aut-accusamus-reiciendis', 'Adipisci velit ducimus molestiae rerum repudiandae quos blanditiis. Deleniti aut vitae et eum. Sint ut harum eos qui.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(16, 5, NULL, 'Veritatis est ut et earum et reprehenderit.', 'veritatis-est-ut-et-earum-et-reprehenderit', 'Tempora aspernatur beatae qui dolorem. Sunt autem corrupti numquam qui rerum eaque soluta. Nemo eos ab ut veniam deserunt molestiae voluptatem voluptatem. Assumenda eos distinctio rerum sed quam.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(17, 1, NULL, 'Voluptatem ea voluptatem aut tempore ducimus.', 'voluptatem-ea-voluptatem-aut-tempore-ducimus', 'Minus aut tempore consequatur amet minima. Id beatae aliquam aut ipsum autem a. Enim velit esse reprehenderit et harum et. Quae facere adipisci ducimus enim.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(18, 4, NULL, 'Sed quis officia maxime vero et quia hic corrupti.', 'sed-quis-officia-maxime-vero-et-quia-hic-corrupti', 'Rerum est corporis autem ex. Atque totam commodi perferendis veritatis exercitationem velit consequatur. Et atque aut fugit voluptatem.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(19, 1, NULL, 'Et aliquam nisi amet est.', 'et-aliquam-nisi-amet-est', 'Maiores aut voluptatibus qui architecto aut hic fugiat. Libero ducimus quasi aut similique natus. Veniam ut vero ea et dolores maiores velit.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(20, 5, NULL, 'Eum consequatur molestiae dolorem molestiae.', 'eum-consequatur-molestiae-dolorem-molestiae', 'Pariatur omnis consequatur ut quia voluptas. Voluptatum laborum et sit repellendus itaque eos odio modi. Facere debitis fugit nesciunt porro distinctio porro. Ut quo cum a distinctio.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(21, 4, NULL, 'Debitis magni sint ex minus ea qui.', 'debitis-magni-sint-ex-minus-ea-qui', 'Omnis molestias dolor inventore adipisci ducimus voluptas assumenda. Molestiae qui inventore est culpa voluptas ad modi. Et cum porro eius aliquam ullam corrupti suscipit. In et sed dolor laudantium.', 0, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(22, 5, NULL, 'Laboriosam quas autem a hic aut ad.', 'laboriosam-quas-autem-a-hic-aut-ad', 'Ut tenetur deserunt rerum ad omnis officiis autem. Numquam dignissimos similique perspiciatis molestias sit quidem quisquam. Repudiandae cumque molestiae eos consequatur qui. Facere quasi et non et consequatur.', 1, 'post', '2021-04-20 23:00:02', '2021-04-20 23:00:02'),
(23, 1, NULL, 'Minus voluptatem fuga consectetur vero iusto praesentium est.', 'minus-voluptatem-fuga-consectetur-vero-iusto-praesentium-est', 'Alias iste id et omnis nobis vel. Aperiam in officiis ut fugit beatae ut. Ut est debitis qui explicabo.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(24, 2, NULL, 'Corporis aliquam beatae inventore voluptate non quis quo.', 'corporis-aliquam-beatae-inventore-voluptate-non-quis-quo', 'Unde ducimus exercitationem corporis. Assumenda fuga ut velit a ut ut. Distinctio quia aliquam et exercitationem deserunt qui non molestiae.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(25, 4, NULL, 'Non optio eum velit molestias id et nemo.', 'non-optio-eum-velit-molestias-id-et-nemo', 'Ratione et fuga exercitationem maxime voluptatem. Minima dolor rerum officiis voluptas. Minus id adipisci dolorem.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(26, 1, NULL, 'Officia ab iusto veniam voluptatem voluptas enim.', 'officia-ab-iusto-veniam-voluptatem-voluptas-enim', 'Vero est magni vel eius est deserunt. Impedit nisi sed laborum sed sed nobis delectus. Voluptatem possimus est accusantium illo facilis. Sit dicta saepe magni ut qui labore corrupti. Earum deleniti quo qui sit velit aut.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(27, 3, NULL, 'Sit voluptatem ab vel maiores reprehenderit.', 'sit-voluptatem-ab-vel-maiores-reprehenderit', 'Aperiam soluta est aliquid voluptas nam nostrum laborum. Tenetur voluptatem repellendus rem omnis vitae sed eum sapiente. Pariatur exercitationem cupiditate doloremque assumenda cum fuga molestias. Dolore itaque voluptas inventore similique et.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(28, 1, NULL, 'Doloribus eligendi ut sit explicabo non iusto.', 'doloribus-eligendi-ut-sit-explicabo-non-iusto', 'Dolore sed est voluptatem magni. Quia architecto inventore nam soluta vel odio quo ea. Alias inventore a corporis dolorem voluptatum.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(29, 5, NULL, 'Aut expedita dolor reprehenderit enim.', 'aut-expedita-dolor-reprehenderit-enim', 'Dignissimos quo laborum quis veritatis. Accusantium asperiores rem quasi aliquid. Consectetur animi animi consequatur voluptatum voluptas. Ut ut itaque consectetur ut pariatur non eius.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(30, 1, NULL, 'Laborum eaque nesciunt doloremque sed temporibus neque quam.', 'laborum-eaque-nesciunt-doloremque-sed-temporibus-neque-quam', 'Quam quidem omnis distinctio minima sed. Qui vitae quia eligendi aperiam autem qui quisquam. Aut vel recusandae doloremque hic vero atque.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(31, 4, NULL, 'Cum minima soluta corporis non laudantium consectetur.', 'cum-minima-soluta-corporis-non-laudantium-consectetur', 'Ea nam rerum et voluptatibus. Facilis commodi aut modi perspiciatis. Et sint et molestiae ut doloribus non ipsa id. Occaecati aliquid itaque eaque occaecati alias.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(32, 2, NULL, 'Maxime quo iste doloribus rerum sit est.', 'maxime-quo-iste-doloribus-rerum-sit-est', 'Doloremque totam incidunt incidunt sed expedita. Laudantium et id autem doloribus eligendi eos libero. Rerum possimus sed in et vero. In suscipit porro porro ex et magni.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(33, 1, NULL, 'Fuga praesentium voluptas pariatur sit voluptatem nihil quis ea.', 'fuga-praesentium-voluptas-pariatur-sit-voluptatem-nihil-quis-ea', 'Labore ut ipsa dolor temporibus rerum consequatur quae incidunt. Voluptatem cumque dolores quia voluptate rerum non et. Eum sequi enim qui nostrum magni illum delectus.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(34, 4, NULL, 'Amet id libero pariatur et autem quidem dolorem sapiente.', 'amet-id-libero-pariatur-et-autem-quidem-dolorem-sapiente', 'Esse sed soluta sed error voluptas aut aspernatur. Sunt ipsam tenetur dolores totam rerum tempora quia est. Pariatur neque dignissimos dolores nostrum adipisci quia. Nihil quaerat in provident aut voluptas.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(35, 3, NULL, 'Eos quia vero veritatis rerum hic occaecati similique.', 'eos-quia-vero-veritatis-rerum-hic-occaecati-similique', 'Sunt dolorem aut reprehenderit nulla cupiditate. Ipsa quia nesciunt et sequi. Praesentium et molestiae sit occaecati veritatis maxime maiores. Tempore ad delectus voluptatem voluptas qui.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(36, 2, NULL, 'Nihil quo explicabo laborum ut nihil repudiandae perferendis autem.', 'nihil-quo-explicabo-laborum-ut-nihil-repudiandae-perferendis-autem', 'Illo assumenda aut voluptatem totam veritatis saepe. Voluptas exercitationem maiores aliquid doloremque aspernatur cumque porro. Quia tempora cupiditate dolorem omnis enim doloribus amet. Fugit dolore sint ut harum.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(37, 2, NULL, 'Molestias iusto numquam ratione aut voluptatem repudiandae non.', 'molestias-iusto-numquam-ratione-aut-voluptatem-repudiandae-non', 'Qui at et ut repellendus ad consequatur. Consequatur et quaerat quas rerum tenetur voluptatibus. Nemo aliquam et natus repudiandae est aperiam ut. Eius fuga sint quis.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(38, 4, NULL, 'Quia enim minus et hic quam.', 'quia-enim-minus-et-hic-quam', 'Cumque deleniti quia eum fugit quibusdam. Unde sint nesciunt repudiandae quos. Minima iste dignissimos dignissimos.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(39, 4, NULL, 'Vel vel libero voluptatem aliquid qui.', 'vel-vel-libero-voluptatem-aliquid-qui', 'Et vel quia ipsa distinctio omnis omnis qui. Repellendus consequuntur et quaerat pariatur magnam odio. Qui libero perspiciatis ex consequatur. Suscipit beatae est iure atque distinctio saepe.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(40, 1, NULL, 'Hic commodi et debitis qui modi sunt quibusdam et.', 'hic-commodi-et-debitis-qui-modi-sunt-quibusdam-et', 'Enim quaerat sed eveniet ut nisi laborum. Voluptas aliquid deserunt est deleniti eos.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(41, 2, NULL, 'Non dolores maiores animi qui ullam.', 'non-dolores-maiores-animi-qui-ullam', 'Dolorem sed aut dolor. Odio nihil maiores et provident nulla dolore dolorum quasi. Eos minima ut corrupti vitae quidem. Voluptas error voluptas amet dolores ea. Dolor asperiores molestias eaque quo non.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(42, 2, NULL, 'Et voluptatem est incidunt dignissimos ut laboriosam.', 'et-voluptatem-est-incidunt-dignissimos-ut-laboriosam', 'In ducimus eos dolor id laborum id ipsa error. Quod excepturi dolores explicabo eos accusantium impedit consequatur earum. Nemo alias deserunt enim sed. Non quis corporis doloribus incidunt labore veniam.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(43, 3, NULL, 'Voluptatem eligendi sed est occaecati possimus ut.', 'voluptatem-eligendi-sed-est-occaecati-possimus-ut', 'Facilis doloribus quae commodi. Molestiae corrupti dignissimos quas voluptas iusto ducimus iusto modi. Dolore facere eos qui.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(44, 2, NULL, 'Consequatur omnis quis sed maxime dolore occaecati.', 'consequatur-omnis-quis-sed-maxime-dolore-occaecati', 'Sed aut officiis atque. Corrupti animi veritatis fuga ea labore. Voluptatum expedita aperiam natus quis iure rem ut. Vel ad est corporis. Autem sit dolore nobis aut vitae quas.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(45, 2, NULL, 'Vitae laboriosam maxime explicabo rerum mollitia voluptatem nemo.', 'vitae-laboriosam-maxime-explicabo-rerum-mollitia-voluptatem-nemo', 'Et qui quia error delectus vel voluptatem animi quae. Sed tenetur ab repudiandae quo. Aut quasi alias deserunt repellat temporibus alias. Ut et quibusdam inventore explicabo veritatis.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(46, 2, NULL, 'Ullam similique quos excepturi totam saepe.', 'ullam-similique-quos-excepturi-totam-saepe', 'Libero est consequatur atque corrupti iure odio et. Quasi qui voluptas alias dignissimos saepe veniam sed. Tempore vel distinctio possimus amet laudantium.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(47, 4, NULL, 'Deleniti eius quia quia.', 'deleniti-eius-quia-quia', 'Molestiae minus repudiandae dolorum quo ipsa animi id. Voluptatem expedita et dolor qui. Aspernatur odit sapiente excepturi. Eveniet consequatur non labore impedit qui non officia. Dolorem hic assumenda corrupti unde.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(48, 1, NULL, 'Nemo iure esse saepe eum.', 'nemo-iure-esse-saepe-eum', 'Consequatur id accusantium quo tempore aut. Iure error atque perspiciatis ut provident eaque non. Error debitis quod qui velit perspiciatis voluptatem autem. Inventore officiis maiores voluptates delectus est odit debitis sapiente.', 1, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(49, 2, NULL, 'Assumenda error officiis qui dolorem vero suscipit ipsa qui.', 'assumenda-error-officiis-qui-dolorem-vero-suscipit-ipsa-qui', 'Est sed suscipit ea in assumenda fugit voluptas. Tempore quam qui velit at. Autem repellat blanditiis voluptates. Architecto aspernatur perspiciatis nisi optio.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(50, 1, NULL, 'Aut saepe dolorem quaerat sed ut.', 'aut-saepe-dolorem-quaerat-sed-ut', 'Et iste est incidunt voluptatem sequi. Et quod accusantium sunt aut illum nisi est. Soluta soluta dolorem facilis ea deserunt assumenda quia. Non est est autem voluptates.', 0, 'post', '2021-04-20 23:00:03', '2021-04-20 23:00:03'),
(51, 2, NULL, 'Vel similique voluptas dolorum eligendi totam ullam.', 'vel-similique-voluptas-dolorum-eligendi-totam-ullam', 'Ipsum accusamus blanditiis eum pariatur debitis excepturi. Et libero perferendis hic consectetur veritatis natus sit. Nostrum quia rerum distinctio. Minima ipsam quia facere dolore blanditiis perspiciatis. Veritatis sequi deserunt dolor sunt laborum nihil dolorem.', 0, 'post', '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(52, 2, NULL, 'Architecto consequatur quas veritatis et eveniet et rerum.', 'architecto-consequatur-quas-veritatis-et-eveniet-et-rerum', 'Animi maiores perspiciatis non sed odit doloribus cumque adipisci. Soluta libero necessitatibus expedita. Reprehenderit et aut repudiandae ut.', 1, 'post', '2021-04-20 23:37:59', '2021-04-20 23:37:59'),
(53, 2, NULL, 'Aliquid totam id excepturi dignissimos quia.', 'aliquid-totam-id-excepturi-dignissimos-quia', 'Sunt non est distinctio blanditiis. Aut quia molestiae ut earum quia qui quasi. Quidem consequatur inventore officia dolor ut. Nesciunt et nesciunt quo molestiae distinctio et qui pariatur. Quidem tempora voluptate adipisci quis.', 0, 'post', '2021-04-20 23:37:59', '2021-04-20 23:37:59');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Tina Wiza Sr.', 'pfannerstill.zion@example.com', '2021-04-20 22:46:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fSZH4nb4ey', '2021-04-20 22:46:59', '2021-04-20 22:46:59'),
(2, 'Dr. Bernhard Wolff MD', 'elian25@example.com', '2021-04-20 22:46:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BR1dfM51C1', '2021-04-20 22:46:59', '2021-04-20 22:46:59'),
(3, 'Armando Farrell', 'wferry@example.org', '2021-04-20 22:46:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J4znUwlbOf', '2021-04-20 22:46:59', '2021-04-20 22:46:59'),
(4, 'Kacey Vandervort V', 'warren27@example.com', '2021-04-20 22:46:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hgPJ1LtLZV', '2021-04-20 22:46:59', '2021-04-20 22:46:59'),
(5, 'Hobart Altenwerth', 'orpha59@example.net', '2021-04-20 22:46:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J67jBabkNm', '2021-04-20 22:46:59', '2021-04-20 22:46:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
