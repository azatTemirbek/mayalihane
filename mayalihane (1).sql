-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 16 Tem 2017, 21:39:14
-- Sunucu sürümü: 5.7.18-0ubuntu0.16.04.1
-- PHP Sürümü: 5.6.31-1~ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `mayalihane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
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

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `workDay` text COLLATE utf8_unicode_ci,
  `tel` text COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adress` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `contacts`
--

INSERT INTO `contacts` (`id`, `workDay`, `tel`, `facebook`, `twitter`, `google`, `mail`, `created_at`, `updated_at`, `adress`) VALUES
(1, '<p>Hafta i&ccedil;i ; 08:00 - 18:00</p>\r\n<p>Hafta sonu 08:30 - 14:00</p>', '+903122198439', NULL, NULL, NULL, 'info@mayalihane.com', '2017-07-16 11:28:00', '2017-07-16 12:26:01', '<p style="text-align: center;"><span style="color: #4b4b4b; font-family: Roboto, sans-serif; font-size: 15px; white-space: pre-wrap;">Mustafa Kemal Mah. 2141.</span></p>\r\n<p style="text-align: center;"><span style="color: #4b4b4b; font-family: Roboto, sans-serif; font-size: 15px; white-space: pre-wrap;">Cadde 33/A, Ankara, Turkey</span></p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
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
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 15),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 14),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 2),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 1, 1, 1, 1, 1, NULL, 3),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 4),
(7, 1, 'image', 'image', 'Post Image', 0, 0, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"25%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 5),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 7),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'status', 0, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 1, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, NULL, 9),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(31, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(32, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(33, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(34, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(35, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(36, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(37, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(38, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(39, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(40, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(41, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(42, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '', 5),
(43, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(44, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(45, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(47, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(48, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(49, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(50, 1, 'seo_title', 'text', 'seo_title', 0, 0, 1, 1, 1, 1, NULL, 8),
(51, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 6),
(52, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(53, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(54, 7, 'featured', 'checkbox', 'Ana-Sayfaya Çıkar', 0, 0, 1, 1, 1, 1, '{"on":"On","off":"Off","checked":"true"}', 8),
(55, 7, 'name', 'text', 'Ürün İsmi', 0, 1, 1, 1, 1, 1, NULL, 3),
(56, 7, 'seo', 'text', 'Seo 160karakter', 0, 0, 1, 1, 1, 1, NULL, 6),
(57, 7, 'image', 'image', 'Resim', 0, 0, 1, 1, 1, 1, '{"resize":{"width":"640","height":"null"},"quality":"25%","upsize":true}', 7),
(58, 7, 'subName', 'text_area', 'Açıklama', 0, 0, 1, 1, 1, 1, NULL, 5),
(59, 7, 'description', 'rich_text_box', 'İçerik', 0, 0, 1, 1, 1, 1, NULL, 9),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 11),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(62, 7, 'category', 'select_dropdown', 'Kategori', 0, 0, 1, 1, 1, 1, '{"default":"DÜŞÜK PROTEİNLİ","options":{"DÜŞÜK PROTEİNLİ":"DÜŞÜK PROTEİNLİ","GLUTENSİZ":"GLUTENSİZ","EKŞİ MAYALI":"EKŞİ MAYALI"}}', 2),
(63, 7, 'slug', 'text', 'Uzantı', 0, 0, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(64, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 9, 'featured', 'checkbox', 'Ana-Sayfaya Çıkar', 0, 1, 1, 1, 1, 1, '{"on":"On","off":"Off","checked":"true"}', 4),
(66, 9, 'image', 'image', 'Resim', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"25%","upsize":true,"thumbnails":[{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"400","height":"200"}}]}', 2),
(67, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, NULL, 5),
(68, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(69, 2, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"900","height":"null"},"quality":"25%","upsize":true}', 2),
(70, 2, 'aciklma', 'text_area', 'Aciklma', 0, 1, 1, 1, 1, 1, NULL, 4),
(71, 2, 'aciklma1', 'text_area', 'Glütensiz Aciklma', 0, 0, 1, 1, 1, 1, NULL, 5),
(72, 2, 'aciklma2', 'text_area', 'Düşük proteinli Aciklma', 0, 0, 1, 1, 1, 1, NULL, 6),
(73, 2, 'aciklma3', 'text_area', 'Ekşi Mayali Aciklma', 0, 0, 1, 1, 1, 1, NULL, 7),
(74, 2, 'altbanner', 'image', 'Altbanner', 0, 0, 1, 1, 1, 1, '{"resize":{"width":"900","height":"null"},"quality":"25%","upsize":true}', 3),
(75, 9, 'alt', 'text', 'Resim Hakkında', 0, 1, 1, 1, 1, 1, NULL, 3),
(76, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(77, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 2),
(78, 10, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 3),
(79, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(80, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(86, 16, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(87, 16, 'workDay', 'rich_text_box', 'Çalışma şekli', 0, 1, 1, 1, 1, 1, NULL, 5),
(88, 16, 'tel', 'text', 'Tel', 0, 1, 1, 1, 1, 1, NULL, 4),
(89, 16, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, NULL, 6),
(90, 16, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, NULL, 7),
(91, 16, 'google', 'text', 'Google', 0, 1, 1, 1, 1, 1, NULL, 8),
(92, 16, 'mail', 'text', 'Mail', 0, 1, 1, 1, 1, 1, NULL, 3),
(93, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 1, 1, NULL, 9),
(94, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(95, 16, 'adress', 'rich_text_box', 'Adress', 0, 1, 1, 1, 1, 1, NULL, 2),
(96, 2, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(97, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', NULL, NULL, 1, 0, '2017-07-15 15:17:12', '2017-07-16 14:32:17'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, 1, 0, '2017-07-15 15:17:12', '2017-07-16 04:42:27'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', '', '', 1, 0, '2017-07-15 15:17:12', '2017-07-15 15:17:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', '', 1, 0, '2017-07-15 15:17:12', '2017-07-15 15:17:12'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', '', 1, 0, '2017-07-15 15:17:12', '2017-07-15 15:17:12'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', '', 1, 0, '2017-07-15 15:17:12', '2017-07-15 15:17:12'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Products', NULL, NULL, 1, 0, '2017-07-15 15:51:41', '2017-07-15 15:51:41'),
(9, 'galeris', 'galeris', 'Galeri', 'Galeris', 'voyager-photos', 'App\\Galeris', NULL, NULL, 1, 0, '2017-07-16 04:14:48', '2017-07-16 04:14:48'),
(10, 'hakkimizda', 'hakkimizda', 'Hakkimizda', 'Hakkimizda', NULL, 'App\\Hakkimizda', NULL, NULL, 1, 0, '2017-07-16 06:40:09', '2017-07-16 07:20:38'),
(16, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contacts', NULL, NULL, 1, 0, '2017-07-16 11:23:34', '2017-07-16 11:23:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeris`
--

CREATE TABLE `galeris` (
  `id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(4) DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `galeris`
--

INSERT INTO `galeris` (`id`, `featured`, `image`, `created_at`, `updated_at`, `alt`) VALUES
(1, 0, 'galeris/July2017/9RNitWV9w8UgF5X4bLBI.png', '2017-07-16 05:20:04', '2017-07-16 05:44:14', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizdas`
--

CREATE TABLE `hakkimizdas` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `hakkimizdas`
--

INSERT INTO `hakkimizdas` (`id`, `description`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Maecenas eu posuere leo. Donec quis facilisis leo, eu dictum diam. Donec vehicula volutpat felis et iaculis', '<p>SWEETS</p>\r\n<p>SAVORIES</p>\r\n<p>Etiam nunc tortor, ultrices quis turpis, tempor lacinia ligula. Sed at odio vel est lobortis eleifend ac vitae enim. Suspendisse est gravida nisi lectus, nisl ullamcorper et. Pellentesque volutpat felis ut nunc elit euismod sollicitudin. Nam ullamcorper nibh eget sem consectetur, et semper elit suscipit.</p>\r\n<p>&nbsp;</p>\r\n<p>Cras interdum ante a efficitur dictum. Duis tincidunt non elit pellentesque. Curabitur set accumsan accumsan consectetur. Quisque et velit vestibulum quam condimentum consectetur. Praesent ac elit molestie, commodo quam vel, laoreet amet elit lacinia lobortis pellentesque metus.</p>\r\n<p>&nbsp;<img title="dasdasd" src="http://localhost:8000/storage/hakkimizda/July2017/wbOWqKsCkBvPDzfqIiPK.png" alt="dsad" width="1366" height="768" /></p>\r\n<p>Caffe</p>\r\n<p>Praesent tempus euismod finibus. Nunc non interdum sem. Proin efficitur pellentesque dui. Nullam ut vestibulum orci. Phasellus eu maximus lectus, vitae viverra enim. Curabitur mattis ultricies ornare. Nam rhoncus turpis neque, posuere faucibus nunc vehicula ac.</p>\r\n<p>&nbsp;</p>\r\n<p>TO ME, THE SMELL OF FRESH-MADE COFFEE IS ONE OF THE GREATEST INVENTIONS.</p>\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dictum massa accumsan massa condimentum tempor. In dui est, rutrum ultrices vestibulum sed, blandit sit amet ante. Etiam in tellus arcu. Sed blandit convallis ipsum ut finibus. Praesent sagittis aliquet lacinia. Ut id ullamcorper arcu, sit amet lobortis turpis. Nullam finibus placerat dui in molestie. Praesent eleifend consectetur.</p>\r\n<p>&nbsp;</p>\r\n<p>ALIQUAM PULVINAR ORNARE PURUS</p>\r\n<p>&nbsp;</p>\r\n<p>Curabitur porta ipsum eget velit mattis tincidunt. Morbi elit mauris, lacinia a lacinia venenatis, tincidunt id neque. Cras luctus orci a nulla sollicitudin lacinia. Aenean ultrices velit justo, luctus rutrum eros dapibus eu. Sed nec iaculis augue. Mauris varius dictum ligula, eu suscipit ipsum feugiat et. Sed ac dictum erat. Sed commodo feugiat ligula quis pellentesque.</p>\r\n<p>&nbsp;</p>\r\n<p>voluptatem.</p>\r\n<p>&nbsp;</p>\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>', '2017-07-16 07:24:03', '2017-07-16 10:37:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-07-15 15:17:15', '2017-07-15 15:17:15'),
(2, 'adminuser', '2017-07-16 14:32:40', '2017-07-16 14:32:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
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
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-07-15 15:17:15', '2017-07-15 15:17:15', NULL, NULL),
(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 6, '2017-07-15 15:17:15', '2017-07-16 14:34:47', NULL, NULL),
(3, 1, 'Haberler', '/admin/posts', '_self', 'voyager-news', '#000000', NULL, 4, '2017-07-15 15:17:15', '2017-07-16 14:34:28', NULL, ''),
(6, 1, 'Ana Sayfa', '/admin/pages', '_self', 'voyager-file-text', '#000000', 16, 1, '2017-07-15 15:17:15', '2017-07-16 14:34:42', NULL, ''),
(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 7, '2017-07-15 15:17:16', '2017-07-16 14:34:47', NULL, NULL),
(12, 1, 'Ürünler', 'admin/products', '_self', 'voyager-pie-chart', '#000000', NULL, 2, '2017-07-15 15:52:48', '2017-07-16 14:34:28', NULL, ''),
(13, 1, 'Galeri', '/admin/galeris', '_self', 'voyager-photos', '#000000', NULL, 3, '2017-07-16 04:16:01', '2017-07-16 14:34:28', NULL, ''),
(14, 1, 'Hakkimizda', 'admin/hakkimizda', '_self', 'voyager-company', '#000000', 16, 2, '2017-07-16 07:18:21', '2017-07-16 14:34:44', NULL, ''),
(15, 1, 'İletişim', 'admin/contacts', '_self', 'voyager-people', '#000000', 16, 3, '2017-07-16 11:42:31', '2017-07-16 14:34:47', NULL, ''),
(16, 1, 'Sayfalar', '', '_self', 'voyager-sort-desc', '#000000', NULL, 5, '2017-07-16 14:34:12', '2017-07-16 14:34:28', NULL, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
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
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aciklma` text COLLATE utf8mb4_unicode_ci,
  `aciklma1` text COLLATE utf8mb4_unicode_ci,
  `aciklma2` text COLLATE utf8mb4_unicode_ci,
  `aciklma3` text COLLATE utf8mb4_unicode_ci,
  `altbanner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `banner`, `aciklma`, `aciklma1`, `aciklma2`, `aciklma3`, `altbanner`, `created_at`, `updated_at`) VALUES
(1, 1, 'pages/July2017/7Wwt9mawpUcQPSK5rGRE.png', 'zdcdc', 'zdczdc  zxzcsceqweeqweqwewqeqweqweqw wqeqwewqqweweqwe', 'dzczczxzcsceqweeqweqwewqeqweqweqw wqeqwewqqweweqwe', 'zxzcsceqweeqweqwewqeqweqweqw wqeqwewqqweweqwe', 'pages/July2017/LRN4NmhE44VDsBtDgSF2.png', '2017-07-16 04:43:00', '2017-07-16 15:29:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(2, 'browse_database', NULL, '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(3, 'browse_media', NULL, '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(4, 'browse_settings', NULL, '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(5, 'browse_menus', 'menus', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(6, 'read_menus', 'menus', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(7, 'edit_menus', 'menus', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(8, 'add_menus', 'menus', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(9, 'delete_menus', 'menus', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(10, 'browse_pages', 'pages', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(11, 'read_pages', 'pages', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(12, 'edit_pages', 'pages', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(13, 'add_pages', 'pages', '2017-07-15 15:17:16', '2017-07-15 15:17:16', NULL),
(14, 'delete_pages', 'pages', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(15, 'browse_roles', 'roles', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(16, 'read_roles', 'roles', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(17, 'edit_roles', 'roles', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(18, 'add_roles', 'roles', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(19, 'delete_roles', 'roles', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(20, 'browse_users', 'users', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(21, 'read_users', 'users', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(22, 'edit_users', 'users', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(23, 'add_users', 'users', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(24, 'delete_users', 'users', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(25, 'browse_posts', 'posts', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(26, 'read_posts', 'posts', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(27, 'edit_posts', 'posts', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(28, 'add_posts', 'posts', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(29, 'delete_posts', 'posts', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(30, 'browse_categories', 'categories', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(31, 'read_categories', 'categories', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(32, 'edit_categories', 'categories', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(33, 'add_categories', 'categories', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(34, 'delete_categories', 'categories', '2017-07-15 15:17:17', '2017-07-15 15:17:17', NULL),
(35, 'browse_products', 'products', '2017-07-15 15:51:41', '2017-07-15 15:51:41', NULL),
(36, 'read_products', 'products', '2017-07-15 15:51:41', '2017-07-15 15:51:41', NULL),
(37, 'edit_products', 'products', '2017-07-15 15:51:41', '2017-07-15 15:51:41', NULL),
(38, 'add_products', 'products', '2017-07-15 15:51:41', '2017-07-15 15:51:41', NULL),
(39, 'delete_products', 'products', '2017-07-15 15:51:41', '2017-07-15 15:51:41', NULL),
(40, 'browse_galeris', 'galeris', '2017-07-16 04:14:49', '2017-07-16 04:14:49', NULL),
(41, 'read_galeris', 'galeris', '2017-07-16 04:14:49', '2017-07-16 04:14:49', NULL),
(42, 'edit_galeris', 'galeris', '2017-07-16 04:14:49', '2017-07-16 04:14:49', NULL),
(43, 'add_galeris', 'galeris', '2017-07-16 04:14:49', '2017-07-16 04:14:49', NULL),
(44, 'delete_galeris', 'galeris', '2017-07-16 04:14:49', '2017-07-16 04:14:49', NULL),
(45, 'browse_hakkimizda', 'hakkimizda', '2017-07-16 06:40:09', '2017-07-16 06:40:09', NULL),
(46, 'read_hakkimizda', 'hakkimizda', '2017-07-16 06:40:09', '2017-07-16 06:40:09', NULL),
(47, 'edit_hakkimizda', 'hakkimizda', '2017-07-16 06:40:09', '2017-07-16 06:40:09', NULL),
(48, 'add_hakkimizda', 'hakkimizda', '2017-07-16 06:40:09', '2017-07-16 06:40:09', NULL),
(49, 'delete_hakkimizda', 'hakkimizda', '2017-07-16 06:40:09', '2017-07-16 06:40:09', NULL),
(50, 'browse_hakkimizdas', 'hakkimizdas', '2017-07-16 10:29:54', '2017-07-16 10:29:54', NULL),
(51, 'read_hakkimizdas', 'hakkimizdas', '2017-07-16 10:29:54', '2017-07-16 10:29:54', NULL),
(52, 'edit_hakkimizdas', 'hakkimizdas', '2017-07-16 10:29:54', '2017-07-16 10:29:54', NULL),
(53, 'add_hakkimizdas', 'hakkimizdas', '2017-07-16 10:29:54', '2017-07-16 10:29:54', NULL),
(54, 'delete_hakkimizdas', 'hakkimizdas', '2017-07-16 10:29:54', '2017-07-16 10:29:54', NULL),
(55, 'browse_contacts', 'contacts', '2017-07-16 11:23:34', '2017-07-16 11:23:34', NULL),
(56, 'read_contacts', 'contacts', '2017-07-16 11:23:34', '2017-07-16 11:23:34', NULL),
(57, 'edit_contacts', 'contacts', '2017-07-16 11:23:34', '2017-07-16 11:23:34', NULL),
(58, 'add_contacts', 'contacts', '2017-07-16 11:23:34', '2017-07-16 11:23:34', NULL),
(59, 'delete_contacts', 'contacts', '2017-07-16 11:23:34', '2017-07-16 11:23:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
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
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(49, 1),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(54, 1),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(59, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `featured`, `created_at`, `updated_at`, `category_id`, `meta_keywords`, `status`, `seo_title`) VALUES
(1, 1, 'DASDAS', 'ASDASDSAADSADASDSADSAD', '<p>ASDASASDASDADASDD</p>', 'posts/July2017/QOC1AyykdztT8sK7r4sh.png', 'dasdas', 'ASDASD', 0, '2017-07-16 05:38:05', '2017-07-16 05:38:05', NULL, 'ASDASD', 'PUBLISHED', 'ASDASDA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(4) DEFAULT '-5',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seo` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subName` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `featured`, `name`, `seo`, `image`, `subName`, `description`, `created_at`, `updated_at`, `category`, `slug`) VALUES
(2, 1, 'asdasddas', 'asdas', 'products/July2017/jrYSrw7yutF3VARdFNyR.png', 'asda', '<p>asdasd</p>', '2017-07-15 15:59:26', '2017-07-16 05:34:00', 'GLUTENSİZ', 'asdasddas');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-07-15 15:17:16', '2017-07-15 15:17:16'),
(2, 'user', 'Normal User', '2017-07-15 15:17:16', '2017-07-15 15:17:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
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
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'mayalihane', 'mayalihane@mayalihane.com', 'users/default.png', '$2y$10$rMzGktvKVu90RtPrY3YMqORp5C05JAH2lopWMssYnaKp6yXQzBuYG', 'aSTRhP53zLxB2ZZWAbGSi3ycNOAqIKdoFKZTdrLbimEk0jbYRds9flQDrwuZ', '2017-07-15 15:36:35', '2017-07-16 14:38:09'),
(2, 2, 'mayalihane', 'admin@mayalihane.com', 'users/July2017/WKlUAPDtmkGFC5KaKKDJ.jpg', '$2y$10$nRbI9RXYdStJFotpSD5XhubYdQ5MTSbBB0O/Q3Uf50rtJU/HZYs3q', 'BXZg6ptKRbgH1BpVExXDggrSYRLLWAD1dkkZXdSRJVMM0goSo5gP8fta37bn', '2017-07-16 14:40:26', '2017-07-16 14:54:21');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizdas`
--
ALTER TABLE `hakkimizdas`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- Tablo için AUTO_INCREMENT değeri `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `hakkimizdas`
--
ALTER TABLE `hakkimizdas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Tablo için AUTO_INCREMENT değeri `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- Tablo için AUTO_INCREMENT değeri `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
