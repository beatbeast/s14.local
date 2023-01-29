-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2023 at 10:34 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s14_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-07 15:19:29', '2021-09-07 15:19:29', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://s14.local', 'yes'),
(2, 'home', 'http://s14.local', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bolagbemi@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:63:\"C:\\xampp\\htdocs\\s14.local/wp-content/themes/s14.local/style.css\";i:1;s:67:\"C:\\xampp\\htdocs\\s14.local/wp-content/themes/s14-local/functions.php\";i:2;s:63:\"C:\\xampp\\htdocs\\s14.local/wp-content/themes/s14-local/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 's14-local', 'yes'),
(41, 'stylesheet', 's14-local', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1646579961', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1674206373;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1674227972;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674227973;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674227996;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674227999;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1674228074;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1674659972;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631734613;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:4;s:7:\"primary\";i:3;}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'theme_mods_s14-local', 'a:4:{s:18:\"custom_css_post_id\";i:156;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631111823;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:3:{s:6:\"menu-1\";i:3;s:6:\"menu-2\";i:4;s:6:\"menu-3\";i:2;}s:16:\"header_textcolor\";s:5:\"blank\";}', 'yes'),
(156, 'current_theme', 's14.local', 'yes'),
(157, 'theme_switched', '', 'yes'),
(158, 'theme_switched_via_customizer', '', 'yes'),
(159, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(173, 'recovery_mode_email_last_sent', '1632054186', 'yes'),
(184, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(192, 'theme_mods_s14.local', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:6:\"footer\";i:3;s:6:\"menu-1\";i:3;s:6:\"menu-2\";i:4;s:6:\"menu-3\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:21:\"random-uploaded-image\";s:11:\"custom_logo\";i:42;s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631734602;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(202, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1674197335;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(204, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"akinstemi123@gmail.com\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1631179416;}', 'no'),
(266, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(274, 'site_logo', '42', 'yes'),
(560, 'WPLANG', '', 'yes'),
(561, 'new_admin_email', 'bolagbemi@gmail.com', 'yes'),
(562, 'adminhash', 'a:2:{s:4:\"hash\";s:32:\"50d82aacbffebcf46ee1847991874d87\";s:8:\"newemail\";s:19:\"bolagbemi@gmail.com\";}', 'yes'),
(567, 'user_count', '1', 'no'),
(568, 'db_upgraded', '', 'yes'),
(569, '_transient_timeout_global_styles_s14-local', '1674141731', 'no'),
(570, '_transient_global_styles_s14-local', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(571, '_transient_timeout_global_styles_svg_filters_s14-local', '1674141731', 'no'),
(572, '_transient_global_styles_svg_filters_s14-local', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(574, 'can_compress_scripts', '1', 'no'),
(575, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1674184890', 'no'),
(576, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(581, '_site_transient_theme_roots', 'a:4:{s:9:\"s14-local\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(582, '_site_transient_timeout_theme_roots', '1674199120', 'no'),
(583, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1674197336;s:7:\"checked\";a:4:{s:9:\"s14-local\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(584, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1674197336;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_menu_item_type', 'custom'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '6'),
(8, 6, '_menu_item_object', 'custom'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', 'http://s14.local/'),
(13, 6, '_menu_item_orphaned', '1631030988'),
(14, 7, '_menu_item_type', 'post_type'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '2'),
(17, 7, '_menu_item_object', 'page'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', ''),
(22, 7, '_menu_item_orphaned', '1631030990'),
(23, 8, '_menu_item_type', 'custom'),
(24, 8, '_menu_item_menu_item_parent', '0'),
(25, 8, '_menu_item_object_id', '8'),
(26, 8, '_menu_item_object', 'custom'),
(27, 8, '_menu_item_target', ''),
(28, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 8, '_menu_item_xfn', ''),
(30, 8, '_menu_item_url', 'http://s14.local/'),
(31, 8, '_menu_item_orphaned', '1631032589'),
(32, 9, '_menu_item_type', 'post_type'),
(33, 9, '_menu_item_menu_item_parent', '0'),
(34, 9, '_menu_item_object_id', '2'),
(35, 9, '_menu_item_object', 'page'),
(36, 9, '_menu_item_target', ''),
(37, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 9, '_menu_item_xfn', ''),
(39, 9, '_menu_item_url', ''),
(40, 9, '_menu_item_orphaned', '1631032591'),
(41, 10, '_wp_attached_file', '2021/09/WhatsApp-Image-2020-11-13-at-12.27.21-PM.jpeg'),
(42, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:160;s:4:\"file\";s:53:\"2021/09/WhatsApp-Image-2020-11-13-at-12.27.21-PM.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 10, '_wp_attachment_is_custom_background', 's14.local'),
(51, 15, '_menu_item_type', 'custom'),
(52, 15, '_menu_item_menu_item_parent', '0'),
(53, 15, '_menu_item_object_id', '15'),
(54, 15, '_menu_item_object', 'custom'),
(55, 15, '_menu_item_target', ''),
(56, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 15, '_menu_item_xfn', ''),
(58, 15, '_menu_item_url', 'http://s14.local/'),
(59, 15, '_menu_item_orphaned', '1631230112'),
(60, 16, '_menu_item_type', 'post_type'),
(61, 16, '_menu_item_menu_item_parent', '0'),
(62, 16, '_menu_item_object_id', '2'),
(63, 16, '_menu_item_object', 'page'),
(64, 16, '_menu_item_target', ''),
(65, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 16, '_menu_item_xfn', ''),
(67, 16, '_menu_item_url', ''),
(68, 16, '_menu_item_orphaned', '1631230113'),
(69, 17, '_menu_item_type', 'custom'),
(70, 17, '_menu_item_menu_item_parent', '0'),
(71, 17, '_menu_item_object_id', '17'),
(72, 17, '_menu_item_object', 'custom'),
(73, 17, '_menu_item_target', ''),
(74, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 17, '_menu_item_xfn', ''),
(76, 17, '_menu_item_url', 'http://s14.local/'),
(77, 17, '_menu_item_orphaned', '1631231080'),
(78, 18, '_menu_item_type', 'post_type'),
(79, 18, '_menu_item_menu_item_parent', '0'),
(80, 18, '_menu_item_object_id', '2'),
(81, 18, '_menu_item_object', 'page'),
(82, 18, '_menu_item_target', ''),
(83, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 18, '_menu_item_xfn', ''),
(85, 18, '_menu_item_url', ''),
(86, 18, '_menu_item_orphaned', '1631231080'),
(88, 19, '_menu_item_type', 'custom'),
(89, 19, '_menu_item_menu_item_parent', '0'),
(90, 19, '_menu_item_object_id', '19'),
(91, 19, '_menu_item_object', 'custom'),
(92, 19, '_menu_item_target', ''),
(93, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 19, '_menu_item_xfn', ''),
(95, 19, '_menu_item_url', 'http://s14.local/'),
(96, 19, '_menu_item_orphaned', '1631231176'),
(97, 20, '_menu_item_type', 'post_type'),
(98, 20, '_menu_item_menu_item_parent', '0'),
(99, 20, '_menu_item_object_id', '2'),
(100, 20, '_menu_item_object', 'page'),
(101, 20, '_menu_item_target', ''),
(102, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 20, '_menu_item_xfn', ''),
(104, 20, '_menu_item_url', ''),
(105, 20, '_menu_item_orphaned', '1631231177'),
(106, 21, '_menu_item_type', 'custom'),
(107, 21, '_menu_item_menu_item_parent', '0'),
(108, 21, '_menu_item_object_id', '21'),
(109, 21, '_menu_item_object', 'custom'),
(110, 21, '_menu_item_target', ''),
(111, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 21, '_menu_item_xfn', ''),
(113, 21, '_menu_item_url', 'http://s14.local/'),
(114, 21, '_menu_item_orphaned', '1631262782'),
(115, 22, '_menu_item_type', 'post_type'),
(116, 22, '_menu_item_menu_item_parent', '0'),
(117, 22, '_menu_item_object_id', '2'),
(118, 22, '_menu_item_object', 'page'),
(119, 22, '_menu_item_target', ''),
(120, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 22, '_menu_item_xfn', ''),
(122, 22, '_menu_item_url', ''),
(123, 22, '_menu_item_orphaned', '1631262786'),
(124, 23, '_menu_item_type', 'custom'),
(125, 23, '_menu_item_menu_item_parent', '0'),
(126, 23, '_menu_item_object_id', '23'),
(127, 23, '_menu_item_object', 'custom'),
(128, 23, '_menu_item_target', ''),
(129, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 23, '_menu_item_xfn', ''),
(131, 23, '_menu_item_url', 'http://s14.local/'),
(132, 23, '_menu_item_orphaned', '1631264060'),
(133, 24, '_menu_item_type', 'post_type'),
(134, 24, '_menu_item_menu_item_parent', '0'),
(135, 24, '_menu_item_object_id', '2'),
(136, 24, '_menu_item_object', 'page'),
(137, 24, '_menu_item_target', ''),
(138, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 24, '_menu_item_xfn', ''),
(140, 24, '_menu_item_url', ''),
(141, 24, '_menu_item_orphaned', '1631264060'),
(142, 25, '_menu_item_type', 'custom'),
(143, 25, '_menu_item_menu_item_parent', '0'),
(144, 25, '_menu_item_object_id', '25'),
(145, 25, '_menu_item_object', 'custom'),
(146, 25, '_menu_item_target', ''),
(147, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 25, '_menu_item_xfn', ''),
(149, 25, '_menu_item_url', 'http://s14.local/'),
(150, 25, '_menu_item_orphaned', '1631264826'),
(151, 26, '_menu_item_type', 'post_type'),
(152, 26, '_menu_item_menu_item_parent', '0'),
(153, 26, '_menu_item_object_id', '2'),
(154, 26, '_menu_item_object', 'page'),
(155, 26, '_menu_item_target', ''),
(156, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 26, '_menu_item_xfn', ''),
(158, 26, '_menu_item_url', ''),
(159, 26, '_menu_item_orphaned', '1631264827'),
(160, 27, '_menu_item_type', 'custom'),
(161, 27, '_menu_item_menu_item_parent', '0'),
(162, 27, '_menu_item_object_id', '27'),
(163, 27, '_menu_item_object', 'custom'),
(164, 27, '_menu_item_target', ''),
(165, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 27, '_menu_item_xfn', ''),
(167, 27, '_menu_item_url', 'http://s14.local/'),
(168, 27, '_menu_item_orphaned', '1631265288'),
(169, 28, '_menu_item_type', 'post_type'),
(170, 28, '_menu_item_menu_item_parent', '0'),
(171, 28, '_menu_item_object_id', '2'),
(172, 28, '_menu_item_object', 'page'),
(173, 28, '_menu_item_target', ''),
(174, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 28, '_menu_item_xfn', ''),
(176, 28, '_menu_item_url', ''),
(177, 28, '_menu_item_orphaned', '1631265288'),
(178, 29, '_menu_item_type', 'custom'),
(179, 29, '_menu_item_menu_item_parent', '0'),
(180, 29, '_menu_item_object_id', '29'),
(181, 29, '_menu_item_object', 'custom'),
(182, 29, '_menu_item_target', ''),
(183, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 29, '_menu_item_xfn', ''),
(185, 29, '_menu_item_url', 'http://s14.local/'),
(186, 29, '_menu_item_orphaned', '1631269177'),
(187, 30, '_menu_item_type', 'post_type'),
(188, 30, '_menu_item_menu_item_parent', '0'),
(189, 30, '_menu_item_object_id', '2'),
(190, 30, '_menu_item_object', 'page'),
(191, 30, '_menu_item_target', ''),
(192, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 30, '_menu_item_xfn', ''),
(194, 30, '_menu_item_url', ''),
(195, 30, '_menu_item_orphaned', '1631269177'),
(196, 31, '_edit_lock', '1631282053:1'),
(197, 33, '_edit_lock', '1632650671:1'),
(198, 34, '_edit_lock', '1631736138:1'),
(226, 31, '_edit_last', '1'),
(227, 33, '_edit_last', '1'),
(228, 42, '_wp_attached_file', '2021/09/Logo.png'),
(229, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:68;s:4:\"file\";s:16:\"2021/09/Logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 42, '_wp_attachment_custom_header_last_used_s14.local', '1631291519'),
(231, 42, '_wp_attachment_is_custom_header', 's14.local'),
(260, 52, '_edit_lock', '1631736101:1'),
(279, 56, '_edit_lock', '1632050046:1'),
(291, 59, '_menu_item_type', 'post_type'),
(292, 59, '_menu_item_menu_item_parent', '0'),
(293, 59, '_menu_item_object_id', '34'),
(294, 59, '_menu_item_object', 'page'),
(295, 59, '_menu_item_target', ''),
(296, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 59, '_menu_item_xfn', ''),
(298, 59, '_menu_item_url', ''),
(299, 59, '_menu_item_orphaned', '1631541554'),
(300, 60, '_edit_lock', '1631736124:1'),
(301, 61, '_edit_lock', '1631736051:1'),
(318, 66, '_edit_lock', '1631541525:1'),
(319, 67, '_edit_lock', '1631541527:1'),
(336, 72, '_menu_item_type', 'post_type'),
(337, 72, '_menu_item_menu_item_parent', '0'),
(338, 72, '_menu_item_object_id', '67'),
(339, 72, '_menu_item_object', 'page'),
(340, 72, '_menu_item_target', ''),
(341, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(342, 72, '_menu_item_xfn', ''),
(343, 72, '_menu_item_url', ''),
(345, 73, '_menu_item_type', 'post_type'),
(346, 73, '_menu_item_menu_item_parent', '0'),
(347, 73, '_menu_item_object_id', '66'),
(348, 73, '_menu_item_object', 'page'),
(349, 73, '_menu_item_target', ''),
(350, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 73, '_menu_item_xfn', ''),
(352, 73, '_menu_item_url', ''),
(354, 74, '_menu_item_type', 'post_type'),
(355, 74, '_menu_item_menu_item_parent', '0'),
(356, 74, '_menu_item_object_id', '61'),
(357, 74, '_menu_item_object', 'page'),
(358, 74, '_menu_item_target', ''),
(359, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 74, '_menu_item_xfn', ''),
(361, 74, '_menu_item_url', ''),
(363, 75, '_menu_item_type', 'post_type'),
(364, 75, '_menu_item_menu_item_parent', '0'),
(365, 75, '_menu_item_object_id', '60'),
(366, 75, '_menu_item_object', 'page'),
(367, 75, '_menu_item_target', ''),
(368, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 75, '_menu_item_xfn', ''),
(370, 75, '_menu_item_url', ''),
(372, 76, '_menu_item_type', 'post_type'),
(373, 76, '_menu_item_menu_item_parent', '0'),
(374, 76, '_menu_item_object_id', '34'),
(375, 76, '_menu_item_object', 'page'),
(376, 76, '_menu_item_target', ''),
(377, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(378, 76, '_menu_item_xfn', ''),
(379, 76, '_menu_item_url', ''),
(400, 79, '_edit_lock', '1631652728:1'),
(409, 61, '_edit_last', '1'),
(410, 52, '_edit_last', '1'),
(411, 60, '_edit_last', '1'),
(412, 34, '_edit_last', '1'),
(413, 90, '_edit_lock', '1631736067:1'),
(422, 93, '_edit_lock', '1631736086:1'),
(431, 96, '_menu_item_type', 'post_type'),
(432, 96, '_menu_item_menu_item_parent', '0'),
(433, 96, '_menu_item_object_id', '93'),
(434, 96, '_menu_item_object', 'page'),
(435, 96, '_menu_item_target', ''),
(436, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(437, 96, '_menu_item_xfn', ''),
(438, 96, '_menu_item_url', ''),
(440, 97, '_menu_item_type', 'post_type'),
(441, 97, '_menu_item_menu_item_parent', '0'),
(442, 97, '_menu_item_object_id', '90'),
(443, 97, '_menu_item_object', 'page'),
(444, 97, '_menu_item_target', ''),
(445, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(446, 97, '_menu_item_xfn', ''),
(447, 97, '_menu_item_url', ''),
(449, 76, '_wp_old_date', '2021-09-13'),
(450, 75, '_wp_old_date', '2021-09-13'),
(451, 74, '_wp_old_date', '2021-09-13'),
(452, 73, '_wp_old_date', '2021-09-13'),
(453, 72, '_wp_old_date', '2021-09-13'),
(455, 99, '_edit_lock', '1631736287:1'),
(472, 104, '_edit_lock', '1631736320:1'),
(481, 107, '_menu_item_type', 'post_type'),
(482, 107, '_menu_item_menu_item_parent', '0'),
(483, 107, '_menu_item_object_id', '104'),
(484, 107, '_menu_item_object', 'page'),
(485, 107, '_menu_item_target', ''),
(486, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(487, 107, '_menu_item_xfn', ''),
(488, 107, '_menu_item_url', ''),
(489, 107, '_menu_item_orphaned', '1631736496'),
(490, 108, '_menu_item_type', 'post_type'),
(491, 108, '_menu_item_menu_item_parent', '0'),
(492, 108, '_menu_item_object_id', '99'),
(493, 108, '_menu_item_object', 'page'),
(494, 108, '_menu_item_target', ''),
(495, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 108, '_menu_item_xfn', ''),
(497, 108, '_menu_item_url', ''),
(498, 108, '_menu_item_orphaned', '1631736496'),
(508, 110, '_menu_item_type', 'post_type'),
(509, 110, '_menu_item_menu_item_parent', '0'),
(510, 110, '_menu_item_object_id', '61'),
(511, 110, '_menu_item_object', 'page'),
(512, 110, '_menu_item_target', ''),
(513, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(514, 110, '_menu_item_xfn', ''),
(515, 110, '_menu_item_url', ''),
(516, 110, '_menu_item_orphaned', '1631736604'),
(517, 111, '_menu_item_type', 'post_type'),
(518, 111, '_menu_item_menu_item_parent', '0'),
(519, 111, '_menu_item_object_id', '60'),
(520, 111, '_menu_item_object', 'page'),
(521, 111, '_menu_item_target', ''),
(522, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(523, 111, '_menu_item_xfn', ''),
(524, 111, '_menu_item_url', ''),
(525, 111, '_menu_item_orphaned', '1631736604'),
(526, 112, '_menu_item_type', 'post_type'),
(527, 112, '_menu_item_menu_item_parent', '0'),
(528, 112, '_menu_item_object_id', '33'),
(529, 112, '_menu_item_object', 'page'),
(530, 112, '_menu_item_target', ''),
(531, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(532, 112, '_menu_item_xfn', ''),
(533, 112, '_menu_item_url', ''),
(534, 112, '_menu_item_orphaned', '1631736606'),
(535, 113, '_edit_lock', '1631985855:1'),
(544, 116, '_edit_lock', '1631737507:1'),
(553, 119, '_menu_item_type', 'post_type'),
(554, 119, '_menu_item_menu_item_parent', '121'),
(555, 119, '_menu_item_object_id', '116'),
(556, 119, '_menu_item_object', 'page'),
(557, 119, '_menu_item_target', ''),
(558, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(559, 119, '_menu_item_xfn', ''),
(560, 119, '_menu_item_url', ''),
(562, 120, '_menu_item_type', 'post_type'),
(563, 120, '_menu_item_menu_item_parent', '121'),
(564, 120, '_menu_item_object_id', '113'),
(565, 120, '_menu_item_object', 'page'),
(566, 120, '_menu_item_target', ''),
(567, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(568, 120, '_menu_item_xfn', ''),
(569, 120, '_menu_item_url', ''),
(571, 121, '_menu_item_type', 'post_type'),
(572, 121, '_menu_item_menu_item_parent', '0'),
(573, 121, '_menu_item_object_id', '104'),
(574, 121, '_menu_item_object', 'page'),
(575, 121, '_menu_item_target', ''),
(576, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(577, 121, '_menu_item_xfn', ''),
(578, 121, '_menu_item_url', ''),
(580, 122, '_menu_item_type', 'post_type'),
(581, 122, '_menu_item_menu_item_parent', '0'),
(582, 122, '_menu_item_object_id', '99'),
(583, 122, '_menu_item_object', 'page'),
(584, 122, '_menu_item_target', ''),
(585, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(586, 122, '_menu_item_xfn', ''),
(587, 122, '_menu_item_url', ''),
(598, 124, '_menu_item_type', 'post_type'),
(599, 124, '_menu_item_menu_item_parent', '0'),
(600, 124, '_menu_item_object_id', '33'),
(601, 124, '_menu_item_object', 'page'),
(602, 124, '_menu_item_target', ''),
(603, 124, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 124, '_menu_item_xfn', ''),
(605, 124, '_menu_item_url', ''),
(607, 125, '_menu_item_type', 'post_type'),
(608, 125, '_menu_item_menu_item_parent', '121'),
(609, 125, '_menu_item_object_id', '61'),
(610, 125, '_menu_item_object', 'page'),
(611, 125, '_menu_item_target', ''),
(612, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 125, '_menu_item_xfn', ''),
(614, 125, '_menu_item_url', ''),
(616, 126, '_menu_item_type', 'post_type'),
(617, 126, '_menu_item_menu_item_parent', '121'),
(618, 126, '_menu_item_object_id', '60'),
(619, 126, '_menu_item_object', 'page'),
(620, 126, '_menu_item_target', ''),
(621, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 126, '_menu_item_xfn', ''),
(623, 126, '_menu_item_url', ''),
(625, 127, '_menu_item_type', 'post_type'),
(626, 127, '_menu_item_menu_item_parent', '121'),
(627, 127, '_menu_item_object_id', '33'),
(628, 127, '_menu_item_object', 'page'),
(629, 127, '_menu_item_target', ''),
(630, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(631, 127, '_menu_item_xfn', ''),
(632, 127, '_menu_item_url', ''),
(634, 128, '_menu_item_type', 'post_type'),
(635, 128, '_menu_item_menu_item_parent', '0'),
(636, 128, '_menu_item_object_id', '33'),
(637, 128, '_menu_item_object', 'page'),
(638, 128, '_menu_item_target', ''),
(639, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(640, 128, '_menu_item_xfn', ''),
(641, 128, '_menu_item_url', ''),
(643, 129, '_menu_item_type', 'post_type'),
(644, 129, '_menu_item_menu_item_parent', '0'),
(645, 129, '_menu_item_object_id', '52'),
(646, 129, '_menu_item_object', 'page'),
(647, 129, '_menu_item_target', ''),
(648, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(649, 129, '_menu_item_xfn', ''),
(650, 129, '_menu_item_url', ''),
(652, 130, '_menu_item_type', 'post_type'),
(653, 130, '_menu_item_menu_item_parent', '0'),
(654, 130, '_menu_item_object_id', '79'),
(655, 130, '_menu_item_object', 'page'),
(656, 130, '_menu_item_target', ''),
(657, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(658, 130, '_menu_item_xfn', ''),
(659, 130, '_menu_item_url', ''),
(661, 132, '_wp_attached_file', '2021/09/Screen-Shot-2019-06-13-at-15.36-1.png'),
(662, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:726;s:6:\"height\";i:467;s:4:\"file\";s:45:\"2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 143, '_edit_lock', '1632008508:1'),
(672, 128, '_wp_old_date', '2021-09-15'),
(673, 129, '_wp_old_date', '2021-09-15'),
(674, 130, '_wp_old_date', '2021-09-15'),
(686, 154, '_menu_item_type', 'post_type'),
(687, 154, '_menu_item_menu_item_parent', '0'),
(688, 154, '_menu_item_object_id', '56'),
(689, 154, '_menu_item_object', 'page'),
(690, 154, '_menu_item_target', ''),
(691, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(692, 154, '_menu_item_xfn', ''),
(693, 154, '_menu_item_url', ''),
(695, 124, '_wp_old_date', '2021-09-15'),
(696, 121, '_wp_old_date', '2021-09-15'),
(697, 120, '_wp_old_date', '2021-09-15'),
(698, 126, '_wp_old_date', '2021-09-15'),
(699, 125, '_wp_old_date', '2021-09-15'),
(700, 119, '_wp_old_date', '2021-09-15'),
(701, 127, '_wp_old_date', '2021-09-15'),
(702, 122, '_wp_old_date', '2021-09-15'),
(705, 159, '_wp_attached_file', '2021/09/Rectangle.png'),
(706, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:556;s:4:\"file\";s:21:\"2021/09/Rectangle.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(707, 179, '_wp_attached_file', '2021/09/Line.png'),
(708, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:61;s:6:\"height\";i:6;s:4:\"file\";s:16:\"2021/09/Line.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-07 15:19:29', '2021-09-07 15:19:29', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-09-07 15:19:29', '2021-09-07 15:19:29', '', 0, 'http://s14.local/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-07 15:19:29', '2021-09-07 15:19:29', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://s14.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-09-07 15:19:29', '2021-09-07 15:19:29', '', 0, 'http://s14.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-07 15:19:29', '2021-09-07 15:19:29', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://s14.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-09-07 15:19:29', '2021-09-07 15:19:29', '', 0, 'http://s14.local/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-09-07 16:09:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-07 16:09:46', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2021-09-07 16:09:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-07 16:09:48', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2021-09-07 16:36:27', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-07 16:36:27', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-09-07 16:36:29', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-07 16:36:29', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-09-09 14:08:24', '2021-09-09 14:08:24', '', 'WhatsApp Image 2020-11-13 at 12.27.21 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2020-11-13-at-12-27-21-pm', '', '', '2021-09-09 14:08:24', '2021-09-09 14:08:24', '', 0, 'http://s14.local/wp-content/uploads/2021/09/WhatsApp-Image-2020-11-13-at-12.27.21-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-09-09 23:28:31', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:28:31', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2021-09-09 23:28:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:28:32', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2021-09-09 23:44:39', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:44:39', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2021-09-09 23:44:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:44:40', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2021-09-09 23:46:14', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:46:14', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2021-09-09 23:46:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-09 23:46:16', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-09-10 08:32:59', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 08:32:59', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2021-09-10 08:33:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 08:33:03', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2021-09-10 08:54:19', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 08:54:19', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2021-09-10 08:54:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 08:54:20', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2021-09-10 09:07:05', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 09:07:05', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2021-09-10 09:07:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 09:07:06', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-09-10 09:14:47', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 09:14:47', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2021-09-10 09:14:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 09:14:48', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2021-09-10 10:19:36', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 10:19:36', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2021-09-10 10:19:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-10 10:19:37', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-09-10 13:51:17', '2021-09-10 13:51:17', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2021-09-10 13:54:13', '2021-09-10 13:54:13', '', 0, 'http://s14.local/?page_id=31', 0, 'page', '', 0),
(32, 1, '2021-09-10 13:51:17', '2021-09-10 13:51:17', '', 'HOME PAGE', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-09-10 13:51:17', '2021-09-10 13:51:17', '', 31, 'http://s14.local/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-09-10 13:51:46', '2021-09-10 13:51:46', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":179,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Line.png\" alt=\"\" class=\"wp-image-179\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2021-09-26 10:06:07', '2021-09-26 10:06:07', '', 0, 'http://s14.local/?page_id=33', 0, 'page', '', 0),
(34, 1, '2021-09-10 13:52:12', '2021-09-10 13:52:12', '', 'WHO WE ARE', '', 'publish', 'closed', 'closed', '', 'who-we-are', '', '', '2021-09-15 20:02:18', '2021-09-15 20:02:18', '', 0, 'http://s14.local/?page_id=34', 0, 'page', '', 0),
(35, 1, '2021-09-10 13:51:46', '2021-09-10 13:51:46', '', 'Contact US', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-10 13:51:46', '2021-09-10 13:51:46', '', 33, 'http://s14.local/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-09-10 13:52:12', '2021-09-10 13:52:12', '', 'Who We Are', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-09-10 13:52:12', '2021-09-10 13:52:12', '', 34, 'http://s14.local/?p=36', 0, 'revision', '', 0),
(40, 1, '2021-09-10 13:54:13', '2021-09-10 13:54:13', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-09-10 13:54:13', '2021-09-10 13:54:13', '', 31, 'http://s14.local/?p=40', 0, 'revision', '', 0),
(41, 1, '2021-09-10 13:54:26', '2021-09-10 13:54:26', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-10 13:54:26', '2021-09-10 13:54:26', '', 33, 'http://s14.local/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-09-10 16:31:40', '2021-09-10 16:31:40', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-09-10 16:31:40', '2021-09-10 16:31:40', '', 0, 'http://s14.local/wp-content/uploads/2021/09/Logo.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2021-09-12 13:14:55', '2021-09-12 13:14:55', '', 'Members Login', '', 'publish', 'closed', 'closed', '', 'members-login', '', '', '2021-09-15 20:01:40', '2021-09-15 20:01:40', '', 0, 'http://s14.local/?page_id=52', 0, 'page', '', 0),
(53, 1, '2021-09-12 13:14:55', '2021-09-12 13:14:55', '', 'Members Login', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-12 13:14:55', '2021-09-12 13:14:55', '', 52, 'http://s14.local/?p=53', 0, 'revision', '', 0),
(56, 1, '2021-09-12 14:52:05', '2021-09-12 14:52:05', '<!-- wp:paragraph -->\n<p>The Royal African Society is a membership organization that provides opportunities for people to connect, celebrate and engage critically with a wide range of topics and ideas about Africa today.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We amplify African voices and interests in academia, business, politics, the arts and education, reaching a network of more than one million people globally.</p>\n<!-- /wp:paragraph -->', 'Our Mission', '', 'publish', 'closed', 'closed', '', 'our-mission', '', '', '2021-09-18 16:54:13', '2021-09-18 16:54:13', '', 0, 'http://s14.local/?page_id=56', 0, 'page', '', 0),
(57, 1, '2021-09-12 14:52:05', '2021-09-12 14:52:05', '', 'Our Mission', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-09-12 14:52:05', '2021-09-12 14:52:05', '', 56, 'http://s14.local/?p=57', 0, 'revision', '', 0),
(59, 1, '2021-09-13 13:59:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-13 13:59:13', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2021-09-13 13:59:57', '2021-09-13 13:59:57', '', 'WHAT WE DO', '', 'publish', 'closed', 'closed', '', 'what-we-do', '', '', '2021-09-15 20:02:04', '2021-09-15 20:02:04', '', 0, 'http://s14.local/?page_id=60', 0, 'page', '', 0),
(61, 1, '2021-09-13 14:00:06', '2021-09-13 14:00:06', '', 'EVENTS', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2021-09-15 20:00:51', '2021-09-15 20:00:51', '', 0, 'http://s14.local/?page_id=61', 0, 'page', '', 0),
(63, 1, '2021-09-13 13:59:57', '2021-09-13 13:59:57', '', 'What We Do', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-09-13 13:59:57', '2021-09-13 13:59:57', '', 60, 'http://s14.local/?p=63', 0, 'revision', '', 0),
(65, 1, '2021-09-13 14:00:06', '2021-09-13 14:00:06', '', 'Events', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-09-13 14:00:06', '2021-09-13 14:00:06', '', 61, 'http://s14.local/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-09-13 14:00:54', '2021-09-13 14:00:54', '', 'JOIN & SUPPORT', '', 'publish', 'closed', 'closed', '', 'join-support', '', '', '2021-09-13 14:00:54', '2021-09-13 14:00:54', '', 0, 'http://s14.local/?page_id=66', 0, 'page', '', 0),
(67, 1, '2021-09-13 14:01:07', '2021-09-13 14:01:07', '', 'BECOME A MEMBER', '', 'publish', 'closed', 'closed', '', 'become-a-member', '', '', '2021-09-13 14:01:07', '2021-09-13 14:01:07', '', 0, 'http://s14.local/?page_id=67', 0, 'page', '', 0),
(69, 1, '2021-09-13 14:00:54', '2021-09-13 14:00:54', '', 'JOIN & SUPPORT', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-09-13 14:00:54', '2021-09-13 14:00:54', '', 66, 'http://s14.local/?p=69', 0, 'revision', '', 0),
(71, 1, '2021-09-13 14:01:07', '2021-09-13 14:01:07', '', 'BECOME A MEMBER', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2021-09-13 14:01:07', '2021-09-13 14:01:07', '', 67, 'http://s14.local/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-09-15 20:32:47', '2021-09-13 14:01:45', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=72', 6, 'nav_menu_item', '', 0),
(73, 1, '2021-09-15 20:32:47', '2021-09-13 14:01:46', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=73', 4, 'nav_menu_item', '', 0),
(74, 1, '2021-09-15 20:32:47', '2021-09-13 14:01:46', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=74', 3, 'nav_menu_item', '', 0),
(75, 1, '2021-09-15 20:32:47', '2021-09-13 14:01:46', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2021-09-15 20:32:47', '2021-09-13 14:01:46', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=76', 1, 'nav_menu_item', '', 0),
(79, 1, '2021-09-14 11:40:14', '2021-09-14 11:40:14', '<input type=\"text\" placeholder=\"Search..\">', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2021-09-14 11:40:14', '2021-09-14 11:40:14', '', 0, 'http://s14.local/?page_id=79', 0, 'page', '', 0),
(81, 1, '2021-09-14 11:40:14', '2021-09-14 11:40:14', '<input type=\"text\" placeholder=\"Search..\">', 'Search', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2021-09-14 11:40:14', '2021-09-14 11:40:14', '', 79, 'http://s14.local/?p=81', 0, 'revision', '', 0),
(83, 1, '2021-09-15 20:00:38', '2021-09-15 20:00:38', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-15 20:00:38', '2021-09-15 20:00:38', '', 33, 'http://s14.local/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-09-15 20:00:51', '2021-09-15 20:00:51', '', 'EVENTS', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2021-09-15 20:00:51', '2021-09-15 20:00:51', '', 61, 'http://s14.local/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-09-15 20:01:13', '2021-09-15 20:01:13', '', 'MEMBERS LOGIN', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-15 20:01:13', '2021-09-15 20:01:13', '', 52, 'http://s14.local/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-09-15 20:01:40', '2021-09-15 20:01:40', '', 'Members Login', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-15 20:01:40', '2021-09-15 20:01:40', '', 52, 'http://s14.local/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-09-15 20:02:04', '2021-09-15 20:02:04', '', 'WHAT WE DO', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2021-09-15 20:02:04', '2021-09-15 20:02:04', '', 60, 'http://s14.local/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-09-15 20:02:18', '2021-09-15 20:02:18', '', 'WHO WE ARE', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-09-15 20:02:18', '2021-09-15 20:02:18', '', 34, 'http://s14.local/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-09-15 20:02:45', '2021-09-15 20:02:45', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-15 20:02:45', '2021-09-15 20:02:45', '', 33, 'http://s14.local/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-09-15 20:03:08', '2021-09-15 20:03:08', '', 'NEWS', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2021-09-15 20:03:08', '2021-09-15 20:03:08', '', 0, 'http://s14.local/?page_id=90', 0, 'page', '', 0),
(92, 1, '2021-09-15 20:03:08', '2021-09-15 20:03:08', '', 'NEWS', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-09-15 20:03:08', '2021-09-15 20:03:08', '', 90, 'http://s14.local/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-09-15 20:03:44', '2021-09-15 20:03:44', '', 'DONATE', '', 'publish', 'closed', 'closed', '', 'donate', '', '', '2021-09-15 20:03:44', '2021-09-15 20:03:44', '', 0, 'http://s14.local/?page_id=93', 0, 'page', '', 0),
(95, 1, '2021-09-15 20:03:44', '2021-09-15 20:03:44', '', 'DONATE', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2021-09-15 20:03:44', '2021-09-15 20:03:44', '', 93, 'http://s14.local/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-09-15 20:32:47', '2021-09-15 20:05:10', ' ', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=96', 7, 'nav_menu_item', '', 0),
(97, 1, '2021-09-15 20:32:47', '2021-09-15 20:05:10', ' ', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2021-09-15 20:32:47', '2021-09-15 20:32:47', '', 0, 'http://s14.local/?p=97', 5, 'nav_menu_item', '', 0),
(99, 1, '2021-09-15 20:06:56', '2021-09-15 20:06:56', '', 'Follow Us', '', 'publish', 'closed', 'closed', '', 'follow-us', '', '', '2021-09-15 20:06:56', '2021-09-15 20:06:56', '', 0, 'http://s14.local/?page_id=99', 0, 'page', '', 0),
(103, 1, '2021-09-15 20:06:56', '2021-09-15 20:06:56', '', 'Follow Us', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-15 20:06:56', '2021-09-15 20:06:56', '', 99, 'http://s14.local/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-09-15 20:07:37', '2021-09-15 20:07:37', '', 'Site Map', '', 'publish', 'closed', 'closed', '', 'site-map', '', '', '2021-09-15 20:07:37', '2021-09-15 20:07:37', '', 0, 'http://s14.local/?page_id=104', 0, 'page', '', 0),
(106, 1, '2021-09-15 20:07:37', '2021-09-15 20:07:37', '', 'Site Map', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2021-09-15 20:07:37', '2021-09-15 20:07:37', '', 104, 'http://s14.local/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-09-15 20:08:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-15 20:08:15', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=107', 1, 'nav_menu_item', '', 0),
(108, 1, '2021-09-15 20:08:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-15 20:08:16', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=108', 1, 'nav_menu_item', '', 0),
(110, 1, '2021-09-15 20:10:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-15 20:10:03', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=110', 1, 'nav_menu_item', '', 0),
(111, 1, '2021-09-15 20:10:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-15 20:10:04', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=111', 1, 'nav_menu_item', '', 0),
(112, 1, '2021-09-15 20:10:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-15 20:10:04', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2021-09-15 20:10:28', '2021-09-15 20:10:28', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-09-15 20:10:28', '2021-09-15 20:10:28', '', 0, 'http://s14.local/?page_id=113', 0, 'page', '', 0),
(115, 1, '2021-09-15 20:10:28', '2021-09-15 20:10:28', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2021-09-15 20:10:28', '2021-09-15 20:10:28', '', 113, 'http://s14.local/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-09-15 20:11:19', '2021-09-15 20:11:19', '', 'MEMBERSHIP', '', 'publish', 'closed', 'closed', '', 'membership', '', '', '2021-09-15 20:11:19', '2021-09-15 20:11:19', '', 0, 'http://s14.local/?page_id=116', 0, 'page', '', 0),
(118, 1, '2021-09-15 20:11:19', '2021-09-15 20:11:19', '', 'MEMBERSHIP', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2021-09-15 20:11:19', '2021-09-15 20:11:19', '', 116, 'http://s14.local/?p=118', 0, 'revision', '', 0),
(119, 1, '2021-09-19 10:49:00', '2021-09-15 20:22:13', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2021-09-19 10:49:00', '2021-09-19 10:49:00', '', 0, 'http://s14.local/?p=119', 7, 'nav_menu_item', '', 0),
(120, 1, '2021-09-19 10:48:59', '2021-09-15 20:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2021-09-19 10:48:59', '2021-09-19 10:48:59', '', 0, 'http://s14.local/?p=120', 4, 'nav_menu_item', '', 0),
(121, 1, '2021-09-19 10:48:59', '2021-09-15 20:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2021-09-19 10:48:59', '2021-09-19 10:48:59', '', 0, 'http://s14.local/?p=121', 3, 'nav_menu_item', '', 0),
(122, 1, '2021-09-19 10:49:01', '2021-09-15 20:22:14', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2021-09-19 10:49:01', '2021-09-19 10:49:01', '', 0, 'http://s14.local/?p=122', 9, 'nav_menu_item', '', 0),
(124, 1, '2021-09-19 10:48:58', '2021-09-15 20:22:11', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2021-09-19 10:48:58', '2021-09-19 10:48:58', '', 0, 'http://s14.local/?p=124', 2, 'nav_menu_item', '', 0),
(125, 1, '2021-09-19 10:49:00', '2021-09-15 20:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2021-09-19 10:49:00', '2021-09-19 10:49:00', '', 0, 'http://s14.local/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2021-09-19 10:49:00', '2021-09-15 20:22:12', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2021-09-19 10:49:00', '2021-09-19 10:49:00', '', 0, 'http://s14.local/?p=126', 5, 'nav_menu_item', '', 0),
(127, 1, '2021-09-19 10:49:01', '2021-09-15 20:22:14', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2021-09-19 10:49:01', '2021-09-19 10:49:01', '', 0, 'http://s14.local/?p=127', 8, 'nav_menu_item', '', 0),
(128, 1, '2021-09-18 17:58:32', '2021-09-15 20:24:34', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2021-09-18 17:58:32', '2021-09-18 17:58:32', '', 0, 'http://s14.local/?p=128', 1, 'nav_menu_item', '', 0),
(129, 1, '2021-09-18 17:58:32', '2021-09-15 20:24:35', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2021-09-18 17:58:32', '2021-09-18 17:58:32', '', 0, 'http://s14.local/?p=129', 2, 'nav_menu_item', '', 0),
(130, 1, '2021-09-18 17:58:33', '2021-09-15 20:24:35', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2021-09-18 17:58:33', '2021-09-18 17:58:33', '', 0, 'http://s14.local/?p=130', 3, 'nav_menu_item', '', 0),
(132, 1, '2021-09-16 19:26:14', '2021-09-16 19:26:14', '', 'Screen-Shot-2019-06-13-at-15.36-1', '', 'inherit', 'open', 'closed', '', 'screen-shot-2019-06-13-at-15-36-1', '', '', '2021-09-16 19:26:14', '2021-09-16 19:26:14', '', 33, 'http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2021-09-16 20:31:20', '2021-09-16 20:31:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2>Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-16 20:31:20', '2021-09-16 20:31:20', '', 33, 'http://s14.local/?p=133', 0, 'revision', '', 0),
(134, 1, '2021-09-16 20:36:39', '2021-09-16 20:36:39', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2>Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption>General Enquiries</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-16 20:36:39', '2021-09-16 20:36:39', '', 33, 'http://s14.local/?p=134', 0, 'revision', '', 0),
(135, 1, '2021-09-16 20:37:23', '2021-09-16 20:37:23', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading -->\n<h2>Contact Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-16 20:37:23', '2021-09-16 20:37:23', '', 33, 'http://s14.local/?p=135', 0, 'revision', '', 0),
(137, 1, '2021-09-16 20:55:39', '2021-09-16 20:55:39', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-16 20:55:39', '2021-09-16 20:55:39', '', 33, 'http://s14.local/?p=137', 0, 'revision', '', 0),
(138, 1, '2021-09-17 13:41:45', '2021-09-17 13:41:45', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-17 13:41:45', '2021-09-17 13:41:45', '', 33, 'http://s14.local/?p=138', 0, 'revision', '', 0),
(139, 1, '2021-09-17 13:42:39', '2021-09-17 13:42:39', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-17 13:42:39', '2021-09-17 13:42:39', '', 33, 'http://s14.local/?p=139', 0, 'revision', '', 0),
(141, 1, '2021-09-18 16:54:13', '2021-09-18 16:54:13', '<!-- wp:paragraph -->\n<p>The Royal African Society is a membership organization that provides opportunities for people to connect, celebrate and engage critically with a wide range of topics and ideas about Africa today.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We amplify African voices and interests in academia, business, politics, the arts and education, reaching a network of more than one million people globally.</p>\n<!-- /wp:paragraph -->', 'Our Mission', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2021-09-18 16:54:13', '2021-09-18 16:54:13', '', 56, 'http://s14.local/?p=141', 0, 'revision', '', 0),
(143, 1, '2021-09-18 17:36:48', '2021-09-18 17:36:48', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">hello@ras.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">address</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"has-normal-font-size\">The Royal African Society is hosted by SOAS,</p>\n<p class=\"has-normal-font-size\">University of London</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Registered Charity</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1062764</p>\n<!-- /wp:paragraph -->', 'CONTACT US', '', 'draft', 'closed', 'closed', '', 'contact-us-2', '', '', '2021-09-18 17:57:06', '2021-09-18 17:57:06', '', 0, 'http://s14.local/?page_id=143', 0, 'page', '', 0),
(145, 1, '2021-09-18 17:36:48', '2021-09-18 17:36:48', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">hello@ras.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">address</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"has-normal-font-size\">The Royal African Society is hosted by SOAS,</p>\n<p class=\"has-normal-font-size\">University of London</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Registered Charity</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1062764</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-09-18 17:36:48', '2021-09-18 17:36:48', '', 143, 'http://s14.local/?p=145', 0, 'revision', '', 0),
(146, 1, '2021-09-18 17:37:38', '2021-09-18 17:37:38', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">hello@ras.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">address</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"has-normal-font-size\">The Royal African Society is hosted by SOAS,</p>\n<p class=\"has-normal-font-size\">University of London</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Registered Charity</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1062764</p>\n<!-- /wp:paragraph -->', 'Contact US', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-09-18 17:37:38', '2021-09-18 17:37:38', '', 143, 'http://s14.local/?p=146', 0, 'revision', '', 0),
(147, 1, '2021-09-18 17:38:38', '2021-09-18 17:38:38', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">hello@ras.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">address</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"has-normal-font-size\">The Royal African Society is hosted by SOAS,</p>\n<p class=\"has-normal-font-size\">University of London</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Registered Charity</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1062764</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-09-18 17:38:38', '2021-09-18 17:38:38', '', 143, 'http://s14.local/?p=147', 0, 'revision', '', 0),
(148, 1, '2021-09-18 17:39:44', '2021-09-18 17:39:44', '<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">hello@ras.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">address</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p class=\"has-normal-font-size\">The Royal African Society is hosted by SOAS,</p>\n<p class=\"has-normal-font-size\">University of London</p>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Registered Charity</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1062764</p>\n<!-- /wp:paragraph -->', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2021-09-18 17:39:44', '2021-09-18 17:39:44', '', 143, 'http://s14.local/?p=148', 0, 'revision', '', 0),
(154, 1, '2021-09-19 10:48:58', '2021-09-19 10:48:58', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2021-09-19 10:48:58', '2021-09-19 10:48:58', '', 0, 'http://s14.local/?p=154', 1, 'nav_menu_item', '', 0),
(156, 1, '2021-09-19 12:29:01', '2021-09-19 12:29:01', '@media screen and (max-width: 568px) {\n  .siter-footer .footer-widgets {\n    position: relative;\n  }\n  .site-footer .footer-widget-2, .site-footer .footer-widget-3 {\n    float: left;\n    width: 50%;\n  }\n}', 's14-local', '', 'publish', 'closed', 'closed', '', 's14-local', '', '', '2021-09-19 12:29:01', '2021-09-19 12:29:01', '', 0, 'http://s14.local/2021/09/19/s14-local/', 0, 'custom_css', '', 0),
(157, 1, '2021-09-19 12:29:01', '2021-09-19 12:29:01', '@media screen and (max-width: 568px) {\n  .siter-footer .footer-widgets {\n    position: relative;\n  }\n  .site-footer .footer-widget-2, .site-footer .footer-widget-3 {\n    float: left;\n    width: 50%;\n  }\n}', 's14-local', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2021-09-19 12:29:01', '2021-09-19 12:29:01', '', 156, 'http://s14.local/?p=157', 0, 'revision', '', 0),
(159, 1, '2021-09-24 21:53:41', '2021-09-24 21:53:41', '', 'Rectangle', '', 'inherit', 'open', 'closed', '', 'rectangle', '', '', '2021-09-24 21:53:41', '2021-09-24 21:53:41', '', 0, 'http://s14.local/wp-content/uploads/2021/09/Rectangle.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2021-09-26 09:18:06', '2021-09-26 09:18:06', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:18:06', '2021-09-26 09:18:06', '', 33, 'http://s14.local/?p=161', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(163, 1, '2021-09-26 09:19:36', '2021-09-26 09:19:36', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:freeform /-->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:19:36', '2021-09-26 09:19:36', '', 33, 'http://s14.local/?p=163', 0, 'revision', '', 0),
(164, 1, '2021-09-26 09:22:04', '2021-09-26 09:22:04', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:22:04', '2021-09-26 09:22:04', '', 33, 'http://s14.local/?p=164', 0, 'revision', '', 0),
(165, 1, '2021-09-26 09:35:18', '2021-09-26 09:35:18', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:35:18', '2021-09-26 09:35:18', '', 33, 'http://s14.local/?p=165', 0, 'revision', '', 0),
(166, 1, '2021-09-26 09:36:26', '2021-09-26 09:36:26', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":15} -->\n<div style=\"height:15px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:36:26', '2021-09-26 09:36:26', '', 33, 'http://s14.local/?p=166', 0, 'revision', '', 0),
(167, 1, '2021-09-26 09:37:24', '2021-09-26 09:37:24', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":15} -->\n<div style=\"height:15px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:37:24', '2021-09-26 09:37:24', '', 33, 'http://s14.local/?p=167', 0, 'revision', '', 0),
(169, 1, '2021-09-26 09:37:38', '2021-09-26 09:37:38', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:37:38', '2021-09-26 09:37:38', '', 33, 'http://s14.local/?p=169', 0, 'revision', '', 0),
(170, 1, '2021-09-26 09:38:13', '2021-09-26 09:38:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21 Russell Square London WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:38:13', '2021-09-26 09:38:13', '', 33, 'http://s14.local/?p=170', 0, 'revision', '', 0),
(171, 1, '2021-09-26 09:41:28', '2021-09-26 09:41:28', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:41:28', '2021-09-26 09:41:28', '', 33, 'http://s14.local/?p=171', 0, 'revision', '', 0),
(172, 1, '2021-09-26 09:47:51', '2021-09-26 09:47:51', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"color\":\"vivid-red\",\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator has-text-color has-background has-vivid-red-background-color has-vivid-red-color is-style-default\"/>\n<!-- /wp:separator -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:47:51', '2021-09-26 09:47:51', '', 33, 'http://s14.local/?p=172', 0, 'revision', '', 0),
(173, 1, '2021-09-26 09:48:13', '2021-09-26 09:48:13', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"color\":\"vivid-red\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background has-vivid-red-background-color has-vivid-red-color is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:48:13', '2021-09-26 09:48:13', '', 33, 'http://s14.local/?p=173', 0, 'revision', '', 0),
(174, 1, '2021-09-26 09:49:00', '2021-09-26 09:49:00', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"color\":\"vivid-red\",\"className\":\"is-style-short\"} -->\n<hr class=\"wp-block-separator has-text-color has-background has-vivid-red-background-color has-vivid-red-color is-style-short\"/>\n<!-- /wp:separator -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:49:00', '2021-09-26 09:49:00', '', 33, 'http://s14.local/?p=174', 0, 'revision', '', 0),
(175, 1, '2021-09-26 09:51:00', '2021-09-26 09:51:00', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:separator {\"color\":\"vivid-red\",\"className\":\"is-style-short\"} -->\n<hr class=\"wp-block-separator has-text-color has-background has-vivid-red-background-color has-vivid-red-color is-style-short\"/>\n<!-- /wp:separator -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:51:00', '2021-09-26 09:51:00', '', 33, 'http://s14.local/?p=175', 0, 'revision', '', 0),
(176, 1, '2021-09-26 09:55:59', '2021-09-26 09:55:59', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:separator {\"color\":\"vivid-red\",\"className\":\"is-style-short\"} -->\n<hr class=\"wp-block-separator has-text-color has-background has-vivid-red-background-color has-vivid-red-color is-style-short\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p>\"-\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 09:55:59', '2021-09-26 09:55:59', '', 33, 'http://s14.local/?p=176', 0, 'revision', '', 0),
(177, 1, '2021-09-26 10:02:58', '2021-09-26 10:02:58', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:html -->\n<hr>\n<!-- /wp:html -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 10:02:58', '2021-09-26 10:02:58', '', 33, 'http://s14.local/?p=177', 0, 'revision', '', 0),
(178, 1, '2021-09-26 10:03:31', '2021-09-26 10:03:31', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:html -->\n<hr><br>\n<!-- /wp:html -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 10:03:31', '2021-09-26 10:03:31', '', 33, 'http://s14.local/?p=178', 0, 'revision', '', 0),
(179, 1, '2021-09-26 10:06:01', '2021-09-26 10:06:01', '', 'Line', '', 'inherit', 'open', 'closed', '', 'line', '', '', '2021-09-26 10:06:01', '2021-09-26 10:06:01', '', 33, 'http://s14.local/wp-content/uploads/2021/09/Line.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2021-09-26 10:06:07', '2021-09-26 10:06:07', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"33.33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:heading {\"level\":1} -->\n<h1>Contact Us</h1>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":179,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Line.png\" alt=\"\" class=\"wp-image-179\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":42} -->\n<div style=\"height:42px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p><strong>Address:</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":25} -->\n<div style=\"height:25px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>We are based at SOAS, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>University of London,</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Royal African Society SOAS, 21</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Russell Square London</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WC1B5EA</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Tel: +44 (0) 207 074 5176</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"66.66%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:image {\"id\":132,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://s14.local/wp-content/uploads/2021/09/Screen-Shot-2019-06-13-at-15.36-1.png\" alt=\"\" class=\"wp-image-132\"/><figcaption><strong>General Enquiries</strong></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>For General Enquiries, Please Send an email ras@soas.ac.uk or get in touch via the contact for below</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Donations and Legacies, please contact Caitlin Pearson on Caitlin.Pearson@Soas.contact</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-26 10:06:07', '2021-09-26 10:06:07', '', 33, 'http://s14.local/?p=180', 0, 'revision', '', 0),
(181, 1, '2023-01-19 15:21:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-01-19 15:21:10', '0000-00-00 00:00:00', '', 0, 'http://s14.local/?p=181', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Footer', 'footer', 0),
(3, 'Top-menu', 'top-menu', 0),
(4, 'New Primary', 'new-primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(72, 4, 0),
(73, 4, 0),
(74, 4, 0),
(75, 4, 0),
(76, 4, 0),
(96, 4, 0),
(97, 4, 0),
(119, 2, 0),
(120, 2, 0),
(121, 2, 0),
(122, 2, 0),
(124, 2, 0),
(125, 2, 0),
(126, 2, 0),
(127, 2, 0),
(128, 3, 0),
(129, 3, 0),
(130, 3, 0),
(154, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"045d75e89636aee4f9dfeb3e4153680d41de398fd105f97c9ad8af628d204ac7\";a:4:{s:10:\"expiration\";i:1674313794;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1674140994;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '181'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1632648154'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BhEIWAKcJ0nlJOGZs9VFHVzqhJCIjt/', 'admin', 'akinstemi123@gmail.com', 'http://s14.local', '2021-09-07 15:19:27', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
