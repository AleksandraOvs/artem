-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2023 г., 18:46
-- Версия сервера: 5.7.39
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aks_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-19 19:21:55', '2022-04-19 16:21:55', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://artem-karyer.ru/', 'yes'),
(2, 'home', 'https://artem-karyer.ru/', 'yes'),
(3, 'blogname', 'ООО&nbsp;&quot;Артем Карьер Строй&quot;', 'yes'),
(4, 'blogdescription', 'Добыча и реализация инертных материалов на территории Дальневосточного Федерального округа', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aleksandra.ovsia@gmail.com', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:21:\"safe-svg/safe-svg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'frontend-theme', 'yes'),
(41, 'stylesheet', 'frontend-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(79, 'uninstall_plugins', 'a:1:{s:41:\"cmp-coming-soon-maintenance/niteo-cmp.php\";s:17:\"cmp_plugin_delete\";}', 'no'),
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
(91, 'admin_email_lifespan', '1665937315', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1660890264;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660911863;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660911864;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660912025;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660912027;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1661257463;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:1:{s:22:\"KMoUZj9b74GxIz4oD9hN70\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B6dBt2IMfHuVkIhE7MxX51fHt7lJsd1\";s:10:\"created_at\";i:1660811725;}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(124, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1660241077;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(139, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"aleksandra.ovsia@gmail.com\";s:7:\"version\";s:5:\"6.0.1\";s:9:\"timestamp\";i:1659355046;}', 'no'),
(164, 'current_theme', 'frontend-theme', 'yes'),
(165, 'theme_mods_frontend-theme', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"head_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:18;s:11:\"header_logo\";i:28;s:11:\"footer_logo\";i:54;}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(171, 'finished_updating_comment_type', '1', 'yes'),
(178, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'recently_activated', 'a:0:{}', 'yes'),
(220, 'user_count', '1', 'no'),
(221, 'db_upgraded', '', 'yes'),
(222, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1660886819;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(227, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(286, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1660886821;s:7:\"checked\";a:4:{s:14:\"frontend-theme\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(301, 'can_compress_scripts', '1', 'no'),
(320, 'niteoCS_version', '4.1.1', 'yes'),
(321, 'niteoCS_translation', '[{\"id\":0,\"name\":\"Counter Seconds Label\",\"string\":\"Seconds\",\"translation\":\"Seconds\"},{\"id\":1,\"name\":\"Counter Minutes Label\",\"string\":\"Minutes\",\"translation\":\"Minutes\"},{\"id\":2,\"name\":\"Counter Hours Label\",\"string\":\"Hours\",\"translation\":\"Hours\"},{\"id\":3,\"name\":\"Counter Days Label\",\"string\":\"Days\",\"translation\":\"Days\"},{\"id\":4,\"name\":\"Subscribe Form Placeholder\",\"string\":\"Insert your email address.\",\"translation\":\"Insert your email address.\"},{\"id\":5,\"name\":\"Subscribe Response Duplicate\",\"string\":\"Oops! This email address is already on our list.\",\"translation\":\"Oops! This email address is already on our list.\"},{\"id\":6,\"name\":\"Subscribe Response Not Valid\",\"string\":\"Oops! We need a valid email address. Please try again.\",\"translation\":\"Oops! We need a valid email address. Please try again.\"},{\"id\":7,\"name\":\"Subscribe Response Thanks\",\"string\":\"Thank you! Your sign up request was successful.\",\"translation\":\"Thank you! Your sign up request was successful.\"},{\"id\":8,\"name\":\"Subscribe Submit Button Label\",\"string\":\"Submit\",\"translation\":\"Submit\"},{\"id\":9,\"name\":\"CMP Eclipse Theme: Scroll Text\",\"string\":\"Scroll\",\"translation\":\"Scroll\"},{\"id\":10,\"name\":\"Subscribe Form First Name Placeholder\",\"string\":\"First Name\",\"translation\":\"First Name\"},{\"id\":11,\"name\":\"Subscribe Form Last Name Placeholder\",\"string\":\"Last Name\",\"translation\":\"Last Name\"},{\"id\":12,\"name\":\"Subscribe\",\"string\":\"Subscribe\",\"translation\":\"Subscribe\"},{\"id\":13,\"name\":\"Subscribe GDPR Checkbox\",\"string\":\"You must agree with our Terms and Conditions.\",\"translation\":\"You must agree with our Terms and Conditions.\"},{\"id\":14,\"name\":\"Subscribe Missing Email\",\"string\":\"Oops! Email is empty.\",\"translation\":\"Oops! Email is empty.\"}]', 'yes'),
(322, 'niteoCS_slider', '0', 'yes'),
(325, 'nonce_key', '/kSGpt4trfG~N!Pjyj3z,N,H:QVU<;YswO|(fa*kbWd8_T]:D,AN#A9*ew)%tLQ=', 'no'),
(326, 'nonce_salt', 'KLm05nUG%[X%T-*lu>SDPB+R+W`JvI,ypzH>i]j<uiY-m_dHB-9#8Xz-@S>pubqj', 'no'),
(334, 'auth_key', '#;P9aN*C,w.!d3H ZDF(ZRwl`wUMasuQtd8mzAHUS%U)VLm]+A7aBDbChT5h.7aG', 'no'),
(335, 'auth_salt', '~E0ex!-[nG}(NPc_=deryzIx|]Fn$%6w_m}EwqHz4BOIaqFYgKpL}]!a&c{L3N.G', 'no'),
(336, 'logged_in_key', ':`;Bl16b3OF]QXbs8HxYJvMG4<%eK%`G.IPMGwS/=MPbecSzyiE1cEmP#GZ$L=pd', 'no'),
(337, 'logged_in_salt', 'c:w3;zE!WamNTD]p;KLEsabhe?mlLnGNoi#{7p!H@Ng=R=otgqySso=^xCdn4)po', 'no'),
(356, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1660841699', 'no'),
(357, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(367, '_site_transient_timeout_browser_b20f96e5878b0a47ff8626c8f757e35b', '1660845590', 'no'),
(368, '_site_transient_browser_b20f96e5878b0a47ff8626c8f757e35b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(400, 'site_logo', '18', 'yes'),
(425, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(434, 'recovery_mode_email_last_sent', '1660811725', 'yes'),
(469, '_header_contacts_menu|||0|value', '_', 'no'),
(470, '_header_contacts_menu|header_contacts_menu_link|0|0|value', '', 'no'),
(471, '_header_contacts_menu|header_contacts_menu_img|0|0|value', '26', 'no'),
(472, '_header_contacts_text', 'Это тестовый текст', 'no'),
(491, '_my_text', 'Тестовый текст', 'no'),
(492, '_my_textarea', 'Текстовое поле', 'no'),
(711, '_contacts_list|||0|value', '_', 'no'),
(712, '_contacts_list|contact_link|0|0|value', 'https://ya.ru', 'no'),
(713, '_contacts_list|contact_image|0|0|value', '26', 'no'),
(763, '_contact_link', 'https://ya.ru', 'no'),
(764, '_contact_image', '26', 'no'),
(906, '_site_transient_timeout_browser_c78fe638eae170bc523bb570263fe904', '1661025679', 'no'),
(907, '_site_transient_browser_c78fe638eae170bc523bb570263fe904', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(926, '_my_text2', '', 'no'),
(927, '_my_textarea2', '', 'no'),
(1315, '_my_text3', '', 'no'),
(1316, '_my_textarea3', '', 'no'),
(2879, '_contacts|||0|value', '_', 'no'),
(2880, '_contacts|||1|value', '_', 'no'),
(2881, '_contacts|||2|value', '_', 'no'),
(2882, '_contacts|contact_link|0|0|value', 'tel:+79502913743', 'no'),
(2883, '_contacts|contact_image|0|0|value', '52', 'no'),
(2884, '_contacts|contact_link|1|0|value', 'mailto:aks.sur@mail.ru', 'no'),
(2885, '_contacts|contact_image|1|0|value', '50', 'no'),
(2886, '_contacts|contact_link|2|0|value', 'https://yandex.ru/maps/?ll=43.389509,132.308465&z=12', 'no'),
(2887, '_contacts|contact_image|2|0|value', '51', 'no'),
(2888, '_slider|||0|value', '_', 'no'),
(2889, '_slider|||1|value', '_', 'no'),
(2890, '_slider|||2|value', '_', 'no'),
(2891, '_slider|hero_slide|0|0|value', '34', 'no'),
(2892, '_slider|hero_heading|0|0|value', 'Добыча и реализация инертных материалов', 'no'),
(2893, '_slider|hero_paragraph|0|0|value', 'широкий ассортимент материалов для строительства', 'no'),
(2894, '_slider|resp_hero_slide|0|0|value', '49', 'no'),
(2895, '_slider|hero_button_text|0|0|value', 'Скачать прайc-лист', 'no'),
(2896, '_slider|hero_button_link|0|0|value', 'https://ya.ru', 'no'),
(2897, '_slider|hero_slide|1|0|value', '39', 'no'),
(2898, '_slider|hero_heading|1|0|value', 'Гарантия высокого качества материалов', 'no'),
(2899, '_slider|hero_paragraph|1|0|value', 'подтверждается наличием сертификатов соответствия, протоколов испытаний и др. ', 'no'),
(2900, '_slider|resp_hero_slide|1|0|value', '48', 'no'),
(2901, '_slider|hero_button_text|1|0|value', 'Смотреть документы', 'no'),
(2902, '_slider|hero_button_link|1|0|value', '#', 'no'),
(2903, '_slider|hero_slide|2|0|value', '36', 'no'),
(2904, '_slider|hero_heading|2|0|value', 'Доставка материалов для&nbsp;строительства', 'no'),
(2905, '_slider|hero_paragraph|2|0|value', 'осуществляется по предварительному звонку', 'no'),
(2906, '_slider|resp_hero_slide|2|0|value', '47', 'no'),
(2907, '_slider|hero_button_text|2|0|value', 'Оставить заявку', 'no'),
(2908, '_slider|hero_button_link|2|0|value', '#', 'no'),
(2911, '_slider-products|||0|value', '_', 'no'),
(2912, '_slider-products|||1|value', '_', 'no'),
(2913, '_slider-products|||2|value', '_', 'no'),
(2914, '_slider-products|||3|value', '_', 'no'),
(2915, '_slider-products|||4|value', '_', 'no'),
(2916, '_slider-products|||5|value', '_', 'no'),
(2917, '_slider-products|product_slide|0|0|value', '40', 'no'),
(2918, '_slider-products|product_heading|0|0|value', 'Скальный грунт', 'no'),
(2919, '_slider-products|product_paragraph|0|0|value', '', 'no'),
(2920, '_slider-products|product_slide|1|0|value', '41', 'no'),
(2921, '_slider-products|product_heading|1|0|value', 'Камень бутовый ', 'no'),
(2922, '_slider-products|product_paragraph|1|0|value', '', 'no'),
(2923, '_slider-products|product_slide|2|0|value', '42', 'no'),
(2924, '_slider-products|product_heading|2|0|value', 'Отсев', 'no'),
(2925, '_slider-products|product_paragraph|2|0|value', '', 'no'),
(2926, '_slider-products|product_slide|3|0|value', '43', 'no'),
(2927, '_slider-products|product_heading|3|0|value', 'Щебеночно-песчаная смесь', 'no'),
(2928, '_slider-products|product_paragraph|3|0|value', '', 'no'),
(2929, '_slider-products|product_slide|4|0|value', '44', 'no'),
(2930, '_slider-products|product_heading|4|0|value', 'Щебень скальный ', 'no'),
(2931, '_slider-products|product_paragraph|4|0|value', '', 'no'),
(2932, '_slider-products|product_slide|5|0|value', '46', 'no'),
(2933, '_slider-products|product_heading|5|0|value', 'Щебень скальный ', 'no'),
(2934, '_slider-products|product_paragraph|5|0|value', '', 'no'),
(2935, '_footer_contacts_address', 'Приморский край, Артемовский городской округ, г.&nbsp;Артем, ул.&nbsp;Туманная, дом&nbsp;73.', 'no'),
(2936, '_footer_contacts|||0|value', '_', 'no'),
(2937, '_footer_contacts|||1|value', '_', 'no'),
(2938, '_footer_contacts|||2|value', '_', 'no'),
(2939, '_footer_contacts|footer_contacts_name|0|0|value', 'Телефон', 'no'),
(2940, '_footer_contacts|footer_contacts_text|0|0|value', '8(950)291-37-43', 'no'),
(2941, '_footer_contacts|footer_contacts_link|0|0|value', 'tel:+79502913743', 'no'),
(2942, '_footer_contacts|footer_contacts_name|1|0|value', 'Email', 'no'),
(2943, '_footer_contacts|footer_contacts_text|1|0|value', 'aks.sur@mail.ru', 'no'),
(2944, '_footer_contacts|footer_contacts_link|1|0|value', 'mailto:aks.sur@mail.ru', 'no'),
(2945, '_footer_contacts|footer_contacts_name|2|0|value', 'Inst', 'no'),
(2946, '_footer_contacts|footer_contacts_text|2|0|value', '@artem_karyer', 'no'),
(2947, '_footer_contacts|footer_contacts_link|2|0|value', 'https://instagram.com/artem_karyer?igshid=YmMyMTA2M2Y=', 'no'),
(2966, 'new_admin_email', 'aleksandra.ovsia@gmail.com', 'yes'),
(3190, '_site_transient_timeout_theme_roots', '1660888620', 'no'),
(3191, '_site_transient_theme_roots', 'a:4:{s:14:\"frontend-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(3192, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1660886822;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";b:0;}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=2683939\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";s:3:\"7.0\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.0.0\";}}', 'no'),
(3193, '_transient_doing_cron', '1675871120.0106639862060546875000', 'yes'),
(3210, '_transient_timeout_global_styles_frontend-theme', '1675871180', 'no'),
(3211, '_transient_global_styles_frontend-theme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(20, 16, '_wp_trash_meta_status', 'publish'),
(21, 16, '_wp_trash_meta_time', '1660241251'),
(23, 17, '_customize_restore_dismissed', '1'),
(24, 18, '_wp_attached_file', '2022/08/aks-logo_white.svg'),
(25, 18, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:236;s:6:\"height\";i:56;s:4:\"file\";s:26:\"2022/08/aks-logo_white.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:18:\"aks-logo_white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(26, 19, '_wp_trash_meta_status', 'publish'),
(27, 19, '_wp_trash_meta_time', '1660241372'),
(28, 20, '_menu_item_type', 'custom'),
(29, 20, '_menu_item_menu_item_parent', '0'),
(30, 20, '_menu_item_object_id', '20'),
(31, 20, '_menu_item_object', 'custom'),
(32, 20, '_menu_item_target', ''),
(33, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 20, '_menu_item_xfn', ''),
(35, 20, '_menu_item_url', 'http://artem/'),
(36, 20, '_menu_item_orphaned', '1660242042'),
(37, 21, '_menu_item_type', 'post_type'),
(38, 21, '_menu_item_menu_item_parent', '0'),
(39, 21, '_menu_item_object_id', '2'),
(40, 21, '_menu_item_object', 'page'),
(41, 21, '_menu_item_target', ''),
(42, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 21, '_menu_item_xfn', ''),
(44, 21, '_menu_item_url', ''),
(45, 21, '_menu_item_orphaned', '1660242042'),
(46, 22, '_menu_item_type', 'custom'),
(47, 22, '_menu_item_menu_item_parent', '0'),
(48, 22, '_menu_item_object_id', '22'),
(49, 22, '_menu_item_object', 'custom'),
(50, 22, '_menu_item_target', ''),
(51, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 22, '_menu_item_xfn', ''),
(53, 22, '_menu_item_url', '#'),
(55, 23, '_menu_item_type', 'custom'),
(56, 23, '_menu_item_menu_item_parent', '0'),
(57, 23, '_menu_item_object_id', '23'),
(58, 23, '_menu_item_object', 'custom'),
(59, 23, '_menu_item_target', ''),
(60, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 23, '_menu_item_xfn', ''),
(62, 23, '_menu_item_url', '#'),
(64, 24, '_menu_item_type', 'custom'),
(65, 24, '_menu_item_menu_item_parent', '0'),
(66, 24, '_menu_item_object_id', '24'),
(67, 24, '_menu_item_object', 'custom'),
(68, 24, '_menu_item_target', ''),
(69, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 24, '_menu_item_xfn', ''),
(71, 24, '_menu_item_url', '#'),
(73, 3, '_edit_lock', '1660296744:1'),
(78, 28, '_wp_attached_file', '2022/08/logo_png.png'),
(79, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:236;s:6:\"height\";i:56;s:4:\"file\";s:20:\"2022/08/logo_png.png\";s:8:\"filesize\";i:10090;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"logo_png-150x56.png\";s:5:\"width\";i:150;s:6:\"height\";i:56;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6166;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 3, '_edit_last', '1'),
(81, 3, '_dog_id', ''),
(82, 3, '_dog_name', ''),
(83, 3, '_dog_sex', 'Сука'),
(84, 3, '_dog_photo', ''),
(85, 3, '_dog_genealogy', ''),
(86, 3, '_dog_mark', ''),
(87, 3, '_dog_birthday', ''),
(88, 3, '_dog_color', ''),
(89, 3, '_dog_health', ''),
(90, 3, '_dog_breeder', ''),
(91, 3, '_dog_breeders_kennel', ''),
(92, 3, '_dog_owner', ''),
(93, 3, '_dog_owners_kennel', ''),
(94, 3, '_dog_location', ''),
(95, 3, '_crb_association_dad|||0|_empty', ''),
(96, 3, '_crb_association_mom|||0|_empty', ''),
(113, 3, '_contact_link2', 'dasdada'),
(114, 3, '_contact_image2', '26'),
(115, 29, '_dog_id', ''),
(116, 29, '_dog_name', ''),
(117, 29, '_dog_sex', 'Сука'),
(118, 29, '_dog_photo', ''),
(119, 29, '_dog_genealogy', ''),
(120, 29, '_dog_mark', ''),
(121, 29, '_dog_birthday', ''),
(122, 29, '_dog_color', ''),
(123, 29, '_dog_health', ''),
(124, 29, '_dog_breeder', ''),
(125, 29, '_dog_breeders_kennel', ''),
(126, 29, '_dog_owner', ''),
(127, 29, '_dog_owners_kennel', ''),
(128, 29, '_dog_location', ''),
(129, 29, '_crb_association_dad|||0|_empty', ''),
(130, 29, '_crb_association_mom|||0|_empty', ''),
(131, 29, '_contact_link2', 'dasdada'),
(132, 29, '_contact_image2', '26'),
(141, 34, '_wp_attached_file', '2022/08/slide1.jpg'),
(142, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1770;s:6:\"height\";i:950;s:4:\"file\";s:18:\"2022/08/slide1.jpg\";s:8:\"filesize\";i:1914027;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"slide1-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15268;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"slide1-1024x550.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125512;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7644;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"slide1-768x412.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76236;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"slide1-1536x824.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:824;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:250521;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 36, '_wp_attached_file', '2022/08/slide3.jpg'),
(146, 36, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1770;s:6:\"height\";i:950;s:4:\"file\";s:18:\"2022/08/slide3.jpg\";s:8:\"filesize\";i:2684301;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"slide3-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18651;}s:5:\"large\";a:5:{s:4:\"file\";s:19:\"slide3-1024x550.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:181681;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"slide3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8797;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"slide3-768x412.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:105685;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"slide3-1536x824.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:824;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:384245;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 39, '_wp_attached_file', '2022/08/slide12.jpg'),
(152, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1770;s:6:\"height\";i:950;s:4:\"file\";s:19:\"2022/08/slide12.jpg\";s:8:\"filesize\";i:1667739;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"slide12-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14351;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"slide12-1024x550.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114242;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"slide12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6601;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"slide12-768x412.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:412;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:70811;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:20:\"slide12-1536x824.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:824;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:221498;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 40, '_wp_attached_file', '2022/08/product01.jpg'),
(154, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product01.jpg\";s:8:\"filesize\";i:402711;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product01-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44320;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11377;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 41, '_wp_attached_file', '2022/08/product02.jpg'),
(156, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product02.jpg\";s:8:\"filesize\";i:419418;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product02-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48239;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12409;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 42, '_wp_attached_file', '2022/08/product03.jpg'),
(158, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product03.jpg\";s:8:\"filesize\";i:393814;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35482;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8149;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 43, '_wp_attached_file', '2022/08/product04.jpg'),
(160, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product04.jpg\";s:8:\"filesize\";i:455227;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product04-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42550;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9169;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 44, '_wp_attached_file', '2022/08/product05.jpg'),
(162, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product05.jpg\";s:8:\"filesize\";i:444408;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product05-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46613;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11440;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 45, '_wp_attached_file', '2022/08/product06.jpg'),
(164, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product06.jpg\";s:8:\"filesize\";i:365137;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product06-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32270;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6203;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 46, '_wp_attached_file', '2022/08/product07.jpg'),
(166, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2022/08/product07.jpg\";s:8:\"filesize\";i:436256;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"product07-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48835;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"product07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12409;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 47, '_wp_attached_file', '2022/08/resp_slide1.jpg'),
(168, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:578;s:6:\"height\";i:578;s:4:\"file\";s:23:\"2022/08/resp_slide1.jpg\";s:8:\"filesize\";i:601623;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"resp_slide1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32125;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"resp_slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9236;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 48, '_wp_attached_file', '2022/08/resp_slide2.jpg'),
(170, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:578;s:6:\"height\";i:578;s:4:\"file\";s:23:\"2022/08/resp_slide2.jpg\";s:8:\"filesize\";i:338833;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"resp_slide2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18756;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"resp_slide2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5760;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 49, '_wp_attached_file', '2022/08/resp_slide3.jpg'),
(172, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:578;s:6:\"height\";i:578;s:4:\"file\";s:23:\"2022/08/resp_slide3.jpg\";s:8:\"filesize\";i:453487;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"resp_slide3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25671;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"resp_slide3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7939;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 50, '_wp_attached_file', '2022/08/email.svg'),
(174, 50, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:17:\"2022/08/email.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"email.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(175, 51, '_wp_attached_file', '2022/08/pin.svg'),
(176, 51, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:15:\"2022/08/pin.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"pin.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(177, 52, '_wp_attached_file', '2022/08/tel.svg'),
(178, 52, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:15:\"2022/08/tel.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:7:\"tel.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(179, 53, '_wp_trash_meta_status', 'publish'),
(180, 53, '_wp_trash_meta_time', '1660808927'),
(181, 54, '_wp_attached_file', '2022/08/logo_aks2.svg'),
(182, 54, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:146;s:6:\"height\";i:109;s:4:\"file\";s:21:\"2022/08/logo_aks2.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"logo_aks2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(183, 55, '_wp_trash_meta_status', 'publish'),
(184, 55, '_wp_trash_meta_time', '1660809623'),
(185, 56, '_edit_lock', '1660809947:1'),
(186, 56, '_wp_trash_meta_status', 'publish'),
(187, 56, '_wp_trash_meta_time', '1660809959'),
(188, 57, '_wp_trash_meta_status', 'publish'),
(189, 57, '_wp_trash_meta_time', '1660810048');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-19 19:21:55', '2022-04-19 16:21:55', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-04-19 19:21:55', '2022-04-19 16:21:55', '', 0, 'http://artem-karyer.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2022-04-19 19:21:55', '2022-04-19 16:21:55', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://artem-karyer.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-04-19 19:21:55', '2022-04-19 16:21:55', '', 0, 'http://artem-karyer.ru/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-04-19 19:21:55', '2022-04-19 16:21:55', '<!-- wp:heading -->\n<h2>Кто мы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://artem-karyer.ru.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Комментарии</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Медиафайлы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куки</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куда мы отправляем ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2022-08-12 11:08:53', '2022-08-12 08:08:53', '', 0, 'http://artem-karyer.ru/?page_id=3', 0, 'page', '', 0),
(11, 1, '2022-08-11 20:59:50', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-08-11 20:59:50', '0000-00-00 00:00:00', '', 0, 'http://artem/?p=11', 0, 'post', '', 0),
(12, 1, '2022-08-11 21:00:14', '2022-08-11 18:00:14', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-08-11 21:00:14', '2022-08-11 18:00:14', '', 0, 'http://artem/?p=12', 0, 'wp_global_styles', '', 0),
(16, 1, '2022-08-11 21:07:31', '2022-08-11 18:07:31', '{\n    \"frontend-theme::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-11 18:07:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '110ef383-ed6e-4ecc-9a59-af6399e62eee', '', '', '2022-08-11 21:07:31', '2022-08-11 18:07:31', '', 0, 'http://artem/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2022-08-11 21:07:41', '0000-00-00 00:00:00', '{\n    \"frontend-theme::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-11 18:07:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '72efc0a0-0a3e-4bbb-ac6d-efe0312eed7b', '', '', '2022-08-11 21:07:41', '0000-00-00 00:00:00', '', 0, 'http://artem/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2022-08-11 21:08:21', '2022-08-11 18:08:21', '', 'aks-logo_white', '', 'inherit', 'open', 'closed', '', 'aks-logo_white', '', '', '2022-08-11 21:08:21', '2022-08-11 18:08:21', '', 0, 'http://artem/wp-content/uploads/2022/08/aks-logo_white.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 1, '2022-08-11 21:09:31', '2022-08-11 18:09:31', '{\n    \"frontend-theme::custom_logo\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-11 18:09:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'adb09ae7-cbc0-49e7-b34c-20c6c9b51385', '', '', '2022-08-11 21:09:31', '2022-08-11 18:09:31', '', 0, 'http://artem/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2022-08-11 21:20:41', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-11 21:20:41', '0000-00-00 00:00:00', '', 0, 'http://artem/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2022-08-11 21:20:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-11 21:20:42', '0000-00-00 00:00:00', '', 0, 'http://artem/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 'Продукция', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be%d0%b4%d1%83%d0%ba%d1%86%d0%b8%d1%8f', '', '', '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 0, 'http://artem/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 'Документы', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%be%d0%ba%d1%83%d0%bc%d0%b5%d0%bd%d1%82%d1%8b', '', '', '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 0, 'http://artem/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2022-08-12 07:40:55', '2022-08-12 04:40:55', '', 0, 'http://artem/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2022-08-12 08:06:12', '2022-08-12 05:06:12', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-frontend-theme', '', '', '2022-08-12 08:06:12', '2022-08-12 05:06:12', '', 0, 'http://artem/?p=25', 0, 'wp_global_styles', '', 0),
(28, 1, '2022-08-12 11:04:50', '2022-08-12 08:04:50', '', 'logo_png', '', 'inherit', 'open', 'closed', '', 'logo_png', '', '', '2022-08-12 11:04:50', '2022-08-12 08:04:50', '', 0, 'http://artem/wp-content/uploads/2022/08/logo_png.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2022-08-12 11:08:52', '2022-08-12 08:08:52', '<!-- wp:heading -->\n<h2>Кто мы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://artem-karyer.ru.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Комментарии</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Медиафайлы</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куки</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Куда мы отправляем ваши данные</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-08-12 11:08:52', '2022-08-12 08:08:52', '', 3, 'http://artem/?p=29', 0, 'revision', '', 0),
(34, 1, '2022-08-14 00:41:00', '2022-08-13 21:41:00', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2022-08-14 00:41:00', '2022-08-13 21:41:00', '', 0, 'http://artem/wp-content/uploads/2022/08/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2022-08-14 00:44:10', '2022-08-13 21:44:10', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2022-08-14 00:44:10', '2022-08-13 21:44:10', '', 0, 'http://artem/wp-content/uploads/2022/08/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2022-08-14 00:47:15', '2022-08-13 21:47:15', '', 'slide12', '', 'inherit', 'open', 'closed', '', 'slide12', '', '', '2022-08-14 00:47:15', '2022-08-13 21:47:15', '', 0, 'http://artem/wp-content/uploads/2022/08/slide12.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2022-08-16 16:51:59', '2022-08-16 13:51:59', '', 'product01', '', 'inherit', 'open', 'closed', '', 'product01', '', '', '2022-08-16 16:51:59', '2022-08-16 13:51:59', '', 0, 'http://artem/wp-content/uploads/2022/08/product01.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2022-08-16 16:52:09', '2022-08-16 13:52:09', '', 'product02', '', 'inherit', 'open', 'closed', '', 'product02', '', '', '2022-08-16 16:52:09', '2022-08-16 13:52:09', '', 0, 'http://artem/wp-content/uploads/2022/08/product02.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2022-08-16 16:52:20', '2022-08-16 13:52:20', '', 'product03', '', 'inherit', 'open', 'closed', '', 'product03', '', '', '2022-08-16 16:52:20', '2022-08-16 13:52:20', '', 0, 'http://artem/wp-content/uploads/2022/08/product03.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2022-08-16 16:52:30', '2022-08-16 13:52:30', '', 'product04', '', 'inherit', 'open', 'closed', '', 'product04', '', '', '2022-08-16 16:52:30', '2022-08-16 13:52:30', '', 0, 'http://artem/wp-content/uploads/2022/08/product04.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2022-08-16 16:52:40', '2022-08-16 13:52:40', '', 'product05', '', 'inherit', 'open', 'closed', '', 'product05', '', '', '2022-08-16 16:52:40', '2022-08-16 13:52:40', '', 0, 'http://artem/wp-content/uploads/2022/08/product05.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2022-08-16 16:52:50', '2022-08-16 13:52:50', '', 'product06', '', 'inherit', 'open', 'closed', '', 'product06', '', '', '2022-08-16 16:52:50', '2022-08-16 13:52:50', '', 0, 'http://artem/wp-content/uploads/2022/08/product06.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2022-08-16 16:53:01', '2022-08-16 13:53:01', '', 'product07', '', 'inherit', 'open', 'closed', '', 'product07', '', '', '2022-08-16 16:53:01', '2022-08-16 13:53:01', '', 0, 'http://artem/wp-content/uploads/2022/08/product07.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2022-08-17 10:40:29', '2022-08-17 07:40:29', '', 'resp_slide1', '', 'inherit', 'open', 'closed', '', 'resp_slide1', '', '', '2022-08-17 10:40:29', '2022-08-17 07:40:29', '', 0, 'http://artem/wp-content/uploads/2022/08/resp_slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-08-17 10:40:30', '2022-08-17 07:40:30', '', 'resp_slide2', '', 'inherit', 'open', 'closed', '', 'resp_slide2', '', '', '2022-08-17 10:40:30', '2022-08-17 07:40:30', '', 0, 'http://artem/wp-content/uploads/2022/08/resp_slide2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2022-08-17 10:40:31', '2022-08-17 07:40:31', '', 'resp_slide3', '', 'inherit', 'open', 'closed', '', 'resp_slide3', '', '', '2022-08-17 10:40:31', '2022-08-17 07:40:31', '', 0, 'http://artem/wp-content/uploads/2022/08/resp_slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2022-08-17 18:18:14', '2022-08-17 15:18:14', '', 'email', '', 'inherit', 'open', 'closed', '', 'email', '', '', '2022-08-17 18:18:14', '2022-08-17 15:18:14', '', 0, 'http://artem/wp-content/uploads/2022/08/email.svg', 0, 'attachment', 'image/svg+xml', 0),
(51, 1, '2022-08-17 18:18:14', '2022-08-17 15:18:14', '', 'pin', '', 'inherit', 'open', 'closed', '', 'pin', '', '', '2022-08-17 18:18:14', '2022-08-17 15:18:14', '', 0, 'http://artem/wp-content/uploads/2022/08/pin.svg', 0, 'attachment', 'image/svg+xml', 0),
(52, 1, '2022-08-17 18:18:16', '2022-08-17 15:18:16', '', 'tel', '', 'inherit', 'open', 'closed', '', 'tel', '', '', '2022-08-17 18:18:16', '2022-08-17 15:18:16', '', 0, 'http://artem/wp-content/uploads/2022/08/tel.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 1, '2022-08-18 10:48:47', '2022-08-18 07:48:47', '{\n    \"frontend-theme::header_logo\": {\n        \"value\": 28,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-18 07:48:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80a3382c-95d5-4f66-99ad-bca27ad21021', '', '', '2022-08-18 10:48:47', '2022-08-18 07:48:47', '', 0, 'http://artem/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2022-08-18 11:00:14', '2022-08-18 08:00:14', '', 'logo_aks2', '', 'inherit', 'open', 'closed', '', 'logo_aks2', '', '', '2022-08-18 11:00:14', '2022-08-18 08:00:14', '', 0, 'http://artem/wp-content/uploads/2022/08/logo_aks2.svg', 0, 'attachment', 'image/svg+xml', 0),
(55, 1, '2022-08-18 11:00:22', '2022-08-18 08:00:22', '{\n    \"frontend-theme::footer_logo\": {\n        \"value\": 54,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-18 08:00:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'acc35fbb-7cf6-4627-bd49-7f5e7f486f70', '', '', '2022-08-18 11:00:22', '2022-08-18 08:00:22', '', 0, 'http://artem/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2022-08-18 11:05:59', '2022-08-18 08:05:59', '{\n    \"blogname\": {\n        \"value\": \"\\u041e\\u041e\\u041e \\\"\\u0410\\u0440\\u0442\\u0435\\u043c&nbsp;\\u041a\\u0430\\u0440\\u044c\\u0435\\u0440&nbsp;\\u0421\\u0442\\u0440\\u043e\\u0439\\\"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-18 08:05:34\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u0414\\u043e\\u0431\\u044b\\u0447\\u0430 \\u0438 \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438\\u043d\\u0435\\u0440\\u0442\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0414\\u0430\\u043b\\u044c\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u043e\\u0447\\u043d\\u043e\\u0433\\u043e \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043e\\u043a\\u0440\\u0443\\u0433\\u0430\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-18 08:05:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e17ea4d-1c70-4b64-bc61-b63498a2aa3a', '', '', '2022-08-18 11:05:59', '2022-08-18 08:05:59', '', 0, 'http://artem/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2022-08-18 11:07:27', '2022-08-18 08:07:27', '{\n    \"blogdescription\": {\n        \"value\": \"\\u0414\\u043e\\u0431\\u044b\\u0447\\u0430 \\u0438&nbsp;\\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f \\u0438\\u043d\\u0435\\u0440\\u0442\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432 \\u043d\\u0430&nbsp;\\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0414\\u0430\\u043b\\u044c\\u043d\\u0435\\u0432\\u043e\\u0441\\u0442\\u043e\\u0447\\u043d\\u043e\\u0433\\u043e \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u043e\\u043a\\u0440\\u0443\\u0433\\u0430\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-08-18 08:07:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5ff6824a-03c6-4202-9add-b5637d9c26a8', '', '', '2022-08-18 11:07:27', '2022-08-18 08:07:27', '', 0, 'http://artem/?p=57', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'frontend-theme', 'frontend-theme', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'karyer'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"aedfa78af6ac5af868cefd8a92c551acddd7c4d13ad60d6036b85b464bbadd96\";a:4:{s:10:\"expiration\";i:1660828298;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660655498;}s:64:\"d10fc47a2da44c85084283d2777667b5f9db778eb0825758341227a71af7305f\";a:4:{s:10:\"expiration\";i:1660894626;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660721826;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '11'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1660811146'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:52:\"carbon_fields_container__,carbon_fields_container__2\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'karyer', '$P$BYv1QU2GiWfErx0p8B8QnDEuorhwRb.', 'karyer', 'aleksandra.ovsia@gmail.com', 'http://artem-karyer.ru', '2022-04-19 16:21:55', '', 0, 'karyer');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3212;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
