-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 01:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadmann`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'We Are Roadmann', 'The image input has many options. By default if you do not specify any options no problem... Your image will still be uploaded. But, if you want to resize an image, set', '2020-11-30 12:07:23', '2020-11-30 12:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `about_items`
--

CREATE TABLE `about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_items`
--

INSERT INTO `about_items` (`id`, `image`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, '[{\"download_link\":\"about-items\\\\November2020\\\\gLv8MqLy3nHAmC0QpBOw.svg\",\"original_name\":\"star.svg\"}]', 'Artist Manager', 'Thumbnails takes an array of objects. Each object is a new thumbnail that is created. Each object contains 2 values, the name and scale percentage. The name will be attached to your thumbnail image as an example say the image you uploaded was ABC.', '2020-11-30 12:08:55', '2020-11-30 12:08:55'),
(2, '[{\"download_link\":\"about-items\\\\November2020\\\\hs3i34e4aA0cEBlkTZ06.svg\",\"original_name\":\"party.svg\"}]', 'Event Organizer', 'Thumbnails takes an array of objects. Each object is a new thumbnail that is created. Each object contains 2 values, the name and scale percentage. The name will be attached to your thumbnail image (as an example say the image you uploaded was ABC.', '2020-11-30 12:09:14', '2020-11-30 12:09:14'),
(3, '[{\"download_link\":\"about-items\\\\November2020\\\\Fvqlx6ShPP7hAOeTYZZH.svg\",\"original_name\":\"brochure.svg\"}]', 'Publisher', 'Thumbnails takes an array of objects. Each object is a new thumbnail that is created. Each object contains 2 values, the name and scale percentage. The name will be attached to your thumbnail image as an example say the image you uploaded was ABC.', '2020-11-30 12:09:31', '2020-11-30 12:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `image`, `name`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, '[{\"download_link\":\"artists\\\\November2020\\\\ivDMA2JThVGPQgQKZOR1.jpg\",\"original_name\":\"jon.jpg\"}]', 'John Angelz', 'Musician / Rock / 90\'s', 'Vitae nulla euismod velpretium tellus accumsan nulla nunc euismod ve semper. Vitae nulla euismod velpretium tellus accumsan nulla nunc euismod ve semper. Vitae nulla euismod velpretium tellus accumsan nulla nunc euismod ve semper. \r\n\r\nnulla euismod velpretium tellus accumsan nulla nunc euismod ve semper. Vitae nulla euismod velpretium tellus accumsan nulla nunc euismod ve semper. Vitae nulla euismod velpretium tellus accumsan nulla nunc euismod ve semper.', '2020-11-30 12:41:11', '2020-11-30 12:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `image`, `title`, `sub_title`, `source`, `date`, `text`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing', 'blogs\\November2020\\wttf6YUA3kpAkMC1mmw4.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos natus recusandae eligendi voluptatibus excepturi doloremque totam odit at, reiciendis iste.', 'roadmann.com', '2020-12-15', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>\r\n<p>&nbsp;</p>\r\n<figure class=\"image\"><img title=\"lorem ipsum\" src=\"http://localhost:8000/storage/blogs/November2020/gambar.png\" alt=\"lorem ipsum dolor sit amet\" />\r\n<figcaption>lorem ipsum</figcaption>\r\n</figure>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>\r\n<p>&nbsp;</p>', 'article, rock, roadmann', '2020-11-30 12:45:23', '2020-11-30 12:45:23'),
(2, 'lorem-ipsum', 'blogs\\November2020\\JUmu0ICgNVoNba25eqFH.jpg', 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi', 'roadmann', '2020-12-31', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>', 'roadmann, info', '2020-11-30 12:46:20', '2020-11-30 12:46:20'),
(3, 'how-to-sing-like-a-pro', 'blogs\\November2020\\gZ7tVHwSoRu9K7u1SEaS.jpg', 'How to sing like a pro', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum?', 'roadmann', '2021-01-07', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://localhost:8000/storage/blogs/November2020/concert-768722_1280.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus voluptatem inventore fuga harum? Voluptate sequi delectus temporibus eveniet quasi, minima voluptatibus quibusdam eos ullam? Vel, velit. Explicabo in aliquid quae! Molestias sint corrupti pariatur enim iure quibusdam facere nobis at voluptates dolore! Quas illum saepe velit repudiandae, tempora amet expedita autem at fugiat, beatae obcaecati aliquam, deserunt nihil! Vel atque corporis suscipit quo dolorum, maiores, adipisci quisquam aut sint veniam obcaecati provident minima rem nam hic ducimus distinctio! Sunt saepe libero delectus aspernatur adipisci corrupti eum harum quisquam, vero praesentium consequatur quibusdam ipsa dolor eaque cupiditate ad eos nemo autem!</p>', 'tutorial', '2020-11-30 12:48:27', '2020-11-30 12:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'caption', 'text', 'Caption', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'text', 'text_area', 'Text', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'heading', 'text', 'Heading', 1, 1, 1, 1, 1, 1, '{}', 2),
(31, 5, 'text', 'text_area', 'Text', 1, 1, 1, 1, 1, 1, '{}', 3),
(32, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(33, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(34, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 6, 'image', 'file', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(36, 6, 'heading', 'text', 'Heading', 1, 1, 1, 1, 1, 1, '{}', 3),
(37, 6, 'text', 'text_area', 'Text', 1, 1, 1, 1, 1, 1, '{}', 4),
(38, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(39, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(40, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(42, 7, 'sub_title', 'text', 'Sub Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(43, 7, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 4),
(44, 7, 'location', 'text', 'Location', 1, 1, 1, 1, 1, 1, '{}', 5),
(45, 7, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 6),
(46, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(47, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 8, 'image', 'file', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(50, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(52, 8, 'text', 'text_area', 'Text', 1, 1, 1, 1, 1, 1, '{}', 5),
(53, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(54, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(55, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 4),
(57, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1440\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}', 2),
(58, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 9, 'sub_title', 'text_area', 'Sub Title', 1, 1, 1, 1, 1, 1, '{}', 5),
(60, 9, 'source', 'text', 'Source', 1, 1, 1, 1, 1, 1, '{}', 6),
(61, 9, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 7),
(62, 9, 'text', 'rich_text_box', 'Text', 1, 1, 1, 1, 1, 1, '{}', 8),
(63, 9, 'tag', 'text', 'Tag', 1, 1, 1, 1, 1, 1, '{}', 9),
(64, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(65, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(66, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 10, 'address', 'text_area', 'Address', 1, 1, 1, 1, 1, 1, '{}', 2),
(68, 10, 'phone', 'number', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(70, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(71, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(4, 'heroes', 'heroes', 'Hero', 'Heroes', 'voyager-photo', 'App\\Hero', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(5, 'abouts', 'abouts', 'About', 'Abouts', NULL, 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(6, 'about_items', 'about-items', 'About Item', 'About Items', NULL, 'App\\AboutItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-30 11:54:13', '2020-11-30 12:08:24'),
(7, 'events', 'events', 'Event', 'Events', 'voyager-youtube-play', 'App\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(8, 'artists', 'artists', 'Artist', 'Artists', 'voyager-star', 'App\\Artist', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-30 11:58:47', '2020-11-30 12:40:30'),
(9, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-news', 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-30 12:03:15', '2020-11-30 12:42:00'),
(10, 'roadmanns', 'roadmanns', 'Roadmann', 'Roadmanns', 'voyager-play', 'App\\Roadmann', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-30 12:03:58', '2020-11-30 12:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `sub_title`, `date`, `location`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Rockinterview', '1st Episode of Rockinterview', '2020-12-23', 'Youtube', 'https://youtube.com/roadmann', '2020-11-30 12:10:32', '2020-11-30 12:10:32'),
(2, 'Rockinterview', '2nd Episode of Rockinterview', '2021-01-06', 'Youtube', 'https://www.youtube.com/channel/UCWZI1rSfvLMLKBWpTEgGbXg', '2020-11-30 12:11:12', '2020-11-30 12:11:12'),
(3, 'Rockinterview', '3rd Episode of Rockinterview', '2021-01-21', 'Youtube', 'https://www.youtube.com/channel/UCWZI1rSfvLMLKBWpTEgGbXg', '2020-11-30 12:11:45', '2020-11-30 12:11:45'),
(4, 'Rock Concert', 'Roadmann Rock Concert', '2021-02-04', 'Gelora Bung Karno Pintu Selatan', '#link', '2020-11-30 12:15:47', '2020-11-30 12:15:47');

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
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `caption`, `title`, `text`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Rockinterview', 'John Angelz', 'lorem ipsum dolor sit amet The image input has many options. By default if you do not specify any options no problem... Your image will still be uploaded. But, if you want to resize an image, set', 'https://youtube.com', '2020-11-30 12:07:05', '2020-11-30 12:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-11-30 11:15:06', '2020-11-30 11:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-11-30 11:15:06', '2020-11-30 11:15:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-11-30 11:15:06', '2020-11-30 11:15:06', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-11-30 11:15:07', '2020-11-30 11:15:07', 'voyager.hooks', NULL),
(12, 1, 'Heroes', '', '_self', 'voyager-photo', NULL, NULL, 15, '2020-11-30 11:48:20', '2020-11-30 11:48:20', 'voyager.heroes.index', NULL),
(13, 1, 'Abouts', '', '_self', NULL, NULL, NULL, 16, '2020-11-30 11:48:44', '2020-11-30 11:48:44', 'voyager.abouts.index', NULL),
(14, 1, 'About Items', '', '_self', NULL, NULL, NULL, 17, '2020-11-30 11:54:13', '2020-11-30 11:54:13', 'voyager.about-items.index', NULL),
(15, 1, 'Events', '', '_self', 'voyager-youtube-play', NULL, NULL, 18, '2020-11-30 11:57:01', '2020-11-30 11:57:01', 'voyager.events.index', NULL),
(16, 1, 'Artists', '', '_self', 'voyager-star', NULL, NULL, 19, '2020-11-30 11:58:47', '2020-11-30 11:58:47', 'voyager.artists.index', NULL),
(17, 1, 'Blogs', '', '_self', 'voyager-news', NULL, NULL, 20, '2020-11-30 12:03:15', '2020-11-30 12:03:15', 'voyager.blogs.index', NULL),
(18, 1, 'Roadmanns', '', '_self', 'voyager-play', NULL, NULL, 21, '2020-11-30 12:03:58', '2020-11-30 12:03:58', 'voyager.roadmanns.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_11_30_181707_create_heroes_table', 2),
(33, '2020_11_30_181911_create_abouts_table', 2),
(34, '2020_11_30_181922_create_about_items_table', 2),
(35, '2020_11_30_182047_create_events_table', 2),
(36, '2020_11_30_182547_create_artists_table', 2),
(37, '2020_11_30_182654_create_blogs_table', 2),
(38, '2020_11_30_184503_create_contacts_table', 2),
(39, '2020_11_30_184546_create_roadmanns_table', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(2, 'browse_bread', NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(3, 'browse_database', NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(4, 'browse_media', NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(5, 'browse_compass', NULL, '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(6, 'browse_menus', 'menus', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(7, 'read_menus', 'menus', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(8, 'edit_menus', 'menus', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(9, 'add_menus', 'menus', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(10, 'delete_menus', 'menus', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(11, 'browse_roles', 'roles', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(12, 'read_roles', 'roles', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(13, 'edit_roles', 'roles', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(14, 'add_roles', 'roles', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(15, 'delete_roles', 'roles', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(16, 'browse_users', 'users', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(17, 'read_users', 'users', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(18, 'edit_users', 'users', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(19, 'add_users', 'users', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(20, 'delete_users', 'users', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(21, 'browse_settings', 'settings', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(22, 'read_settings', 'settings', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(23, 'edit_settings', 'settings', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(24, 'add_settings', 'settings', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(25, 'delete_settings', 'settings', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(26, 'browse_hooks', NULL, '2020-11-30 11:15:07', '2020-11-30 11:15:07'),
(27, 'browse_heroes', 'heroes', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(28, 'read_heroes', 'heroes', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(29, 'edit_heroes', 'heroes', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(30, 'add_heroes', 'heroes', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(31, 'delete_heroes', 'heroes', '2020-11-30 11:48:20', '2020-11-30 11:48:20'),
(32, 'browse_abouts', 'abouts', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(33, 'read_abouts', 'abouts', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(34, 'edit_abouts', 'abouts', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(35, 'add_abouts', 'abouts', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(36, 'delete_abouts', 'abouts', '2020-11-30 11:48:44', '2020-11-30 11:48:44'),
(37, 'browse_about_items', 'about_items', '2020-11-30 11:54:13', '2020-11-30 11:54:13'),
(38, 'read_about_items', 'about_items', '2020-11-30 11:54:13', '2020-11-30 11:54:13'),
(39, 'edit_about_items', 'about_items', '2020-11-30 11:54:13', '2020-11-30 11:54:13'),
(40, 'add_about_items', 'about_items', '2020-11-30 11:54:13', '2020-11-30 11:54:13'),
(41, 'delete_about_items', 'about_items', '2020-11-30 11:54:13', '2020-11-30 11:54:13'),
(42, 'browse_events', 'events', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(43, 'read_events', 'events', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(44, 'edit_events', 'events', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(45, 'add_events', 'events', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(46, 'delete_events', 'events', '2020-11-30 11:57:01', '2020-11-30 11:57:01'),
(47, 'browse_artists', 'artists', '2020-11-30 11:58:47', '2020-11-30 11:58:47'),
(48, 'read_artists', 'artists', '2020-11-30 11:58:47', '2020-11-30 11:58:47'),
(49, 'edit_artists', 'artists', '2020-11-30 11:58:47', '2020-11-30 11:58:47'),
(50, 'add_artists', 'artists', '2020-11-30 11:58:47', '2020-11-30 11:58:47'),
(51, 'delete_artists', 'artists', '2020-11-30 11:58:47', '2020-11-30 11:58:47'),
(52, 'browse_blogs', 'blogs', '2020-11-30 12:03:15', '2020-11-30 12:03:15'),
(53, 'read_blogs', 'blogs', '2020-11-30 12:03:15', '2020-11-30 12:03:15'),
(54, 'edit_blogs', 'blogs', '2020-11-30 12:03:15', '2020-11-30 12:03:15'),
(55, 'add_blogs', 'blogs', '2020-11-30 12:03:15', '2020-11-30 12:03:15'),
(56, 'delete_blogs', 'blogs', '2020-11-30 12:03:15', '2020-11-30 12:03:15'),
(57, 'browse_roadmanns', 'roadmanns', '2020-11-30 12:03:58', '2020-11-30 12:03:58'),
(58, 'read_roadmanns', 'roadmanns', '2020-11-30 12:03:58', '2020-11-30 12:03:58'),
(59, 'edit_roadmanns', 'roadmanns', '2020-11-30 12:03:58', '2020-11-30 12:03:58'),
(60, 'add_roadmanns', 'roadmanns', '2020-11-30 12:03:58', '2020-11-30 12:03:58'),
(61, 'delete_roadmanns', 'roadmanns', '2020-11-30 12:03:58', '2020-11-30 12:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roadmanns`
--

CREATE TABLE `roadmanns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roadmanns`
--

INSERT INTO `roadmanns` (`id`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit fugiat qui neque itaque tempore, ex quia voluptas harum eaque nemo?', '6281234567890', 'halo@roadmann.com', '2020-11-30 12:49:05', '2020-11-30 12:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-11-30 11:15:06', '2020-11-30 11:15:06'),
(2, 'user', 'Normal User', '2020-11-30 11:15:06', '2020-11-30 11:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$fKs2srVsW2VEMMKwVM3VEuCp8apn5UJnmppwmCYCWj85wvI3biygq', NULL, NULL, '2020-11-30 11:15:33', '2020-11-30 11:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roadmanns`
--
ALTER TABLE `roadmanns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roadmanns`
--
ALTER TABLE `roadmanns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
