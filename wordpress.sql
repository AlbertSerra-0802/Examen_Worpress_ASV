-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: mariadb:3306
-- Tiempo de generación: 16-06-2026 a las 05:57:47
-- Versión del servidor: 11.8.5-MariaDB-ubu2404
-- Versión de PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2026-05-19 21:14:36', '2026-05-19 19:14:36', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1779218190;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1779218191;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1779219662;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1779219668;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1779219722;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1779221675;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1779223475;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1779225275;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1779304591;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1780509359;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost:8000', 'on'),
(3, 'home', 'http://localhost:8000', 'on'),
(4, 'blogname', 'asv_blog', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'aserrav@esliceu.net', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '', 'on'),
(30, 'rewrite_rules', '', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:0:{}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'asv_examen', 'on'),
(42, 'stylesheet', 'asv_examen', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'Europe/Madrid', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1794770075', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'es_ES', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.9.4\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}', 'on'),
(128, '_transient_doing_cron', '1780340431.8890700340270996093750', 'on'),
(129, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1779531332;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"201a3b89b3ca395a0635ff57af31b552\";s:6:\"blocks\";a:53:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:18:\"core/term-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}', 'on'),
(131, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"6.9.4\";s:12:\"last_checked\";i:1780947685;}', 'off'),
(132, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1780947685;}', 'off'),
(135, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1780947685;}', 'off'),
(142, 'can_compress_scripts', '0', 'on'),
(145, '_site_transient_timeout_feed_mod_69c933d8a78805efd0abe985766ffb51', '1779991230', 'off'),
(146, '_site_transient_feed_mod_69c933d8a78805efd0abe985766ffb51', '1779948030', 'off'),
(149, '_site_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1779991233', 'off'),
(150, '_site_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1779948033', 'off'),
(177, 'current_theme', '', 'auto'),
(178, 'theme_mods_asv_examen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu_principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(179, 'theme_switched', '', 'auto'),
(228, 'recovery_mode_email_last_sent', '1779965408', 'auto'),
(229, 'recovery_keys', 'a:1:{s:22:\"Tux6G3cLyOQrmlsqDkKKSs\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$E54BKl_OhepgPvr8Lfxa-itQpKbDkr3scmb0GJ_R\";s:10:\"created_at\";i:1779965408;}}', 'off'),
(234, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(245, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(246, 'recently_activated', 'a:0:{}', 'off'),
(328, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(342, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1780974021', 'off'),
(343, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class=\"rss-widget\"><p><strong>Error de RSS:</strong> WP HTTP Error: El usuario ha bloqueado las peticiones a través de HTTP.</p></div><div class=\"rss-widget\"><p><strong>Error de RSS:</strong> WP HTTP Error: El usuario ha bloqueado las peticiones a través de HTTP.</p></div>', 'off'),
(354, '_site_transient_timeout_theme_roots', '1780948984', 'off'),
(355, '_site_transient_theme_roots', 'a:5:{s:10:\"asv_examen\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(368, '_site_transient_timeout_wp_remote_block_patterns_74ec3dbc74636d74b6e3bcaf605527ab', '1780947603', 'off'),
(369, '_site_transient_wp_remote_block_patterns_74ec3dbc74636d74b6e3bcaf605527ab', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:25:\"http_request_not_executed\";a:1:{i:0;s:57:\"El usuario ha bloqueado las peticiones a través de HTTP.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'off'),
(370, '_site_transient_timeout_wp_remote_block_patterns_93d263e889b63937cff9adf345a8756e', '1780947603', 'off'),
(371, '_site_transient_wp_remote_block_patterns_93d263e889b63937cff9adf345a8756e', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:25:\"http_request_not_executed\";a:1:{i:0;s:57:\"El usuario ha bloqueado las peticiones a través de HTTP.\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'off'),
(372, '_site_transient_timeout_wp_theme_files_patterns-d0107b7185acd6f4deefc378f0895cbc', '1781590471', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(374, '_site_transient_wp_theme_files_patterns-d0107b7185acd6f4deefc378f0895cbc', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_menu_item_type', 'custom'),
(4, 6, '_menu_item_menu_item_parent', '0'),
(5, 6, '_menu_item_object_id', '6'),
(6, 6, '_menu_item_object', 'custom'),
(7, 6, '_menu_item_target', ''),
(8, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 6, '_menu_item_xfn', ''),
(10, 6, '_menu_item_url', 'http://localhost:8000/'),
(21, 8, '_menu_item_type', 'custom'),
(22, 8, '_menu_item_menu_item_parent', '0'),
(23, 8, '_menu_item_object_id', '8'),
(24, 8, '_menu_item_object', 'custom'),
(25, 8, '_menu_item_target', ''),
(26, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 8, '_menu_item_xfn', ''),
(28, 8, '_menu_item_url', '#'),
(29, 8, '_menu_item_orphaned', '1779968795'),
(30, 9, '_menu_item_type', 'custom'),
(31, 9, '_menu_item_menu_item_parent', '0'),
(32, 9, '_menu_item_object_id', '9'),
(33, 9, '_menu_item_object', 'custom'),
(34, 9, '_menu_item_target', ''),
(35, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 9, '_menu_item_xfn', ''),
(37, 9, '_menu_item_url', '#'),
(38, 9, '_menu_item_orphaned', '1779968813'),
(57, 6, '_wp_old_date', '2026-05-28'),
(58, 12, '_menu_item_type', 'custom'),
(59, 12, '_menu_item_menu_item_parent', '0'),
(60, 12, '_menu_item_object_id', '12'),
(61, 12, '_menu_item_object', 'custom'),
(62, 12, '_menu_item_target', ''),
(63, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 12, '_menu_item_xfn', ''),
(65, 12, '_menu_item_url', '#'),
(66, 12, '_menu_item_orphaned', '1780418805'),
(67, 13, '_menu_item_type', 'custom'),
(68, 13, '_menu_item_menu_item_parent', '0'),
(69, 13, '_menu_item_object_id', '13'),
(70, 13, '_menu_item_object', 'custom'),
(71, 13, '_menu_item_target', ''),
(72, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 13, '_menu_item_xfn', ''),
(74, 13, '_menu_item_url', '#'),
(76, 14, '_menu_item_type', 'custom'),
(77, 14, '_menu_item_menu_item_parent', '0'),
(78, 14, '_menu_item_object_id', '14'),
(79, 14, '_menu_item_object', 'custom'),
(80, 14, '_menu_item_target', ''),
(81, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 14, '_menu_item_xfn', ''),
(83, 14, '_menu_item_url', '#'),
(85, 6, '_wp_old_date', '2026-06-01'),
(86, 15, '_edit_lock', '1780488400:1'),
(87, 17, '_edit_lock', '1780488859:1'),
(88, 21, '_edit_lock', '1780940433:1'),
(89, 22, '_wp_attached_file', '2026/06/astronauta.jpeg'),
(90, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:1626;s:4:\"file\";s:23:\"2026/06/astronauta.jpeg\";s:8:\"filesize\";i:254029;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 21, '_pingme', '1'),
(92, 21, '_encloseme', '1'),
(93, 21, '_thumbnail_id', '22'),
(94, 25, '_edit_lock', '1780947329:1'),
(95, 26, '_wp_attached_file', '2026/06/astronauta-1.jpeg'),
(96, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:1626;s:4:\"file\";s:25:\"2026/06/astronauta-1.jpeg\";s:8:\"filesize\";i:254029;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 25, '_pingme', '1'),
(98, 25, '_encloseme', '1'),
(99, 25, '_thumbnail_id', '22'),
(100, 28, '_edit_lock', '1780947527:1'),
(101, 28, '_pingme', '1'),
(102, 28, '_encloseme', '1'),
(103, 28, '_thumbnail_id', '22'),
(104, 30, '_edit_lock', '1780947594:1'),
(105, 31, '_wp_attached_file', '2026/06/moon.jpg'),
(106, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:537;s:4:\"file\";s:16:\"2026/06/moon.jpg\";s:8:\"filesize\";i:4775;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 30, '_pingme', '1'),
(108, 30, '_encloseme', '1'),
(109, 30, '_thumbnail_id', '31'),
(110, 33, '_edit_lock', '1780947637:1'),
(111, 33, '_pingme', '1'),
(112, 33, '_encloseme', '1'),
(113, 33, '_thumbnail_id', '31'),
(114, 1, '_edit_lock', '1780947511:1'),
(115, 1, '_wp_trash_meta_status', 'publish'),
(116, 1, '_wp_trash_meta_time', '1780947684'),
(117, 1, '_wp_desired_post_slug', 'hola-mundo'),
(118, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-05-19 21:14:36', '2026-05-19 19:14:36', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2026-06-08 21:41:24', '2026-06-08 19:41:24', '', 0, 'http://localhost:8000/?p=1', 0, 'post', '', 1),
(2, 1, '2026-05-19 21:14:36', '2026-05-19 19:14:36', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost:8000/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2026-05-19 21:14:36', '2026-05-19 19:14:36', '', 0, 'http://localhost:8000/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-05-19 21:14:36', '2026-05-19 19:14:36', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quiénes somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost:8000.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentarios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Medios</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenido incrustado de otros sitios web</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Con quién compartimos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cuánto tiempo conservamos tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qué derechos tienes sobre tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Dónde se envían tus datos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2026-05-19 21:14:36', '2026-05-19 19:14:36', '', 0, 'http://localhost:8000/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-05-19 21:19:31', '2026-05-19 19:19:31', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-05-19 21:19:31', '2026-05-19 19:19:31', '', 0, 'http://localhost:8000/?p=4', 0, 'wp_navigation', '', 0),
(5, 1, '2026-05-19 21:41:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-05-19 21:41:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/?p=5', 0, 'post', '', 0),
(6, 1, '2026-06-02 18:47:42', '2026-05-28 11:31:58', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2026-06-02 18:47:42', '2026-06-02 16:47:42', '', 0, 'http://localhost:8000/?p=6', 1, 'nav_menu_item', '', 0),
(8, 1, '2026-05-28 13:46:35', '0000-00-00 00:00:00', '', 'Portafolio', '', 'draft', 'closed', 'closed', '', '', '', '', '2026-05-28 13:46:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2026-05-28 13:46:53', '0000-00-00 00:00:00', '', 'Contacto', '', 'draft', 'closed', 'closed', '', '', '', '', '2026-05-28 13:46:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/?p=9', 1, 'nav_menu_item', '', 0),
(12, 1, '2026-06-02 18:46:45', '0000-00-00 00:00:00', '', 'Contacto', '', 'draft', 'closed', 'closed', '', '', '', '', '2026-06-02 18:46:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2026-06-02 18:47:42', '2026-06-02 16:47:39', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio-2', '', '', '2026-06-02 18:47:42', '2026-06-02 16:47:42', '', 0, 'http://localhost:8000/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2026-06-02 18:47:42', '2026-06-02 16:47:39', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto-2', '', '', '2026-06-02 18:47:42', '2026-06-02 16:47:42', '', 0, 'http://localhost:8000/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2026-06-02 18:48:23', '2026-06-02 16:48:23', '<!-- wp:paragraph -->\n<p>\"Aquest és el meu espai de projectes Apollo…\"</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2026-06-03 14:06:17', '2026-06-03 12:06:17', '', 0, 'http://localhost:8000/?page_id=15', 0, 'page', '', 0),
(16, 1, '2026-06-02 18:48:23', '2026-06-02 16:48:23', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-06-02 18:48:23', '2026-06-02 16:48:23', '', 15, 'http://localhost:8000/?p=16', 0, 'revision', '', 0),
(17, 1, '2026-06-02 18:48:56', '2026-06-02 16:48:56', '<!-- wp:paragraph -->\n<p>\"Aquest és el meu espai de projectes Apollo…\"</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2026-06-03 14:06:52', '2026-06-03 12:06:52', '', 0, 'http://localhost:8000/?page_id=17', 0, 'page', '', 0),
(18, 1, '2026-06-02 18:48:56', '2026-06-02 16:48:56', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2026-06-02 18:48:56', '2026-06-02 16:48:56', '', 17, 'http://localhost:8000/?p=18', 0, 'revision', '', 0),
(19, 1, '2026-06-03 14:06:17', '2026-06-03 12:06:17', '<!-- wp:paragraph -->\n<p>\"Aquest és el meu espai de projectes Apollo…\"</p>\n<!-- /wp:paragraph -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2026-06-03 14:06:17', '2026-06-03 12:06:17', '', 15, 'http://localhost:8000/?p=19', 0, 'revision', '', 0),
(20, 1, '2026-06-03 14:06:52', '2026-06-03 12:06:52', '<!-- wp:paragraph -->\n<p>\"Aquest és el meu espai de projectes Apollo…\"</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2026-06-03 14:06:52', '2026-06-03 12:06:52', '', 17, 'http://localhost:8000/?p=20', 0, 'revision', '', 0),
(21, 1, '2026-06-03 19:55:59', '2026-06-03 17:55:59', '<!-- wp:paragraph -->\n<p>El Programa Apollo fue un proyecto espacial tripulado desarrollado por Estados Unidos entre 1961 y 1972. Logró seis alunizajes tripulados con éxito.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'Mision Apollo 11: El gran salto', '', 'publish', 'open', 'open', '', 'mision-apollo-11-el-gran-salto', '', '', '2026-06-08 19:39:31', '2026-06-08 17:39:31', '', 0, 'http://localhost:8000/?p=21', 0, 'post', '', 0),
(22, 1, '2026-06-03 19:55:17', '2026-06-03 17:55:17', '', 'astronauta', '', 'inherit', 'open', 'closed', '', 'astronauta', '', '', '2026-06-03 19:55:17', '2026-06-03 17:55:17', '', 21, 'http://localhost:8000/wp-content/uploads/2026/06/astronauta.jpeg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2026-06-03 19:55:59', '2026-06-03 17:55:59', '<!-- wp:paragraph -->\n<p>El Programa Apollo fue un proyecto espacial tripulado desarrollado por Estados Unidos entre 1961 y 1972. Logró seis alunizajes tripulados con éxito.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Mision Apollo 11: El gran salto', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2026-06-03 19:55:59', '2026-06-03 17:55:59', '', 21, 'http://localhost:8000/?p=23', 0, 'revision', '', 0),
(24, 1, '2026-06-08 19:39:31', '2026-06-08 17:39:31', '<!-- wp:paragraph -->\n<p>El Programa Apollo fue un proyecto espacial tripulado desarrollado por Estados Unidos entre 1961 y 1972. Logró seis alunizajes tripulados con éxito.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'Mision Apollo 11: El gran salto', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2026-06-08 19:39:31', '2026-06-08 17:39:31', '', 21, 'http://localhost:8000/?p=24', 0, 'revision', '', 0),
(25, 1, '2026-06-08 21:35:26', '2026-06-08 19:35:26', '<!-- wp:paragraph -->\n<p>El Saturno V sigue siendo el cohete más alto, pesado y potente jamás llevado al estado operativo. Desarrollado por la NASA bajo la dirección de Wernher von Braun, este coloso de tres etapas fue el encargado de impulsar todas las misiones Apollo hacia la Luna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'El Cohete Saturno V: Potencia Pura', '', 'publish', 'open', 'open', '', 'el-cohete-saturno-v-potencia-pura', '', '', '2026-06-08 21:35:26', '2026-06-08 19:35:26', '', 0, 'http://localhost:8000/?p=25', 0, 'post', '', 0),
(26, 1, '2026-06-08 21:35:10', '2026-06-08 19:35:10', '', 'astronauta', '', 'inherit', 'open', 'closed', '', 'astronauta-2', '', '', '2026-06-08 21:35:10', '2026-06-08 19:35:10', '', 25, 'http://localhost:8000/wp-content/uploads/2026/06/astronauta-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2026-06-08 21:35:26', '2026-06-08 19:35:26', '<!-- wp:paragraph -->\n<p>El Saturno V sigue siendo el cohete más alto, pesado y potente jamás llevado al estado operativo. Desarrollado por la NASA bajo la dirección de Wernher von Braun, este coloso de tres etapas fue el encargado de impulsar todas las misiones Apollo hacia la Luna.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'El Cohete Saturno V: Potencia Pura', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2026-06-08 21:35:26', '2026-06-08 19:35:26', '', 25, 'http://localhost:8000/?p=27', 0, 'revision', '', 0),
(28, 1, '2026-06-08 21:36:25', '2026-06-08 19:36:25', '<!-- wp:paragraph -->\n<p>El módulo lunar fue la primera nave espacial diseñada para operar exclusivamente en el vacío del espacio exterior y realizar el descenso final a la superficie de la Luna. Gracias a sus patas de aluminio y su motor de descenso, los astronautas pudieron tocar suelo lunar de forma segura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'Módulo Lunar: Tecnología de Alunizaje', '', 'publish', 'open', 'open', '', 'modulo-lunar-tecnologia-de-alunizaje', '', '', '2026-06-08 21:36:25', '2026-06-08 19:36:25', '', 0, 'http://localhost:8000/?p=28', 0, 'post', '', 0),
(29, 1, '2026-06-08 21:36:25', '2026-06-08 19:36:25', '<!-- wp:paragraph -->\n<p>El módulo lunar fue la primera nave espacial diseñada para operar exclusivamente en el vacío del espacio exterior y realizar el descenso final a la superficie de la Luna. Gracias a sus patas de aluminio y su motor de descenso, los astronautas pudieron tocar suelo lunar de forma segura.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'Módulo Lunar: Tecnología de Alunizaje', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2026-06-08 21:36:25', '2026-06-08 19:36:25', '', 28, 'http://localhost:8000/?p=29', 0, 'revision', '', 0),
(30, 1, '2026-06-08 21:39:50', '2026-06-08 19:39:50', '<!-- wp:paragraph -->\n<p>Utilizado por primera vez en la misión Apollo 15, el Vehículo de Ambulación Lunar (LRV) permitió a los astronautas explorar distancias mucho mayores alrededor del lugar de alunizaje. Este todoterreno eléctrico llegó a alcanzar una velocidad máxima de 14 km/h sobre el polvo lunar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'El Rover Lunar: Conduciendo en el Espacio', '', 'publish', 'open', 'open', '', 'el-rover-lunar-conduciendo-en-el-espacio', '', '', '2026-06-08 21:39:50', '2026-06-08 19:39:50', '', 0, 'http://localhost:8000/?p=30', 0, 'post', '', 0),
(31, 1, '2026-06-08 21:39:41', '2026-06-08 19:39:41', '', 'moon', '', 'inherit', 'open', 'closed', '', 'moon', '', '', '2026-06-08 21:39:41', '2026-06-08 19:39:41', '', 30, 'http://localhost:8000/wp-content/uploads/2026/06/moon.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2026-06-08 21:39:50', '2026-06-08 19:39:50', '<!-- wp:paragraph -->\n<p>Utilizado por primera vez en la misión Apollo 15, el Vehículo de Ambulación Lunar (LRV) permitió a los astronautas explorar distancias mucho mayores alrededor del lugar de alunizaje. Este todoterreno eléctrico llegó a alcanzar una velocidad máxima de 14 km/h sobre el polvo lunar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'El Rover Lunar: Conduciendo en el Espacio', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2026-06-08 21:39:50', '2026-06-08 19:39:50', '', 30, 'http://localhost:8000/?p=32', 0, 'revision', '', 0),
(33, 1, '2026-06-08 21:40:31', '2026-06-08 19:40:31', '<!-- wp:paragraph -->\n<p>Más allá de traer muestras de roca lunar a la Tierra, el programa Apollo impulsó avances científicos y tecnológicos masivos que hoy en día seguimos utilizando: desde la tecnología de los filtros de agua hasta los trajes de aislamiento y los sistemas de computación modernos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'El Legado Apollo: Un Salto para la Humanidad', '', 'publish', 'open', 'open', '', 'el-legado-apollo-un-salto-para-la-humanidad', '', '', '2026-06-08 21:40:31', '2026-06-08 19:40:31', '', 0, 'http://localhost:8000/?p=33', 0, 'post', '', 0),
(34, 1, '2026-06-08 21:40:31', '2026-06-08 19:40:31', '<!-- wp:paragraph -->\n<p>Más allá de traer muestras de roca lunar a la Tierra, el programa Apollo impulsó avances científicos y tecnológicos masivos que hoy en día seguimos utilizando: desde la tecnología de los filtros de agua hasta los trajes de aislamiento y los sistemas de computación modernos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-featured-image /-->', 'El Legado Apollo: Un Salto para la Humanidad', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2026-06-08 21:40:31', '2026-06-08 19:40:31', '', 33, 'http://localhost:8000/?p=34', 0, 'revision', '', 0),
(35, 1, '2026-06-08 21:41:24', '2026-06-08 19:41:24', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2026-06-08 21:41:24', '2026-06-08 19:41:24', '', 1, 'http://localhost:8000/?p=35', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menú Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(13, 2, 0),
(14, 2, 0),
(21, 1, 0),
(25, 1, 0),
(28, 1, 0),
(30, 1, 0),
(33, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'albert'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"04eb4904eff442486b7f3d1eabc9ea9053c3eeeded2a609339298d58e63d2eee\";a:4:{s:10:\"expiration\";i:1781103605;s:2:\"ip\";s:10:\"172.19.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36\";s:5:\"login\";i:1780930805;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1780573859'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.19.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2026-06-03T17:52:00.053Z\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'albert', '$wp$2y$10$klsxpNnXygm.2o9/NkbEwe1IuAx.jjo5iADzm95ZTIq/1bqwFVHly', 'albert', 'aserrav@esliceu.net', 'http://localhost:8000', '2026-05-19 19:14:36', '', 0, 'albert');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
