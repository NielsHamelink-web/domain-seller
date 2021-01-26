-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2021 at 06:44 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `domain-seller`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(3, NULL, 2, 'Test en', 'test-en', '2021-01-24 14:28:16', '2021-01-24 14:28:16');

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
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 3),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 0, 0, 0, 0, '{}', 4),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 5),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 6),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 7),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 8),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 9),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 12),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 15),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 16),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 6),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 7),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 10),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 11),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 13),
(56, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 8, 'domain_name', 'text', 'Domain Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 8, 'category_id', 'text', 'Category Id', 1, 0, 0, 0, 0, 0, '{}', 4),
(59, 8, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(60, 8, 'min_bid_price', 'text', 'Min Bid Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(61, 8, 'buy_now_price', 'text', 'Buy Now Price', 1, 1, 1, 1, 1, 1, '{}', 7),
(62, 8, 'meta_title', 'text', 'Meta Title', 1, 1, 1, 1, 1, 1, '{}', 8),
(63, 8, 'meta_description', 'text', 'Meta Description', 1, 1, 1, 1, 1, 1, '{}', 9),
(64, 8, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 10),
(65, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 8, 'domain_hasone_category_relationship', 'relationship', 'Categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(69, 5, 'post_belongsto_domain_relationship', 'relationship', 'Domain Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\DomainModel\",\"table\":\"domains\",\"type\":\"belongsTo\",\"column\":\"domain_id\",\"key\":\"id\",\"label\":\"domain_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(70, 5, 'domain_id', 'text', 'Domain Id', 0, 1, 1, 1, 1, 1, '{}', 17),
(71, 6, 'page_belongsto_domain_relationship', 'relationship', 'Domain Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\DomainModel\",\"table\":\"domains\",\"type\":\"belongsTo\",\"column\":\"domain_id\",\"key\":\"id\",\"label\":\"domain_name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(72, 6, 'domain_id', 'text', 'Domain Id', 1, 1, 1, 1, 1, 1, '{}', 14);

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
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-01-24 13:36:51', '2021-01-24 13:36:51'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-01-24 13:36:53', '2021-01-26 05:20:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-01-24 13:36:53', '2021-01-26 03:50:09'),
(8, 'domains', 'domains', 'Domain', 'Domains', 'voyager-world', 'App\\Models\\DomainModel', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":\"created_at\",\"order_direction\":\"desc\",\"default_search_key\":\"domain_name\",\"scope\":null}', '2021-01-24 13:42:49', '2021-01-24 15:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_bid_price` double NOT NULL,
  `buy_now_price` double NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `domain_name`, `category_id`, `description`, `min_bid_price`, `buy_now_price`, `meta_title`, `meta_description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'localhost', 3, 'test domain', 5, 10, 'test', 'test', 1, '2021-01-24 14:41:17', '2021-01-24 14:41:17');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', '2021-01-24 13:36:50', '2021-01-24 13:36:50');

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
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-24 13:36:50', '2021-01-24 13:36:50', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 16, 1, '2021-01-24 13:36:50', '2021-01-24 22:06:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-24 13:36:50', '2021-01-24 22:04:58', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 3, 2, '2021-01-24 13:36:50', '2021-01-24 22:08:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2021-01-24 13:36:50', '2021-01-24 22:06:21', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-01-24 13:36:50', '2021-01-24 22:02:56', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-01-24 13:36:50', '2021-01-24 22:02:56', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-01-24 13:36:50', '2021-01-24 22:02:56', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-01-24 13:36:50', '2021-01-24 22:02:56', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2021-01-24 13:36:50', '2021-01-24 22:06:21', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 15, 2, '2021-01-24 13:36:52', '2021-01-24 22:08:01', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 16, 2, '2021-01-24 13:36:53', '2021-01-24 22:06:19', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 16, 3, '2021-01-24 13:36:53', '2021-01-24 22:06:21', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-01-24 13:36:54', '2021-01-24 22:02:56', 'voyager.hooks', NULL),
(15, 1, 'Domains', '', '_self', 'voyager-world', '#000000', NULL, 2, '2021-01-24 13:42:50', '2021-01-24 22:04:17', 'voyager.domains.index', 'null'),
(16, 1, 'Content', 'javascript: void(0)', '_self', 'voyager-news', '#000000', NULL, 4, '2021-01-24 22:06:09', '2021-01-24 22:06:15', NULL, ''),
(17, 1, 'Domains', '', '_self', 'voyager-world', '#000000', 15, 1, '2021-01-24 22:07:50', '2021-01-24 22:08:01', 'voyager.domains.index', NULL),
(18, 1, 'Users', '', '_self', 'voyager-person', '#000000', 3, 1, '2021-01-24 22:08:30', '2021-01-26 03:51:32', 'voyager.users.index', 'null');

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
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_01_23_221205_domains', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `domain_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `domain_id`) VALUES
(1, 1, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-01-24 13:36:53', '2021-01-26 03:48:15', 1);

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
(1, 'browse_admin', NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(2, 'browse_bread', NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(3, 'browse_database', NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(4, 'browse_media', NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(5, 'browse_compass', NULL, '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(6, 'browse_menus', 'menus', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(7, 'read_menus', 'menus', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(8, 'edit_menus', 'menus', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(9, 'add_menus', 'menus', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(10, 'delete_menus', 'menus', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(11, 'browse_roles', 'roles', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(12, 'read_roles', 'roles', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(13, 'edit_roles', 'roles', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(14, 'add_roles', 'roles', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(15, 'delete_roles', 'roles', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(16, 'browse_users', 'users', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(17, 'read_users', 'users', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(18, 'edit_users', 'users', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(19, 'add_users', 'users', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(20, 'delete_users', 'users', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(21, 'browse_settings', 'settings', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(22, 'read_settings', 'settings', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(23, 'edit_settings', 'settings', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(24, 'add_settings', 'settings', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(25, 'delete_settings', 'settings', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(26, 'browse_categories', 'categories', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(27, 'read_categories', 'categories', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(28, 'edit_categories', 'categories', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(29, 'add_categories', 'categories', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(30, 'delete_categories', 'categories', '2021-01-24 13:36:52', '2021-01-24 13:36:52'),
(31, 'browse_posts', 'posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(32, 'read_posts', 'posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(33, 'edit_posts', 'posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(34, 'add_posts', 'posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(35, 'delete_posts', 'posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(36, 'browse_pages', 'pages', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(37, 'read_pages', 'pages', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(38, 'edit_pages', 'pages', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(39, 'add_pages', 'pages', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(40, 'delete_pages', 'pages', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(41, 'browse_hooks', NULL, '2021-01-24 13:36:54', '2021-01-24 13:36:54'),
(42, 'browse_domains', 'domains', '2021-01-24 13:42:49', '2021-01-24 13:42:49'),
(43, 'read_domains', 'domains', '2021-01-24 13:42:49', '2021-01-24 13:42:49'),
(44, 'edit_domains', 'domains', '2021-01-24 13:42:49', '2021-01-24 13:42:49'),
(45, 'add_domains', 'domains', '2021-01-24 13:42:49', '2021-01-24 13:42:49'),
(46, 'delete_domains', 'domains', '2021-01-24 13:42:49', '2021-01-24 13:42:49');

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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `domain_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `domain_id`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', '', 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 1, '2021-01-24 13:36:53', '2021-01-26 05:11:39', 1),
(2, 1, 1, 'My Sample Post', '', 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n<h2>We can use all kinds of format!</h2>\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-24 13:36:53', '2021-01-26 03:45:05', 1),
(3, 1, 1, 'Latest Post', '', 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-24 13:36:53', '2021-01-26 03:45:14', 1),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-01-24 13:36:53', '2021-01-24 13:36:53', 0);

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
(1, 'admin', 'Administrator', '2021-01-24 13:36:50', '2021-01-24 13:36:50'),
(2, 'user', 'Normal User', '2021-01-24 13:36:50', '2021-01-24 13:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
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

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-01-24 13:36:53', '2021-01-24 13:36:53'),
(31, 'data_rows', 'display_name', 56, 'nl', 'Id', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(32, 'data_rows', 'display_name', 57, 'nl', 'Domain Name', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(33, 'data_rows', 'display_name', 58, 'nl', 'Category Id', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(34, 'data_rows', 'display_name', 59, 'nl', 'Description', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(35, 'data_rows', 'display_name', 60, 'nl', 'Min Bid Price', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(36, 'data_rows', 'display_name', 61, 'nl', 'Buy Now Price', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(37, 'data_rows', 'display_name', 62, 'nl', 'Meta Title', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(38, 'data_rows', 'display_name', 63, 'nl', 'Meta Description', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(39, 'data_rows', 'display_name', 64, 'nl', 'Active', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(40, 'data_rows', 'display_name', 65, 'nl', 'Created At', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(41, 'data_rows', 'display_name', 66, 'nl', 'Updated At', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(42, 'data_rows', 'display_name', 67, 'nl', 'categories', '2021-01-24 13:56:49', '2021-01-24 13:56:49'),
(43, 'data_types', 'display_name_singular', 8, 'nl', 'Domain', '2021-01-24 13:56:50', '2021-01-24 13:56:50'),
(44, 'data_types', 'display_name_plural', 8, 'nl', 'Domains', '2021-01-24 13:56:50', '2021-01-24 13:56:50'),
(45, 'categories', 'name', 3, 'nl', 'test nl', '2021-01-24 14:28:16', '2021-01-24 14:28:16'),
(46, 'categories', 'slug', 3, 'nl', 'test-nl', '2021-01-24 14:28:16', '2021-01-24 14:28:16'),
(47, 'data_rows', 'display_name', 68, 'nl', 'categories', '2021-01-24 14:30:29', '2021-01-24 14:30:29'),
(48, 'menu_items', 'title', 15, 'nl', 'Domains', '2021-01-24 22:04:17', '2021-01-24 22:04:17'),
(49, 'data_rows', 'display_name', 29, 'nl', 'ID', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(50, 'data_rows', 'display_name', 30, 'nl', 'Author', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(51, 'data_rows', 'display_name', 31, 'nl', 'Category', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(52, 'data_rows', 'display_name', 32, 'nl', 'Title', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(53, 'data_rows', 'display_name', 42, 'nl', 'SEO Title', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(54, 'data_rows', 'display_name', 33, 'nl', 'Excerpt', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(55, 'data_rows', 'display_name', 34, 'nl', 'Body', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(56, 'data_rows', 'display_name', 35, 'nl', 'Post Image', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(57, 'data_rows', 'display_name', 36, 'nl', 'Slug', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(58, 'data_rows', 'display_name', 37, 'nl', 'Meta Description', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(59, 'data_rows', 'display_name', 38, 'nl', 'Meta Keywords', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(60, 'data_rows', 'display_name', 39, 'nl', 'Status', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(61, 'data_rows', 'display_name', 43, 'nl', 'Featured', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(62, 'data_rows', 'display_name', 40, 'nl', 'Created At', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(63, 'data_rows', 'display_name', 41, 'nl', 'Updated At', '2021-01-26 02:20:59', '2021-01-26 02:20:59'),
(64, 'data_rows', 'display_name', 69, 'nl', 'domains', '2021-01-26 02:21:00', '2021-01-26 02:21:00'),
(65, 'data_types', 'display_name_singular', 5, 'nl', 'Post', '2021-01-26 02:21:00', '2021-01-26 02:21:00'),
(66, 'data_types', 'display_name_plural', 5, 'nl', 'Posts', '2021-01-26 02:21:00', '2021-01-26 02:21:00'),
(67, 'data_rows', 'display_name', 70, 'nl', 'Domain Id', '2021-01-26 02:21:27', '2021-01-26 02:21:27'),
(68, 'posts', 'title', 1, 'nl', 'Lorem Ipsum Post', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(69, 'posts', 'excerpt', 1, 'nl', 'This is the excerpt for the Lorem Ipsum Post', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(70, 'posts', 'body', 1, 'nl', '<p>This is the body of the lorem ipsum post</p>', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(71, 'posts', 'slug', 1, 'nl', 'lorem-ipsum-post', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(72, 'posts', 'meta_description', 1, 'nl', 'This is the meta description', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(73, 'posts', 'meta_keywords', 1, 'nl', 'keyword1, keyword2, keyword3', '2021-01-26 02:23:53', '2021-01-26 02:23:53'),
(74, 'posts', 'title', 2, 'nl', 'My Sample Post', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(75, 'posts', 'excerpt', 2, 'nl', 'This is the excerpt for the sample Post', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(76, 'posts', 'body', 2, 'nl', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(77, 'posts', 'slug', 2, 'nl', 'my-sample-post', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(78, 'posts', 'meta_description', 2, 'nl', 'Meta Description for sample post', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(79, 'posts', 'meta_keywords', 2, 'nl', 'keyword1, keyword2, keyword3', '2021-01-26 03:45:05', '2021-01-26 03:45:05'),
(80, 'posts', 'title', 3, 'nl', 'Latest Post', '2021-01-26 03:45:14', '2021-01-26 03:45:14'),
(81, 'posts', 'excerpt', 3, 'nl', 'This is the excerpt for the latest post', '2021-01-26 03:45:14', '2021-01-26 03:45:14'),
(82, 'posts', 'body', 3, 'nl', '<p>This is the body for the latest post</p>', '2021-01-26 03:45:14', '2021-01-26 03:45:14'),
(83, 'posts', 'slug', 3, 'nl', 'latest-post', '2021-01-26 03:45:14', '2021-01-26 03:45:14'),
(84, 'posts', 'meta_description', 3, 'nl', 'This is the meta description', '2021-01-26 03:45:14', '2021-01-26 03:45:14'),
(85, 'posts', 'meta_keywords', 3, 'nl', 'keyword1, keyword2, keyword3', '2021-01-26 03:45:15', '2021-01-26 03:45:15'),
(86, 'data_rows', 'display_name', 44, 'nl', 'ID', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(87, 'data_rows', 'display_name', 45, 'nl', 'Author', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(88, 'data_rows', 'display_name', 46, 'nl', 'Title', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(89, 'data_rows', 'display_name', 47, 'nl', 'Excerpt', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(90, 'data_rows', 'display_name', 48, 'nl', 'Body', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(91, 'data_rows', 'display_name', 55, 'nl', 'Page Image', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(92, 'data_rows', 'display_name', 49, 'nl', 'Slug', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(93, 'data_rows', 'display_name', 50, 'nl', 'Meta Description', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(94, 'data_rows', 'display_name', 51, 'nl', 'Meta Keywords', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(95, 'data_rows', 'display_name', 52, 'nl', 'Status', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(96, 'data_rows', 'display_name', 53, 'nl', 'Created At', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(97, 'data_rows', 'display_name', 54, 'nl', 'Updated At', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(98, 'data_rows', 'display_name', 71, 'nl', 'domains', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(99, 'data_types', 'display_name_singular', 6, 'nl', 'Page', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(100, 'data_types', 'display_name_plural', 6, 'nl', 'Pages', '2021-01-26 03:47:50', '2021-01-26 03:47:50'),
(101, 'pages', 'title', 1, 'nl', 'Hello World', '2021-01-26 03:48:15', '2021-01-26 03:48:15'),
(102, 'pages', 'body', 1, 'nl', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-01-26 03:48:15', '2021-01-26 03:48:15'),
(103, 'pages', 'slug', 1, 'nl', 'hello-world', '2021-01-26 03:48:15', '2021-01-26 03:48:15'),
(104, 'data_rows', 'display_name', 72, 'nl', 'Domain Id', '2021-01-26 03:50:10', '2021-01-26 03:50:10'),
(105, 'menu_items', 'title', 18, 'nl', 'Users', '2021-01-26 03:51:32', '2021-01-26 03:51:32');

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
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$YoV0j8rWsM.CIXuinMH8luFqxPrxXgviEBTZuZelj16Kg9vYz02Vi', 'UFZqVx5qQayMamS5SqF29DdLLKC7ea1nizKjy8h3PBrFkk8NKLwFCLE1ZCCU', NULL, '2021-01-24 13:36:53', '2021-01-24 13:36:53');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

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
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domains_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

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
