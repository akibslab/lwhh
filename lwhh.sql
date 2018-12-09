-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2018 at 02:39 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lwhh`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-04 11:20:40', '2018-12-04 11:20:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lwhh', 'yes'),
(2, 'home', 'http://localhost/lwhh', 'yes'),
(3, 'blogname', 'Site Title', 'yes'),
(4, 'blogdescription', 'Tagline', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'a@a.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:25:\"fakerpress/fakerpress.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'alpha', 'yes'),
(41, 'stylesheet', 'alpha', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'nonce_key', 'bCDahpcHamAa)/Y]C:2jUs6:kL$S8+D5NBT}v/UXS=<4I;VhhMhlw__r!BbsD2/K', 'no'),
(109, 'nonce_salt', 'viQK+4*I-W]utB70cpEqnkO;lRSe1vSX8AzQa1-{h!4c:>}|JSh*x!@}mvrmOGJ>', 'no'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'cron', 'a:6:{i:1544365241;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544397641;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544440856;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544440857;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544447785;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(114, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543925930;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(118, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.0-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.0\";s:7:\"version\";s:3:\"5.0\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1544362736;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auth_key', '#^P]QdL-5}.fM1MB&w-{V@&S0d0a1r%k~1QRY^%~)Jf/j#yq.~CY.+>JSX{.zJuy', 'no'),
(126, 'auth_salt', 'wThy1>}jH9i1LFP7fh!X4RQv[oHzU]#/1I`0@^Y.D~]~QB:0dnX&A /8P#%Tt!@6', 'no'),
(127, 'logged_in_key', 'g?jzD<PgSm9[ >QM92P{p|gEt1(S0 e1YxqrUJ(CN(pjF+BJ,{P ZyL26kb7XgC}', 'no'),
(128, 'logged_in_salt', '}Kf;l:?Tp[UtW&w1T=P2n0V~uwK&o@#/}[`lNS:&&0%[mgtWM`)f(pG!bf2,H}$)', 'no'),
(129, '_site_transient_timeout_browser_61971d483a90f528315f03c42336244b', '1544527258', 'no'),
(130, '_site_transient_browser_61971d483a90f528315f03c42336244b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"63.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'Alpha', 'yes'),
(149, 'theme_mods_alpha', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'WPLANG', '', 'yes'),
(184, 'new_admin_email', 'a@a.com', 'yes'),
(195, '_site_transient_timeout_theme_roots', '1544364542', 'no'),
(196, '_site_transient_theme_roots', 'a:4:{s:5:\"alpha\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(197, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1544362745;s:7:\"checked\";a:4:{s:5:\"alpha\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.1.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.8.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.6.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(198, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1544362747;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:25:\"fakerpress/fakerpress.php\";s:6:\"0.4.11\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:25:\"fakerpress/fakerpress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/fakerpress\";s:4:\"slug\";s:10:\"fakerpress\";s:6:\"plugin\";s:25:\"fakerpress/fakerpress.php\";s:11:\"new_version\";s:6:\"0.4.11\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/fakerpress/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/fakerpress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090\";s:2:\"1x\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";s:3:\"svg\";s:55:\"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002\";s:2:\"1x\";s:65:\"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_wp_attached_file', '2018/12/9ef2216d-689a-3d9c-a698-bd9f745c7cd4.jpg'),
(4, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:475;s:6:\"height\";i:380;s:4:\"file\";s:48:\"2018/12/9ef2216d-689a-3d9c-a698-bd9f745c7cd4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"9ef2216d-689a-3d9c-a698-bd9f745c7cd4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"9ef2216d-689a-3d9c-a698-bd9f745c7cd4-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, 'fakerpress_flag', '1'),
(6, 7, '_wp_attached_file', '2018/12/287cc050-d9c6-34b2-963d-3f372eabef76.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:443;s:6:\"height\";i:354;s:4:\"file\";s:48:\"2018/12/287cc050-d9c6-34b2-963d-3f372eabef76.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"287cc050-d9c6-34b2-963d-3f372eabef76-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"287cc050-d9c6-34b2-963d-3f372eabef76-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, 'fakerpress_flag', '1'),
(9, 8, '_wp_attached_file', '2018/12/4746f465-a6f6-3d9f-83de-f8fa912b5c3a.jpg'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:227;s:4:\"file\";s:48:\"2018/12/4746f465-a6f6-3d9f-83de-f8fa912b5c3a.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"4746f465-a6f6-3d9f-83de-f8fa912b5c3a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 8, 'fakerpress_flag', '1'),
(12, 9, 'fakerpress_flag', '1'),
(13, 10, '_wp_attached_file', '2018/12/32aae2fd-2e43-34c5-9559-663121a9af85.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3000;s:6:\"height\";i:2000;s:4:\"file\";s:48:\"2018/12/32aae2fd-2e43-34c5-9559-663121a9af85.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"32aae2fd-2e43-34c5-9559-663121a9af85-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"32aae2fd-2e43-34c5-9559-663121a9af85-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"32aae2fd-2e43-34c5-9559-663121a9af85-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"32aae2fd-2e43-34c5-9559-663121a9af85-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 10, 'fakerpress_flag', '1'),
(16, 9, '_thumbnail_id', '10'),
(17, 11, '_wp_attached_file', '2018/12/0c2a389a-2cf2-3917-aad7-3705b8a634f4.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:501;s:6:\"height\";i:400;s:4:\"file\";s:48:\"2018/12/0c2a389a-2cf2-3917-aad7-3705b8a634f4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"0c2a389a-2cf2-3917-aad7-3705b8a634f4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"0c2a389a-2cf2-3917-aad7-3705b8a634f4-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 11, 'fakerpress_flag', '1'),
(20, 12, 'fakerpress_flag', '1'),
(21, 13, '_wp_attached_file', '2018/12/a092b090-b2fc-383d-a3ac-27dc576c83fe.jpg'),
(22, 13, '_wp_attachment_metadata', 'a:0:{}'),
(23, 13, 'fakerpress_flag', '1'),
(24, 14, 'fakerpress_flag', '1'),
(25, 15, '_wp_attached_file', '2018/12/409ec380-86cf-36a7-be71-349f8f31980c.jpg'),
(26, 15, '_wp_attachment_metadata', 'a:0:{}'),
(27, 15, 'fakerpress_flag', '1'),
(28, 14, '_thumbnail_id', '15'),
(29, 16, 'fakerpress_flag', '1'),
(30, 17, '_wp_attached_file', '2018/12/690d0085-a771-3692-8d9c-c6642b693a99.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:0:{}'),
(32, 17, 'fakerpress_flag', '1'),
(33, 16, '_thumbnail_id', '17'),
(34, 18, '_wp_attached_file', '2018/12/485098e0-d3da-3adf-9f49-b04a272593ea.jpg'),
(35, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:451;s:6:\"height\";i:360;s:4:\"file\";s:48:\"2018/12/485098e0-d3da-3adf-9f49-b04a272593ea.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"485098e0-d3da-3adf-9f49-b04a272593ea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"485098e0-d3da-3adf-9f49-b04a272593ea-300x239.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 18, 'fakerpress_flag', '1'),
(37, 19, 'fakerpress_flag', '1'),
(38, 20, '_wp_attached_file', '2018/12/140a764a-7145-3c5f-8627-a5e0abc87bb9.jpg'),
(39, 20, '_wp_attachment_metadata', 'a:0:{}'),
(40, 20, 'fakerpress_flag', '1'),
(41, 19, '_thumbnail_id', '20'),
(42, 21, '_wp_attached_file', '2018/12/7e6b2be7-1364-3230-b21f-084a86c31baf.jpg'),
(43, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:228;s:6:\"height\";i:182;s:4:\"file\";s:48:\"2018/12/7e6b2be7-1364-3230-b21f-084a86c31baf.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"7e6b2be7-1364-3230-b21f-084a86c31baf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 21, 'fakerpress_flag', '1'),
(45, 22, 'fakerpress_flag', '1'),
(46, 25, '_edit_last', '1'),
(47, 25, '_edit_lock', '1544203570:1'),
(48, 26, '_wp_attached_file', '2018/12/jack-page-bg-desk.jpg'),
(49, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1227;s:4:\"file\";s:29:\"2018/12/jack-page-bg-desk.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"jack-page-bg-desk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"jack-page-bg-desk-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"jack-page-bg-desk-768x491.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:491;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"jack-page-bg-desk-1024x654.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 25, '_thumbnail_id', '26'),
(52, 1, '_edit_lock', '1544203571:1'),
(54, 1, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-04 11:20:40', '2018-12-04 11:20:40', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-12-07 17:18:52', '2018-12-07 17:18:52', '', 0, 'http://localhost/lwhh/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-04 11:20:40', '2018-12-04 11:20:40', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/lwhh/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-12-04 11:20:40', '2018-12-04 11:20:40', '', 0, 'http://localhost/lwhh/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-04 11:20:40', '2018-12-04 11:20:40', '<h2>Who we are</h2><p>Our website address is: http://localhost/lwhh.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-12-04 11:20:40', '2018-12-04 11:20:40', '', 0, 'http://localhost/lwhh/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-12-04 11:20:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-04 11:20:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/lwhh/?p=4', 0, 'post', '', 0),
(5, 1, '2018-12-04 13:16:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-04 13:16:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/lwhh/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-12-04 13:19:49', '2018-12-04 13:19:49', '', '', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-12-04 13:19:49', '2018-12-04 13:19:49', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/9ef2216d-689a-3d9c-a698-bd9f745c7cd4.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-12-04 13:19:50', '2018-12-04 13:19:50', '', '', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-12-04 13:19:50', '2018-12-04 13:19:50', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/287cc050-d9c6-34b2-963d-3f372eabef76.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-12-04 13:19:59', '2018-12-04 13:19:59', '', '', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-12-04 13:19:59', '2018-12-04 13:19:59', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/4746f465-a6f6-3d9f-83de-f8fa912b5c3a.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-12-03 10:15:51', '2018-12-03 10:15:51', '<img alt=\"Alias eum vitae nemo minus asperiores atque et\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/9ef2216d-689a-3d9c-a698-bd9f745c7cd4.jpg\">\n<img alt=\"Quis in consequatur et qui sit\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/287cc050-d9c6-34b2-963d-3f372eabef76.jpg\">\n<hr>\n<ol><li>Dolor</li><li>Voluptatem</li><li>Adipisci</li><li>Cupiditate eveniet</li><li>Et esse ut aliquid qui</li></ol>\n<blockquote><a title=\"Cum dignissimos vel ut laborum.\" href=\"http://murray.com/\">Ducimus quis tenetur laborum libero. Voluptas ex et consequuntur</a> Ullam autem quidem perferendis nostrum qui. Nihil mollitia id et est non doloremque. <a title=\"Quia et.\" href=\"https://www.ullrich.com/quod-fugit-animi-nostrum-recusandae\">vel facilis quo quae</a> perspiciatis. Enim vel <a title=\"Ratione minus at aspernatur.\" href=\"http://www.mohr.com/accusamus-labore-nihil-ea-explicabo.html\">dolorem earum et</a> Labore beatae quos rerum</blockquote>\n<!--more-->\n<h4>Aut nesciunt dicta deleniti neque ipsum</h4>\n<img alt=\"Repellendus omnis deleniti ex repellat\">\n<h4>Repudiandae est ullam ut ut ut aut. Qui quisquam est ut aut ratione. Dolores at dignissimos nostrum eum</h4>\n<hr>\n<h1>Omnis est et ut voluptas vel. Rem excepturi quas ut voluptatem adipisci fuga vero. Quia magnam natus sapiente est ea dolor. Placeat error odit voluptas doloribus eum dolores omnis</h1>\n<img class=\"aligncenter\" alt=\"Qui quas corrupti sequi in vel corporis\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/4746f465-a6f6-3d9f-83de-f8fa912b5c3a.jpg\">\n<h6>Dolorem velit molestias unde harum iure</h6>\n<ol><li>Ex est omnis vel</li><li>Ut incidunt rem aut est aut in quia qui</li><li>Saepe non non id cum</li></ol>', 'Veritatis maiores ipsam rerum vero', '', 'publish', 'open', 'open', '', 'veritatis-maiores-ipsam-rerum-vero', '', '', '2018-12-03 10:15:51', '2018-12-03 10:15:51', '', 0, 'http://localhost/lwhh/2018/12/03/veritatis-maiores-ipsam-rerum-vero/', 0, 'post', '', 0),
(10, 1, '2018-12-04 13:20:07', '2018-12-04 13:20:07', '', '', '', 'inherit', 'open', 'closed', '', '10', '', '', '2018-12-04 13:20:07', '2018-12-04 13:20:07', '', 9, 'http://localhost/lwhh/wp-content/uploads/2018/12/32aae2fd-2e43-34c5-9559-663121a9af85.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-12-04 13:20:09', '2018-12-04 13:20:09', '', '', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-12-04 13:20:09', '2018-12-04 13:20:09', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/0c2a389a-2cf2-3917-aad7-3705b8a634f4.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-12-03 19:21:37', '2018-12-03 19:21:37', '<h5>Veniam corporis dolorem nulla est rerum quia</h5>\n<ol><li>Aperiam ratione consectetur optio</li><li>Dolores eum id</li><li>Asperiores quos debitis voluptatem</li></ol>\n<!--more-->\n<h1>Officia qui sed possimus nostrum ut et</h1>\n<hr>\n<h3>Reiciendis veniam ut omnis excepturi. A non dolore voluptatem ut natus placeat nam. Et qui mollitia consequatur et accusamus</h3>\n<blockquote>Autem earum repudiandae deserunt sequi. Et nulla sed. ex quaerat reprehenderit blanditiis Nisi esse occaecati. Necessitatibus numquam ea quae nam possimus a Repellendus ipsum maxime et recusandae. ex perferendis non harum. Itaque repudiandae perspiciatis voluptates aut aspernatur sapiente. ratione placeat voluptate <a title=\"Commodi dolore expedita quos ipsam.\" href=\"http://marvin.biz/reprehenderit-minus-et-ea-sunt.html\">dolorem rerum</a> Eligendi voluptatem velit assumenda laborum excepturi. dolor quam. Eos aut eos quia assumenda nisi. Et dolorem esse odio. Eum rerum eum provident non Sit et nesciunt minus dolorem ut. enim fugiat necessitatibus placeat Rerum fuga et accusamus voluptas asperiores. Dignissimos harum quo qui aut cupiditate. Nobis quis ad. Omnis aut rem aliquam molestiae in eum. Accusamus et reprehenderit occaecati minima. Debitis error omnis reprehenderit</blockquote>\n<blockquote>Repellat laborum sunt pariatur. Est libero voluptatibus alias rerum veritatis. Placeat qui omnis aut odit corporis cupiditate Sunt molestiae cumque minus aut at aut Sed placeat voluptatum aut beatae Ea accusantium sint ex blanditiis tempora est non. nihil quia officia veritatis. cupiditate omnis et et quo <a title=\"Alias.\" href=\"http://prohaska.com/assumenda-eveniet-neque-earum-eos-deleniti-eveniet-provident\">Laboriosam doloremque nihil vero eveniet voluptates. Quisquam</a> dolores velit debitis. Eum veniam nam fuga minus natus. Exercitationem incidunt quia Reprehenderit laudantium neque veritatis quisquam. Inventore voluptatibus omnis ut. Recusandae vitae illo provident nostrum natus. Tenetur ducimus minus animi. odio occaecati error libero <a title=\"Expedita et.\" href=\"http://leuschke.com/quas-dolor-deserunt-hic-beatae-officia-nam-sed.html\">qui beatae.</a> nulla enim quasi et ipsam enim. Ipsum eos esse sit. Nam quia sed quia totam in. Provident reiciendis laboriosam id id. Neque sunt qui est. aspernatur animi. Sunt dolores et eos quia.</blockquote>\n<hr>\n<h4>Sunt sunt explicabo perferendis vel. Earum voluptas voluptatem pariatur aliquid vel</h4>\n<ul><li>Et voluptate molestiae molestias rerum</li><li>Quo ab rerum quod beatae quam neque tenetur</li><li>Hic perspiciatis</li><li>Veritatis assumenda asperiores sint dolor</li><li>Quod consequuntur dolorem itaque delectus id</li><li>Accusantium sunt est quis labore ad neque repellendus</li><li>Quia placeat iure hic consequatur</li><li>Doloribus at aut voluptatem</li><li>Fugiat nobis deserunt illum officia voluptas</li><li>Unde doloremque sequi ea non consequatur aut</li></ul>\n<img alt=\"Sunt omnis dolorem maiores possimus\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/0c2a389a-2cf2-3917-aad7-3705b8a634f4.jpg\">', 'Vero fugiat voluptatum ut', 'Fuga excepturi optio beatae sit cum rerum voluptates sint veritatis laboriosam voluptatem exercitationem at possimus neque eos molestiae aperiam doloribus dolor repudiandae fuga magnam non quod modi reiciendis iure dolorum nesciunt non repellat numquam quia quam sunt.', 'publish', 'open', 'open', '', 'vero-fugiat-voluptatum-ut', '', '', '2018-12-03 19:21:37', '2018-12-03 19:21:37', '', 0, 'http://localhost/lwhh/2018/12/03/vero-fugiat-voluptatum-ut/', 0, 'post', '', 0),
(13, 1, '2018-12-04 13:20:10', '2018-12-04 13:20:10', '', '', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-12-04 13:20:10', '2018-12-04 13:20:10', '', 12, 'http://localhost/lwhh/wp-content/uploads/2018/12/a092b090-b2fc-383d-a3ac-27dc576c83fe.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-12-03 21:48:51', '2018-12-03 21:48:51', '<h6>Assumenda molestiae aut officiis commodi. Laudantium sit quos illum facilis. Quia ullam animi sunt aperiam quo</h6>\n<hr>\n<p>Recusandae eligendi officia sit sint. Perspiciatis nihil quia quibusdam dolorum perspiciatis atque. non iste nemo architecto. Eligendi quia sed odit voluptatem enim. eaque aut itaque. Ea <a title=\"Veritatis aut voluptatibus fuga enim.\" href=\"https://klein.com/ipsa-et-officia-aliquam-pariatur-non-repudiandae.html\">non voluptatem omnis</a> sunt quas. Voluptatibus laborum sed fugiat excepturi ut maiores. quia et magni quod sunt quis voluptates. Voluptates eos vitae sint. Adipisci aliquid aut doloribus ut eius. Ipsam illum placeat cum iusto. dignissimos vel et veniam adipisci. necessitatibus alias ea libero. Recusandae in voluptatem <a title=\"Et accusamus beatae pariatur ad.\" href=\"http://weimann.org/velit-et-delectus-sapiente-est-maxime-dolor\">et dolorem. Reiciendis dignissimos</a> fugit doloribus numquam Nesciunt quam qui sint impedit dicta. qui repellendus magni. Asperiores consequuntur odit soluta placeat illum nulla. dolor ut nesciunt hic maiores Nobis reiciendis excepturi ratione aut. Non voluptatem asperiores magni autem. debitis quia illum culpa At rerum voluptatem laboriosam. Minus tempore et veniam Quo et eaque aut aperiam saepe aut Laboriosam non aut itaque iusto. in neque id velit. Eum enim qui inventore facere voluptatem. Dicta quae neque minima <a title=\"Et magni.\" href=\"http://ledner.com/at-velit-sint-velit-sequi-omnis-quas-quia.html\">Eligendi</a> eum asperiores aut Magnam voluptatem aut unde nemo pariatur sit amet. Perspiciatis aliquam eum reprehenderit beatae similique expedita.</p>\n<blockquote>Sequi aliquid harum sed Vero sit temporibus itaque sit perferendis rerum. Nihil nesciunt quo assumenda quos. Numquam explicabo fugiat fugiat non. Quibusdam et nobis tenetur omnis soluta Blanditiis dolorum ipsam perspiciatis odit aut. Natus reprehenderit omnis praesentium sunt. sunt assumenda enim ut magnam. vel est maiores doloribus perferendis omnis qui. Facilis impedit quibusdam eos animi non. Quaerat adipisci temporibus accusamus. Sed aspernatur officia consequatur numquam <a title=\"Vel vel voluptas.\" href=\"http://www.gorczany.com/dolores-accusamus-esse-nam\">molestiae</a> Sunt et velit doloribus ut.</blockquote>\n<hr>\n<!--more-->\n<ol><li>Eos itaque</li><li>In dolor eaque quod</li><li>Maxime veritatis deleniti fugit ea reprehenderit</li><li>Suscipit et</li><li>Quia eum</li><li>Porro aut neque molestias quae</li><li>Et dolorum et ipsam</li><li>Molestiae labore</li></ol>\n<p><a title=\"Beatae nulla.\" href=\"http://breitenberg.net/hic-et-porro-minima-optio.html\">Natus tenetur dolore labore sed. Fugit</a> <a title=\"Officia laboriosam accusantium enim ex quod.\" href=\"http://www.bechtelar.net/porro-ipsam-nulla-architecto-vero-nostrum-id-minima.html\">dolore minus in ad maxime</a> tempore. Debitis nesciunt ad reiciendis <a title=\"Omnis labore ab est.\" href=\"https://pacocha.info/praesentium-reprehenderit-consequatur-ut-quisquam-placeat.html\">et qui. Aut earum</a> <a title=\"Consequuntur inventore cupiditate repellat ipsa iste.\" href=\"https://bednar.net/dolore-laborum-accusantium-neque-laboriosam-facere.html\">est dolorem qui</a> <a title=\"Officia dolor aut sunt rerum nesciunt.\" href=\"http://www.hilpert.com/totam-quasi-eveniet-et-odio.html\">labore. Ullam</a> <a title=\"Eligendi eos doloribus rem expedita sed esse cum.\" href=\"http://king.com/labore-numquam-sed-hic-iste-ea\">saepe enim.</a> consequatur illum et voluptatibus labore Quis debitis cum cumque incidunt accusamus harum.</p>', 'Quia debitis numquam et sapiente nihil', 'Tempora delectus cumque similique delectus magnam ut et quisquam aut consequatur aut ut consequuntur rerum eos corrupti esse aut odit sunt sint consectetur omnis impedit laborum exercitationem velit est aut delectus ad sint dolorem.', 'publish', 'open', 'closed', '', 'quia-debitis-numquam-et-sapiente-nihil', '', '', '2018-12-03 21:48:51', '2018-12-03 21:48:51', '', 0, 'http://localhost/lwhh/2018/12/03/quia-debitis-numquam-et-sapiente-nihil/', 0, 'post', '', 0),
(15, 1, '2018-12-04 13:20:11', '2018-12-04 13:20:11', '', '', '', 'inherit', 'open', 'closed', '', '15', '', '', '2018-12-04 13:20:11', '2018-12-04 13:20:11', '', 14, 'http://localhost/lwhh/wp-content/uploads/2018/12/409ec380-86cf-36a7-be71-349f8f31980c.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-12-03 15:31:47', '2018-12-03 15:31:47', '<h1>Tempora distinctio fuga et</h1>\n<ul><li>Sunt dolor cupiditate explicabo</li><li>Ullam harum</li></ul>\n<h1>Molestiae doloribus id sed dignissimos qui rerum</h1>\n<blockquote>Provident omnis sit Ut quis architecto. Quia quod eos <a title=\"Sit vero.\" href=\"http://www.parker.info/fugiat-ipsa-facere-expedita-nihil-cum-illum-incidunt.html\">ex. Deleniti quia ea amet distinctio</a> qui eum. Cum autem rerum cupiditate commodi nihil. <a title=\"Deleniti harum ut iure placeat.\" href=\"http://www.rath.biz/exercitationem-distinctio-quos-itaque-architecto-molestias-praesentium\">veniam et neque nobis maiores</a> <a title=\"Itaque dolor nam.\" href=\"https://www.dibbert.com/corrupti-necessitatibus-sint-qui-voluptate-et-non\">quia.</a> sit nulla voluptas <a title=\"Maxime tenetur.\" href=\"http://www.hansen.info/explicabo-odio-voluptate-inventore-esse-ipsam-voluptatem-qui.html\">expedita eum</a> Ut qui quia est ut aut Reprehenderit repudiandae voluptatem Minus voluptatem et quisquam atque nemo. Dignissimos hic quibusdam occaecati veritatis soluta culpa ea. <a title=\"Officiis et.\" href=\"http://www.littel.net/voluptatem-voluptatibus-possimus-ut-aut-totam-perferendis\">laudantium</a> debitis est ut id blanditiis.</blockquote>\n<!--more-->\n<ul><li>Saepe pariatur</li><li>Harum corporis</li></ul>\n<p>Repellendus voluptatem tempore quibusdam sunt laborum. Consequatur consequatur officiis ut numquam maxime dolore eaque. Perferendis quia quam iure. Pariatur quia quos voluptatem architecto et sapiente officiis. Molestiae dolor quam nemo cum libero non. Aspernatur et pariatur dolore. Enim dolore ad ducimus. Dolorum fuga repellat consequatur. Voluptatem quisquam cum eius impedit. Est explicabo sint quia et. Quae modi ea quia veritatis eveniet sit. Blanditiis est temporibus natus quia et vel. Nostrum voluptas commodi beatae in fuga sequi. Vel dolores vel sint modi unde quia modi. Nostrum omnis nesciunt modi. Architecto ut accusantium et quod dicta et ea porro. Voluptas et facere et est optio et. Excepturi quia tempore quibusdam cum qui et. Quis aut consectetur et ut et in. Minus nam magni totam dolor. Laboriosam optio delectus doloremque et suscipit sit omnis. Suscipit est aspernatur animi laboriosam. Quasi reiciendis tempore alias commodi sed. Facere incidunt enim molestiae officiis quis fugiat a. Repellendus voluptatem voluptate veritatis. Corporis autem omnis voluptatibus qui sed. A est aliquid ut dignissimos ut eius quas est. Et quo amet debitis illo voluptas nisi saepe. Nemo reiciendis totam qui quam. Cum in minus sed. Velit aut voluptatem accusamus laboriosam consectetur non accusantium. A distinctio et fugiat dolore provident. Perspiciatis iusto beatae voluptatem. Sapiente voluptatem voluptatibus explicabo laborum sunt.</p>\n<hr>\n<ol><li>Perspiciatis et</li></ol>\n<p>Et earum accusantium eveniet distinctio. Harum enim nemo veniam voluptates velit <a title=\"Tenetur totam consequatur.\" href=\"https://www.bergnaum.com/laudantium-sunt-vero-placeat-sit-unde\">Velit perspiciatis perspiciatis saepe repellat</a> quis. Pariatur ipsum pariatur eius cum. Quisquam enim facere molestiae commodi minima <a title=\"Iure et.\" href=\"http://schinner.info/\">architecto. Hic quam</a> dolores enim dolores. dolore similique repudiandae enim <a title=\"Aliquam quidem aut velit natus.\" href=\"http://www.brown.net/\">At debitis</a> asperiores et assumenda facilis. Odio rerum non quae in quia sed voluptas. Eum ipsam vero tempore et. Sapiente quod dolores quam. Eveniet <a title=\"Corporis optio ipsam consequatur id iste et aut aliquid molestias.\" href=\"https://www.hessel.info/dolorem-sit-ut-eius-iste\">quo quis ut consequatur. Ea exercitationem</a> totam consequatur esse. velit quia voluptas <a title=\"Quaerat.\" href=\"http://ullrich.com/minus-voluptatem-voluptas-et-illo\">quis repellat porro. Laborum consequatur a ab</a> autem amet. ea quisquam quia inventore vitae officiis velit. laboriosam exercitationem <a title=\"Dolore alias laudantium quo.\" href=\"http://www.sporer.org/dolores-officia-eos-at-qui-quia-voluptatem-animi\">facere est voluptatem dolorum. Qui</a> quia alias qui distinctio doloremque. Aut nostrum et commodi deleniti <a title=\"Eum deleniti facilis pariatur quis in possimus sint dolorem illum.\" href=\"http://www.balistreri.com/ea-minima-dolorem-iusto-perferendis-voluptates-a-consectetur\">Quod est possimus</a> nesciunt qui cum quis. Repellendus id est <a title=\"Expedita occaecati sequi.\" href=\"http://willms.net/dolor-rerum-id-nihil-at-repudiandae.html\">Veritatis</a> ullam rerum modi. Aliquam qui voluptates cupiditate distinctio soluta voluptas. Dolorem vel omnis dolores at fugiat. Nulla praesentium ipsum nam. Et molestiae modi placeat. Voluptas aut ipsa et sed molestiae.</p>\n<hr>\n<ol><li>Sint alias</li><li>Modi veritatis non deleniti assumenda</li><li>Pariatur ex maiores itaque aut</li><li>Mollitia ullam hic dolorum et</li><li>Aut in libero est quas suscipit modi</li><li>Reiciendis</li></ol>\n<h4>Et cum sint suscipit optio id dolor rem. Deleniti accusamus voluptatem quia earum ea</h4>\n<hr>\n<h4>Sint necessitatibus ullam sunt impedit eum. At est quis odio reiciendis facilis minima eum nulla. Ratione minima ipsam voluptas qui omnis cupiditate quia</h4>\n<ol><li>Cumque facere iste ullam illum earum</li><li>Laborum</li><li>Veniam error</li><li>Explicabo distinctio qui officia</li><li>Sed sed aspernatur cum non expedita</li><li>Modi rem</li><li>Ducimus omnis quia quasi consequatur</li><li>Est debitis neque aut nam aut</li><li>Nihil excepturi fugiat quia sit totam qui</li></ol>', 'Excepturi ducimus voluptatem neque maxime dolores quis', 'Accusamus hic quisquam pariatur numquam ipsum aliquam et iusto cumque id doloremque ut incidunt et dolore optio quidem aut id harum in ad sit autem cumque nisi et nostrum et dolore aut est modi laboriosam aut qui cumque maiores et magni dolores repellendus et esse deleniti molestiae ut et numquam.', 'publish', 'open', 'open', '', 'excepturi-ducimus-voluptatem-neque-maxime-dolores-quis', '', '', '2018-12-03 15:31:47', '2018-12-03 15:31:47', '', 0, 'http://localhost/lwhh/2018/12/03/excepturi-ducimus-voluptatem-neque-maxime-dolores-quis/', 0, 'post', '', 0),
(17, 1, '2018-12-04 13:20:12', '2018-12-04 13:20:12', '', '', '', 'inherit', 'open', 'closed', '', '17', '', '', '2018-12-04 13:20:12', '2018-12-04 13:20:12', '', 16, 'http://localhost/lwhh/wp-content/uploads/2018/12/690d0085-a771-3692-8d9c-c6642b693a99.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-12-04 13:20:12', '2018-12-04 13:20:12', '', '', '', 'inherit', 'open', 'closed', '', '18', '', '', '2018-12-04 13:20:12', '2018-12-04 13:20:12', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/485098e0-d3da-3adf-9f49-b04a272593ea.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-12-03 23:05:59', '2018-12-03 23:05:59', '<h2>Non qui molestiae eius ipsum provident enim. Repellat voluptatum nostrum quia ad fugit sint adipisci. Reiciendis odio reiciendis qui et</h2>\n<hr>\n<!--more-->\n<h6>Quo cum ut natus illum temporibus vitae sint. Perspiciatis soluta ex quo</h6>\n<ul><li>Eos et et itaque inventore sint optio iusto</li><li>Consequatur delectus modi officiis</li></ul>\n<h3>Earum totam voluptas porro ut. Consectetur dolores occaecati voluptates nemo</h3>\n<p>Voluptatem quia id quibusdam. Totam cumque qui voluptas modi. Autem consequatur iusto suscipit rerum quos qui exercitationem. Aliquid eum libero doloremque animi animi. Aut commodi natus dolorum reiciendis officia praesentium unde. Officiis qui ipsa excepturi molestias aut ut. Et debitis et rem. Provident deleniti veniam sunt modi molestiae adipisci quibusdam. Illo qui consequuntur nihil aut tempora illum nihil. Optio accusamus laborum quis quas. Quisquam nisi molestiae autem sit esse officia quis. Voluptas quod dolores tempora repudiandae. Corrupti deleniti consequatur veniam qui esse incidunt illo. Reiciendis amet deleniti voluptates. Molestiae at assumenda culpa enim molestias itaque perspiciatis. Qui non voluptatem labore aut repudiandae nulla ex. Ut laudantium dignissimos nulla dolor. Saepe nihil fugiat impedit corporis mollitia qui. Repellendus quaerat ad aut qui. Incidunt recusandae minus quam ratione laboriosam sed. Et est ut temporibus illo sed incidunt voluptatum ipsa. Dolor dicta mollitia dolorum ducimus totam omnis et aperiam. Unde aut sed repellendus reiciendis. Ipsa aut perferendis incidunt veniam illum. Eum eum veritatis eos aspernatur vel possimus. Aliquid quisquam id magnam at fuga.</p>\n<img alt=\"Dolor consequatur perferendis\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/485098e0-d3da-3adf-9f49-b04a272593ea.jpg\">\n<h3>Nam voluptatem aut non quos ea libero autem. Adipisci nihil sint ut quia totam. Mollitia in qui nostrum ullam. Quidem quo iste maiores dolore</h3>\n<blockquote>Et iusto dicta reiciendis provident sint. Ut <a title=\"Rerum minima est consectetur odio non velit.\" href=\"http://www.effertz.com/explicabo-tempora-impedit-nisi-laborum-quae-totam-officia\">consequatur corporis.</a> voluptatem impedit nam quaerat. Quos aut doloribus facere. Molestiae voluptates quas enim mollitia tempore vero Et sequi soluta suscipit ipsam autem. Similique quaerat qui. Fuga aliquid ex rerum magnam in. aperiam consequatur dolor Rerum ullam laboriosam quo ipsa Quam necessitatibus doloribus non et. Necessitatibus debitis qui recusandae accusamus. Possimus quo nihil quam nobis. Dolores quae aut sint consequatur rerum. Fuga sit ut mollitia neque. odio nisi cum <a title=\"Molestiae sed.\" href=\"http://paucek.com/vitae-sunt-omnis-illum-dolorem-quis-at.html\">officiis</a> Quod rerum incidunt libero expedita. officia maxime quia est exercitationem Quo perferendis reiciendis velit consequatur et qui Totam deleniti <a title=\"Voluptas maxime velit quos tenetur.\" href=\"http://morar.com/nihil-saepe-fuga-sint-aut-consequatur-ex-omnis-minima\">sed occaecati ut non. Accusamus</a> voluptas quia qui porro voluptas incidunt. Natus et ut atque provident non facere iure. officia rem sequi et et similique nihil. Cumque eaque aliquid debitis. Odio recusandae iure amet similique. Et perferendis omnis suscipit et Aut aut recusandae nihil libero corporis. Neque neque voluptatibus exercitationem et aut occaecati. corporis neque quia quisquam. vel culpa aut est. Ut dolores sit architecto eum. Mollitia qui est eius. tempore beatae ut enim qui. Itaque illo velit <a title=\"Doloribus id autem quaerat.\" href=\"https://www.altenwerth.biz/et-harum-ratione-quisquam-consequatur-et-sed-ab\">rerum laboriosam autem inventore.</a> ducimus nihil id. Quia voluptatem ducimus voluptatem.</blockquote>\n<hr>\n<p>Sit architecto molestiae aut alias aut rerum. Minus est suscipit voluptatem enim. Ut minima et culpa unde rem accusantium molestiae. Aliquid qui eligendi non aut quod. Dignissimos doloremque laboriosam autem. Perspiciatis et minima vero nam doloremque vero. Possimus eos non placeat quo totam. Non autem aut ut voluptas in. Blanditiis ipsam culpa aut et. Quia quia fugiat exercitationem velit. Voluptatem laudantium possimus velit ut dolor suscipit voluptate. Quaerat minus et sequi odio aut. Sequi similique qui rerum et ullam. Cumque velit deleniti qui odio fuga cupiditate nobis. Tempora eveniet sit numquam sunt cum. Quis autem suscipit numquam pariatur eos rerum. Enim quisquam qui et sit. Sequi voluptatem autem nihil suscipit consequuntur. Dolores voluptatem quia qui voluptatibus ab. Ratione odit debitis voluptatem vel voluptate ut autem. Rem autem provident aut numquam recusandae illum nemo iusto. Animi ducimus non tenetur odio dolore exercitationem. Non omnis temporibus quaerat autem assumenda quo voluptate. At at est delectus est sapiente libero optio. Architecto corporis quia quaerat amet est asperiores eaque. Animi minus voluptatem dolorum sunt optio maiores quaerat itaque. Optio eos maiores sit quisquam illum. Velit ut tempore porro beatae repellat aspernatur ad. Officiis sit libero vitae minus aliquam. Ut quis esse suscipit dicta voluptas minus. Animi aperiam ab est quia ab libero exercitationem. Architecto ut minus voluptatum minima aut inventore quae. Quam sed nostrum labore dolores. Temporibus ea adipisci sed reiciendis assumenda consequatur nesciunt. Fugit voluptatum aut et iure voluptatum. Sapiente ea libero qui fugiat veniam. Exercitationem incidunt omnis sint.</p>', 'Possimus aut quaerat reiciendis rerum quis', '', 'publish', 'open', 'closed', '', 'possimus-aut-quaerat-reiciendis-rerum-quis', '', '', '2018-12-03 23:05:59', '2018-12-03 23:05:59', '', 0, 'http://localhost/lwhh/2018/12/03/possimus-aut-quaerat-reiciendis-rerum-quis/', 0, 'post', '', 0),
(20, 1, '2018-12-04 13:20:13', '2018-12-04 13:20:13', '', '', '', 'inherit', 'open', 'closed', '', '20', '', '', '2018-12-04 13:20:13', '2018-12-04 13:20:13', '', 19, 'http://localhost/lwhh/wp-content/uploads/2018/12/140a764a-7145-3c5f-8627-a5e0abc87bb9.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-12-04 13:20:14', '2018-12-04 13:20:14', '', '', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-12-04 13:20:14', '2018-12-04 13:20:14', '', 0, 'http://localhost/lwhh/wp-content/uploads/2018/12/7e6b2be7-1364-3230-b21f-084a86c31baf.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-12-03 11:22:38', '2018-12-03 11:22:38', '<img src=\"http://localhost/lwhh/wp-content/uploads/2018/12/7e6b2be7-1364-3230-b21f-084a86c31baf.jpg\">\n<h4>Esse soluta ea impedit ea provident molestiae. Sit veritatis aut aut a deleniti debitis</h4>\n<img alt=\"Sunt voluptatem et vel qui ipsa ab\" src=\"http://localhost/lwhh/wp-content/uploads/2018/12/0c2a389a-2cf2-3917-aad7-3705b8a634f4.jpg\">\n<!--more-->\n<h6>Non error quaerat consequatur hic maiores. Iste at id enim molestias</h6>\n<hr>', 'Et quibusdam rerum laudantium', '', 'publish', 'open', 'open', '', 'et-quibusdam-rerum-laudantium', '', '', '2018-12-03 11:22:38', '2018-12-03 11:22:38', '', 0, 'http://localhost/lwhh/2018/12/03/et-quibusdam-rerum-laudantium/', 0, 'post', '', 0),
(23, 1, '2018-12-07 10:49:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-07 10:49:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/lwhh/?p=23', 0, 'post', '', 0),
(24, 1, '2018-12-07 10:49:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-07 10:49:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/lwhh/?p=24', 0, 'post', '', 0),
(25, 1, '2018-12-07 17:04:55', '2018-12-07 17:04:55', 'Hi, this is my first post, so I think it would be great for you. You will be able to learn Web Development from this course. I will teach you HTML, CSS, JavaScript and PHP.', 'My First Post', '', 'publish', 'open', 'open', '', 'my-first-post', '', '', '2018-12-07 17:18:27', '2018-12-07 17:18:27', '', 0, 'http://localhost/lwhh/?p=25', 0, 'post', '', 0),
(26, 1, '2018-12-07 17:04:47', '2018-12-07 17:04:47', '', 'jack-page-bg-desk', '', 'inherit', 'open', 'closed', '', 'jack-page-bg-desk', '', '', '2018-12-07 17:04:47', '2018-12-07 17:04:47', '', 25, 'http://localhost/lwhh/wp-content/uploads/2018/12/jack-page-bg-desk.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-12-07 17:04:55', '2018-12-07 17:04:55', 'Hi, this is my first post, so I think it would be great for you. You will be able to learn Web Development from this course. I will teach you HTML, CSS, JavaScript and PHP.', 'My First Post', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-12-07 17:04:55', '2018-12-07 17:04:55', '', 25, 'http://localhost/lwhh/2018/12/07/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-12-07 17:18:52', '2018-12-07 17:18:52', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-07 17:18:52', '2018-12-07 17:18:52', '', 1, 'http://localhost/lwhh/2018/12/07/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Web Desing', 'web-desing', 0),
(3, 'Web Development', 'web-development', 0),
(4, 'Graphics Design', 'graphics-design', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(9, 1, 0),
(12, 1, 0),
(14, 1, 0),
(16, 1, 0),
(19, 1, 0),
(22, 1, 0),
(25, 1, 0),
(25, 2, 0),
(25, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'post_tag', '', 0, 2),
(3, 3, 'post_tag', '', 0, 2),
(4, 4, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'user'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b83486b4473e7ddd15f293c8ce245837f361bd43e8933bf91bb4d548f0dd7283\";a:4:{s:10:\"expiration\";i:1545132056;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1543922456;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1544202291');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'user', '$P$BqQF2O9r5GXo8CAGsVUpCPr0P6Ip2v0', 'user', 'a@a.com', '', '2018-12-04 11:20:40', '', 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
