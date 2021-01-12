-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 12, 2021 at 01:47 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-front-end_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2021-01-04 22:43:28', '2021-01-04 19:43:28', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609800208;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609800208;}', 1, 1, '2021-01-04 22:43:34', '2021-01-04 19:43:34', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'ação criada', '2021-01-04 22:42:28', '2021-01-04 19:42:28'),
(2, 6, 'ação iniciada por WP Cron', '2021-01-04 22:43:34', '2021-01-04 19:43:34'),
(3, 6, 'ação completa por WP Cron', '2021-01-04 22:43:34', '2021-01-04 19:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-04 19:23:51', '2021-01-04 22:23:51', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/test-front-end', 'yes'),
(2, 'home', 'http://localhost:8888/test-front-end', 'yes'),
(3, 'blogname', 'test-front-end', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abll@cin.ufpe.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categoria-produto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categoria-produto/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categoria-produto/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categoria-produto/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categoria-produto/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"produto-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"produto-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"produto-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"produto-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"produto-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'meutema', 'yes'),
(41, 'stylesheet', 'meutema', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1625351030', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:15:{i:1610459183;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1610459534;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1610461432;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610462547;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610462553;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610469744;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610490232;a:5:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610490262;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610491347;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610491354;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610493354;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610502144;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610506800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611096204;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609799497;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'meutema', 'yes'),
(155, 'theme_mods_meutema', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'acf_version', '5.9.3', 'yes'),
(164, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1610452228;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(166, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610452230;s:7:\"checked\";a:1:{s:7:\"meutema\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(167, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(168, 'schema-ActionScheduler_StoreSchema', '3.0.1609800143', 'yes'),
(169, 'schema-ActionScheduler_LoggerSchema', '2.0.1609800143', 'yes'),
(172, 'woocommerce_schema_version', '430', 'yes'),
(173, 'woocommerce_store_address', 'Endereço de teste', 'yes'),
(174, 'woocommerce_store_address_2', '', 'yes'),
(175, 'woocommerce_store_city', 'Cidade de teste', 'yes'),
(176, 'woocommerce_default_country', 'BR:PE', 'yes'),
(177, 'woocommerce_store_postcode', '00000-000', 'yes'),
(178, 'woocommerce_allowed_countries', 'all', 'yes'),
(179, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(180, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(181, 'woocommerce_ship_to_countries', '', 'yes'),
(182, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(183, 'woocommerce_default_customer_address', 'base', 'yes'),
(184, 'woocommerce_calc_taxes', 'no', 'yes'),
(185, 'woocommerce_enable_coupons', 'yes', 'yes'),
(186, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(187, 'woocommerce_currency', 'BRL', 'yes'),
(188, 'woocommerce_currency_pos', 'left', 'yes'),
(189, 'woocommerce_price_thousand_sep', '.', 'yes'),
(190, 'woocommerce_price_decimal_sep', ',', 'yes'),
(191, 'woocommerce_price_num_decimals', '2', 'yes'),
(192, 'woocommerce_shop_page_id', '6', 'yes'),
(193, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(194, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(195, 'woocommerce_placeholder_image', '5', 'yes'),
(196, 'woocommerce_weight_unit', 'kg', 'yes'),
(197, 'woocommerce_dimension_unit', 'cm', 'yes'),
(198, 'woocommerce_enable_reviews', 'yes', 'yes'),
(199, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(200, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(201, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(202, 'woocommerce_review_rating_required', 'yes', 'no'),
(203, 'woocommerce_manage_stock', 'yes', 'yes'),
(204, 'woocommerce_hold_stock_minutes', '60', 'no'),
(205, 'woocommerce_notify_low_stock', 'yes', 'no'),
(206, 'woocommerce_notify_no_stock', 'yes', 'no'),
(207, 'woocommerce_stock_email_recipient', 'abll@cin.ufpe.br', 'no'),
(208, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(209, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(210, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(211, 'woocommerce_stock_format', '', 'yes'),
(212, 'woocommerce_file_download_method', 'force', 'no'),
(213, 'woocommerce_downloads_require_login', 'no', 'no'),
(214, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(215, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(216, 'woocommerce_prices_include_tax', 'no', 'yes'),
(217, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(218, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(219, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(220, 'woocommerce_tax_classes', '', 'yes'),
(221, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(222, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(223, 'woocommerce_price_display_suffix', '', 'yes'),
(224, 'woocommerce_tax_total_display', 'itemized', 'no'),
(225, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(226, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(227, 'woocommerce_ship_to_destination', 'billing', 'no'),
(228, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(229, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(230, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(231, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(232, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(233, 'woocommerce_registration_generate_username', 'yes', 'no'),
(234, 'woocommerce_registration_generate_password', 'yes', 'no'),
(235, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(236, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(237, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(238, 'woocommerce_registration_privacy_policy_text', 'Seus dados pessoais serão usados para aprimorar a sua experiência em todo este site, para gerenciar o acesso a sua conta e para outros propósitos, como descritos em nossa [privacy_policy].', 'yes'),
(239, 'woocommerce_checkout_privacy_policy_text', 'Os seus dados pessoais serão utilizados para processar a sua compra, apoiar a sua experiência em todo este site e para outros fins descritos na nossa [privacy_policy].', 'yes'),
(240, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(241, 'woocommerce_trash_pending_orders', '', 'no'),
(242, 'woocommerce_trash_failed_orders', '', 'no'),
(243, 'woocommerce_trash_cancelled_orders', '', 'no'),
(244, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(245, 'woocommerce_email_from_name', 'test-front-end', 'no'),
(246, 'woocommerce_email_from_address', 'abll@cin.ufpe.br', 'no'),
(247, 'woocommerce_email_header_image', '', 'no'),
(248, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(249, 'woocommerce_email_base_color', '#96588a', 'no'),
(250, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(251, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(252, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(253, 'woocommerce_cart_page_id', '7', 'no'),
(254, 'woocommerce_checkout_page_id', '8', 'no'),
(255, 'woocommerce_myaccount_page_id', '9', 'no'),
(256, 'woocommerce_terms_page_id', '', 'no'),
(257, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(259, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(260, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(261, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(262, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(263, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(264, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(265, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(266, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(267, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(268, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(269, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(270, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(271, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(272, 'woocommerce_api_enabled', 'no', 'yes'),
(273, 'woocommerce_allow_tracking', 'no', 'no'),
(274, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(275, 'woocommerce_single_image_width', '600', 'yes'),
(276, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(277, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(278, 'woocommerce_demo_store', 'no', 'no'),
(279, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:17:\"categoria-produto\";s:8:\"tag_base\";s:11:\"produto-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(280, 'current_theme_supports_woocommerce', 'no', 'yes'),
(281, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(282, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(283, 'product_cat_children', 'a:0:{}', 'yes'),
(284, 'default_product_cat', '15', 'yes'),
(287, 'woocommerce_version', '4.8.0', 'yes'),
(288, 'woocommerce_db_version', '4.8.0', 'yes'),
(291, 'action_scheduler_lock_async-request-runner', '1610459208', 'yes'),
(292, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(293, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"Up2JGGd6hIgUx4fZQfZfDxWsC0JtL1Vy\";}', 'yes'),
(294, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(295, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'woocommerce_admin_version', '1.7.3', 'yes'),
(310, 'woocommerce_admin_install_timestamp', '1609800147', 'yes'),
(314, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1609800148', 'yes'),
(315, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(316, 'wc_blocks_db_schema_version', '260', 'yes'),
(317, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(318, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(319, 'wc_remote_inbox_notifications_specs', 'a:7:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:10:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:7;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-12-07 00:00:00\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:9;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Get 50% off transaction fees with WooCommerce Payments\";s:7:\"content\";s:625:\"Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br/><br/><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:43:\"Manage payments from your store\'s dashboard\";s:7:\"content\";s:560:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"4.8\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(322, '_transient_woocommerce_reports-transient-version', '1609800573', 'yes'),
(323, '_transient_timeout_orders-all-statuses', '1610405540', 'no'),
(324, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";a:0:{}}', 'no'),
(334, 'action_scheduler_migration_status', 'complete', 'yes'),
(338, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:7:\"meutema\";s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(345, '_transient_timeout_wc_report_orders_stats_3ff8965345aec2db507677a28be0ca01', '1610405546', 'no'),
(346, '_transient_wc_report_orders_stats_3ff8965345aec2db507677a28be0ca01', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:52:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:52:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(347, '_transient_timeout_wc_report_orders_stats_2a983efc3d43e7e4712708470c23f5a3', '1610405546', 'no'),
(348, '_transient_wc_report_orders_stats_2a983efc3d43e7e4712708470c23f5a3', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-03 21:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 00:00:00\";s:8:\"date_end\";s:19:\"2021-01-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(349, '_transient_timeout_wc_report_orders_stats_ed0d2974a9dcc038482a127bf8360fe2', '1610405546', 'no'),
(350, '_transient_wc_report_orders_stats_ed0d2974a9dcc038482a127bf8360fe2', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:52:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:52:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(351, '_transient_timeout_wc_report_orders_stats_fb36dea19c51564827d015915d466947', '1610405546', 'no'),
(352, '_transient_wc_report_orders_stats_fb36dea19c51564827d015915d466947', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-03 21:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 00:00:00\";s:8:\"date_end\";s:19:\"2021-01-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(353, 'woocommerce_task_list_tracked_completed_tasks', 'a:2:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";}', 'yes'),
(354, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(355, '_transient_timeout_wc_report_orders_stats_a940f3395e1aecd25e56297bc9ac493d', '1610405583', 'no'),
(356, '_transient_wc_report_orders_stats_a940f3395e1aecd25e56297bc9ac493d', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:53:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:53:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(357, '_transient_timeout_wc_report_orders_stats_7ad58b07a69d3bea05c94c896a94d0ed', '1610405583', 'no'),
(358, '_transient_wc_report_orders_stats_7ad58b07a69d3bea05c94c896a94d0ed', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:53:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:53:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(362, '_transient_timeout_wc_report_orders_stats_8eb03d9dd50fa941a4843d06966da1b6', '1610405852', 'no'),
(363, '_transient_wc_report_orders_stats_8eb03d9dd50fa941a4843d06966da1b6', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:57:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:57:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(364, '_transient_timeout_wc_report_orders_stats_f50563c38aab3ee97b398619fcfab4c4', '1610405852', 'no'),
(365, '_transient_wc_report_orders_stats_f50563c38aab3ee97b398619fcfab4c4', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 19:57:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 22:57:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(379, '_transient_timeout_wc_report_orders_stats_232bdc39cdb11278e5a211c320533669', '1610406867', 'no'),
(380, '_transient_wc_report_orders_stats_232bdc39cdb11278e5a211c320533669', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 20:14:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 23:14:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(381, '_transient_timeout_wc_report_orders_stats_3b31051adab3bca7dd90efc3ad748221', '1610406867', 'no'),
(382, '_transient_wc_report_orders_stats_3b31051adab3bca7dd90efc3ad748221', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-04 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-04 20:14:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-04 23:14:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(521, '_transient_health-check-site-status-result', '{\"good\":\"15\",\"recommended\":\"6\",\"critical\":\"0\"}', 'yes'),
(626, 'woocommerce_task_list_hidden', 'no', 'yes'),
(627, '_transient_timeout_wc_report_orders_stats_a87c8f6111ce71167a16db4d818aafa7', '1610543346', 'no'),
(628, '_transient_wc_report_orders_stats_a87c8f6111ce71167a16db4d818aafa7', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 10:09:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 13:09:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(629, '_transient_timeout_wc_report_orders_stats_b992b43bfab04c168a48852c6b66b536', '1610543346', 'no'),
(630, '_transient_wc_report_orders_stats_b992b43bfab04c168a48852c6b66b536', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-05 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(631, '_transient_timeout_wc_report_orders_stats_f2e6abac91982aa3b88e7cf71ccfb125', '1610543346', 'no'),
(632, '_transient_wc_report_orders_stats_f2e6abac91982aa3b88e7cf71ccfb125', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 10:09:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 13:09:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(633, '_transient_timeout_wc_report_orders_stats_07efec2179ab2b735f9ab22a17f74548', '1610543346', 'no'),
(634, '_transient_wc_report_orders_stats_07efec2179ab2b735f9ab22a17f74548', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-05 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(641, '_transient_product_query-transient-version', '1610395148', 'yes'),
(642, '_transient_product-transient-version', '1610395148', 'yes'),
(665, '_transient_timeout_wc_product_loop_0c7163e51e281d9b3fbb8dabf2cd7fda', '1612533944', 'no'),
(666, '_transient_wc_product_loop_0c7163e51e281d9b3fbb8dabf2cd7fda', 'a:2:{s:7:\"version\";s:10:\"1609939040\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:13;i:1;i:15;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(669, '_transient_timeout_wc_product_loop_fd24fd8269f53dd9127e91191fef8df4', '1612534134', 'no'),
(670, '_transient_wc_product_loop_fd24fd8269f53dd9127e91191fef8df4', 'a:2:{s:7:\"version\";s:10:\"1609939040\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(679, '_transient_timeout_wc_report_orders_stats_bc09249b4ffc13a17b53d6af53247bb1', '1610548207', 'no'),
(680, '_transient_wc_report_orders_stats_bc09249b4ffc13a17b53d6af53247bb1', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 11:30:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 14:30:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(681, '_transient_timeout_wc_report_orders_stats_ced71821e91bf7c84224563d4c0dfc1b', '1610548207', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(682, '_transient_wc_report_orders_stats_ced71821e91bf7c84224563d4c0dfc1b', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 11:30:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 14:30:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(689, '_transient_timeout_wc_report_orders_stats_7359b3924fbc24e6a08391e1a3fddb00', '1610548340', 'no'),
(690, '_transient_wc_report_orders_stats_7359b3924fbc24e6a08391e1a3fddb00', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 11:32:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 14:32:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(691, '_transient_timeout_wc_report_orders_stats_ae7c4da05dfb5ccbda4de2c426712259', '1610548340', 'no'),
(692, '_transient_wc_report_orders_stats_ae7c4da05dfb5ccbda4de2c426712259', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-06 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-06 11:32:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-06 14:32:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(694, '_transient_timeout_wc_addons_sections', '1610548358', 'no'),
(695, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:15:\"free-extensions\";s:5:\"label\";s:4:\"Free\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(696, '_transient_timeout_wc_addons_featured', '1610548359', 'no'),
(697, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:12:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-bundles/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/composite-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-vendors/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:125:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/chained-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:18:\"wcpay_banner_block\";}i:2;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:3;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:4;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:124:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-notices/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:5;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:104:\"https://woocommerce.com/storefront/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:4:\"text\";s:9:\"Read More\";}}}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:7;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"WooCommerce + Zapier\";s:11:\"description\";s:76:\"Save time. Avoid busywork. Connect your store to more than 2,000 cloud apps.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:121:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:6:\"button\";s:9:\"From: $59\";}}}i:9;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/kiss-metrics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/mixpanel/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:10;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:11;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:116:\"https://woocommerce.com/products/smart-coupons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:114:\"https://woocommerce.com/products/automatewoo/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"AutomateWoo\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:121:\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/google-product-feed/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/store-credit/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/facebook/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(883, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610452230;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.8.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1019, '_transient_timeout_wc_report_orders_stats_1da1906b5bd10932ea67aa5bfc95cede', '1610718206', 'no'),
(1020, '_transient_wc_report_orders_stats_1da1906b5bd10932ea67aa5bfc95cede', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-08 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-08 10:43:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-08 13:43:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1021, '_transient_timeout_wc_report_orders_stats_5b68fe70bfb4d0fe90927dba7b00189c', '1610718206', 'no'),
(1022, '_transient_wc_report_orders_stats_5b68fe70bfb4d0fe90927dba7b00189c', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-07 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-08 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1023, '_transient_timeout_wc_report_orders_stats_e11396dedef9cda3a511107a63cb30ad', '1610718206', 'no'),
(1024, '_transient_timeout_wc_report_orders_stats_65dd0f7686a2920a47c4e74bd41f156f', '1610718206', 'no'),
(1025, '_transient_wc_report_orders_stats_e11396dedef9cda3a511107a63cb30ad', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-08 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-08 10:43:00\";s:12:\"date_end_gmt\";s:19:\"2021-01-08 13:43:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1026, '_transient_wc_report_orders_stats_65dd0f7686a2920a47c4e74bd41f156f', 'a:2:{s:7:\"version\";s:10:\"1609800573\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2021-02\";s:10:\"date_start\";s:19:\"2021-01-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2021-01-07 03:00:00\";s:8:\"date_end\";s:19:\"2021-01-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2021-01-08 02:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1165, '_site_transient_timeout_browser_de14ee22d23b1fe6b294c649cea2f043', '1610816178', 'no'),
(1166, '_site_transient_browser_de14ee22d23b1fe6b294c649cea2f043', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1760, '_transient_timeout_wc_onboarding_product_data', '1610476968', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1761, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 11 Jan 2021 18:42:48 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11475\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"gru1 87 111 3101\";s:3:\"age\";s:2:\"58\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48113:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48113:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:3:\"raw\";s:48731:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Mon, 11 Jan 2021 18:42:48 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11475\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: gru1 87 111 3101\r\nAge: 58\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"WooCommerce Products Compare\",\"image\":\"\",\"excerpt\":\"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"c3ba0a4a3199a0cc7a6112eb24414548\",\"slug\":\"woocommerce-products-compare\",\"id\":853117},{\"title\":\"WooCommerce Store Catalog PDF Download\",\"image\":\"\",\"excerpt\":\"Offer your customers a PDF download of your product catalog, generated by WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"79ca7aadafe706364e2d738b7c1090c4\",\"slug\":\"woocommerce-store-catalog-pdf-download\",\"id\":675790},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-updated.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Mon, 11 Jan 2021 18:42:48 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11475\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"gru1 87 111 3101\";}s:3:\"age\";a:1:{i:0;s:2:\"58\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1766, '_transient_timeout_wc_onboarding_themes', '1610476969', 'no'),
(1767, '_transient_wc_onboarding_themes', 'a:24:{s:7:\"meutema\";a:6:{s:4:\"slug\";s:7:\"meutema\";s:5:\"title\";s:7:\"meutema\";s:5:\"price\";s:4:\"0.00\";s:12:\"is_installed\";b:1;s:5:\"image\";b:0;s:23:\"has_woocommerce_support\";b:0;}s:10:\"storefront\";a:11:{s:5:\"title\";s:10:\"Storefront\";s:5:\"image\";s:77:\"https://woocommerce.com/wp-content/themes/woo/images/storefront/feature-1.jpg\";s:7:\"excerpt\";s:161:\"Storefront is an intuitive &amp; flexible, free theme offering deep integration with WooCommerce.\r\n\r\nIt\'s the perfect platform for your next WooCommerce project.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/storefront/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:42:\"https://themes.woocommerce.com/storefront/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"5714dad8f8d0b930bd6cc9c99657b930\";s:4:\"slug\";s:10:\"storefront\";s:2:\"id\";i:565154;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"agency\";a:11:{s:5:\"title\";s:6:\"Agency\";s:5:\"image\";s:70:\"https://woocommerce.com/wp-content/uploads/2020/10/agency-featured.jpg\";s:7:\"excerpt\";s:134:\"Agency is a Gutenberg and WooCommerce optimized WordPress theme for marketing, advertising, and creative agencies. Sell your services!\";s:4:\"link\";s:99:\"https://woocommerce.com/products/agency/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://organicthemes.com/demo/agency/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"4a3a3a22-a5f0-4fa4-8c09-4f37575602ef\";s:4:\"slug\";s:6:\"agency\";s:2:\"id\";i:6674855;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"rhodes\";a:11:{s:5:\"title\";s:6:\"Rhodes\";s:5:\"image\";s:66:\"https://woocommerce.com/wp-content/uploads/2020/09/rhodes-home.jpg\";s:7:\"excerpt\";s:193:\"The perfect WooCommerce theme for retailers. Whether you\'re selling high-street fashion, beauty products, or home accessories, Rhodes will just stand out of the way letting your products shine.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/rhodes/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:34:\"https://www.cssigniter.com/rhodes/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"b95c0103-23b9-43f3-af49-ee7eaa35e49b\";s:4:\"slug\";s:6:\"rhodes\";s:2:\"id\";i:6509339;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:11:\"restoration\";a:11:{s:5:\"title\";s:11:\"Restoration\";s:5:\"image\";s:78:\"https://woocommerce.com/wp-content/uploads/2020/09/restoration-woocommerce.jpg\";s:7:\"excerpt\";s:90:\"An elegant and sophisticated mobile-first, Gutenberg-powered theme for WooCommerce stores.\";s:4:\"link\";s:104:\"https://woocommerce.com/products/restoration/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:35:\"https://restoration.fuelthemes.net/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"e793e6af-f338-4e92-b268-e0576ddb137b\";s:4:\"slug\";s:11:\"restoration\";s:2:\"id\";i:6454820;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"matthew\";a:11:{s:5:\"title\";s:7:\"Matthew\";s:5:\"image\";s:71:\"https://woocommerce.com/wp-content/uploads/2020/06/screenshot.png?w=620\";s:7:\"excerpt\";s:145:\"Matthew is a Gutenberg-powered WooCommerce theme designed for building a professional online store so that you can sell goods or services online.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/matthew/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://demo.themesharbor.com/matthew/\";s:5:\"price\";s:11:\"&#36;129.00\";s:4:\"hash\";s:36:\"b3983408-c4f6-4751-8bd7-ae65ae34cf3b\";s:4:\"slug\";s:7:\"matthew\";s:2:\"id\";i:6214538;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:11:\"fifthavenue\";a:11:{s:5:\"title\";s:12:\"Fifth Avenue\";s:5:\"image\";s:78:\"https://woocommerce.com/wp-content/uploads/2020/06/fifthavenue-woocommerce.jpg\";s:7:\"excerpt\";s:103:\"Beautiful Gutenberg powered WooCommerce theme designed to be easily customized for all types of stores.\";s:4:\"link\";s:105:\"https://woocommerce.com/products/fifth-avenue/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:35:\"https://fifthavenue.fuelthemes.net/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"9e093a9f-3d49-4fcd-bec7-c87b097d9df8\";s:4:\"slug\";s:11:\"fifthavenue\";s:2:\"id\";i:5989481;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"artisan\";a:11:{s:5:\"title\";s:7:\"Artisan\";s:5:\"image\";s:71:\"https://woocommerce.com/wp-content/uploads/2020/03/artisan-featured.jpg\";s:7:\"excerpt\";s:79:\"Sell your hand-crafted products online using the Artisan Theme for WooCommerce.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/artisan/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://organicthemes.com/demo/artisan/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"64529812-81f6-4efd-9686-ecb34e527421\";s:4:\"slug\";s:7:\"artisan\";s:2:\"id\";i:5576887;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"threads\";a:11:{s:5:\"title\";s:7:\"Threads\";s:5:\"image\";s:75:\"https://woocommerce.com/wp-content/uploads/2019/08/threads-home-cropped.jpg\";s:7:\"excerpt\";s:79:\"Create a stunning website for your apparel brand using Threads for WooCommerce.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/threads/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://organicthemes.com/demo/threads/\";s:5:\"price\";s:10:\"&#36;79.00\";s:4:\"hash\";s:36:\"7ca579a6-6aaf-498c-9ee7-e15280ace9e9\";s:4:\"slug\";s:7:\"threads\";s:2:\"id\";i:4663191;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:10:\"block-shop\";a:11:{s:5:\"title\";s:10:\"Block Shop\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/uploads/2019/08/block-shop-theme-preview.jpg\";s:7:\"excerpt\";s:154:\"A hassle-free Block-Editor-Era theme for your next WooCommerce project.\r\n\r\n&nbsp;\r\n\r\nPre-sale questions? Ask Get Bowtied: http://m.me/getbowtied\r\n\r\n&nbsp;\";s:4:\"link\";s:103:\"https://woocommerce.com/products/block-shop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:34:\"https://blockshop.wp-theme.design/\";s:5:\"price\";s:10:\"&#36;59.00\";s:4:\"hash\";s:36:\"21fa433c-6c31-4be7-83ab-8d2cc8986130\";s:4:\"slug\";s:10:\"block-shop\";s:2:\"id\";i:4660093;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"bistro\";a:11:{s:5:\"title\";s:6:\"Bistro\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/07/bistro.png\";s:7:\"excerpt\";s:174:\"Bistro is a Storefront child theme designed for stores selling organic goods and other consumables. It features a friendly and warm design that lends itself to this industry.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/bistro/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:37:\"https://themes.woocommerce.com/bistro\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"58e753f91fddf40abe8ebe4486f8c378\";s:4:\"slug\";s:6:\"bistro\";s:2:\"id\";i:1822936;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:10:\"stationery\";a:11:{s:5:\"title\";s:10:\"Stationery\";s:5:\"image\";s:65:\"https://woocommerce.com/wp-content/uploads/2016/04/stationery.jpg\";s:7:\"excerpt\";s:186:\"Stationery is a Storefront child theme designed for stores selling office supplies and/or arts &amp; crafts. The design has subtle tactile decorations while also being clean and elegant.\";s:4:\"link\";s:103:\"https://woocommerce.com/products/stationery/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:42:\"https://themes.woocommerce.com/stationery/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"b939225b8b8ccdc7b14ffb6d7eab2ac2\";s:4:\"slug\";s:10:\"stationery\";s:2:\"id\";i:1629126;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"petshop\";a:11:{s:5:\"title\";s:7:\"Petshop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2016/03/petshop.png\";s:7:\"excerpt\";s:181:\"Petshop is a Storefront child theme designed for stores selling products in the pet industry. The design is organic and friendly, featuring many details that point to pet ownership.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/petshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/petshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"8060743c9031974326850f539aba5196\";s:4:\"slug\";s:7:\"petshop\";s:2:\"id\";i:1587689;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:5:\"hotel\";a:11:{s:5:\"title\";s:5:\"Hotel\";s:5:\"image\";s:69:\"https://woocommerce.com/wp-content/uploads/2016/03/hotel-featured.jpg\";s:7:\"excerpt\";s:246:\"Hotel is designed for businesses selling time, services and accommodation, offering unique integration with WooCommerce Bookings and Accommodation Bookings. The design is bold yet simple, allowing your content and imagery to do all the talking.\";s:4:\"link\";s:98:\"https://woocommerce.com/products/hotel/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:37:\"https://themes.woocommerce.com/hotel/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"0b0df891aa46f289f4e49bae2389bb04\";s:4:\"slug\";s:5:\"hotel\";s:2:\"id\";i:1554532;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"bookshop\";a:11:{s:5:\"title\";s:8:\"Bookshop\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2016/02/featured.png\";s:7:\"excerpt\";s:183:\"Bookshop comes with a unique homepage layout that prominently displays product categories and a variety of products in an arrangement that is popular with bookstores and collectibles.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/bookshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/bookshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"9fe861227e3e82fde8fe5d7e8cc3340e\";s:4:\"slug\";s:8:\"bookshop\";s:2:\"id\";i:1508713;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"arcade\";a:11:{s:5:\"title\";s:6:\"Arcade\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2016/01/arcade.png\";s:7:\"excerpt\";s:216:\"Upgrade your video game shops look and feel with Arcade. It\'s bold and modern design will engage visitors and the unique homepage layout will present them with a variety of products as soon as they hit your homepage.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/arcade/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://themes.woocommerce.com/arcade/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"5af09d4e590eec977c6b9519b517f479\";s:4:\"slug\";s:6:\"arcade\";s:2:\"id\";i:1418260;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:9:\"homestore\";a:11:{s:5:\"title\";s:9:\"Homestore\";s:5:\"image\";s:64:\"https://woocommerce.com/wp-content/uploads/2015/12/homestore.jpg\";s:7:\"excerpt\";s:166:\"Give your Department Store a classic look with Homestore. Its clean and efficient design will work well whether you\'re a boutique independent or a high street giant.\";s:4:\"link\";s:102:\"https://woocommerce.com/products/homestore/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:41:\"https://themes.woocommerce.com/homestore/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"d79fe7a1beba26523aafa6ce6d3e1e85\";s:4:\"slug\";s:9:\"homestore\";s:2:\"id\";i:1365559;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"pharmacy\";a:11:{s:5:\"title\";s:8:\"Pharmacy\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2015/12/pharmacy.jpg\";s:7:\"excerpt\";s:235:\"Give your health store a professional, trust-worthy design with the Pharmacy Storefront Child Theme. Built upon our rock solid Storefront Parent theme you\'ll also enjoy reliable integration with current and future WooCommerce releases.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/pharmacy/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/pharmacy/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"ebeff3c0f89cd3169fb6b3e7e137e513\";s:4:\"slug\";s:8:\"pharmacy\";s:2:\"id\";i:1365557;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"toyshop\";a:11:{s:5:\"title\";s:7:\"ToyShop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2015/09/toyshop.jpg\";s:7:\"excerpt\";s:269:\"Add some fun to your store with ToyShop. The engaging and colorful design of ToyShop makes it a perfect child theme or any store that sells exciting products that are aimed at customers that like to have fun. The outdoorsy style would even be perfect for a flower shop.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/toyshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/toyshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"3e2520021b41ee49a55b93362aaced98\";s:4:\"slug\";s:7:\"toyshop\";s:2:\"id\";i:1230716;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:6:\"outlet\";a:11:{s:5:\"title\";s:6:\"Outlet\";s:5:\"image\";s:61:\"https://woocommerce.com/wp-content/uploads/2015/09/outlet.jpg\";s:7:\"excerpt\";s:221:\"Overclock your tech store with Outlet! Whether you sell boutique iPad jewellery or the nuts and bolts of hardware itself, Outlet will give your shop a stylish look and feel while enjoying the stability of Storefront core.\";s:4:\"link\";s:99:\"https://woocommerce.com/products/outlet/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:38:\"https://themes.woocommerce.com/outlet/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"4c311cb3a3131570946b8799715a0991\";s:4:\"slug\";s:6:\"outlet\";s:2:\"id\";i:1212805;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:7:\"proshop\";a:11:{s:5:\"title\";s:7:\"ProShop\";s:5:\"image\";s:62:\"https://woocommerce.com/wp-content/uploads/2015/06/proshop.jpg\";s:7:\"excerpt\";s:176:\"Unlock the true potential of your sports clothing and equipment store with ProShop! It\'s metropolitan design provides an active aesthetic giving your store oodles of character.\";s:4:\"link\";s:100:\"https://woocommerce.com/products/proshop/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:39:\"https://themes.woocommerce.com/proshop/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"1d51b8633bbd1782dc17fce15f8bd2af\";s:4:\"slug\";s:7:\"proshop\";s:2:\"id\";i:1000757;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"galleria\";a:11:{s:5:\"title\";s:8:\"Galleria\";s:5:\"image\";s:68:\"https://woocommerce.com/wp-content/uploads/2015/05/galleria-hero.png\";s:7:\"excerpt\";s:162:\"Galleria is a Storefront child theme perfect for fashion and design stores. Stylish and minimalist, it gives sites a classy look and keeps products center stage.\";s:4:\"link\";s:101:\"https://woocommerce.com/products/galleria/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/galleria/\";s:5:\"price\";s:10:\"&#36;39.00\";s:4:\"hash\";s:32:\"2429c1dde521031cd053886b15844bbf\";s:4:\"slug\";s:8:\"galleria\";s:2:\"id\";i:887931;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:4:\"deli\";a:11:{s:5:\"title\";s:4:\"Deli\";s:5:\"image\";s:59:\"https://woocommerce.com/wp-content/uploads/2015/03/deli.jpg\";s:7:\"excerpt\";s:135:\"Deli is a Storefront child theme featuring a texturised, earthy design, perfect for stores selling natural, organic or hand made goods.\";s:4:\"link\";s:97:\"https://woocommerce.com/products/deli/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:36:\"https://themes.woocommerce.com/deli/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"83c6db94c8ebf9da56b59fb97f724e88\";s:4:\"slug\";s:4:\"deli\";s:2:\"id\";i:784823;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}s:8:\"boutique\";a:11:{s:5:\"title\";s:8:\"Boutique\";s:5:\"image\";s:63:\"https://woocommerce.com/wp-content/uploads/2015/01/boutique.png\";s:7:\"excerpt\";s:168:\"Boutique is a simple, traditionally designed Storefront child theme, ideal for small stores or boutiques. Add your logo, create a unique color scheme and start selling!\";s:4:\"link\";s:101:\"https://woocommerce.com/products/boutique/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\";s:8:\"demo_url\";s:40:\"https://themes.woocommerce.com/boutique/\";s:5:\"price\";s:9:\"&#36;0.00\";s:4:\"hash\";s:32:\"71815288e266d58031727d48d6deee25\";s:4:\"slug\";s:8:\"boutique\";s:2:\"id\";i:605777;s:12:\"is_installed\";b:0;s:23:\"has_woocommerce_support\";b:1;}}', 'no'),
(1868, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1610407487', 'no'),
(1869, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(1899, '_site_transient_timeout_available_translations', '1610416634', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1900, '_site_transient_available_translations', 'a:124:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 09:12:13\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-28 10:07:13\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-09 19:08:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 11:59:40\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-06 11:23:33\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-10 19:18:40\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-11 08:20:42\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 08:37:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-28 22:07:36\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-28 22:07:31\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.6/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-07 12:39:24\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.6/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-07 12:36:13\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-08 15:56:22\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 14:10:38\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-17 21:41:53\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-11 10:17:47\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 01:24:14\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-13 04:37:35\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 01:25:09\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-04 23:05:50\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:8:\"5.6-beta\";s:7:\"updated\";s:19:\"2020-12-03 21:26:32\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6-beta/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-27 01:29:51\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 04:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-03 06:39:24\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-31 01:57:43\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2020-10-30 04:17:12\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.3/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-23 23:51:44\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-23 16:46:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.6/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 04:01:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-07 14:28:36\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-24 15:07:57\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-20 13:15:05\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 06:53:02\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 20:01:04\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-10 22:06:27\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-29 21:34:40\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 11:04:43\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-13 14:17:34\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-28 09:57:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 14:09:18\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 23:40:20\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-05 02:13:11\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-04 11:13:48\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 04:49:29\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-11-04 09:27:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-10 23:41:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.6\";s:7:\"updated\";s:19:\"2020-12-23 17:25:10\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.6/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:8:\"5.6-beta\";s:7:\"updated\";s:19:\"2020-11-20 14:49:35\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.6-beta/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-06 15:17:10\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 08:34:14\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 00:07:29\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-05 11:00:48\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-30 18:26:14\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:8:\"5.6-beta\";s:7:\"updated\";s:19:\"2020-11-25 10:09:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/core/5.6-beta/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-04 07:24:53\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 11:44:49\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-07 22:39:42\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-08 14:21:04\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-07 22:41:07\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.6/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-26 22:53:02\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-02 21:37:28\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 09:21:17\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-13 06:50:55\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-09 07:29:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 14:55:13\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-11 21:25:44\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-22 08:23:03\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-08 19:35:51\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-25 15:10:22\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.6/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2021-01-06 14:54:27\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2020-12-27 09:34:06\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"5.6\";s:7:\"updated\";s:19:\"2021-01-08 09:44:14\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(1903, '_transient_timeout__woocommerce_helper_subscriptions', '1610453128', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1904, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1905, '_site_transient_timeout_theme_roots', '1610454028', 'no'),
(1906, '_site_transient_theme_roots', 'a:1:{s:7:\"meutema\";s:7:\"/themes\";}', 'no'),
(1907, '_transient_timeout__woocommerce_helper_updates', '1610495428', 'no'),
(1908, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1610452228;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_edit_lock', '1609943394:1'),
(6, 2, '_edit_lock', '1609801903:1'),
(7, 10, '_edit_lock', '1610452085:1'),
(8, 10, '_wp_page_template', 'front-page.php'),
(9, 2, '_wp_trash_meta_status', 'publish'),
(10, 2, '_wp_trash_meta_time', '1609802192'),
(11, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(12, 13, '_edit_last', '1'),
(13, 13, '_edit_lock', '1609938905:1'),
(14, 14, '_wp_attached_file', '2021/01/serghei-savchiuc-Qaruw62_kmM-unsplash.png'),
(15, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:49:\"2021/01/serghei-savchiuc-Qaruw62_kmM-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"serghei-savchiuc-Qaruw62_kmM-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 13, '_thumbnail_id', '14'),
(17, 13, '_regular_price', '9.00'),
(18, 13, 'total_sales', '0'),
(19, 13, '_tax_status', 'taxable'),
(20, 13, '_tax_class', ''),
(21, 13, '_manage_stock', 'no'),
(22, 13, '_backorders', 'no'),
(23, 13, '_sold_individually', 'no'),
(24, 13, '_virtual', 'no'),
(25, 13, '_downloadable', 'no'),
(26, 13, '_download_limit', '-1'),
(27, 13, '_download_expiry', '-1'),
(28, 13, '_stock', NULL),
(29, 13, '_stock_status', 'instock'),
(30, 13, '_wc_average_rating', '0'),
(31, 13, '_wc_review_count', '0'),
(32, 13, '_product_version', '4.8.0'),
(33, 13, '_price', '9.00'),
(34, 15, '_edit_last', '1'),
(35, 15, '_edit_lock', '1609938874:1'),
(36, 16, '_wp_attached_file', '2021/01/kim-daniels-OrkEasJeY74-unsplash.png'),
(37, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:44:\"2021/01/kim-daniels-OrkEasJeY74-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"kim-daniels-OrkEasJeY74-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 15, '_thumbnail_id', '16'),
(39, 15, '_regular_price', '12.00'),
(40, 15, 'total_sales', '0'),
(41, 15, '_tax_status', 'taxable'),
(42, 15, '_tax_class', ''),
(43, 15, '_manage_stock', 'no'),
(44, 15, '_backorders', 'no'),
(45, 15, '_sold_individually', 'no'),
(46, 15, '_virtual', 'no'),
(47, 15, '_downloadable', 'no'),
(48, 15, '_download_limit', '-1'),
(49, 15, '_download_expiry', '-1'),
(50, 15, '_stock', NULL),
(51, 15, '_stock_status', 'instock'),
(52, 15, '_wc_average_rating', '0'),
(53, 15, '_wc_review_count', '0'),
(54, 15, '_product_version', '4.8.0'),
(55, 15, '_price', '12.00'),
(56, 20, '_edit_last', '1'),
(57, 20, '_edit_lock', '1609945271:1'),
(58, 21, '_wp_attached_file', '2021/01/anthony-espinosa-6iqpLKqeaE0-unsplash.png'),
(59, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:49:\"2021/01/anthony-espinosa-6iqpLKqeaE0-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"anthony-espinosa-6iqpLKqeaE0-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 20, '_thumbnail_id', '21'),
(61, 20, '_regular_price', '14.00'),
(62, 20, 'total_sales', '0'),
(63, 20, '_tax_status', 'taxable'),
(64, 20, '_tax_class', ''),
(65, 20, '_manage_stock', 'no'),
(66, 20, '_backorders', 'no'),
(67, 20, '_sold_individually', 'no'),
(68, 20, '_virtual', 'no'),
(69, 20, '_downloadable', 'no'),
(70, 20, '_download_limit', '-1'),
(71, 20, '_download_expiry', '-1'),
(72, 20, '_stock', NULL),
(73, 20, '_stock_status', 'instock'),
(74, 20, '_wc_average_rating', '0'),
(75, 20, '_wc_review_count', '0'),
(76, 20, '_product_version', '4.8.0'),
(77, 20, '_price', '14.00'),
(78, 22, '_edit_last', '1'),
(79, 22, '_edit_lock', '1609956609:1'),
(80, 23, '_wp_attached_file', '2021/01/deva-williamson-S2jw81lfrG0-unsplash.png'),
(81, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:48:\"2021/01/deva-williamson-S2jw81lfrG0-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"deva-williamson-S2jw81lfrG0-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 24, '_wp_attached_file', '2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash.png'),
(83, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:52:\"2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 25, '_wp_attached_file', '2021/01/elena-koycheva-PFzy4N0_R3M-unsplash.png'),
(85, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:47:\"2021/01/elena-koycheva-PFzy4N0_R3M-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"elena-koycheva-PFzy4N0_R3M-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 22, '_thumbnail_id', '23'),
(87, 22, '_regular_price', '11.00'),
(88, 22, 'total_sales', '0'),
(89, 22, '_tax_status', 'taxable'),
(90, 22, '_tax_class', ''),
(91, 22, '_manage_stock', 'no'),
(92, 22, '_backorders', 'no'),
(93, 22, '_sold_individually', 'no'),
(94, 22, '_virtual', 'no'),
(95, 22, '_downloadable', 'no'),
(96, 22, '_download_limit', '-1'),
(97, 22, '_download_expiry', '-1'),
(98, 22, '_stock', NULL),
(99, 22, '_stock_status', 'instock'),
(100, 22, '_wc_average_rating', '0'),
(101, 22, '_wc_review_count', '0'),
(102, 22, '_product_version', '4.8.0'),
(103, 22, '_price', '11.00'),
(104, 26, '_edit_last', '1'),
(105, 26, '_edit_lock', '1610395014:1'),
(106, 26, '_thumbnail_id', '25'),
(107, 26, '_regular_price', '6.00'),
(108, 26, 'total_sales', '0'),
(109, 26, '_tax_status', 'taxable'),
(110, 26, '_tax_class', ''),
(111, 26, '_manage_stock', 'no'),
(112, 26, '_backorders', 'no'),
(113, 26, '_sold_individually', 'no'),
(114, 26, '_virtual', 'no'),
(115, 26, '_downloadable', 'no'),
(116, 26, '_download_limit', '-1'),
(117, 26, '_download_expiry', '-1'),
(118, 26, '_stock', NULL),
(119, 26, '_stock_status', 'instock'),
(120, 26, '_wc_average_rating', '0'),
(121, 26, '_wc_review_count', '0'),
(122, 26, '_product_version', '4.8.0'),
(123, 26, '_price', '6.00'),
(124, 27, '_edit_last', '1'),
(125, 27, '_thumbnail_id', '24'),
(126, 27, '_regular_price', '14.00'),
(127, 27, 'total_sales', '0'),
(128, 27, '_tax_status', 'taxable'),
(129, 27, '_tax_class', ''),
(130, 27, '_manage_stock', 'no'),
(131, 27, '_backorders', 'no'),
(132, 27, '_sold_individually', 'no'),
(133, 27, '_virtual', 'no'),
(134, 27, '_downloadable', 'no'),
(135, 27, '_download_limit', '-1'),
(136, 27, '_download_expiry', '-1'),
(137, 27, '_stock', NULL),
(138, 27, '_stock_status', 'instock'),
(139, 27, '_wc_average_rating', '0'),
(140, 27, '_wc_review_count', '0'),
(141, 27, '_product_version', '4.8.0'),
(142, 27, '_price', '14.00'),
(143, 27, '_edit_lock', '1610394978:1'),
(144, 27, '_product_image_gallery', '87,86'),
(145, 28, '_edit_last', '1'),
(146, 28, '_edit_lock', '1610405299:1'),
(147, 10, '_edit_last', '1'),
(148, 10, 'lema', 'Sabor em Cada pedaço'),
(149, 10, '_lema', 'field_5ffc9bb2b60de'),
(150, 10, 'botao', 'nossos produtos'),
(151, 10, '_botao', 'field_5ffc9bc0b60df'),
(152, 31, 'lema', 'lema teste'),
(153, 31, '_lema', 'field_5ffc9bb2b60de'),
(154, 31, 'botao', 'botão teste'),
(155, 31, '_botao', 'field_5ffc9bc0b60df'),
(156, 32, 'lema', 'sabor em cada pedaço'),
(157, 32, '_lema', 'field_5ffc9bb2b60de'),
(158, 32, 'botao', 'nossos produtso'),
(159, 32, '_botao', 'field_5ffc9bc0b60df'),
(160, 33, 'lema', 'Sabor em cada pedaço'),
(161, 33, '_lema', 'field_5ffc9bb2b60de'),
(162, 33, 'botao', 'nossos produtos'),
(163, 33, '_botao', 'field_5ffc9bc0b60df'),
(164, 34, 'lema', 'Sabor em Cada pedaço'),
(165, 34, '_lema', 'field_5ffc9bb2b60de'),
(166, 34, 'botao', 'nossos produtos'),
(167, 34, '_botao', 'field_5ffc9bc0b60df'),
(168, 36, '_wp_attached_file', '2021/01/Imagem-1.png'),
(169, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:447;s:4:\"file\";s:20:\"2021/01/Imagem-1.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Imagem-1-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Imagem-1-1024x358.png\";s:5:\"width\";i:1024;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Imagem-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Imagem-1-768x268.png\";s:5:\"width\";i:768;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Imagem-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Imagem-1-600x210.png\";s:5:\"width\";i:600;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Imagem-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Imagem-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Imagem-1-600x210.png\";s:5:\"width\";i:600;s:6:\"height\";i:210;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Imagem-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 10, 'imagem_de_fundo', '36'),
(171, 10, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(172, 37, 'lema', 'Sabor em Cada pedaço'),
(173, 37, '_lema', 'field_5ffc9bb2b60de'),
(174, 37, 'botao', 'nossos produtos'),
(175, 37, '_botao', 'field_5ffc9bc0b60df'),
(176, 37, 'imagem_de_fundo', '36'),
(177, 37, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(178, 38, '_edit_last', '1'),
(179, 38, '_edit_lock', '1610393621:1'),
(180, 43, '_wp_attached_file', '2021/01/Grupo-de-máscara-1.png'),
(181, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:456;s:6:\"height\";i:333;s:4:\"file\";s:32:\"2021/01/Grupo-de-máscara-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-300x219.png\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 10, 'imagem', '43'),
(183, 10, '_imagem', 'field_5ffc9eb6f5edf'),
(184, 10, 'titulo', 'História da Ba Bakery'),
(185, 10, '_titulo', 'field_5ffc9ecdf5ee0'),
(186, 10, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(187, 10, '_descricao', 'field_5ffc9fa8bce67'),
(188, 44, 'lema', 'Sabor em Cada pedaço'),
(189, 44, '_lema', 'field_5ffc9bb2b60de'),
(190, 44, 'botao', 'nossos produtos'),
(191, 44, '_botao', 'field_5ffc9bc0b60df'),
(192, 44, 'imagem_de_fundo', '36'),
(193, 44, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(194, 44, 'imagem', '43'),
(195, 44, '_imagem', 'field_5ffc9eb6f5edf'),
(196, 44, 'titulo', 'História da Ba Bakery'),
(197, 44, '_titulo', 'field_5ffc9ecdf5ee0'),
(198, 44, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(199, 44, '_descricao', 'field_5ffc9fa8bce67'),
(200, 45, '_edit_last', '1'),
(201, 45, '_edit_lock', '1610393635:1'),
(202, 10, 'titulo_produtos', 'Produtos'),
(203, 10, '_titulo_produtos', 'field_5ffca051dd139'),
(204, 47, 'lema', 'Sabor em Cada pedaço'),
(205, 47, '_lema', 'field_5ffc9bb2b60de'),
(206, 47, 'botao', 'nossos produtos'),
(207, 47, '_botao', 'field_5ffc9bc0b60df'),
(208, 47, 'imagem_de_fundo', '36'),
(209, 47, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(210, 47, 'imagem', '43'),
(211, 47, '_imagem', 'field_5ffc9eb6f5edf'),
(212, 47, 'titulo', 'História da Ba Bakery'),
(213, 47, '_titulo', 'field_5ffc9ecdf5ee0'),
(214, 47, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(215, 47, '_descricao', 'field_5ffc9fa8bce67'),
(216, 47, 'titulo_produtos', 'Produtos'),
(217, 47, '_titulo_produtos', 'field_5ffca051dd139'),
(218, 48, 'lema', 'Sabor em Cada pedaço'),
(219, 48, '_lema', 'field_5ffc9bb2b60de'),
(220, 48, 'botao', 'nossos produtos'),
(221, 48, '_botao', 'field_5ffc9bc0b60df'),
(222, 48, 'imagem_de_fundo', '36'),
(223, 48, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(224, 48, 'imagem', '43'),
(225, 48, '_imagem', 'field_5ffc9eb6f5edf'),
(226, 48, 'titulo', 'História da Ba Bakery'),
(227, 48, '_titulo', 'field_5ffc9ecdf5ee0'),
(228, 48, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(229, 48, '_descricao', 'field_5ffc9fa8bce67'),
(230, 48, 'titulo_produtos', 'Produtos'),
(231, 48, '_titulo_produtos', 'field_5ffca051dd139'),
(232, 49, '_edit_last', '1'),
(233, 49, '_edit_lock', '1610393648:1'),
(234, 68, '_wp_attached_file', '2021/01/Grupo-de-máscara-2.png'),
(235, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:225;s:4:\"file\";s:32:\"2021/01/Grupo-de-máscara-2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Grupo-de-máscara-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 10, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(237, 10, '_mensagem_contato', 'field_5ffca1215b8ad'),
(238, 10, 'label_1', 'Nome'),
(239, 10, '_label_1', 'field_5ffca1f65b8b4'),
(240, 10, 'placeholder_1', 'Ex.: Renata Lopes'),
(241, 10, '_placeholder_1', 'field_5ffca1a85b8b0'),
(242, 10, 'label_2', 'Telefone'),
(243, 10, '_label_2', 'field_5ffca240af951'),
(244, 10, 'placeholder_2', '(xx) x xxxx.xxxx'),
(245, 10, '_placeholder_2', 'field_5ffca35b51d44'),
(246, 10, 'label_3', 'Email'),
(247, 10, '_label_3', 'field_5ffca242af952'),
(248, 10, 'placeholder_3', 'exemplo@exemplo.com.br'),
(249, 10, '_placeholder_3', 'field_5ffca35d51d45'),
(250, 10, 'label_4', 'Mensagem'),
(251, 10, '_label_4', 'field_5ffca245af953'),
(252, 10, 'placeholder_4', 'Digite aqui a sua mensagem'),
(253, 10, '_placeholder_4', 'field_5ffca36051d46'),
(254, 10, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(255, 10, '_mensagem_local', 'field_5ffca1655b8ae'),
(256, 10, 'imagem_local', '68'),
(257, 10, '_imagem_local', 'field_5ffca3c651d47'),
(258, 10, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(259, 10, '_endereco', 'field_5ffca1745b8af'),
(260, 69, 'lema', 'Sabor em Cada pedaço'),
(261, 69, '_lema', 'field_5ffc9bb2b60de'),
(262, 69, 'botao', 'nossos produtos'),
(263, 69, '_botao', 'field_5ffc9bc0b60df'),
(264, 69, 'imagem_de_fundo', '36'),
(265, 69, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(266, 69, 'imagem', '43'),
(267, 69, '_imagem', 'field_5ffc9eb6f5edf'),
(268, 69, 'titulo', 'História da Ba Bakery'),
(269, 69, '_titulo', 'field_5ffc9ecdf5ee0'),
(270, 69, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(271, 69, '_descricao', 'field_5ffc9fa8bce67'),
(272, 69, 'titulo_produtos', 'Produtos'),
(273, 69, '_titulo_produtos', 'field_5ffca051dd139'),
(274, 69, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(275, 69, '_mensagem_contato', 'field_5ffca1215b8ad'),
(276, 69, 'label_1', 'Nome'),
(277, 69, '_label_1', 'field_5ffca1f65b8b4'),
(278, 69, 'placeholder_1', 'Ex.: Renata Lopes'),
(279, 69, '_placeholder_1', 'field_5ffca1a85b8b0'),
(280, 69, 'label_2', 'Telefone'),
(281, 69, '_label_2', 'field_5ffca240af951'),
(282, 69, 'placeholder_2', '(xx) x xxxx.xxxx'),
(283, 69, '_placeholder_2', 'field_5ffca35b51d44'),
(284, 69, 'label_3', 'Email'),
(285, 69, '_label_3', 'field_5ffca242af952'),
(286, 69, 'placeholder_3', 'exemplo@exemplo.com.br'),
(287, 69, '_placeholder_3', 'field_5ffca35d51d45'),
(288, 69, 'label_4', 'Mensagem'),
(289, 69, '_label_4', 'field_5ffca245af953'),
(290, 69, 'placeholder_4', 'Digite aqui a sua mensagem'),
(291, 69, '_placeholder_4', 'field_5ffca36051d46'),
(292, 69, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(293, 69, '_mensagem_local', 'field_5ffca1655b8ae'),
(294, 69, 'imagem_local', '68'),
(295, 69, '_imagem_local', 'field_5ffca3c651d47'),
(296, 69, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(297, 69, '_endereco', 'field_5ffca1745b8af'),
(298, 70, '_edit_last', '1'),
(299, 70, '_edit_lock', '1610394464:1'),
(300, 75, '_wp_attached_file', '2021/01/Grupo-232.png'),
(301, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:155;s:6:\"height\";i:111;s:4:\"file\";s:21:\"2021/01/Grupo-232.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Grupo-232-150x111.png\";s:5:\"width\";i:150;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Grupo-232-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Grupo-232-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 10, 'logo_footer', '75'),
(303, 10, '_logo_footer', 'field_5ffca65b5ae95'),
(304, 10, 'telefone', '+55 (87) 3312.4057'),
(305, 10, '_telefone', 'field_5ffca6845ae96'),
(306, 10, 'email', 'contato@babakery.com.br'),
(307, 10, '_email', 'field_5ffca6a85ae97'),
(308, 10, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(309, 10, '_copyright', 'field_5ffca6b45ae98'),
(310, 76, 'lema', 'Sabor em Cada pedaço'),
(311, 76, '_lema', 'field_5ffc9bb2b60de'),
(312, 76, 'botao', 'nossos produtos'),
(313, 76, '_botao', 'field_5ffc9bc0b60df'),
(314, 76, 'imagem_de_fundo', '36'),
(315, 76, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(316, 76, 'imagem', '43'),
(317, 76, '_imagem', 'field_5ffc9eb6f5edf'),
(318, 76, 'titulo', 'História da Ba Bakery'),
(319, 76, '_titulo', 'field_5ffc9ecdf5ee0'),
(320, 76, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(321, 76, '_descricao', 'field_5ffc9fa8bce67'),
(322, 76, 'titulo_produtos', 'Produtos'),
(323, 76, '_titulo_produtos', 'field_5ffca051dd139'),
(324, 76, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(325, 76, '_mensagem_contato', 'field_5ffca1215b8ad'),
(326, 76, 'label_1', 'Nome'),
(327, 76, '_label_1', 'field_5ffca1f65b8b4'),
(328, 76, 'placeholder_1', 'Ex.: Renata Lopes'),
(329, 76, '_placeholder_1', 'field_5ffca1a85b8b0'),
(330, 76, 'label_2', 'Telefone'),
(331, 76, '_label_2', 'field_5ffca240af951'),
(332, 76, 'placeholder_2', '(xx) x xxxx.xxxx'),
(333, 76, '_placeholder_2', 'field_5ffca35b51d44'),
(334, 76, 'label_3', 'Email'),
(335, 76, '_label_3', 'field_5ffca242af952'),
(336, 76, 'placeholder_3', 'exemplo@exemplo.com.br'),
(337, 76, '_placeholder_3', 'field_5ffca35d51d45'),
(338, 76, 'label_4', 'Mensagem'),
(339, 76, '_label_4', 'field_5ffca245af953'),
(340, 76, 'placeholder_4', 'Digite aqui a sua mensagem'),
(341, 76, '_placeholder_4', 'field_5ffca36051d46'),
(342, 76, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(343, 76, '_mensagem_local', 'field_5ffca1655b8ae'),
(344, 76, 'imagem_local', '68'),
(345, 76, '_imagem_local', 'field_5ffca3c651d47'),
(346, 76, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(347, 76, '_endereco', 'field_5ffca1745b8af'),
(348, 76, 'logo_footer', '75'),
(349, 76, '_logo_footer', 'field_5ffca65b5ae95'),
(350, 76, 'telefone', '+55 (87) 3312.4057'),
(351, 76, '_telefone', 'field_5ffca6845ae96'),
(352, 76, 'email', 'contato@babakery.com.br'),
(353, 76, '_email', 'field_5ffca6a85ae97'),
(354, 76, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(355, 76, '_copyright', 'field_5ffca6b45ae98'),
(356, 77, '_edit_last', '1'),
(357, 77, '_edit_lock', '1610404113:1'),
(358, 10, 'logo', '75'),
(359, 10, '_logo', 'field_5ffca870e33d2'),
(360, 79, 'lema', 'Sabor em Cada pedaço'),
(361, 79, '_lema', 'field_5ffc9bb2b60de'),
(362, 79, 'botao', 'nossos produtos'),
(363, 79, '_botao', 'field_5ffc9bc0b60df'),
(364, 79, 'imagem_de_fundo', '36'),
(365, 79, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(366, 79, 'imagem', '43'),
(367, 79, '_imagem', 'field_5ffc9eb6f5edf'),
(368, 79, 'titulo', 'História da Ba Bakery'),
(369, 79, '_titulo', 'field_5ffc9ecdf5ee0'),
(370, 79, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(371, 79, '_descricao', 'field_5ffc9fa8bce67'),
(372, 79, 'titulo_produtos', 'Produtos'),
(373, 79, '_titulo_produtos', 'field_5ffca051dd139'),
(374, 79, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(375, 79, '_mensagem_contato', 'field_5ffca1215b8ad'),
(376, 79, 'label_1', 'Nome'),
(377, 79, '_label_1', 'field_5ffca1f65b8b4'),
(378, 79, 'placeholder_1', 'Ex.: Renata Lopes'),
(379, 79, '_placeholder_1', 'field_5ffca1a85b8b0'),
(380, 79, 'label_2', 'Telefone'),
(381, 79, '_label_2', 'field_5ffca240af951'),
(382, 79, 'placeholder_2', '(xx) x xxxx.xxxx'),
(383, 79, '_placeholder_2', 'field_5ffca35b51d44'),
(384, 79, 'label_3', 'Email'),
(385, 79, '_label_3', 'field_5ffca242af952'),
(386, 79, 'placeholder_3', 'exemplo@exemplo.com.br'),
(387, 79, '_placeholder_3', 'field_5ffca35d51d45'),
(388, 79, 'label_4', 'Mensagem'),
(389, 79, '_label_4', 'field_5ffca245af953'),
(390, 79, 'placeholder_4', 'Digite aqui a sua mensagem'),
(391, 79, '_placeholder_4', 'field_5ffca36051d46'),
(392, 79, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(393, 79, '_mensagem_local', 'field_5ffca1655b8ae'),
(394, 79, 'imagem_local', '68'),
(395, 79, '_imagem_local', 'field_5ffca3c651d47'),
(396, 79, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(397, 79, '_endereco', 'field_5ffca1745b8af'),
(398, 79, 'logo_footer', '75'),
(399, 79, '_logo_footer', 'field_5ffca65b5ae95'),
(400, 79, 'telefone', '+55 (87) 3312.4057'),
(401, 79, '_telefone', 'field_5ffca6845ae96'),
(402, 79, 'email', 'contato@babakery.com.br'),
(403, 79, '_email', 'field_5ffca6a85ae97'),
(404, 79, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(405, 79, '_copyright', 'field_5ffca6b45ae98'),
(406, 79, 'logo', '75'),
(407, 79, '_logo', 'field_5ffca870e33d2'),
(420, 86, '_wp_attached_file', '2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2.png'),
(421, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:62:\"2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:62:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(422, 87, '_wp_attached_file', '2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia.png'),
(423, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:60:\"2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:60:\"dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(424, 88, '_wp_attached_file', '2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2.png'),
(425, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:57:\"2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:57:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(426, 89, '_wp_attached_file', '2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia.png'),
(427, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:306;s:6:\"height\";i:306;s:4:\"file\";s:55:\"2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:55:\"elena-koycheva-PFzy4N0_R3M-unsplash-cópia-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(428, 26, '_product_image_gallery', '88,89'),
(429, 10, 'menu_item_1', 'quem somos'),
(430, 10, '_menu_item_1', 'field_5ffcce753aa94'),
(431, 10, 'menu_link_1', '#quemsomos'),
(432, 10, '_menu_link_1', 'field_5ffccf963aa9d'),
(433, 10, 'menu_item_2', 'equipe'),
(434, 10, '_menu_item_2', 'field_5ffccea53aa95'),
(435, 10, 'menu_link_2', '#equipe'),
(436, 10, '_menu_link_2', 'field_5ffccfb63aa9e'),
(437, 10, 'menu_item_3', 'contato'),
(438, 10, '_menu_item_3', 'field_5ffccea73aa96'),
(439, 10, 'menu_link_3', '#contato'),
(440, 10, '_menu_link_3', 'field_5ffccfb73aa9f'),
(441, 10, 'social_icone_1', '103'),
(442, 10, '_social_icone_1', 'field_5ffcceaf3aa97'),
(443, 10, 'social_link_1', '#facebook'),
(444, 10, '_social_link_1', 'field_5ffcced23aa98'),
(445, 10, 'social_icone_2', '104'),
(446, 10, '_social_icone_2', 'field_5ffccf153aa99'),
(447, 10, 'social_link_2', '#instagram'),
(448, 10, '_social_link_2', 'field_5ffccf323aa9b'),
(449, 10, 'social_icone_3', '105'),
(450, 10, '_social_icone_3', 'field_5ffccf173aa9a'),
(451, 10, 'social_link_3', '#twitter'),
(452, 10, '_social_link_3', 'field_5ffccf353aa9c'),
(453, 102, 'lema', 'Sabor em Cada pedaço'),
(454, 102, '_lema', 'field_5ffc9bb2b60de'),
(455, 102, 'botao', 'nossos produtos'),
(456, 102, '_botao', 'field_5ffc9bc0b60df'),
(457, 102, 'imagem_de_fundo', '36'),
(458, 102, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(459, 102, 'imagem', '43'),
(460, 102, '_imagem', 'field_5ffc9eb6f5edf'),
(461, 102, 'titulo', 'História da Ba Bakery'),
(462, 102, '_titulo', 'field_5ffc9ecdf5ee0'),
(463, 102, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(464, 102, '_descricao', 'field_5ffc9fa8bce67'),
(465, 102, 'titulo_produtos', 'Produtos'),
(466, 102, '_titulo_produtos', 'field_5ffca051dd139'),
(467, 102, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(468, 102, '_mensagem_contato', 'field_5ffca1215b8ad'),
(469, 102, 'label_1', 'Nome'),
(470, 102, '_label_1', 'field_5ffca1f65b8b4'),
(471, 102, 'placeholder_1', 'Ex.: Renata Lopes'),
(472, 102, '_placeholder_1', 'field_5ffca1a85b8b0'),
(473, 102, 'label_2', 'Telefone'),
(474, 102, '_label_2', 'field_5ffca240af951'),
(475, 102, 'placeholder_2', '(xx) x xxxx.xxxx'),
(476, 102, '_placeholder_2', 'field_5ffca35b51d44'),
(477, 102, 'label_3', 'Email'),
(478, 102, '_label_3', 'field_5ffca242af952'),
(479, 102, 'placeholder_3', 'exemplo@exemplo.com.br'),
(480, 102, '_placeholder_3', 'field_5ffca35d51d45'),
(481, 102, 'label_4', 'Mensagem'),
(482, 102, '_label_4', 'field_5ffca245af953'),
(483, 102, 'placeholder_4', 'Digite aqui a sua mensagem'),
(484, 102, '_placeholder_4', 'field_5ffca36051d46'),
(485, 102, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(486, 102, '_mensagem_local', 'field_5ffca1655b8ae'),
(487, 102, 'imagem_local', '68'),
(488, 102, '_imagem_local', 'field_5ffca3c651d47'),
(489, 102, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(490, 102, '_endereco', 'field_5ffca1745b8af'),
(491, 102, 'logo_footer', '75'),
(492, 102, '_logo_footer', 'field_5ffca65b5ae95'),
(493, 102, 'telefone', '+55 (87) 3312.4057'),
(494, 102, '_telefone', 'field_5ffca6845ae96'),
(495, 102, 'email', 'contato@babakery.com.br'),
(496, 102, '_email', 'field_5ffca6a85ae97'),
(497, 102, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(498, 102, '_copyright', 'field_5ffca6b45ae98'),
(499, 102, 'logo', '75'),
(500, 102, '_logo', 'field_5ffca870e33d2'),
(501, 102, 'menu_item_1', 'quem somos'),
(502, 102, '_menu_item_1', 'field_5ffcce753aa94'),
(503, 102, 'menu_link_1', '#quemsomos'),
(504, 102, '_menu_link_1', 'field_5ffccf963aa9d'),
(505, 102, 'menu_item_2', 'equipe'),
(506, 102, '_menu_item_2', 'field_5ffccea53aa95'),
(507, 102, 'menu_link_2', '#equipe'),
(508, 102, '_menu_link_2', 'field_5ffccfb63aa9e'),
(509, 102, 'menu_item_3', 'contato'),
(510, 102, '_menu_item_3', 'field_5ffccea73aa96'),
(511, 102, 'menu_link_3', '#contato'),
(512, 102, '_menu_link_3', 'field_5ffccfb73aa9f'),
(513, 102, 'social_icone_1', ''),
(514, 102, '_social_icone_1', 'field_5ffcceaf3aa97'),
(515, 102, 'social_link_1', ''),
(516, 102, '_social_link_1', 'field_5ffcced23aa98'),
(517, 102, 'social_icone_2', ''),
(518, 102, '_social_icone_2', 'field_5ffccf153aa99'),
(519, 102, 'social_link_2', ''),
(520, 102, '_social_link_2', 'field_5ffccf323aa9b'),
(521, 102, 'social_icone_3', ''),
(522, 102, '_social_icone_3', 'field_5ffccf173aa9a'),
(523, 102, 'social_link_3', ''),
(524, 102, '_social_link_3', 'field_5ffccf353aa9c'),
(525, 103, '_wp_attached_file', '2021/01/XMLID_834_.png'),
(526, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:11;s:6:\"height\";i:22;s:4:\"file\";s:22:\"2021/01/XMLID_834_.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(527, 104, '_wp_attached_file', '2021/01/instagram-logo.png'),
(528, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:19;s:6:\"height\";i:19;s:4:\"file\";s:26:\"2021/01/instagram-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(529, 105, '_wp_attached_file', '2021/01/twitter.png'),
(530, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:22;s:6:\"height\";i:18;s:4:\"file\";s:19:\"2021/01/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(531, 106, 'lema', 'Sabor em Cada pedaço'),
(532, 106, '_lema', 'field_5ffc9bb2b60de'),
(533, 106, 'botao', 'nossos produtos'),
(534, 106, '_botao', 'field_5ffc9bc0b60df'),
(535, 106, 'imagem_de_fundo', '36'),
(536, 106, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(537, 106, 'imagem', '43'),
(538, 106, '_imagem', 'field_5ffc9eb6f5edf'),
(539, 106, 'titulo', 'História da Ba Bakery'),
(540, 106, '_titulo', 'field_5ffc9ecdf5ee0'),
(541, 106, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(542, 106, '_descricao', 'field_5ffc9fa8bce67'),
(543, 106, 'titulo_produtos', 'Produtos'),
(544, 106, '_titulo_produtos', 'field_5ffca051dd139'),
(545, 106, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(546, 106, '_mensagem_contato', 'field_5ffca1215b8ad'),
(547, 106, 'label_1', 'Nome'),
(548, 106, '_label_1', 'field_5ffca1f65b8b4'),
(549, 106, 'placeholder_1', 'Ex.: Renata Lopes'),
(550, 106, '_placeholder_1', 'field_5ffca1a85b8b0'),
(551, 106, 'label_2', 'Telefone'),
(552, 106, '_label_2', 'field_5ffca240af951'),
(553, 106, 'placeholder_2', '(xx) x xxxx.xxxx'),
(554, 106, '_placeholder_2', 'field_5ffca35b51d44'),
(555, 106, 'label_3', 'Email'),
(556, 106, '_label_3', 'field_5ffca242af952'),
(557, 106, 'placeholder_3', 'exemplo@exemplo.com.br'),
(558, 106, '_placeholder_3', 'field_5ffca35d51d45'),
(559, 106, 'label_4', 'Mensagem'),
(560, 106, '_label_4', 'field_5ffca245af953'),
(561, 106, 'placeholder_4', 'Digite aqui a sua mensagem'),
(562, 106, '_placeholder_4', 'field_5ffca36051d46'),
(563, 106, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(564, 106, '_mensagem_local', 'field_5ffca1655b8ae'),
(565, 106, 'imagem_local', '68'),
(566, 106, '_imagem_local', 'field_5ffca3c651d47'),
(567, 106, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(568, 106, '_endereco', 'field_5ffca1745b8af'),
(569, 106, 'logo_footer', '75'),
(570, 106, '_logo_footer', 'field_5ffca65b5ae95'),
(571, 106, 'telefone', '+55 (87) 3312.4057'),
(572, 106, '_telefone', 'field_5ffca6845ae96'),
(573, 106, 'email', 'contato@babakery.com.br'),
(574, 106, '_email', 'field_5ffca6a85ae97'),
(575, 106, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(576, 106, '_copyright', 'field_5ffca6b45ae98'),
(577, 106, 'logo', '75'),
(578, 106, '_logo', 'field_5ffca870e33d2'),
(579, 106, 'menu_item_1', 'quem somos'),
(580, 106, '_menu_item_1', 'field_5ffcce753aa94'),
(581, 106, 'menu_link_1', '#quemsomos'),
(582, 106, '_menu_link_1', 'field_5ffccf963aa9d'),
(583, 106, 'menu_item_2', 'equipe'),
(584, 106, '_menu_item_2', 'field_5ffccea53aa95'),
(585, 106, 'menu_link_2', '#equipe'),
(586, 106, '_menu_link_2', 'field_5ffccfb63aa9e'),
(587, 106, 'menu_item_3', 'contato'),
(588, 106, '_menu_item_3', 'field_5ffccea73aa96'),
(589, 106, 'menu_link_3', '#contato'),
(590, 106, '_menu_link_3', 'field_5ffccfb73aa9f'),
(591, 106, 'social_icone_1', '103'),
(592, 106, '_social_icone_1', 'field_5ffcceaf3aa97'),
(593, 106, 'social_link_1', '#facebook'),
(594, 106, '_social_link_1', 'field_5ffcced23aa98'),
(595, 106, 'social_icone_2', '104'),
(596, 106, '_social_icone_2', 'field_5ffccf153aa99'),
(597, 106, 'social_link_2', '#instagram'),
(598, 106, '_social_link_2', 'field_5ffccf323aa9b'),
(599, 106, 'social_icone_3', '105'),
(600, 106, '_social_icone_3', 'field_5ffccf173aa9a'),
(601, 106, 'social_link_3', 'twitter'),
(602, 106, '_social_link_3', 'field_5ffccf353aa9c'),
(603, 107, 'lema', 'Sabor em Cada pedaço'),
(604, 107, '_lema', 'field_5ffc9bb2b60de'),
(605, 107, 'botao', 'nossos produtos'),
(606, 107, '_botao', 'field_5ffc9bc0b60df'),
(607, 107, 'imagem_de_fundo', '36'),
(608, 107, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(609, 107, 'imagem', '43'),
(610, 107, '_imagem', 'field_5ffc9eb6f5edf'),
(611, 107, 'titulo', 'História da Ba Bakery'),
(612, 107, '_titulo', 'field_5ffc9ecdf5ee0'),
(613, 107, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(614, 107, '_descricao', 'field_5ffc9fa8bce67'),
(615, 107, 'titulo_produtos', 'Produtos'),
(616, 107, '_titulo_produtos', 'field_5ffca051dd139'),
(617, 107, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(618, 107, '_mensagem_contato', 'field_5ffca1215b8ad'),
(619, 107, 'label_1', 'Nome'),
(620, 107, '_label_1', 'field_5ffca1f65b8b4'),
(621, 107, 'placeholder_1', 'Ex.: Renata Lopes'),
(622, 107, '_placeholder_1', 'field_5ffca1a85b8b0'),
(623, 107, 'label_2', 'Telefone'),
(624, 107, '_label_2', 'field_5ffca240af951'),
(625, 107, 'placeholder_2', '(xx) x xxxx.xxxx'),
(626, 107, '_placeholder_2', 'field_5ffca35b51d44'),
(627, 107, 'label_3', 'Email'),
(628, 107, '_label_3', 'field_5ffca242af952'),
(629, 107, 'placeholder_3', 'exemplo@exemplo.com.br'),
(630, 107, '_placeholder_3', 'field_5ffca35d51d45'),
(631, 107, 'label_4', 'Mensagem'),
(632, 107, '_label_4', 'field_5ffca245af953'),
(633, 107, 'placeholder_4', 'Digite aqui a sua mensagem'),
(634, 107, '_placeholder_4', 'field_5ffca36051d46'),
(635, 107, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(636, 107, '_mensagem_local', 'field_5ffca1655b8ae'),
(637, 107, 'imagem_local', '68'),
(638, 107, '_imagem_local', 'field_5ffca3c651d47'),
(639, 107, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(640, 107, '_endereco', 'field_5ffca1745b8af'),
(641, 107, 'logo_footer', '75'),
(642, 107, '_logo_footer', 'field_5ffca65b5ae95'),
(643, 107, 'telefone', '+55 (87) 3312.4057'),
(644, 107, '_telefone', 'field_5ffca6845ae96'),
(645, 107, 'email', 'contato@babakery.com.br'),
(646, 107, '_email', 'field_5ffca6a85ae97'),
(647, 107, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(648, 107, '_copyright', 'field_5ffca6b45ae98'),
(649, 107, 'logo', '75'),
(650, 107, '_logo', 'field_5ffca870e33d2'),
(651, 107, 'menu_item_1', 'quem somos'),
(652, 107, '_menu_item_1', 'field_5ffcce753aa94'),
(653, 107, 'menu_link_1', '#quemsomos'),
(654, 107, '_menu_link_1', 'field_5ffccf963aa9d'),
(655, 107, 'menu_item_2', 'equipe'),
(656, 107, '_menu_item_2', 'field_5ffccea53aa95'),
(657, 107, 'menu_link_2', '#equipe'),
(658, 107, '_menu_link_2', 'field_5ffccfb63aa9e'),
(659, 107, 'menu_item_3', 'contato'),
(660, 107, '_menu_item_3', 'field_5ffccea73aa96'),
(661, 107, 'menu_link_3', '#contato'),
(662, 107, '_menu_link_3', 'field_5ffccfb73aa9f'),
(663, 107, 'social_icone_1', '103'),
(664, 107, '_social_icone_1', 'field_5ffcceaf3aa97'),
(665, 107, 'social_link_1', '#facebook'),
(666, 107, '_social_link_1', 'field_5ffcced23aa98'),
(667, 107, 'social_icone_2', '104'),
(668, 107, '_social_icone_2', 'field_5ffccf153aa99'),
(669, 107, 'social_link_2', '#instagram'),
(670, 107, '_social_link_2', 'field_5ffccf323aa9b'),
(671, 107, 'social_icone_3', '105'),
(672, 107, '_social_icone_3', 'field_5ffccf173aa9a'),
(673, 107, 'social_link_3', '#twitter'),
(674, 107, '_social_link_3', 'field_5ffccf353aa9c'),
(675, 10, 'botao_link', '#nossosprodutos'),
(676, 10, '_botao_link', 'field_5ffcd623b6172'),
(677, 109, 'lema', 'Sabor em Cada pedaço'),
(678, 109, '_lema', 'field_5ffc9bb2b60de'),
(679, 109, 'botao', 'nossos produtos'),
(680, 109, '_botao', 'field_5ffc9bc0b60df'),
(681, 109, 'imagem_de_fundo', '36'),
(682, 109, '_imagem_de_fundo', 'field_5ffc9d7ac3958'),
(683, 109, 'imagem', '43'),
(684, 109, '_imagem', 'field_5ffc9eb6f5edf'),
(685, 109, 'titulo', 'História da Ba Bakery'),
(686, 109, '_titulo', 'field_5ffc9ecdf5ee0'),
(687, 109, 'descricao', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.'),
(688, 109, '_descricao', 'field_5ffc9fa8bce67'),
(689, 109, 'titulo_produtos', 'Produtos'),
(690, 109, '_titulo_produtos', 'field_5ffca051dd139'),
(691, 109, 'mensagem_contato', 'Se interessou pelos nossos serviços? Manda uma mensagem pra gente. :)'),
(692, 109, '_mensagem_contato', 'field_5ffca1215b8ad'),
(693, 109, 'label_1', 'Nome'),
(694, 109, '_label_1', 'field_5ffca1f65b8b4'),
(695, 109, 'placeholder_1', 'Ex.: Renata Lopes'),
(696, 109, '_placeholder_1', 'field_5ffca1a85b8b0'),
(697, 109, 'label_2', 'Telefone'),
(698, 109, '_label_2', 'field_5ffca240af951'),
(699, 109, 'placeholder_2', '(xx) x xxxx.xxxx'),
(700, 109, '_placeholder_2', 'field_5ffca35b51d44'),
(701, 109, 'label_3', 'Email'),
(702, 109, '_label_3', 'field_5ffca242af952'),
(703, 109, 'placeholder_3', 'exemplo@exemplo.com.br'),
(704, 109, '_placeholder_3', 'field_5ffca35d51d45'),
(705, 109, 'label_4', 'Mensagem'),
(706, 109, '_label_4', 'field_5ffca245af953'),
(707, 109, 'placeholder_4', 'Digite aqui a sua mensagem'),
(708, 109, '_placeholder_4', 'field_5ffca36051d46'),
(709, 109, 'mensagem_local', 'Você também pode nos fazer uma visita.'),
(710, 109, '_mensagem_local', 'field_5ffca1655b8ae'),
(711, 109, 'imagem_local', '68'),
(712, 109, '_imagem_local', 'field_5ffca3c651d47'),
(713, 109, 'endereco', 'R. Hermílio Arantes, 1040 - Vila dos Coqueiros. Graças, Recife - PE.'),
(714, 109, '_endereco', 'field_5ffca1745b8af'),
(715, 109, 'logo_footer', '75'),
(716, 109, '_logo_footer', 'field_5ffca65b5ae95'),
(717, 109, 'telefone', '+55 (87) 3312.4057'),
(718, 109, '_telefone', 'field_5ffca6845ae96'),
(719, 109, 'email', 'contato@babakery.com.br'),
(720, 109, '_email', 'field_5ffca6a85ae97'),
(721, 109, 'copyright', 'Ba Bakery - Copyright 2020 © Todos os direitos reservados.'),
(722, 109, '_copyright', 'field_5ffca6b45ae98'),
(723, 109, 'logo', '75'),
(724, 109, '_logo', 'field_5ffca870e33d2'),
(725, 109, 'menu_item_1', 'quem somos'),
(726, 109, '_menu_item_1', 'field_5ffcce753aa94'),
(727, 109, 'menu_link_1', '#quemsomos'),
(728, 109, '_menu_link_1', 'field_5ffccf963aa9d'),
(729, 109, 'menu_item_2', 'equipe'),
(730, 109, '_menu_item_2', 'field_5ffccea53aa95'),
(731, 109, 'menu_link_2', '#equipe'),
(732, 109, '_menu_link_2', 'field_5ffccfb63aa9e'),
(733, 109, 'menu_item_3', 'contato'),
(734, 109, '_menu_item_3', 'field_5ffccea73aa96'),
(735, 109, 'menu_link_3', '#contato'),
(736, 109, '_menu_link_3', 'field_5ffccfb73aa9f'),
(737, 109, 'social_icone_1', '103'),
(738, 109, '_social_icone_1', 'field_5ffcceaf3aa97'),
(739, 109, 'social_link_1', '#facebook'),
(740, 109, '_social_link_1', 'field_5ffcced23aa98'),
(741, 109, 'social_icone_2', '104'),
(742, 109, '_social_icone_2', 'field_5ffccf153aa99'),
(743, 109, 'social_link_2', '#instagram'),
(744, 109, '_social_link_2', 'field_5ffccf323aa9b'),
(745, 109, 'social_icone_3', '105'),
(746, 109, '_social_icone_3', 'field_5ffccf173aa9a'),
(747, 109, 'social_link_3', '#twitter'),
(748, 109, '_social_link_3', 'field_5ffccf353aa9c'),
(749, 109, 'botao_link', '#nossosprodutos'),
(750, 109, '_botao_link', 'field_5ffcd623b6172');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-04 19:23:51', '2021-01-04 22:23:51', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-01-04 19:23:51', '2021-01-04 22:23:51', '', 0, 'http://localhost:8888/test-front-end/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-04 19:23:51', '2021-01-04 22:23:51', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost:8888/test-front-end/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-01-04 20:16:32', '2021-01-04 23:16:32', '', 0, 'http://localhost:8888/test-front-end/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-04 19:23:51', '2021-01-04 22:23:51', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost:8888/test-front-end.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2021-01-04 19:23:51', '2021-01-04 22:23:51', '', 0, 'http://localhost:8888/test-front-end/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-01-04 19:42:24', '2021-01-04 22:42:24', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-01-04 19:42:24', '2021-01-04 22:42:24', '', 0, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-01-04 19:42:26', '2021-01-04 22:42:26', '<!-- wp:paragraph -->\n<p>[products limit=\"3\" columns=\"3\" visibility=\"featured\"]</p>\n<!-- /wp:paragraph -->', 'Loja', '', 'publish', 'closed', 'closed', '', 'loja', '', '', '2021-01-06 11:08:54', '2021-01-06 14:08:54', '', 0, 'http://localhost:8888/test-front-end/loja/', 0, 'page', '', 0),
(7, 1, '2021-01-04 19:42:26', '2021-01-04 22:42:26', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Carrinho', '', 'publish', 'closed', 'closed', '', 'carrinho', '', '', '2021-01-04 19:42:26', '2021-01-04 22:42:26', '', 0, 'http://localhost:8888/test-front-end/carrinho/', 0, 'page', '', 0),
(8, 1, '2021-01-04 19:42:26', '2021-01-04 22:42:26', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2021-01-04 19:42:26', '2021-01-04 22:42:26', '', 0, 'http://localhost:8888/test-front-end/finalizar-compra/', 0, 'page', '', 0),
(9, 1, '2021-01-04 19:42:26', '2021-01-04 22:42:26', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Minha conta', '', 'publish', 'closed', 'closed', '', 'minha-conta', '', '', '2021-01-04 19:42:26', '2021-01-04 22:42:26', '', 0, 'http://localhost:8888/test-front-end/minha-conta/', 0, 'page', '', 0),
(10, 1, '2021-01-04 20:16:11', '2021-01-04 23:16:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-01-11 19:51:08', '2021-01-11 22:51:08', '', 0, 'http://localhost:8888/test-front-end/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-01-04 20:16:11', '2021-01-04 23:16:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-04 20:16:11', '2021-01-04 23:16:11', '', 10, 'http://localhost:8888/test-front-end/2021/01/04/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2021-01-04 20:16:32', '2021-01-04 23:16:32', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost:8888/test-front-end/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-04 20:16:32', '2021-01-04 23:16:32', '', 2, 'http://localhost:8888/test-front-end/2021/01/04/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2021-01-06 10:14:27', '2021-01-06 13:14:27', 'Lorem ipsum dolor sit amet, consectetur adip elit, sed do tempor incididun ut labore et dolore magna aliqua. Ut enim ad mi , quis nostrud veniam exercitation.', 'Macarons Diversos 90g', '', 'publish', 'open', 'closed', '', 'macarons-diversos-90g', '', '', '2021-01-06 10:17:20', '2021-01-06 13:17:20', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2021-01-06 10:13:14', '2021-01-06 13:13:14', '', 'serghei-savchiuc-Qaruw62_kmM-unsplash', '', 'inherit', 'open', 'closed', '', 'serghei-savchiuc-qaruw62_kmm-unsplash', '', '', '2021-01-06 10:13:14', '2021-01-06 13:13:14', '', 13, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/serghei-savchiuc-Qaruw62_kmM-unsplash.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2021-01-06 10:16:48', '2021-01-06 13:16:48', 'Sed ac leo nec leo consectetur mollis nec eget ligula. Aliquam ac tempus velit. Nunc vitae magna dui. Ut vehicula mi urna, ut dignissim justo condimentum nec.', 'Tortillete de Laranja Lima com Amoras', '', 'publish', 'open', 'closed', '', 'tortillete-de-laranja-lima-com-amoras', '', '', '2021-01-06 10:16:49', '2021-01-06 13:16:49', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2021-01-06 10:16:25', '2021-01-06 13:16:25', '', 'kim-daniels-OrkEasJeY74-unsplash', '', 'inherit', 'open', 'closed', '', 'kim-daniels-orkeasjey74-unsplash', '', '', '2021-01-06 10:16:25', '2021-01-06 13:16:25', '', 15, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/kim-daniels-OrkEasJeY74-unsplash.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-01-06 11:08:37', '2021-01-06 14:08:37', '<!-- wp:paragraph -->\n<p>[</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">products limit=\"4\" columns=\"2\" visibility=\"featured\"</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Loja', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2021-01-06 11:08:37', '2021-01-06 14:08:37', '', 6, 'http://localhost:8888/test-front-end/2021/01/06/6-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2021-01-06 11:05:44', '2021-01-06 14:05:44', '<!-- wp:paragraph -->\n<p>[products]</p>\n<!-- /wp:paragraph -->', 'Loja', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-06 11:05:44', '2021-01-06 14:05:44', '', 6, 'http://localhost:8888/test-front-end/2021/01/06/6-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2021-01-06 11:08:54', '2021-01-06 14:08:54', '<!-- wp:paragraph -->\n<p>[products limit=\"3\" columns=\"3\" visibility=\"featured\"]</p>\n<!-- /wp:paragraph -->', 'Loja', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-01-06 11:08:54', '2021-01-06 14:08:54', '', 6, 'http://localhost:8888/test-front-end/2021/01/06/6-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2021-01-06 11:42:44', '2021-01-06 14:42:44', 'Sed maximus dui sit amet est varius, at rhoncus dui pretium. Nullam auctor lobortis lorem non accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Fatia de Torta Gelada de Café com Chocolate Amargo', '', 'publish', 'open', 'closed', '', 'fatia-de-torta-gelada-de-cafe-com-chocolate-amargo', '', '', '2021-01-06 11:42:44', '2021-01-06 14:42:44', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2021-01-06 11:42:35', '2021-01-06 14:42:35', '', 'anthony-espinosa-6iqpLKqeaE0-unsplash', '', 'inherit', 'open', 'closed', '', 'anthony-espinosa-6iqplkqeae0-unsplash', '', '', '2021-01-06 11:42:35', '2021-01-06 14:42:35', '', 20, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/anthony-espinosa-6iqpLKqeaE0-unsplash.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2021-01-06 13:49:36', '2021-01-06 16:49:36', 'Praesent laoreet posuere magna nec rhoncus. Phasellus rhoncus metus vitae interdum interdum. Suspendisse leo nibh, imperdiet eu commodo sed, ultrices id nisi.', 'Cupcake de Morango Glaceado', '', 'publish', 'open', 'closed', '', 'cupcake-de-morango-glaceado', '', '', '2021-01-06 13:49:36', '2021-01-06 16:49:36', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2021-01-06 13:49:19', '2021-01-06 16:49:19', '', 'deva-williamson-S2jw81lfrG0-unsplash', '', 'inherit', 'open', 'closed', '', 'deva-williamson-s2jw81lfrg0-unsplash', '', '', '2021-01-06 13:49:19', '2021-01-06 16:49:19', '', 22, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/deva-williamson-S2jw81lfrG0-unsplash.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-01-06 13:49:20', '2021-01-06 16:49:20', '', 'dilyara-garifullina-I48gnI1Qs5o-unsplash', '', 'inherit', 'open', 'closed', '', 'dilyara-garifullina-i48gni1qs5o-unsplash', '', '', '2021-01-06 13:49:20', '2021-01-06 16:49:20', '', 22, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-01-06 13:49:22', '2021-01-06 16:49:22', '', 'elena-koycheva-PFzy4N0_R3M-unsplash', '', 'inherit', 'open', 'closed', '', 'elena-koycheva-pfzy4n0_r3m-unsplash', '', '', '2021-01-06 13:49:22', '2021-01-06 16:49:22', '', 22, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/elena-koycheva-PFzy4N0_R3M-unsplash.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-01-06 15:13:33', '2021-01-06 18:13:33', 'Nulla elit quam, tempor a dolor ut, mattis imperdiet nisl. In hac habitasse platea dictumst. Integer mattis risus sit amet venenatis elementum.', 'Rosquinhas de Morango com Coco', '', 'publish', 'open', 'closed', '', 'rosquinhas-de-morango-com-coco', '', '', '2021-01-11 16:59:08', '2021-01-11 19:59:08', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2021-01-06 15:18:21', '2021-01-06 18:18:21', 'Pellentesque in consectetur metus, feugiat accumsan diam. Etiam sollicitudin auctor sodales. Nunc eu risus finibus, bibendum augue eget, lobortis mauris.', 'Fatia de Torta Gelada de Frutas Vermelhas', '', 'publish', 'open', 'closed', '', 'fatia-de-torta-gelada-de-frutas-vermelhas', '', '', '2021-01-11 16:58:32', '2021-01-11 19:58:32', '', 0, 'http://localhost:8888/test-front-end/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2021-01-11 15:42:29', '2021-01-11 18:42:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '2 - Banner', '2-banner', 'publish', 'closed', 'closed', '', 'group_5ffc9b996e987', '', '', '2021-01-11 19:50:37', '2021-01-11 22:50:37', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2021-01-11 15:42:29', '2021-01-11 18:42:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'lema', 'lema', 'publish', 'closed', 'closed', '', 'field_5ffc9bb2b60de', '', '', '2021-01-11 15:42:29', '2021-01-11 18:42:29', '', 28, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2021-01-11 15:42:29', '2021-01-11 18:42:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'botão', 'botao', 'publish', 'closed', 'closed', '', 'field_5ffc9bc0b60df', '', '', '2021-01-11 15:42:29', '2021-01-11 18:42:29', '', 28, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2021-01-11 15:43:33', '2021-01-11 18:43:33', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:43:33', '2021-01-11 18:43:33', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2021-01-11 15:45:32', '2021-01-11 18:45:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:45:32', '2021-01-11 18:45:32', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2021-01-11 15:45:53', '2021-01-11 18:45:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:45:53', '2021-01-11 18:45:53', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2021-01-11 15:46:14', '2021-01-11 18:46:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:46:14', '2021-01-11 18:46:14', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2021-01-11 15:48:53', '2021-01-11 18:48:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem de fundo', 'imagem_de_fundo', 'publish', 'closed', 'closed', '', 'field_5ffc9d7ac3958', '', '', '2021-01-11 19:50:37', '2021-01-11 22:50:37', '', 28, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=35', 3, 'acf-field', '', 0),
(36, 1, '2021-01-11 15:50:41', '2021-01-11 18:50:41', '', 'Imagem 1', '', 'inherit', 'open', 'closed', '', 'imagem-1', '', '', '2021-01-11 15:50:41', '2021-01-11 18:50:41', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/Imagem-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2021-01-11 15:53:07', '2021-01-11 18:53:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:53:07', '2021-01-11 18:53:07', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2021-01-11 15:54:52', '2021-01-11 18:54:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '3 - História', '3-historia', 'publish', 'closed', 'closed', '', 'group_5ffc9eaee505d', '', '', '2021-01-11 16:36:01', '2021-01-11 19:36:01', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2021-01-11 15:54:53', '2021-01-11 18:54:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5ffc9eb6f5edf', '', '', '2021-01-11 15:54:53', '2021-01-11 18:54:53', '', 38, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2021-01-11 15:54:53', '2021-01-11 18:54:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5ffc9ecdf5ee0', '', '', '2021-01-11 15:54:53', '2021-01-11 18:54:53', '', 38, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(42, 1, '2021-01-11 15:58:05', '2021-01-11 18:58:05', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:10;s:9:\"new_lines\";s:0:\"\";}', 'descrição', 'descricao', 'publish', 'closed', 'closed', '', 'field_5ffc9fa8bce67', '', '', '2021-01-11 15:58:05', '2021-01-11 18:58:05', '', 38, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=42', 2, 'acf-field', '', 0),
(43, 1, '2021-01-11 15:58:38', '2021-01-11 18:58:38', '', 'Grupo de máscara 1', '', 'inherit', 'open', 'closed', '', 'grupo-de-mascara-1', '', '', '2021-01-11 15:58:38', '2021-01-11 18:58:38', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/Grupo-de-máscara-1.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2021-01-11 15:59:22', '2021-01-11 18:59:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 15:59:22', '2021-01-11 18:59:22', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2021-01-11 16:00:55', '2021-01-11 19:00:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '4 - Produtos', '4-produtos', 'publish', 'closed', 'closed', '', 'group_5ffca04cda9de', '', '', '2021-01-11 16:36:14', '2021-01-11 19:36:14', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2021-01-11 16:00:55', '2021-01-11 19:00:55', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titulo produtos', 'titulo_produtos', 'publish', 'closed', 'closed', '', 'field_5ffca051dd139', '', '', '2021-01-11 16:00:55', '2021-01-11 19:00:55', '', 45, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2021-01-11 16:02:52', '2021-01-11 19:02:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 16:02:52', '2021-01-11 19:02:52', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2021-01-11 16:03:15', '2021-01-11 19:03:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 16:03:15', '2021-01-11 19:03:15', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '5 - Contato', '5-contato', 'publish', 'closed', 'closed', '', 'group_5ffca115b70db', '', '', '2021-01-11 16:36:28', '2021-01-11 19:36:28', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mensagem contato', 'mensagem_contato', 'publish', 'closed', 'closed', '', 'field_5ffca1215b8ad', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'placeholder 1', 'placeholder_1', 'publish', 'closed', 'closed', '', 'field_5ffca1a85b8b0', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=51', 2, 'acf-field', '', 0),
(55, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mensagem local', 'mensagem_local', 'publish', 'closed', 'closed', '', 'field_5ffca1655b8ae', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=55', 9, 'acf-field', '', 0),
(56, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5ffca1745b8af', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=56', 11, 'acf-field', '', 0),
(57, 1, '2021-01-11 16:07:41', '2021-01-11 19:07:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'label 1', 'label_1', 'publish', 'closed', 'closed', '', 'field_5ffca1f65b8b4', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(58, 1, '2021-01-11 16:10:49', '2021-01-11 19:10:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'label 2', 'label_2', 'publish', 'closed', 'closed', '', 'field_5ffca240af951', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=58', 3, 'acf-field', '', 0),
(59, 1, '2021-01-11 16:10:49', '2021-01-11 19:10:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'label 3', 'label_3', 'publish', 'closed', 'closed', '', 'field_5ffca242af952', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=59', 5, 'acf-field', '', 0),
(60, 1, '2021-01-11 16:10:49', '2021-01-11 19:10:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'label 4', 'label_4', 'publish', 'closed', 'closed', '', 'field_5ffca245af953', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=60', 7, 'acf-field', '', 0),
(64, 1, '2021-01-11 16:20:12', '2021-01-11 19:20:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'placeholder 2', 'placeholder_2', 'publish', 'closed', 'closed', '', 'field_5ffca35b51d44', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=64', 4, 'acf-field', '', 0),
(65, 1, '2021-01-11 16:20:12', '2021-01-11 19:20:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'placeholder 3', 'placeholder_3', 'publish', 'closed', 'closed', '', 'field_5ffca35d51d45', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=65', 6, 'acf-field', '', 0),
(66, 1, '2021-01-11 16:20:12', '2021-01-11 19:20:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'placeholder 4', 'placeholder_4', 'publish', 'closed', 'closed', '', 'field_5ffca36051d46', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=66', 8, 'acf-field', '', 0),
(67, 1, '2021-01-11 16:20:12', '2021-01-11 19:20:12', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem local', 'imagem_local', 'publish', 'closed', 'closed', '', 'field_5ffca3c651d47', '', '', '2021-01-11 16:20:12', '2021-01-11 19:20:12', '', 49, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=67', 10, 'acf-field', '', 0),
(68, 1, '2021-01-11 16:23:11', '2021-01-11 19:23:11', '', 'Grupo de máscara 2', '', 'inherit', 'open', 'closed', '', 'grupo-de-mascara-2', '', '', '2021-01-11 16:23:11', '2021-01-11 19:23:11', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/Grupo-de-máscara-2.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2021-01-11 16:23:35', '2021-01-11 19:23:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 16:23:35', '2021-01-11 19:23:35', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2021-01-11 16:28:03', '2021-01-11 19:28:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '6 - Footer', '6-footer', 'publish', 'closed', 'closed', '', 'group_5ffca6574f897', '', '', '2021-01-11 16:40:05', '2021-01-11 19:40:05', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(72, 1, '2021-01-11 16:28:03', '2021-01-11 19:28:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_5ffca6845ae96', '', '', '2021-01-11 16:40:05', '2021-01-11 19:40:05', '', 70, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2021-01-11 16:28:03', '2021-01-11 19:28:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'email', 'email', 'publish', 'closed', 'closed', '', 'field_5ffca6a85ae97', '', '', '2021-01-11 16:40:05', '2021-01-11 19:40:05', '', 70, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0),
(74, 1, '2021-01-11 16:28:03', '2021-01-11 19:28:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_5ffca6b45ae98', '', '', '2021-01-11 16:40:05', '2021-01-11 19:40:05', '', 70, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=74', 2, 'acf-field', '', 0),
(75, 1, '2021-01-11 16:30:50', '2021-01-11 19:30:50', '', 'Grupo 232', '', 'inherit', 'open', 'closed', '', 'grupo-232', '', '', '2021-01-11 16:30:50', '2021-01-11 19:30:50', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/Grupo-232.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2021-01-11 16:31:46', '2021-01-11 19:31:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 16:31:46', '2021-01-11 19:31:46', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2021-01-11 16:35:27', '2021-01-11 19:35:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '1 - Header', '1-header', 'publish', 'closed', 'closed', '', 'group_5ffca86262cf5', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 0, 'http://localhost:8888/test-front-end/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2021-01-11 16:35:27', '2021-01-11 19:35:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5ffca870e33d2', '', '', '2021-01-11 16:35:27', '2021-01-11 19:35:27', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2021-01-11 16:39:38', '2021-01-11 19:39:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 16:39:38', '2021-01-11 19:39:38', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2021-01-11 16:57:53', '2021-01-11 19:57:53', '', 'dilyara-garifullina-I48gnI1Qs5o-unsplash - cópia 2', '', 'inherit', 'open', 'closed', '', 'dilyara-garifullina-i48gni1qs5o-unsplash-copia-2', '', '', '2021-01-11 16:57:53', '2021-01-11 19:57:53', '', 27, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia-2.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2021-01-11 16:57:55', '2021-01-11 19:57:55', '', 'dilyara-garifullina-I48gnI1Qs5o-unsplash - cópia', '', 'inherit', 'open', 'closed', '', 'dilyara-garifullina-i48gni1qs5o-unsplash-copia', '', '', '2021-01-11 16:57:55', '2021-01-11 19:57:55', '', 27, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/dilyara-garifullina-I48gnI1Qs5o-unsplash-cópia.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2021-01-11 16:59:00', '2021-01-11 19:59:00', '', 'elena-koycheva-PFzy4N0_R3M-unsplash - cópia 2', '', 'inherit', 'open', 'closed', '', 'elena-koycheva-pfzy4n0_r3m-unsplash-copia-2', '', '', '2021-01-11 16:59:00', '2021-01-11 19:59:00', '', 26, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia-2.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2021-01-11 16:59:02', '2021-01-11 19:59:02', '', 'elena-koycheva-PFzy4N0_R3M-unsplash - cópia', '', 'inherit', 'open', 'closed', '', 'elena-koycheva-pfzy4n0_r3m-unsplash-copia', '', '', '2021-01-11 16:59:02', '2021-01-11 19:59:02', '', 26, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/elena-koycheva-PFzy4N0_R3M-unsplash-cópia.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu item 1', 'menu_item_1', 'publish', 'closed', 'closed', '', 'field_5ffcce753aa94', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=90', 1, 'acf-field', '', 0),
(91, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu link 1', 'menu_link_1', 'publish', 'closed', 'closed', '', 'field_5ffccf963aa9d', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=91', 2, 'acf-field', '', 0),
(92, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu item 2', 'menu_item_2', 'publish', 'closed', 'closed', '', 'field_5ffccea53aa95', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=92', 3, 'acf-field', '', 0),
(93, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu link 2', 'menu_link_2', 'publish', 'closed', 'closed', '', 'field_5ffccfb63aa9e', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=93', 4, 'acf-field', '', 0),
(94, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu item 3', 'menu_item_3', 'publish', 'closed', 'closed', '', 'field_5ffccea73aa96', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=94', 5, 'acf-field', '', 0),
(95, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu link 3', 'menu_link_3', 'publish', 'closed', 'closed', '', 'field_5ffccfb73aa9f', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=95', 6, 'acf-field', '', 0),
(96, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'social icone 1', 'social_icone_1', 'publish', 'closed', 'closed', '', 'field_5ffcceaf3aa97', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=96', 7, 'acf-field', '', 0),
(97, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'social link 1', 'social_link_1', 'publish', 'closed', 'closed', '', 'field_5ffcced23aa98', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=97', 8, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'social icone 2', 'social_icone_2', 'publish', 'closed', 'closed', '', 'field_5ffccf153aa99', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=98', 9, 'acf-field', '', 0),
(99, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'social link 2', 'social_link_2', 'publish', 'closed', 'closed', '', 'field_5ffccf323aa9b', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=99', 10, 'acf-field', '', 0),
(100, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'social icone 3', 'social_icone_3', 'publish', 'closed', 'closed', '', 'field_5ffccf173aa9a', '', '', '2021-01-11 19:23:09', '2021-01-11 22:23:09', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=100', 11, 'acf-field', '', 0),
(101, 1, '2021-01-11 19:23:09', '2021-01-11 22:23:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'social link 3', 'social_link_3', 'publish', 'closed', 'closed', '', 'field_5ffccf353aa9c', '', '', '2021-01-11 19:28:01', '2021-01-11 22:28:01', '', 77, 'http://localhost:8888/test-front-end/?post_type=acf-field&#038;p=101', 12, 'acf-field', '', 0),
(102, 1, '2021-01-11 19:28:43', '2021-01-11 22:28:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 19:28:43', '2021-01-11 22:28:43', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2021-01-11 19:32:02', '2021-01-11 22:32:02', '', 'XMLID_834_', '', 'inherit', 'open', 'closed', '', 'xmlid_834_', '', '', '2021-01-11 19:32:02', '2021-01-11 22:32:02', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/XMLID_834_.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2021-01-11 19:32:21', '2021-01-11 22:32:21', '', 'instagram-logo', '', 'inherit', 'open', 'closed', '', 'instagram-logo', '', '', '2021-01-11 19:32:21', '2021-01-11 22:32:21', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/instagram-logo.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2021-01-11 19:32:37', '2021-01-11 22:32:37', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2021-01-11 19:32:37', '2021-01-11 22:32:37', '', 10, 'http://localhost:8888/test-front-end/wp-content/uploads/2021/01/twitter.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2021-01-11 19:33:00', '2021-01-11 22:33:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 19:33:00', '2021-01-11 22:33:00', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2021-01-11 19:33:35', '2021-01-11 22:33:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 19:33:35', '2021-01-11 22:33:35', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2021-01-11 19:50:37', '2021-01-11 22:50:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'botão link', 'botao_link', 'publish', 'closed', 'closed', '', 'field_5ffcd623b6172', '', '', '2021-01-11 19:50:37', '2021-01-11 22:50:37', '', 28, 'http://localhost:8888/test-front-end/?post_type=acf-field&p=108', 2, 'acf-field', '', 0),
(109, 1, '2021-01-11 19:51:08', '2021-01-11 22:51:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-01-11 19:51:08', '2021-01-11 22:51:08', '', 10, 'http://localhost:8888/test-front-end/2021/01/11/10-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(13, 15, 0),
(15, 2, 0),
(15, 15, 0),
(20, 2, 0),
(20, 15, 0),
(22, 2, 0),
(22, 15, 0),
(26, 2, 0),
(26, 15, 0),
(27, 2, 0),
(27, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3182e1b063127dd5d0ea0d318e2e7102cbd9fe740471be328730f80c45f1bd12\";a:4:{s:10:\"expiration\";i:1610472616;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_1_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610299816;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:+cA+m4CXVjxhTuxhgVyXGkry'),
(19, 1, 'last_update', '1610405845'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1609943402406'),
(21, 1, 'wc_last_active', '1610409600'),
(22, 1, '_order_count', '0'),
(25, 1, 'dismissed_no_secure_connection_notice', '1'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(27, 1, 'wp_user-settings-time', '1610147650'),
(29, 1, 'billing_first_name', ''),
(30, 1, 'billing_last_name', ''),
(31, 1, 'billing_company', ''),
(32, 1, 'billing_address_1', ''),
(33, 1, 'billing_address_2', ''),
(34, 1, 'billing_city', ''),
(35, 1, 'billing_postcode', ''),
(36, 1, 'billing_country', ''),
(37, 1, 'billing_state', ''),
(38, 1, 'billing_phone', ''),
(39, 1, 'billing_email', 'abll@cin.ufpe.br'),
(40, 1, 'shipping_first_name', ''),
(41, 1, 'shipping_last_name', ''),
(42, 1, 'shipping_company', ''),
(43, 1, 'shipping_address_1', ''),
(44, 1, 'shipping_address_2', ''),
(45, 1, 'shipping_city', ''),
(46, 1, 'shipping_postcode', ''),
(47, 1, 'shipping_country', ''),
(48, 1, 'shipping_state', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BT88cB0O/C/JF0QD.57cxTIIf56YA81', 'admin', 'abll@cin.ufpe.br', 'http://localhost:8888/test-front-end', '2021-01-04 22:23:51', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Dicas, atualizações de produtos e inspiração', 'Estamos aqui para você, receba dicas, atualizações de produtos e inspiração diretamente na sua caixa de e-mail', '{}', 'unactioned', 'woocommerce-admin', '2021-01-04 22:42:28', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Conecte-se com seu público', 'Aumente sua base de clientes e aumente suas vendas com as ferramentas de marketing criadas para o WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-04 22:42:28', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Conectar ao WooCommerce.com', 'Conecte-se para receber notificações e atualizações importantes do produto.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-04 22:42:28', NULL, 0, 'plain', '', 0, 'info'),
(4, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(5, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(7, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'Get 50% off transaction fees with WooCommerce Payments', 'Keep more of your hard-earned cash by adding <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> to your store. Lock in a discounted rate of 1.5% + $0.15 for $25,000 of payments (or three months, whichever comes first). Limited time offer – don’t miss out! <br /><br /><em>By clicking \"Install now,\" you agree to our promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wcpay-subscriptions-2020-12', 'marketing', 'en_US', 'Manage payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>! Zero setup fees or monthly fees. Just pay-as-you-go, starting at just 2.9% + $0.30 per transaction for U.S.-issued cards. <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2021-01-07 19:42:29', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-draw-attention', 'info', 'en_US', 'Como chamar a atenção para sua loja online', 'Para começar, aqui estão sete maneiras de aumentar suas vendas e evitar se afogar em produtos similares produzidos em massa que competem pelos mesmos compradores.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-04 22:50:59', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-mobile-app', 'info', 'en_US', 'Instale o aplicativo Woo', 'Instale o aplicativo do WooCommerce para gerenciar pedidos, receber notificações de vendas e visualizar as principais métricas, onde quer que você esteja.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-06 22:43:40', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Comece a aceitar pagamentos em sua loja!', 'Faça pagamentos com o provedor certo para você, escolha entre mais de 100 gateways de pagamento para o WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-09 22:42:40', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-need-some-inspiration', 'info', 'en_US', 'Você precisa de alguma inspiração?', 'Confira algumas de nossas histórias favoritas de clientes de empreendedores, agências e desenvolvedores em nossa comunidade global.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-09 22:42:40', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Ajude o WooCommerce a melhorar ativando o rastreamento de uso.', 'A coleta de dados de uso nos permite melhorar o WooCommerce. Sua loja será considerada à medida que avaliarmos novos recursos, julgarmos a qualidade de uma atualização ou determinarmos se uma melhoria faz sentido. Você sempre pode visitar as <a href=\"http://localhost:8888/test-front-end/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Configurações</a> e optar por parar de compartilhar dados. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Saiba mais</a> sobre quais dados coletamos.', '{}', 'unactioned', 'woocommerce-admin', '2021-01-11 22:43:38', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Sim, por favor!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Abrir hub de marketing', 'http://localhost:8888/test-front-end/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(3, 3, 'connect', 'Conectar', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(18, 11, 'learn-more', 'Aprenda mais', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
(82, 12, 'learn-more', 'Aprenda mais', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(118, 13, 'view-payment-gateways', 'Aprenda mais', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(119, 14, 'need-some-inspiration', 'Veja histórias de sucesso', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 1, ''),
(169, 15, 'tracking-opt-in', 'Ativar rastreamento de uso', '', 'actioned', 1, ''),
(170, 4, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(171, 5, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(172, 6, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(173, 7, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(174, 8, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(175, 9, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(176, 10, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(13, '', 0, 0, '9.0000', '9.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(15, '', 0, 0, '12.0000', '12.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(20, '', 0, 0, '14.0000', '14.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, '', 0, 0, '11.0000', '11.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(26, '', 0, 0, '6.0000', '6.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(27, '', 0, 0, '14.0000', '14.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taxa reduzida', 'taxa-reduzida'),
(2, 'Taxa zero', 'taxa-zero');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:734:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-01-11T19:57:25-03:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"PE\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"PE\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"abll@cin.ufpe.br\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610578652);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2002;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
