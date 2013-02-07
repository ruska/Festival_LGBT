-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Jeu 07 Février 2013 à 09:35
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPgaprindashvili`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-12-03 15:13:21', '2012-12-03 15:13:21', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-07 15:45:18', '2013-01-07 15:45:18', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=444 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~gaprindashvili/festival_cinema', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'rouska777@yahoo.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~gaprindashvili/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:89:"/mnt/home/gaprindashvili/public_html/festival_cinema/wp-content/themes/festival/style.css";i:2;s:0:"";}', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', '', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '2', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:1848:"<div id="programme">\r\n	<div id="prog-list">\r\n\r\n		<div class="prog-item">\r\n			<div class="front-rouge prog-date">Vendredi 24 septembre : 20h00</div>\r\n				<div class="prog-text">\r\n					Soirée d’ouverture : séance de courts métrages\r\n					<a href="/keeps-the-lights-on/"><i>Rencontre-débat avec un réalisateur.</i></a>\r\n			</div>\r\n		</div>\r\n\r\n		<div class="prog-item">\r\n			<div class="front-rouge prog-date">Samedi 25 septembre : 19h30</div>\r\n				<div class="prog-text">\r\n					Documentaire :\r\n\r\n					<a href="/keeps-the-lights-on/"><i>It’s elementary, talking about gays issues in school</i></a>\r\n			</div> \r\n				</div>\r\n\r\n\r\n			<div class="prog-item">\r\n			<div class="front-rouge prog-date">Samedi 25 septembre : 19h30</div>\r\n				<div class="prog-text">\r\n					Documentaire :\r\n					(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n					Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\n					sur les interventions en milieu scolaire.\r\n\r\n					<a href="/keeps-the-lights-on/"><i>It’s elementary, talking about gays issues in school</i></a>\r\n			</div>\r\n		</div> \r\n\r\n		<div class="prog-item">\r\n			<div class="front-rouge prog-date">Samedi 25 septembre : 21h45 </div>\r\n				<div class="prog-text">\r\n					Fiction : Ander   \r\n\r\n					<a href="/keeps-the-lights-on/"><i></i></a>\r\n				</div> \r\n					</div>\r\n\r\n\r\n			<div class="prog-item">\r\n			<div class="front-rouge prog-date">Dimanche 26 septembre : 16h00 </div>\r\n				<div class="prog-text">\r\n					Fiction : El niño pez \r\n\r\n					<a href="/keeps-the-lights-on/"><i></i></a>\r\n			</div>\r\n				</div>\r\n\r\n			<div class="prog-item">\r\n			<div class="front-rouge prog-date">Dimanche 26 septembre : 18h00 </div>\r\n				<div class="prog-text">\r\n				Fiction : I can’t think straight\r\n\r\n					<a href="/keeps-the-lights-on/"><i></i></a>\r\n			</div>\r\n				</div>\r\n\r\n		</div>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '76', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:6:"text-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360165605;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360166011;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360251930;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360226045;}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360226075;}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360226105;}', 'yes'),
(106, '_transient_random_seed', 'e3abaae96b317026426c6f98a68cbe39', 'yes'),
(107, 'auth_key', '[+U/fK`mR/[ursL#)3BXqEK#bLq[f<br_h2&V,[7=:sH6_d2SqI-zz(~Xc./ [i>', 'yes'),
(108, 'auth_salt', 'gF$!}o|V_5fNQhF}Ff0=0fU[Vzbg1?F5OjGYG77h>4=[(Tn{JRoO<=xzhX4<xlu<', 'yes'),
(109, 'logged_in_key', 'jAALrB.v[xl1W4vLx7{d^Axt;Y<sexc-~wbj;!T*H;sT_;%6n:*gX#c5{uR4dKql', 'yes'),
(110, 'logged_in_salt', '9bvbE94r7)T=J11Cfj&4W7/T{9CTa@YGfG<W;}%pY$C3D*VrQ+.%)BX|SQEDZe7r', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:48:"http://localhost/~gaprindashvili/festival_cinema";s:4:"link";s:124:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~gaprindashvili/festival_cinema/";s:3:"url";s:157:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~gaprindashvili/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'T?q4tAZ_@Z%vuQ<_@8 9Aub#mwqBCCgbs5^am{QBMB[3~yc)1GzlY=Bk+]i{:oQ5', 'yes'),
(113, 'nonce_salt', '60`j=[XYMe.5dv@awq24pr((l+<{TpI=josu.v{r&TT(XQUq58-})=b8Gs]Kj`Qm', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(127, 'category_children', 'a:0:{}', 'yes'),
(160, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:12;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358848843;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(161, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(235, 'current_theme', 'Festival', 'yes'),
(236, 'theme_mods_ThemeEnfant', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358848176;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-2";}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
(237, 'theme_switched', '', 'yes'),
(238, 'theme_mods_twentyeleven', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358848123;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";N;s:9:"sidebar-5";N;}}}', 'yes'),
(241, 'theme_mods_festival', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:12;}s:17:"header_image_data";a:5:{s:13:"attachment_id";i:131;s:3:"url";s:94:"http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/cropped-lgbt2.jpeg";s:13:"thumbnail_url";s:94:"http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/cropped-lgbt2.jpeg";s:5:"width";i:321;s:6:"height";i:144;}s:16:"header_textcolor";s:3:"444";}', 'yes'),
(325, '_transient_timeout_plugin_slugs', '1360162552', 'no'),
(326, '_transient_plugin_slugs', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";}', 'no'),
(348, 'recently_activated', 'a:1:{s:30:"advanced-custom-fields/acf.php";i:1360076149;}', 'yes'),
(351, 'ftp_credentials', 'a:3:{s:8:"hostname";s:9:"localhost";s:8:"username";s:14:"gaprindashvili";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(352, 'acf_version', '3.5.8.1', 'yes'),
(353, 'acf_next_field_id', '11', 'yes'),
(395, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360099661', 'no'),
(396, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(397, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360099661', 'no'),
(398, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(399, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360099662', 'no'),
(400, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(401, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360099672', 'no'),
(402, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(413, '_site_transient_timeout_wporg_theme_feature_list', '1360086887', 'yes'),
(414, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(441, '_transient_doing_cron', '1360226044.6663780212402343750000', 'yes'),
(442, '_site_transient_timeout_theme_roots', '1360227905', 'yes'),
(443, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=777 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_edit_last', '1'),
(3, 6, '_edit_lock', '1358771121:1'),
(6, 10, '_edit_last', '1'),
(7, 10, '_edit_lock', '1358771576:1'),
(10, 1, '_edit_lock', '1358245012:1'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1358245206'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(14, 18, '_edit_last', '1'),
(15, 18, '_edit_lock', '1360078878:1'),
(18, 21, '_edit_last', '1'),
(19, 21, '_edit_lock', '1360077431:1'),
(22, 24, '_edit_last', '1'),
(23, 24, '_edit_lock', '1360077416:1'),
(35, 29, '_menu_item_type', 'custom'),
(36, 29, '_menu_item_menu_item_parent', '0'),
(37, 29, '_menu_item_object_id', '29'),
(38, 29, '_menu_item_object', 'custom'),
(39, 29, '_menu_item_target', ''),
(40, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 29, '_menu_item_xfn', ''),
(42, 29, '_menu_item_url', 'http://localhost/~gaprindashvili/festival_cinema/'),
(43, 29, '_menu_item_orphaned', '1358255964'),
(44, 30, '_menu_item_type', 'custom'),
(45, 30, '_menu_item_menu_item_parent', '0'),
(46, 30, '_menu_item_object_id', '30'),
(47, 30, '_menu_item_object', 'custom'),
(48, 30, '_menu_item_target', ''),
(49, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 30, '_menu_item_xfn', ''),
(51, 30, '_menu_item_url', 'http://localhost/~gaprindashvili/festival_cinema/'),
(52, 30, '_menu_item_orphaned', '1358263357'),
(53, 2, '_wp_trash_meta_status', 'publish'),
(54, 2, '_wp_trash_meta_time', '1358263412'),
(55, 32, '_edit_last', '1'),
(56, 32, '_wp_page_template', 'default'),
(65, 32, '_edit_lock', '1358263322:1'),
(66, 32, '_wp_trash_meta_status', 'publish'),
(67, 32, '_wp_trash_meta_time', '1358263449'),
(68, 35, '_edit_last', '1'),
(69, 35, '_edit_lock', '1360077389:1'),
(72, 37, '_edit_last', '1'),
(73, 37, '_edit_lock', '1360077372:1'),
(76, 39, '_edit_last', '1'),
(77, 39, '_edit_lock', '1360077355:1'),
(80, 41, '_edit_last', '1'),
(81, 41, '_edit_lock', '1360077338:1'),
(127, 55, '_edit_last', '1'),
(128, 55, '_edit_lock', '1360077318:1'),
(133, 58, '_edit_last', '1'),
(134, 58, '_edit_lock', '1360077228:1'),
(145, 64, '_edit_last', '1'),
(146, 64, '_edit_lock', '1360077200:1'),
(153, 68, '_edit_last', '1'),
(154, 68, '_edit_lock', '1360077170:1'),
(159, 71, '_edit_last', '1'),
(160, 71, '_edit_lock', '1360081024:1'),
(165, 74, '_edit_last', '1'),
(166, 74, '_edit_lock', '1358770932:1'),
(176, 76, '_edit_last', '1'),
(177, 76, '_edit_lock', '1360084513:1'),
(178, 76, '_wp_page_template', 'default'),
(188, 80, '_edit_last', '1'),
(189, 80, '_edit_lock', '1360083823:1'),
(190, 80, '_wp_page_template', 'default'),
(191, 84, '_edit_last', '1'),
(192, 84, '_edit_lock', '1360087082:1'),
(193, 84, '_wp_page_template', 'default'),
(194, 86, '_edit_last', '1'),
(195, 86, '_edit_lock', '1360083146:1'),
(196, 86, '_wp_page_template', 'default'),
(197, 90, '_menu_item_type', 'post_type'),
(198, 90, '_menu_item_menu_item_parent', '0'),
(199, 90, '_menu_item_object_id', '76'),
(200, 90, '_menu_item_object', 'page'),
(201, 90, '_menu_item_target', ''),
(202, 90, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(203, 90, '_menu_item_xfn', ''),
(204, 90, '_menu_item_url', ''),
(206, 91, '_menu_item_type', 'taxonomy'),
(207, 91, '_menu_item_menu_item_parent', '0'),
(208, 91, '_menu_item_object_id', '2'),
(209, 91, '_menu_item_object', 'category'),
(210, 91, '_menu_item_target', ''),
(211, 91, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-rougeC";}'),
(212, 91, '_menu_item_xfn', ''),
(213, 91, '_menu_item_url', ''),
(215, 92, '_menu_item_type', 'taxonomy'),
(216, 92, '_menu_item_menu_item_parent', '0'),
(217, 92, '_menu_item_object_id', '3'),
(218, 92, '_menu_item_object', 'category'),
(219, 92, '_menu_item_target', ''),
(220, 92, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-bleuC";}'),
(221, 92, '_menu_item_xfn', ''),
(222, 92, '_menu_item_url', ''),
(224, 93, '_menu_item_type', 'post_type'),
(225, 93, '_menu_item_menu_item_parent', '0'),
(226, 93, '_menu_item_object_id', '80'),
(227, 93, '_menu_item_object', 'page'),
(228, 93, '_menu_item_target', ''),
(229, 93, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(230, 93, '_menu_item_xfn', ''),
(231, 93, '_menu_item_url', ''),
(233, 94, '_menu_item_type', 'post_type'),
(234, 94, '_menu_item_menu_item_parent', '0'),
(235, 94, '_menu_item_object_id', '86'),
(236, 94, '_menu_item_object', 'page'),
(237, 94, '_menu_item_target', ''),
(238, 94, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-vert";}'),
(239, 94, '_menu_item_xfn', ''),
(240, 94, '_menu_item_url', ''),
(242, 95, '_menu_item_type', 'post_type'),
(243, 95, '_menu_item_menu_item_parent', '0'),
(244, 95, '_menu_item_object_id', '84'),
(245, 95, '_menu_item_object', 'page'),
(246, 95, '_menu_item_target', ''),
(247, 95, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-vertC";}'),
(248, 95, '_menu_item_xfn', ''),
(249, 95, '_menu_item_url', ''),
(251, 74, '_wp_trash_meta_status', 'draft'),
(252, 74, '_wp_trash_meta_time', '1358772571'),
(257, 107, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(258, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(259, 108, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(260, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(261, 68, '_thumbnail_id', '108'),
(262, 71, '_thumbnail_id', '107'),
(263, 109, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(264, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(265, 64, '_thumbnail_id', '109'),
(268, 111, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(269, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(270, 58, '_thumbnail_id', '111'),
(273, 113, '_wp_attached_file', '2013/01/American-boy.png'),
(274, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(275, 55, '_thumbnail_id', '113'),
(278, 115, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(279, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(280, 41, '_thumbnail_id', '115'),
(281, 117, '_wp_attached_file', '2013/01/Odile-.jpg'),
(282, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(283, 37, '_thumbnail_id', '117'),
(286, 119, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(287, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(288, 35, '_thumbnail_id', '119'),
(291, 121, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(292, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(293, 121, '_wp_attachment_image_alt', 'blaaa'),
(294, 24, '_thumbnail_id', '121'),
(297, 123, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(298, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(299, 21, '_thumbnail_id', '123'),
(302, 6, '_wp_trash_meta_status', 'publish'),
(303, 6, '_wp_trash_meta_time', '1358773983'),
(304, 71, 'pays', 'Grand Bretagne'),
(307, 71, 'genre', 'Comédie romantique'),
(312, 10, '_wp_trash_meta_status', 'publish'),
(313, 10, '_wp_trash_meta_time', '1358849388'),
(331, 143, '_edit_last', '1'),
(332, 143, 'field_2', 'a:10:{s:5:"label";s:4:"pays";s:4:"name";s:4:"pays";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;s:3:"key";s:7:"field_2";}'),
(333, 143, 'field_3', 'a:10:{s:5:"label";s:6:"année";s:4:"name";s:6:"année";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;s:3:"key";s:7:"field_3";}'),
(334, 143, 'field_4', 'a:10:{s:5:"label";s:12:"réalisateur";s:4:"name";s:12:"réalisateur";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;s:3:"key";s:7:"field_4";}'),
(335, 143, 'field_5', 'a:10:{s:5:"label";s:11:"interprète";s:4:"name";s:11:"interprète";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;s:3:"key";s:7:"field_5";}'),
(336, 143, 'field_6', 'a:10:{s:5:"label";s:4:"prix";s:4:"name";s:4:"prix";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;s:3:"key";s:7:"field_6";}'),
(337, 143, 'allorany', 'any'),
(340, 143, 'position', 'normal'),
(341, 143, 'layout', 'no_box'),
(342, 143, 'hide_on_screen', 'a:9:{i:0;s:7:"excerpt";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:9:"revisions";i:4;s:4:"slug";i:5;s:6:"author";i:6;s:6:"format";i:7;s:4:"tags";i:8;s:15:"send-trackbacks";}'),
(343, 143, '_edit_lock', '1359992837:1'),
(344, 143, 'field_7', 'a:10:{s:5:"label";s:6:"durée";s:4:"name";s:6:"durée";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;s:3:"key";s:7:"field_7";}'),
(349, 68, 'pays', 'Argentine'),
(350, 68, '_pays', 'field_2'),
(351, 68, 'année', '2008 '),
(352, 68, '_année', 'field_3'),
(353, 68, 'réalisateur', 'Lucía Puenzo'),
(354, 68, '_réalisateur', 'field_4'),
(355, 68, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(356, 68, '_interprète', 'field_5'),
(358, 68, '_prix', 'field_6'),
(359, 68, 'durée', '01h36'),
(360, 68, '_durée', 'field_7'),
(361, 68, '_', 'field_8'),
(363, 64, 'pays', 'Espagne'),
(364, 64, '_pays', 'field_2'),
(365, 64, 'année', '2009'),
(366, 64, '_année', 'field_3'),
(367, 64, 'réalisateur', 'Roberto Castón'),
(368, 64, '_réalisateur', 'field_4'),
(369, 64, 'interprète', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(370, 64, '_interprète', 'field_5'),
(372, 64, '_prix', 'field_6'),
(373, 64, 'durée', '02h08'),
(374, 64, '_durée', 'field_7'),
(375, 64, '_', 'field_8'),
(376, 143, 'field_9', 'a:10:{s:5:"label";s:5:"genre";s:4:"name";s:5:"genre";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;s:3:"key";s:7:"field_9";}'),
(379, 147, 'pays', 'Grand Bretagne'),
(380, 147, 'annee', '2007'),
(381, 147, 'genre', 'Comedie'),
(382, 147, 'realisateur', 'VOSTF'),
(383, 147, 'realisateur', 'blabla'),
(384, 147, 'realisateur', 'mon super realisateur'),
(386, 71, '_pays', 'field_2'),
(387, 71, '_année', 'field_3'),
(388, 71, '_réalisateur', 'field_4'),
(390, 71, '_interprète', 'field_5'),
(392, 71, '_prix', 'field_6'),
(393, 71, 'durée', '01h20'),
(394, 71, '_durée', 'field_7'),
(395, 71, '_', 'field_8'),
(396, 71, '_genre', 'field_9'),
(398, 58, 'pays', 'Etats-Unis'),
(399, 58, '_pays', 'field_2'),
(400, 58, 'année', '1996 '),
(401, 58, '_année', 'field_3'),
(403, 58, '_réalisateur', 'field_4'),
(405, 58, '_interprète', 'field_5'),
(407, 58, '_prix', 'field_6'),
(409, 58, '_durée', 'field_7'),
(410, 58, '_', 'field_8'),
(411, 58, 'genre', ' Documentaire'),
(412, 58, '_genre', 'field_9'),
(417, 55, '_pays', 'field_2'),
(418, 55, 'année', '2008'),
(419, 55, '_année', 'field_3'),
(421, 55, '_réalisateur', 'field_4'),
(423, 55, '_interprète', 'field_5'),
(425, 55, '_prix', 'field_6'),
(426, 55, 'durée', '4 minutes'),
(427, 55, '_durée', 'field_7'),
(429, 55, '_genre', 'field_9'),
(430, 143, 'field_10', 'a:10:{s:5:"label";s:4:"type";s:4:"name";s:4:"type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;s:3:"key";s:8:"field_10";}'),
(431, 143, 'rule', 'a:4:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"3";s:8:"order_no";i:0;}'),
(432, 143, 'rule', 'a:4:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:1;}'),
(433, 150, 'pays', 'Argentine'),
(434, 150, 'année', '2008 '),
(435, 150, 'réalisateur', 'VOSTF'),
(436, 150, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(437, 150, 'prix', ''),
(438, 150, 'durée', '01h36'),
(441, 68, '_genre', 'field_9'),
(442, 68, 'type', 'VOSTF'),
(443, 68, '_type', 'field_10'),
(444, 151, 'pays', 'Espagne'),
(445, 151, 'année', '2009'),
(446, 151, 'réalisateur', 'VOSTF'),
(447, 151, 'interprète', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(448, 151, 'prix', ''),
(449, 151, 'durée', '02h08'),
(452, 64, '_genre', 'field_9'),
(453, 64, 'type', 'VOSTF'),
(454, 64, '_type', 'field_10'),
(455, 152, 'pays', 'Espagne'),
(456, 152, 'année', '2009'),
(457, 152, 'réalisateur', 'Roberto Castón'),
(458, 152, 'interprète', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(459, 152, 'prix', ''),
(460, 152, 'durée', '02h08'),
(461, 152, 'genre', ''),
(462, 152, 'type', 'STF'),
(464, 153, 'pays', 'Espagne'),
(465, 153, 'année', '2009'),
(466, 153, 'réalisateur', 'Roberto Castón'),
(467, 153, 'interprète', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(468, 153, 'prix', ''),
(469, 153, 'durée', '02h08'),
(470, 153, 'genre', ''),
(471, 153, 'type', 'VOSTF'),
(473, 154, 'pays', 'Etats-Unis'),
(474, 154, 'année', '1996 '),
(475, 154, 'réalisateur', ''),
(476, 154, 'interprète', ''),
(477, 154, 'prix', ''),
(478, 154, 'durée', ''),
(479, 154, 'genre', ' Documentaire'),
(482, 58, '_type', 'field_10'),
(484, 41, 'pays', 'France'),
(485, 41, '_pays', 'field_2'),
(486, 41, 'année', '2006'),
(487, 41, '_année', 'field_3'),
(488, 41, 'réalisateur', 'Jean Baptiste Erreca '),
(489, 41, '_réalisateur', 'field_4'),
(491, 41, '_interprète', 'field_5'),
(493, 41, '_prix', 'field_6'),
(494, 41, 'durée', '26 minutes'),
(495, 41, '_durée', 'field_7'),
(497, 41, '_genre', 'field_9'),
(499, 41, '_type', 'field_10'),
(501, 39, 'pays', 'Brésil'),
(502, 39, '_pays', 'field_2'),
(503, 39, 'année', ' 2008'),
(504, 39, '_année', 'field_3'),
(505, 39, 'réalisateur', 'René Guerra Luiz'),
(506, 39, '_réalisateur', 'field_4'),
(508, 39, '_interprète', 'field_5'),
(510, 39, '_prix', 'field_6'),
(511, 39, 'durée', '17 minutes'),
(512, 39, '_durée', 'field_7'),
(514, 39, '_genre', 'field_9'),
(515, 39, 'type', 'VOSTF'),
(516, 39, '_type', 'field_10'),
(518, 35, 'pays', 'France'),
(519, 35, '_pays', 'field_2'),
(520, 35, 'année', '2009'),
(521, 35, '_année', 'field_3'),
(522, 35, 'réalisateur', 'Sébastien Gabriel'),
(523, 35, '_réalisateur', 'field_4'),
(525, 35, '_interprète', 'field_5'),
(527, 35, '_prix', 'field_6'),
(528, 35, 'durée', '9 minutes'),
(529, 35, '_durée', 'field_7'),
(531, 35, '_genre', 'field_9'),
(533, 35, '_type', 'field_10'),
(535, 24, 'pays', '2009'),
(536, 24, '_pays', 'field_2'),
(537, 24, 'année', 'France'),
(538, 24, '_année', 'field_3'),
(539, 24, 'réalisateur', ' Céline Sciamma'),
(540, 24, '_réalisateur', 'field_4'),
(542, 24, '_interprète', 'field_5'),
(544, 24, '_prix', 'field_6'),
(546, 24, '_durée', 'field_7'),
(548, 24, '_genre', 'field_9'),
(550, 24, '_type', 'field_10'),
(552, 21, 'pays', 'France'),
(553, 21, '_pays', 'field_2'),
(554, 21, 'année', '2009'),
(555, 21, '_année', 'field_3'),
(556, 21, 'réalisateur', 'Pascal-Alex Vincent'),
(557, 21, '_réalisateur', 'field_4'),
(559, 21, '_interprète', 'field_5'),
(561, 21, '_prix', 'field_6'),
(562, 21, 'durée', '8 minutes'),
(563, 21, '_durée', 'field_7'),
(565, 21, '_genre', 'field_9'),
(567, 21, '_type', 'field_10'),
(568, 161, 'pays', ''),
(569, 161, 'année', '2009'),
(570, 161, 'réalisateur', ''),
(571, 161, 'interprète', ''),
(572, 161, 'prix', ''),
(573, 161, 'durée', '8 minutes'),
(574, 161, 'genre', ''),
(575, 161, 'type', ''),
(579, 18, '_pays', 'field_2'),
(581, 18, '_année', 'field_3'),
(583, 18, '_réalisateur', 'field_4'),
(585, 18, '_interprète', 'field_5'),
(587, 18, '_prix', 'field_6'),
(589, 18, '_durée', 'field_7'),
(591, 18, '_genre', 'field_9'),
(593, 18, '_type', 'field_10'),
(594, 164, 'pays', 'Grand Bretagne'),
(595, 164, 'annee', ' 2007 '),
(596, 164, 'genre', 'Comédie romantique'),
(597, 164, 'realisateur', 'VOSTF'),
(598, 164, 'realisateur', 'VOSTF'),
(599, 164, 'realisateur', 'VOSTF'),
(600, 164, 'interprète', ''),
(601, 164, 'prix', ''),
(602, 164, 'durée', '01h20'),
(605, 71, '_type', 'field_10'),
(606, 165, 'pays', 'Argentine'),
(607, 165, 'année', '2008 '),
(608, 165, 'réalisateur', ''),
(609, 165, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(610, 165, 'prix', ''),
(611, 165, 'durée', '01h36'),
(612, 165, 'genre', ''),
(613, 165, 'type', 'VOSTF'),
(615, 166, 'pays', 'Espagne'),
(616, 166, 'année', '2009'),
(617, 166, 'réalisateur', 'Roberto Castón'),
(618, 166, 'interprète', 'Josean Bengoetxea, Eriz Alberdi,Christian Esquive'),
(619, 166, 'prix', ''),
(620, 166, 'durée', '02h08'),
(621, 166, 'genre', ''),
(622, 166, 'type', 'VOSTF'),
(624, 167, 'pays', 'Etats-Unis'),
(625, 167, 'année', '1996 '),
(626, 167, 'réalisateur', ''),
(627, 167, 'interprète', ''),
(628, 167, 'prix', ''),
(629, 167, 'durée', ''),
(630, 167, 'genre', ' Documentaire'),
(631, 167, 'type', ''),
(633, 168, 'pays', ''),
(634, 168, 'année', '2008'),
(635, 168, 'réalisateur', ''),
(636, 168, 'interprète', ''),
(637, 168, 'prix', ''),
(638, 168, 'durée', '4 minutes'),
(639, 168, 'genre', ''),
(642, 55, '_type', 'field_10'),
(643, 169, 'pays', ''),
(644, 169, 'année', '2006'),
(645, 169, 'réalisateur', ''),
(646, 169, 'interprète', ''),
(647, 169, 'prix', ''),
(648, 169, 'durée', '26 minutes'),
(649, 169, 'genre', ''),
(650, 169, 'type', ''),
(652, 170, 'pays', ''),
(653, 170, 'année', ''),
(654, 170, 'réalisateur', ''),
(655, 170, 'interprète', ''),
(656, 170, 'prix', ''),
(657, 170, 'durée', '17 minutes'),
(658, 170, 'genre', ''),
(659, 170, 'type', 'VOSTF'),
(662, 37, 'pays', 'France'),
(663, 37, '_pays', 'field_2'),
(664, 37, 'année', '2006-'),
(665, 37, '_année', 'field_3'),
(666, 37, 'réalisateur', 'Bénédicte Delgéhier'),
(667, 37, '_réalisateur', 'field_4'),
(669, 37, '_interprète', 'field_5'),
(671, 37, '_prix', 'field_6'),
(672, 37, 'durée', '10 minutes'),
(673, 37, '_durée', 'field_7'),
(675, 37, '_genre', 'field_9'),
(677, 37, '_type', 'field_10'),
(678, 172, 'pays', 'France'),
(679, 172, 'année', '2009'),
(680, 172, 'réalisateur', 'Sébastien Gabriel'),
(681, 172, 'interprète', ''),
(682, 172, 'prix', ''),
(683, 172, 'durée', '9 minutes'),
(684, 172, 'genre', ''),
(685, 172, 'type', ''),
(687, 173, 'pays', '2009'),
(688, 173, 'année', 'France'),
(689, 173, 'réalisateur', ' Céline Sciamma'),
(690, 173, 'interprète', ''),
(691, 173, 'prix', ''),
(692, 173, 'durée', ''),
(693, 173, 'genre', ''),
(694, 173, 'type', ''),
(696, 174, 'pays', 'France'),
(697, 174, 'année', '2009'),
(698, 174, 'réalisateur', 'Pascal-Alex Vincent'),
(699, 174, 'interprète', ''),
(700, 174, 'prix', ''),
(701, 174, 'durée', '8 minutes'),
(702, 174, 'genre', ''),
(703, 174, 'type', ''),
(705, 175, '_edit_last', '1'),
(706, 175, '_edit_lock', '1359993173:1'),
(708, 175, '_wp_trash_meta_status', 'publish'),
(709, 175, '_wp_trash_meta_time', '1359993313'),
(711, 126, 'pays', 'Grand Bretagne'),
(712, 126, 'annee', ''),
(713, 126, 'genre', 'Comédie romantique'),
(714, 126, 'realisateur', 'Shamim Sarif'),
(715, 126, 'realisateur', 'Shamim Sarif'),
(716, 126, 'realisateur', 'Shamim Sarif'),
(717, 126, 'interprète', ''),
(718, 126, 'prix', ''),
(719, 126, 'durée', '01h20'),
(720, 126, 'type', ''),
(721, 179, 'pays', 'Grand Bretagne'),
(722, 179, 'annee', ''),
(723, 179, 'genre', 'Comédie romantique'),
(724, 179, 'realisateur', 'Shamim Sarif'),
(725, 179, 'realisateur', 'Shamim Sarif'),
(726, 179, 'realisateur', 'Shamim Sarif'),
(727, 179, 'interprète', ''),
(728, 179, 'prix', ''),
(729, 179, 'durée', '01h20'),
(730, 179, 'type', ''),
(731, 180, 'pays', 'Grand Bretagne'),
(732, 180, 'annee', ''),
(733, 180, 'genre', 'Comédie romantique'),
(734, 180, 'realisateur', 'Shamim Sarif'),
(735, 180, 'realisateur', 'Shamim Sarif'),
(736, 180, 'realisateur', 'Shamim Sarif'),
(737, 180, 'interprète', ''),
(738, 180, 'prix', ''),
(739, 180, 'durée', '01h20'),
(740, 180, 'type', ''),
(741, 181, 'pays', 'Grand Bretagne'),
(742, 181, 'annee', ''),
(743, 181, 'genre', 'Comédie romantique'),
(744, 181, 'realisateur', ''),
(745, 181, 'realisateur', ''),
(746, 181, 'realisateur', ''),
(747, 181, 'interprète', ''),
(748, 181, 'prix', ''),
(749, 181, 'durée', '01h20'),
(750, 181, 'type', ''),
(752, 184, 'pays', 'Grand Bretagne'),
(753, 184, 'annee', ''),
(754, 184, 'genre', 'Comédie romantique'),
(755, 184, 'realisateur', ''),
(756, 184, 'realisateur', ''),
(757, 184, 'realisateur', ''),
(758, 184, 'interprète', ''),
(759, 184, 'prix', ''),
(760, 184, 'durée', '01h20'),
(761, 184, 'type', ''),
(763, 197, 'pays', 'Etats-Unis'),
(764, 197, 'année', '1996 '),
(765, 197, 'réalisateur', ''),
(766, 197, 'interprète', ''),
(767, 197, 'prix', ''),
(768, 197, 'durée', ''),
(769, 197, 'genre', ' Documentaire'),
(770, 197, 'type', ''),
(776, 55, 'pays', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=225 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-07 15:45:18', '2013-01-07 15:45:18', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-15 11:20:06', '2013-01-15 10:20:06', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-07 15:45:18', '2013-01-07 15:45:18', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~gaprindashvili/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-15 16:23:32', '2013-01-15 15:23:32', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=2', 0, 'page', '', 0),
(6, 1, '2013-01-15 11:08:18', '2013-01-15 10:08:18', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'trash', 'closed', 'open', '', 'edito', '', '', '2013-01-21 14:13:03', '2013-01-21 13:13:03', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=6', 0, 'post', '', 0),
(7, 1, '2013-01-15 11:07:10', '2013-01-15 10:07:10', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '6-revision', '', '', '2013-01-15 11:07:10', '2013-01-15 10:07:10', '', 6, 'http://localhost/~gaprindashvili/festival_cinema/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-15 11:08:13', '2013-01-15 10:08:13', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '6-revision-2', '', '', '2013-01-15 11:08:13', '2013-01-15 10:08:13', '', 6, 'http://localhost/~gaprindashvili/festival_cinema/?p=8', 0, 'revision', '', 0),
(10, 1, '2013-01-15 11:17:57', '2013-01-15 10:17:57', 'Vendredi 24 septembre : 20h00\r\n\r\nSoirée d’ouverture : séance de courts métrages\r\n\r\nRencontre-débat avec un réalisateur.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 19h30\r\n\r\nDocumentaire :\r\n\r\nIt’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nRencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret\r\n\r\nsur les interventions en milieu scolaire.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 21h45\r\n\r\nFiction : Ander\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 16h00\r\n\r\nFiction : El niño pez\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 18h00\r\n\r\nFiction : I can’t think straight', 'Agenda', '', 'trash', 'closed', 'open', '', 'agenda', '', '', '2013-01-22 11:09:49', '2013-01-22 10:09:49', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=10', 0, 'post', '', 0),
(11, 1, '2013-01-15 11:12:31', '2013-01-15 10:12:31', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\n\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\n\nSamedi 25 septembre : 21h45 Fiction : Ander Dimanche 26 septembre : 16h00 Fiction : El niño pez\n\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-revision', '', '', '2013-01-15 11:12:31', '2013-01-15 10:12:31', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-15 11:13:14', '2013-01-15 10:13:14', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander Dimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-revision-2', '', '', '2013-01-15 11:13:14', '2013-01-15 10:13:14', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-15 11:14:28', '2013-01-15 10:14:28', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métragesRencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander Dimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-revision-3', '', '', '2013-01-15 11:14:28', '2013-01-15 10:14:28', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-15 11:17:39', '2013-01-15 10:17:39', 'Vendredi 24 septembre : 20h00\r\n\r\nSoirée d’ouverture : séance de courts métrages\r\n\r\nRencontre-débat avec un réalisateur.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 19h30\r\n\r\nDocumentaire :\r\n\r\nIt’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nRencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret\r\n\r\nsur les interventions en milieu scolaire.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 21h45\r\n\r\nFiction : Ander\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 16h00\r\n\r\nFiction : El niño pez\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 18h00\r\n\r\nFiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-revision-4', '', '', '2013-01-15 11:17:39', '2013-01-15 10:17:39', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=14', 0, 'revision', '', 0),
(15, 1, '2013-01-07 15:45:18', '2013-01-07 15:45:18', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'open', '', '1-revision', '', '', '2013-01-07 15:45:18', '2013-01-07 15:45:18', '', 1, 'http://localhost/~gaprindashvili/festival_cinema/?p=15', 0, 'revision', '', 0),
(18, 1, '2013-01-15 11:26:10', '2013-01-15 10:26:10', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'publish', 'closed', 'open', '', 'intro', '', '', '2013-02-05 16:40:15', '2013-02-05 15:40:15', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=18', 0, 'post', '', 0),
(19, 1, '2013-01-15 11:25:56', '2013-01-15 10:25:56', '', 'Intro', '', 'inherit', 'closed', 'open', '', '18-revision', '', '', '2013-01-15 11:25:56', '2013-01-15 10:25:56', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=19', 0, 'revision', '', 0),
(21, 1, '2013-01-15 11:27:58', '2013-01-15 10:27:58', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-02-05 16:19:02', '2013-02-05 15:19:02', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=21', 0, 'post', '', 0),
(22, 1, '2013-01-15 11:26:37', '2013-01-15 10:26:37', '', 'En colo', '', 'inherit', 'closed', 'open', '', '21-revision', '', '', '2013-01-15 11:26:37', '2013-01-15 10:26:37', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-15 11:27:24', '2013-01-15 10:27:24', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '21-revision-2', '', '', '2013-01-15 11:27:24', '2013-01-15 10:27:24', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-15 11:29:08', '2013-01-15 10:29:08', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule ', '', 'publish', 'closed', 'open', '', 'paule-celine-sciamma-france-2009', '', '', '2013-02-05 16:18:47', '2013-02-05 15:18:47', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=24', 0, 'post', '', 0),
(25, 1, '2013-01-15 11:28:40', '2013-01-15 10:28:40', 'Pauline – Céline Sciamma- France – 2009', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'open', '', '24-revision', '', '', '2013-01-15 11:28:40', '2013-01-15 10:28:40', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=25', 0, 'revision', '', 0),
(26, 1, '2013-01-15 11:30:10', '2013-01-15 10:30:10', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'open', '', '24-autosave', '', '', '2013-01-15 11:30:10', '2013-01-15 10:30:10', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=26', 0, 'revision', '', 0),
(29, 1, '2013-01-15 14:19:23', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-15 14:19:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2013-01-15 16:22:36', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-15 16:22:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2013-01-07 15:45:18', '2013-01-07 15:45:18', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~gaprindashvili/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'open', '', '2-revision', '', '', '2013-01-07 15:45:18', '2013-01-07 15:45:18', '', 2, 'http://localhost/~gaprindashvili/festival_cinema/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-15 16:23:53', '2013-01-15 15:23:53', '', 'Edito', '', 'trash', 'closed', 'open', '', 'edito', '', '', '2013-01-15 16:24:09', '2013-01-15 15:24:09', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=32', 0, 'page', '', 0),
(34, 1, '2013-01-15 16:23:53', '2013-01-15 15:23:53', '', 'Edito', '', 'inherit', 'closed', 'open', '', '32-revision', '', '', '2013-01-15 16:23:53', '2013-01-15 15:23:53', '', 32, 'http://localhost/~gaprindashvili/festival_cinema/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-21 12:51:23', '2013-01-21 11:51:23', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'publish', 'closed', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-02-05 16:18:21', '2013-02-05 15:18:21', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=35', 0, 'post', '', 0),
(36, 1, '2013-01-21 12:51:16', '2013-01-21 11:51:16', '', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '35-revision', '', '', '2013-01-21 12:51:16', '2013-01-21 11:51:16', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-21 12:52:15', '2013-01-21 11:52:15', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  ', '', 'publish', 'closed', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-02-05 16:18:03', '2013-02-05 15:18:03', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-21 12:51:49', '2013-01-21 11:51:49', '', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '37-revision', '', '', '2013-01-21 12:51:49', '2013-01-21 11:51:49', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/?p=38', 0, 'revision', '', 0),
(39, 1, '2013-01-21 12:52:45', '2013-01-21 11:52:45', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-02-05 16:17:46', '2013-02-05 15:17:46', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=39', 0, 'post', '', 0),
(40, 1, '2013-01-21 12:52:29', '2013-01-21 11:52:29', '', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '39-revision', '', '', '2013-01-21 12:52:29', '2013-01-21 11:52:29', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-21 12:54:19', '2013-01-21 11:54:19', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever ', '', 'publish', 'closed', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-02-05 16:17:29', '2013-02-05 15:17:29', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=41', 0, 'post', '', 0),
(42, 1, '2013-01-21 12:53:50', '2013-01-21 11:53:50', '2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '41-revision', '', '', '2013-01-21 12:53:50', '2013-01-21 11:53:50', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=42', 0, 'revision', '', 0),
(43, 1, '2013-01-21 12:52:45', '2013-01-21 11:52:45', '17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '39-revision-2', '', '', '2013-01-21 12:52:45', '2013-01-21 11:52:45', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=43', 0, 'revision', '', 0),
(45, 1, '2013-01-15 11:26:10', '2013-01-15 10:26:10', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'open', '', '18-revision-2', '', '', '2013-01-15 11:26:10', '2013-01-15 10:26:10', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-15 11:27:58', '2013-01-15 10:27:58', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '21-revision-3', '', '', '2013-01-15 11:27:58', '2013-01-15 10:27:58', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-15 11:29:08', '2013-01-15 10:29:08', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'open', '', '24-revision-2', '', '', '2013-01-15 11:29:08', '2013-01-15 10:29:08', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-21 12:51:23', '2013-01-21 11:51:23', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '35-revision-2', '', '', '2013-01-21 12:51:23', '2013-01-21 11:51:23', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=48', 0, 'revision', '', 0),
(49, 1, '2013-01-21 12:54:43', '2013-01-21 11:54:43', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '39-revision-3', '', '', '2013-01-21 12:54:43', '2013-01-21 11:54:43', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-21 12:52:15', '2013-01-21 11:52:15', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '37-revision-2', '', '', '2013-01-21 12:52:15', '2013-01-21 11:52:15', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-21 12:54:19', '2013-01-21 11:54:19', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '41-revision-2', '', '', '2013-01-21 12:54:19', '2013-01-21 11:54:19', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=51', 0, 'revision', '', 0),
(55, 1, '2013-01-21 13:17:04', '2013-01-21 12:17:04', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette ', '', 'publish', 'closed', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-02-05 16:17:10', '2013-02-05 15:17:10', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=55', 0, 'post', '', 0),
(56, 1, '2013-01-21 13:16:52', '2013-01-21 12:16:52', '', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '55-revision', '', '', '2013-01-21 13:16:52', '2013-01-21 12:16:52', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-21 13:17:04', '2013-01-21 12:17:04', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '55-revision-2', '', '', '2013-01-21 13:17:04', '2013-01-21 12:17:04', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-21 13:17:48', '2013-01-21 12:17:48', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-02-05 16:15:36', '2013-02-05 15:15:36', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=58', 0, 'post', '', 0),
(59, 1, '2013-01-21 13:17:24', '2013-01-21 12:17:24', '', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision', '', '', '2013-01-21 13:17:24', '2013-01-21 12:17:24', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=59', 0, 'revision', '', 0),
(60, 1, '2013-01-21 13:17:48', '2013-01-21 12:17:48', '(C’est élémentaire - Parler de l’homosexualité à l’école)Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision-2', '', '', '2013-01-21 13:17:48', '2013-01-21 12:17:48', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=60', 0, 'revision', '', 0),
(61, 1, '2013-01-21 13:18:05', '2013-01-21 12:18:05', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - DocumentaireDurée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision-3', '', '', '2013-01-21 13:18:05', '2013-01-21 12:18:05', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-21 13:18:14', '2013-01-21 12:18:14', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - DocumentaireDurée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision-4', '', '', '2013-01-21 13:18:14', '2013-01-21 12:18:14', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-21 13:18:17', '2013-01-21 12:18:17', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - DocumentaireDurée 01h20 - Réalisation : Debra Chasnoff Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision-5', '', '', '2013-01-21 13:18:17', '2013-01-21 12:18:17', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-21 13:19:13', '2013-01-21 12:19:13', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER ', '', 'publish', 'closed', 'open', '', 'ander-realise-par-roberto-caston', '', '', '2013-02-05 16:15:11', '2013-02-05 15:15:11', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=64', 0, 'post', '', 0),
(65, 1, '2013-01-21 13:18:52', '2013-01-21 12:18:52', '', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '64-revision', '', '', '2013-01-21 13:18:52', '2013-01-21 12:18:52', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-21 13:19:13', '2013-01-21 12:19:13', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '64-revision-2', '', '', '2013-01-21 13:19:13', '2013-01-21 12:19:13', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=66', 0, 'revision', '', 0),
(67, 1, '2013-01-21 13:19:41', '2013-01-21 12:19:41', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '64-revision-3', '', '', '2013-01-21 13:19:41', '2013-01-21 12:19:41', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-21 13:20:43', '2013-01-21 12:20:43', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'publish', 'closed', 'open', '', 'el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-02-05 16:14:26', '2013-02-05 15:14:26', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=68', 0, 'post', '', 0),
(69, 1, '2013-01-21 13:20:05', '2013-01-21 12:20:05', '', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '68-revision', '', '', '2013-01-21 13:20:05', '2013-01-21 12:20:05', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-21 13:20:43', '2013-01-21 12:20:43', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '68-revision-2', '', '', '2013-01-21 13:20:43', '2013-01-21 12:20:43', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=70', 0, 'revision', '', 0),
(71, 1, '2013-01-21 13:21:10', '2013-01-21 12:21:10', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n', 'CAN’T THINK STRAIGHT ', '', 'publish', 'closed', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-02-05 16:42:35', '2013-02-05 15:42:35', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=71', 0, 'post', '', 0),
(72, 1, '2013-01-21 13:20:58', '2013-01-21 12:20:58', '', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '71-revision', '', '', '2013-01-21 13:20:58', '2013-01-21 12:20:58', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-21 13:21:10', '2013-01-21 12:21:10', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '71-revision-2', '', '', '2013-01-21 13:21:10', '2013-01-21 12:21:10', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-21 13:22:11', '2013-01-21 12:22:11', '', 'infos pratiques', '', 'trash', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-01-21 13:49:31', '2013-01-21 12:49:31', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=74', 0, 'post', '', 0),
(76, 1, '2013-01-21 13:26:57', '2013-01-21 12:26:57', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. \r\n\r\nBon festival !\r\n\r\n<strong><em>Christel Guillard, coordinatrice générale. </em></strong>\r\n', 'Edito', '', 'publish', 'closed', 'open', '', 'edito-2', '', '', '2013-02-05 18:11:12', '2013-02-05 17:11:12', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=76', 0, 'page', '', 0),
(77, 1, '2013-01-21 13:23:37', '2013-01-21 12:23:37', '', 'infos pratiques', '', 'inherit', 'closed', 'open', '', '76-revision', '', '', '2013-01-21 13:23:37', '2013-01-21 12:23:37', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=77', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2013-01-21 13:26:57', '2013-01-21 12:26:57', '', 'Edito', '', 'inherit', 'closed', 'open', '', '76-revision-2', '', '', '2013-01-21 13:26:57', '2013-01-21 12:26:57', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=78', 0, 'revision', '', 0),
(80, 1, '2013-01-21 13:29:15', '2013-01-21 12:29:15', '<h3>Lieu du festival:</h3>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n<h3>Tarifs</h3>\r\n: Plein tarif : 7,50 €\r\n<h3>Pass Festival</h3>\r\n: 25 € (5 séances)\r\n<h3>Soirée courts métrages</h3>\r\n: 6 € (vendredi)\r\n<h3>2 séances consécutives le samedi ou le dimanche</h3>\r\n: 12 €\r\n<h3>Cartes &amp; réductions acceptées:</h3>\r\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2>\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. \r\n\r\n<h3>Equipe :</h3>\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-02-05 17:58:41', '2013-02-05 16:58:41', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=80', 0, 'page', '', 0),
(81, 1, '2013-01-21 13:28:43', '2013-01-21 12:28:43', '', 'Info Pratique', '', 'inherit', 'closed', 'open', '', '80-revision', '', '', '2013-01-21 13:28:43', '2013-01-21 12:28:43', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=81', 0, 'revision', '', 0),
(82, 1, '2013-01-21 13:29:15', '2013-01-21 12:29:15', '', 'Infos Pratiques', '', 'inherit', 'closed', 'open', '', '80-revision-2', '', '', '2013-01-21 13:29:15', '2013-01-21 12:29:15', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-21 13:29:52', '2013-01-21 12:29:52', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n&nbsp;\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\n&nbsp;\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\n&nbsp;\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n&nbsp;\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées :\r\n\r\n&nbsp;\r\n\r\nCartes DECOUVERTE &amp; PASSION,\r\n\r\n&nbsp;\r\n\r\ntitulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\n&nbsp;\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n&nbsp;\r\n\r\nEquipe :\r\n\r\n&nbsp;\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\n&nbsp;\r\n\r\nProgrammation : Christel Guillard en collaboration avec\r\n\r\n&nbsp;\r\n\r\nFrançoise Dahmane (Cinéma Les Carmes)\r\n\r\n&nbsp;\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\n&nbsp;\r\n\r\nConception graphique : Yannis Bellair\r\n\r\n&nbsp;\r\n\r\nConception du site internet : rccc\r\n\r\n&nbsp;\r\n\r\nImpression : Prevost Offset\r\n\r\n&nbsp;\r\n\r\nContacts :\r\n\r\n&nbsp;\r\n\r\nfestival.dunbordalautre@gmail.com\r\n\r\n&nbsp;\r\n\r\nwww.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'open', '', '80-revision-3', '', '', '2013-01-21 13:29:52', '2013-01-21 12:29:52', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-01-21 13:30:37', '2013-01-21 12:30:37', '<strong>- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées </strong>', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-02-05 16:44:45', '2013-02-05 15:44:45', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=84', 0, 'page', '', 0),
(85, 1, '2013-01-21 13:30:27', '2013-01-21 12:30:27', '', 'Remerciements', '', 'inherit', 'closed', 'open', '', '84-revision', '', '', '2013-01-21 13:30:27', '2013-01-21 12:30:27', '', 84, 'http://localhost/~gaprindashvili/festival_cinema/?p=85', 0, 'revision', '', 0),
(86, 1, '2013-01-21 13:31:15', '2013-01-21 12:31:15', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\r\n\r\n- <a href=" http://www.orleans.fr/">Orléans</a>\r\n\r\n-<a href="http://www.cinemalescarmes.com/"> Cinéma des Carmes</a>\r\n\r\n-<a href="http://www.centrelgbtorleans.org/"> GAGL</a>\r\n\r\n- <a href="http://www.tetu.com/">Têtu</a>\r\n\r\n- <a href="http://www.muse-out.com/">La dixième MUSE</a>\r\n\r\n-<a href="http://www.citegay.fr/"> CiteGay</a>\r\n\r\n- <a href="http://yagg.com/">Yagg.com</a>\r\n\r\n- <a href="http://www.francebleu.fr/">France Bleu</a>', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-02-05 16:49:05', '2013-02-05 15:49:05', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?page_id=86', 0, 'page', '', 0),
(87, 1, '2013-01-21 13:30:58', '2013-01-21 12:30:58', '', 'Partenaires', '', 'inherit', 'closed', 'open', '', '86-revision', '', '', '2013-01-21 13:30:58', '2013-01-21 12:30:58', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-01-21 13:31:15', '2013-01-21 12:31:15', '- Région Centre - Orléans - Cinéma des Carmes - GAGL - Têtu - La dixième MUSE - CiteGay - Yagg.com - France Bleu', 'Partenaires', '', 'inherit', 'closed', 'open', '', '86-revision-2', '', '', '2013-01-21 13:31:15', '2013-01-21 12:31:15', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-21 13:34:32', '2013-01-21 12:34:32', 'Vendredi 24 septembre : 20h00\n\nSoirée d’ouverture : séance de courts métrages\n\nRencontre-débat avec un réalisateur.\n\n&nbsp;\n\nSamedi 25 septembre : 19h30\n\nDocumentaire :\n\nIt’s elementary, talking about gays issues in school\n\n(C’est élémentaire - Parler de l’homosexualité à l’école)\n\nRencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret\n\nsur les interventions en milieu scolaire.\n\n&nbsp;\n\nSamedi 25 septembre : 21h45\n\nFiction : Ander\n\n&nbsp;\n\nDimanche 26 septembre : 16h00\n\nFiction : El niño pez\n\n&nbsp;\n\nDimanche 26 septembre : 18h00\n\nFiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-autosave', '', '', '2013-01-21 13:34:32', '2013-01-21 12:34:32', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=89', 0, 'revision', '', 0),
(90, 1, '2013-01-21 13:36:00', '2013-01-21 12:36:00', ' ', '', '', 'publish', 'closed', 'open', '', '90', '', '', '2013-01-28 13:25:40', '2013-01-28 12:25:40', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2013-01-21 13:36:00', '2013-01-21 12:36:00', ' ', '', '', 'publish', 'closed', 'open', '', '91', '', '', '2013-01-28 13:25:40', '2013-01-28 12:25:40', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2013-01-21 13:36:00', '2013-01-21 12:36:00', ' ', '', '', 'publish', 'closed', 'open', '', '92', '', '', '2013-01-28 13:25:40', '2013-01-28 12:25:40', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2013-01-21 13:36:00', '2013-01-21 12:36:00', ' ', '', '', 'publish', 'closed', 'open', '', '93', '', '', '2013-01-28 13:25:40', '2013-01-28 12:25:40', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=93', 4, 'nav_menu_item', '', 0),
(94, 1, '2013-01-21 13:36:01', '2013-01-21 12:36:01', ' ', '', '', 'publish', 'closed', 'open', '', '94', '', '', '2013-01-28 13:25:41', '2013-01-28 12:25:41', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2013-01-21 13:36:01', '2013-01-21 12:36:01', ' ', '', '', 'publish', 'closed', 'open', '', '95', '', '', '2013-01-28 13:25:41', '2013-01-28 12:25:41', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=95', 6, 'nav_menu_item', '', 0),
(96, 1, '2013-01-21 13:27:29', '2013-01-21 12:27:29', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '76-revision-3', '', '', '2013-01-21 13:27:29', '2013-01-21 12:27:29', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-21 13:37:49', '2013-01-21 12:37:49', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '76-revision-4', '', '', '2013-01-21 13:37:49', '2013-01-21 12:37:49', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-02-05 17:58:26', '2013-02-05 16:58:26', '<h3>Lieu du festival:</h3>\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n<h3>Tarifs</h3>\n: Plein tarif : 7,50 €\n<h3>Pass Festival</h3>\n: 25 € (5 séances)\n<h3>Soirée courts métrages</h3>\n: 6 € (vendredi)\n<h3>2 séances consécutives le samedi ou le dimanche</h3>\n: 12 €\n<h3>Cartes &amp; réductions acceptées:</h3>\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\n&nbsp;\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2>\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. \n\nEquipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'open', '', '80-autosave', '', '', '2013-02-05 17:58:26', '2013-02-05 16:58:26', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-21 13:30:08', '2013-01-21 12:30:08', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans… Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'open', '', '80-revision-4', '', '', '2013-01-21 13:30:08', '2013-01-21 12:30:08', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-21 13:31:38', '2013-01-21 12:31:38', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'inherit', 'closed', 'open', '', '86-revision-3', '', '', '2013-01-21 13:31:38', '2013-01-21 12:31:38', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=100', 0, 'revision', '', 0),
(101, 1, '2013-01-21 13:30:37', '2013-01-21 12:30:37', '- La Région Centre - La Mairie d''Orléans - Le cinéma des Carmes - Le Groupe Action Gay &amp; Lesbien - Loiret - Citégay - La dixième Muse - Têtu - Yagg.com - France Bleu Orléans - Bagdam Espace Lesbien ( Toulouse ) - Cineffable - Le Festival Tous Courts ( Aix en Provence ) - Les VidéObstinées', 'Remerciements', '', 'inherit', 'closed', 'open', '', '84-revision-2', '', '', '2013-01-21 13:30:37', '2013-01-21 12:30:37', '', 84, 'http://localhost/~gaprindashvili/festival_cinema/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-02-05 18:17:01', '2013-02-05 17:17:01', '<strong>- La Région Centre</strong>\n\n- La Mairie d''Orléans\n\n- Le cinéma des Carmes\n\n- Le Groupe Action Gay &amp; Lesbien\n\n- Loiret\n\n- Citégay\n\n- La dixième Muse\n\n- Têtu\n\n- Yagg.com\n\n- France Bleu Orléans\n\n- Bagdam Espace Lesbien ( Toulouse )\n\n- Cineffable\n\n- Le Festival Tous Courts ( Aix en Provence )\n\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'closed', 'open', '', '84-autosave', '', '', '2013-02-05 18:17:01', '2013-02-05 17:17:01', '', 84, 'http://localhost/~gaprindashvili/festival_cinema/?p=102', 0, 'revision', '', 0),
(103, 1, '2013-02-04 16:20:25', '2013-02-04 15:20:25', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '55-autosave', '', '', '2013-02-04 16:20:25', '2013-02-04 15:20:25', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-21 13:22:11', '2013-01-21 12:22:11', '', 'infos pratiques', '', 'inherit', 'closed', 'open', '', '74-revision', '', '', '2013-01-21 13:22:11', '2013-01-21 12:22:11', '', 74, 'http://localhost/~gaprindashvili/festival_cinema/?p=104', 0, 'revision', '', 0),
(107, 1, '2013-01-21 14:00:37', '2013-01-21 13:00:37', '', 'I_cant_think_straight_001', '', 'inherit', 'closed', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-21 14:00:37', '2013-01-21 13:00:37', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2013-01-21 14:01:34', '2013-01-21 13:01:34', '', 'EL NINO PEZ 1', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-1', '', '', '2013-01-21 14:01:34', '2013-01-21 13:01:34', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2013-01-21 14:02:56', '2013-01-21 13:02:56', '', 'ANDER1', '', 'inherit', 'closed', 'open', '', 'ander1', '', '', '2013-01-21 14:02:56', '2013-01-21 13:02:56', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2013-01-21 13:19:56', '2013-01-21 12:19:56', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '64-revision-4', '', '', '2013-01-21 13:19:56', '2013-01-21 12:19:56', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-21 14:03:27', '2013-01-21 13:03:27', '', 'ItsElementaryGBan', '', 'inherit', 'closed', 'open', '', 'itselementarygban', '', '', '2013-01-21 14:03:27', '2013-01-21 13:03:27', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2013-01-21 13:18:37', '2013-01-21 12:18:37', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '58-revision-6', '', '', '2013-01-21 13:18:37', '2013-01-21 12:18:37', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-21 14:04:18', '2013-01-21 13:04:18', '', 'American boy', '', 'inherit', 'closed', 'open', '', 'american-boy', '', '', '2013-01-21 14:04:18', '2013-01-21 13:04:18', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2013-01-21 13:17:10', '2013-01-21 12:17:10', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '55-revision-3', '', '', '2013-01-21 13:17:10', '2013-01-21 12:17:10', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-21 14:04:52', '2013-01-21 13:04:52', '', 'COWBOY FOREVER', '', 'inherit', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-21 14:04:52', '2013-01-21 13:04:52', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2013-01-21 14:05:36', '2013-01-21 13:05:36', '2006 - 26 minutes\n\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '41-autosave', '', '', '2013-01-21 14:05:36', '2013-01-21 13:05:36', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-21 14:08:40', '2013-01-21 13:08:40', '', 'Odile', '', 'inherit', 'closed', 'open', '', 'odile', '', '', '2013-01-21 14:08:40', '2013-01-21 13:08:40', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2013-01-21 13:12:03', '2013-01-21 12:12:03', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '37-revision-3', '', '', '2013-01-21 13:12:03', '2013-01-21 12:12:03', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-21 14:09:10', '2013-01-21 13:09:10', '', 'OMAR_', 'Omar', 'inherit', 'closed', 'open', '', 'omar_', '', '', '2013-01-21 14:09:10', '2013-01-21 13:09:10', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2013-01-21 13:10:47', '2013-01-21 12:10:47', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '35-revision-3', '', '', '2013-01-21 13:10:47', '2013-01-21 12:10:47', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-21 14:10:56', '2013-01-21 13:10:56', 'bluuu', 'PAULINE_1', 'dfdgd', 'inherit', 'closed', 'open', '', 'pauline_1', '', '', '2013-01-21 14:10:56', '2013-01-21 13:10:56', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2013-01-21 13:10:16', '2013-01-21 12:10:16', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'open', '', '24-revision-3', '', '', '2013-01-21 13:10:16', '2013-01-21 12:10:16', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-21 14:12:29', '2013-01-21 13:12:29', '', 'EN_COLOricco', '', 'inherit', 'closed', 'open', '', 'en_coloricco', '', '', '2013-01-21 14:12:29', '2013-01-21 13:12:29', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2013-01-21 13:08:57', '2013-01-21 12:08:57', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '21-revision-4', '', '', '2013-01-21 13:08:57', '2013-01-21 12:08:57', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-15 11:08:18', '2013-01-15 10:08:18', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '6-revision-3', '', '', '2013-01-15 11:08:18', '2013-01-15 10:08:18', '', 6, 'http://localhost/~gaprindashvili/festival_cinema/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-02-05 10:40:43', '2013-02-05 09:40:43', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'open', '', '71-autosave', '', '', '2013-02-05 10:40:43', '2013-02-05 09:40:43', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-02-04 16:09:21', '2013-02-04 15:09:21', '&nbsp;\n\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\n\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '68-autosave', '', '', '2013-02-04 16:09:21', '2013-02-04 15:09:21', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-15 11:17:57', '2013-01-15 10:17:57', 'Vendredi 24 septembre : 20h00\r\n\r\nSoirée d’ouverture : séance de courts métrages\r\n\r\nRencontre-débat avec un réalisateur.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 19h30\r\n\r\nDocumentaire :\r\n\r\nIt’s elementary, talking about gays issues in school\r\n\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nRencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret\r\n\r\nsur les interventions en milieu scolaire.\r\n\r\n&nbsp;\r\n\r\nSamedi 25 septembre : 21h45\r\n\r\nFiction : Ander\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 16h00\r\n\r\nFiction : El niño pez\r\n\r\n&nbsp;\r\n\r\nDimanche 26 septembre : 18h00\r\n\r\nFiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '10-revision-5', '', '', '2013-01-15 11:17:57', '2013-01-15 10:17:57', '', 10, 'http://localhost/~gaprindashvili/festival_cinema/?p=128', 0, 'revision', '', 0),
(133, 1, '2013-01-21 13:38:44', '2013-01-21 12:38:44', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '76-revision-5', '', '', '2013-01-21 13:38:44', '2013-01-21 12:38:44', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-02-04 13:52:18', '2013-02-04 12:52:18', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-6', '', '', '2013-02-04 13:52:18', '2013-02-04 12:52:18', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-02-04 14:16:57', '2013-02-04 13:16:57', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-7', '', '', '2013-02-04 14:16:57', '2013-02-04 13:16:57', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=135', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(136, 1, '2013-02-04 14:58:04', '2013-02-04 13:58:04', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\n\nChristel Guillard, coordinatrice générale.\n\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-autosave', '', '', '2013-02-04 14:58:04', '2013-02-04 13:58:04', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=136', 0, 'revision', '', 0),
(137, 1, '2013-01-21 13:21:43', '2013-01-21 12:21:43', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF\r\n\r\nInterprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'closed', '', '71-revision-3', '', '', '2013-01-21 13:21:43', '2013-01-21 12:21:43', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=137', 0, 'revision', '', 0),
(138, 1, '2013-02-04 15:08:35', '2013-02-04 14:08:35', '&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'closed', '', '71-revision-4', '', '', '2013-02-04 15:08:35', '2013-02-04 14:08:35', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-02-04 15:32:36', '2013-02-04 14:32:36', '&nbsp;\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'closed', '', '71-revision-5', '', '', '2013-02-04 15:32:36', '2013-02-04 14:32:36', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=139', 0, 'revision', '', 0),
(142, 1, '2013-02-04 15:58:19', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2013-02-04 15:58:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?post_type=acf&p=142', 0, 'acf', '', 0),
(143, 1, '2013-02-04 16:05:19', '2013-02-04 15:05:19', '', 'Films', '', 'publish', 'closed', 'closed', '', 'acf_films', '', '', '2013-02-04 16:20:56', '2013-02-04 15:20:56', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?post_type=acf&#038;p=143', 0, 'acf', '', 0),
(144, 1, '2013-01-21 13:20:53', '2013-01-21 12:20:53', 'Argentine - 2008 - 01h36 - VOSTF\r\n\r\nInterprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'closed', '', '68-revision-3', '', '', '2013-01-21 13:20:53', '2013-01-21 12:20:53', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=144', 0, 'revision', '', 0),
(145, 1, '2013-02-04 16:11:19', '2013-02-04 15:11:19', 'Christian Esquive\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-autosave', '', '', '2013-02-04 16:11:19', '2013-02-04 15:11:19', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=145', 0, 'revision', '', 0),
(146, 1, '2013-01-21 14:03:09', '2013-01-21 13:03:09', 'Espagne - 2009 - 02h08 - VOSTF\r\n\r\nInterprétation : Josean Bengoetxea, Eriz Alberdi,\r\n\r\nChristian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-revision-5', '', '', '2013-01-21 14:03:09', '2013-01-21 13:03:09', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=146', 0, 'revision', '', 0),
(147, 1, '2013-02-04 15:38:12', '2013-02-04 14:38:12', '<code> &lt;?php the_meta(); ?&gt;\r\n</code>\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code> &lt;?php the_meta(); ?&gt;\r\n</code>', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'closed', '', '71-revision-6', '', '', '2013-02-04 15:38:12', '2013-02-04 14:38:12', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=147', 0, 'revision', '', 0),
(148, 1, '2013-01-21 14:03:40', '2013-01-21 13:03:40', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\nEtats-Unis - 1996 - Documentaire\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '58-revision-7', '', '', '2013-01-21 14:03:40', '2013-01-21 13:03:40', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=148', 0, 'revision', '', 0),
(149, 1, '2013-01-21 14:04:27', '2013-01-21 13:04:27', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'closed', '', '55-revision-4', '', '', '2013-01-21 14:04:27', '2013-01-21 13:04:27', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=149', 0, 'revision', '', 0),
(150, 1, '2013-02-04 16:09:53', '2013-02-04 15:09:53', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'closed', '', '68-revision-4', '', '', '2013-02-04 16:09:53', '2013-02-04 15:09:53', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=150', 0, 'revision', '', 0),
(151, 1, '2013-02-04 16:13:32', '2013-02-04 15:13:32', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-revision-6', '', '', '2013-02-04 16:13:32', '2013-02-04 15:13:32', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-02-04 16:21:58', '2013-02-04 15:21:58', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-revision-7', '', '', '2013-02-04 16:21:58', '2013-02-04 15:21:58', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-02-04 16:22:47', '2013-02-04 15:22:47', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-revision-8', '', '', '2013-02-04 16:22:47', '2013-02-04 15:22:47', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=153', 0, 'revision', '', 0),
(154, 1, '2013-02-04 16:18:43', '2013-02-04 15:18:43', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\n&nbsp;\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '58-revision-8', '', '', '2013-02-04 16:18:43', '2013-02-04 15:18:43', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=154', 0, 'revision', '', 0),
(155, 1, '2013-01-21 13:12:18', '2013-01-21 12:12:18', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'closed', '', '41-revision-3', '', '', '2013-01-21 13:12:18', '2013-01-21 12:12:18', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=155', 0, 'revision', '', 0),
(156, 1, '2013-01-21 13:11:40', '2013-01-21 12:11:40', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'closed', '', '39-revision-4', '', '', '2013-01-21 13:11:40', '2013-01-21 12:11:40', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=156', 0, 'revision', '', 0),
(157, 1, '2013-02-04 16:26:31', '2013-02-04 15:26:31', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'closed', '', '35-autosave', '', '', '2013-02-04 16:26:31', '2013-02-04 15:26:31', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=157', 0, 'revision', '', 0),
(158, 1, '2013-01-21 14:09:31', '2013-01-21 13:09:31', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'closed', '', '35-revision-4', '', '', '2013-01-21 14:09:31', '2013-01-21 13:09:31', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=158', 0, 'revision', '', 0),
(159, 1, '2013-01-21 14:11:24', '2013-01-21 13:11:24', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'closed', '', '24-revision-4', '', '', '2013-01-21 14:11:24', '2013-01-21 13:11:24', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=159', 0, 'revision', '', 0),
(160, 1, '2013-01-21 14:12:41', '2013-01-21 13:12:41', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'closed', '', '21-revision-5', '', '', '2013-01-21 14:12:41', '2013-01-21 13:12:41', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=160', 0, 'revision', '', 0),
(161, 1, '2013-02-04 16:28:37', '2013-02-04 15:28:37', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'closed', '', '21-revision-6', '', '', '2013-02-04 16:28:37', '2013-02-04 15:28:37', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=161', 0, 'revision', '', 0),
(162, 1, '2013-01-21 13:08:39', '2013-01-21 12:08:39', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '18-revision-3', '', '', '2013-01-21 13:08:39', '2013-01-21 12:08:39', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=162', 0, 'revision', '', 0),
(163, 1, '2013-02-04 16:30:19', '2013-02-04 15:30:19', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '18-autosave', '', '', '2013-02-04 16:30:19', '2013-02-04 15:30:19', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=163', 0, 'revision', '', 0),
(164, 1, '2013-02-04 16:17:55', '2013-02-04 15:17:55', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'closed', '', '71-revision-7', '', '', '2013-02-04 16:17:55', '2013-02-04 15:17:55', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=164', 0, 'revision', '', 0),
(165, 1, '2013-02-04 16:21:31', '2013-02-04 15:21:31', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'closed', '', '68-revision-5', '', '', '2013-02-04 16:21:31', '2013-02-04 15:21:31', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=165', 0, 'revision', '', 0),
(166, 1, '2013-02-04 16:23:43', '2013-02-04 15:23:43', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'closed', '', '64-revision-9', '', '', '2013-02-04 16:23:43', '2013-02-04 15:23:43', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=166', 0, 'revision', '', 0),
(167, 1, '2013-02-04 16:23:57', '2013-02-04 15:23:57', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\n&nbsp;\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '58-revision-9', '', '', '2013-02-04 16:23:57', '2013-02-04 15:23:57', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=167', 0, 'revision', '', 0),
(168, 1, '2013-02-04 16:19:21', '2013-02-04 15:19:21', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'closed', '', '55-revision-5', '', '', '2013-02-04 16:19:21', '2013-02-04 15:19:21', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=168', 0, 'revision', '', 0),
(169, 1, '2013-02-04 16:24:36', '2013-02-04 15:24:36', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'closed', '', '41-revision-4', '', '', '2013-02-04 16:24:36', '2013-02-04 15:24:36', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=169', 0, 'revision', '', 0),
(170, 1, '2013-02-04 16:25:08', '2013-02-04 15:25:08', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'closed', '', '39-revision-5', '', '', '2013-02-04 16:25:08', '2013-02-04 15:25:08', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=170', 0, 'revision', '', 0),
(171, 1, '2013-01-21 14:08:51', '2013-01-21 13:08:51', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'closed', '', '37-revision-4', '', '', '2013-01-21 14:08:51', '2013-01-21 13:08:51', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/?p=171', 0, 'revision', '', 0),
(172, 1, '2013-02-04 16:27:10', '2013-02-04 15:27:10', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'closed', '', '35-revision-5', '', '', '2013-02-04 16:27:10', '2013-02-04 15:27:10', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=172', 0, 'revision', '', 0),
(173, 1, '2013-02-04 16:27:36', '2013-02-04 15:27:36', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule - Céline Sciamma- France - 2009', '', 'inherit', 'closed', 'closed', '', '24-revision-5', '', '', '2013-02-04 16:27:36', '2013-02-04 15:27:36', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=173', 0, 'revision', '', 0),
(174, 1, '2013-02-04 16:28:57', '2013-02-04 15:28:57', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'closed', '', '21-revision-7', '', '', '2013-02-04 16:28:57', '2013-02-04 15:28:57', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=174', 0, 'revision', '', 0),
(175, 1, '2013-02-04 16:54:38', '2013-02-04 15:54:38', 'sdgssss', 'sdgs', '', 'trash', 'closed', 'closed', '', 'sdgs', '', '', '2013-02-04 16:55:13', '2013-02-04 15:55:13', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=175', 0, 'post', '', 0),
(176, 1, '2013-02-04 16:54:37', '2013-02-04 15:54:37', 'sd', 'sdgs', '', 'inherit', 'closed', 'closed', '', '175-revision', '', '', '2013-02-04 16:54:37', '2013-02-04 15:54:37', '', 175, 'http://localhost/~gaprindashvili/festival_cinema/?p=176', 0, 'revision', '', 0),
(177, 1, '2013-02-04 16:54:38', '2013-02-04 15:54:38', 'sdgssss', 'sdgs', '', 'inherit', 'closed', 'closed', '', '175-revision-2', '', '', '2013-02-04 16:54:38', '2013-02-04 15:54:38', '', 175, 'http://localhost/~gaprindashvili/festival_cinema/?p=177', 0, 'revision', '', 0),
(178, 1, '2013-02-05 10:27:29', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2013-02-05 10:27:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/~gaprindashvili/festival_cinema/?p=178', 0, 'post', '', 0),
(179, 1, '2013-02-04 16:33:47', '2013-02-04 15:33:47', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-8', '', '', '2013-02-04 16:33:47', '2013-02-04 15:33:47', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=179', 0, 'revision', '', 0),
(180, 1, '2013-02-05 10:41:38', '2013-02-05 09:41:38', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-9', '', '', '2013-02-05 10:41:38', '2013-02-05 09:41:38', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=180', 0, 'revision', '', 0),
(181, 1, '2013-02-05 10:41:41', '2013-02-05 09:41:41', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-10', '', '', '2013-02-05 10:41:41', '2013-02-05 09:41:41', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=181', 0, 'revision', '', 0),
(182, 1, '2013-02-04 14:44:18', '2013-02-04 13:44:18', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-8', '', '', '2013-02-04 14:44:18', '2013-02-04 13:44:18', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=182', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(183, 1, '2013-02-05 10:43:35', '2013-02-05 09:43:35', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-9', '', '', '2013-02-05 10:43:35', '2013-02-05 09:43:35', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=183', 0, 'revision', '', 0),
(184, 1, '2013-02-05 10:41:55', '2013-02-05 09:41:55', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n\r\n&nbsp;\r\n\r\n<code>\r\n</code>', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-11', '', '', '2013-02-05 10:41:55', '2013-02-05 09:41:55', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=184', 0, 'revision', '', 0),
(185, 1, '2013-01-21 13:40:46', '2013-01-21 12:40:46', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-4', '', '', '2013-01-21 13:40:46', '2013-01-21 12:40:46', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=185', 0, 'revision', '', 0),
(186, 1, '2013-02-05 16:48:37', '2013-02-05 15:48:37', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\n\n- <a href=" http://www.orleans.fr/">Orléans</a>\n\n-<a href="http://www.cinemalescarmes.com/"> Cinéma des Carmes</a>\n\n-<a href="http://www.centrelgbtorleans.org/"> GAGL</a>\n\n- <a href="http://www.tetu.com/">Têtu</a>\n\n- <a href="http://www.muse-out.com/">La dixième MUSE</a>\n\n-<a href="http://www.citegay.fr/"> CiteGay</a>\n\n- <a href="">Yagg.com</a>\n\n- <a href="">France Bleu</a>', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-autosave', '', '', '2013-02-05 16:48:37', '2013-02-05 15:48:37', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=186', 0, 'revision', '', 0),
(187, 1, '2013-02-05 14:17:38', '2013-02-05 13:17:38', '- <a href="">Région Centre</a>\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-5', '', '', '2013-02-05 14:17:38', '2013-02-05 13:17:38', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=187', 0, 'revision', '', 0),
(188, 1, '2013-02-05 14:18:47', '2013-02-05 13:18:47', '- <a href="www.yahoo.fr">Région Centre</a>\r\n\r\n- <a href="">Orléans</a>\r\n\r\n-<a href=""> Cinéma des Carmes</a>\r\n\r\n-<a href=""> GAGL</a>\r\n\r\n- <a href="">Têtu</a>\r\n\r\n- <a href="">La dixième MUSE</a>\r\n\r\n-<a href=""> CiteGay</a>\r\n\r\n- <a href="">Yagg.com</a>\r\n\r\n- <a href="">France Bleu</a>', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-6', '', '', '2013-02-05 14:18:47', '2013-02-05 13:18:47', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=188', 0, 'revision', '', 0),
(189, 1, '2013-02-05 14:19:10', '2013-02-05 13:19:10', '- <a href="http://www.supportduweb.com">Région Centre</a>\r\n\r\n- <a href="">Orléans</a>\r\n\r\n-<a href=""> Cinéma des Carmes</a>\r\n\r\n-<a href=""> GAGL</a>\r\n\r\n- <a href="">Têtu</a>\r\n\r\n- <a href="">La dixième MUSE</a>\r\n\r\n-<a href=""> CiteGay</a>\r\n\r\n- <a href="">Yagg.com</a>\r\n\r\n- <a href="">France Bleu</a>', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-7', '', '', '2013-02-05 14:19:10', '2013-02-05 13:19:10', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=189', 0, 'revision', '', 0),
(190, 1, '2013-01-21 13:40:33', '2013-01-21 12:40:33', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-5', '', '', '2013-01-21 13:40:33', '2013-01-21 12:40:33', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=190', 0, 'revision', '', 0),
(191, 1, '2013-02-05 14:20:24', '2013-02-05 13:20:24', '<strong> Lieu du festival </strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\n&nbsp;\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-6', '', '', '2013-02-05 14:20:24', '2013-02-05 13:20:24', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=191', 0, 'revision', '', 0),
(192, 1, '2013-02-05 14:21:05', '2013-02-05 13:21:05', '<strong> Lieu du festival </strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs <strong>: Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival<strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages<strong> : 6 € (vendredi)\r\n\r\n<strong>2 séances consécutives le samedi ou le dimanche<strong> : 12 €\r\n\r\n\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-7', '', '', '2013-02-05 14:21:05', '2013-02-05 13:21:05', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=192', 0, 'revision', '', 0),
(193, 1, '2013-02-05 14:21:27', '2013-02-05 13:21:27', '<strong> Lieu du festival </strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs </strong>: Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival</strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\r\n\r\n<strong>2 séances consécutives le samedi ou le dimanche</strong> : 12 €\r\n\r\n\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-8', '', '', '2013-02-05 14:21:27', '2013-02-05 13:21:27', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=193', 0, 'revision', '', 0),
(194, 1, '2013-02-05 14:22:26', '2013-02-05 13:22:26', '<strong> Lieu du festival </strong> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs </strong>: Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival</strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\r\n\r\n<strong>2 séances consécutives le samedi ou le dimanche</strong> : 12 €\r\n\r\n\r\n\r\n<strong>Cartes &amp; réductions acceptées:</strong> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-9', '', '', '2013-02-05 14:22:26', '2013-02-05 13:22:26', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=194', 0, 'revision', '', 0),
(195, 1, '2013-02-05 14:22:58', '2013-02-05 13:22:58', '<h3> Lieu du festival </h3> : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<strong>Tarifs </strong>: Plein tarif : 7,50 €\r\n\r\n<strong>Pass Festival</strong> : 25 € (5 séances)\r\n\r\n<strong>Soirée courts métrages</strong> : 6 € (vendredi)\r\n\r\n<strong>2 séances consécutives le samedi ou le dimanche</strong> : 12 €\r\n\r\n\r\n\r\n<strong>Cartes &amp; réductions acceptées:</strong> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-10', '', '', '2013-02-05 14:22:58', '2013-02-05 13:22:58', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=195', 0, 'revision', '', 0),
(196, 1, '2013-02-05 14:23:55', '2013-02-05 13:23:55', '<h3> Lieu du festival: </h3> Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<h3>Tarifs </h3>: Plein tarif : 7,50 €\r\n\r\n<h3>Pass Festival</h3> : 25 € (5 séances)\r\n\r\n<h3>Soirée courts métrages</h3> : 6 € (vendredi)\r\n\r\n<h3>2 séances consécutives le samedi ou le dimanche</h3> : 12 €\r\n\r\n\r\n\r\n<h3>Cartes &amp; réductions acceptées:</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-11', '', '', '2013-02-05 14:23:55', '2013-02-05 13:23:55', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=196', 0, 'revision', '', 0),
(197, 1, '2013-02-04 16:34:39', '2013-02-04 15:34:39', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\n&nbsp;\r\n\r\nDurée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '58-revision-10', '', '', '2013-02-04 16:34:39', '2013-02-04 15:34:39', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=197', 0, 'revision', '', 0),
(198, 1, '2013-02-05 10:43:52', '2013-02-05 09:43:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-10', '', '', '2013-02-05 10:43:52', '2013-02-05 09:43:52', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=198', 0, 'revision', '', 0),
(199, 1, '2013-02-05 14:00:15', '2013-02-05 13:00:15', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-12', '', '', '2013-02-05 14:00:15', '2013-02-05 13:00:15', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=199', 0, 'revision', '', 0),
(200, 1, '2013-02-04 16:34:11', '2013-02-04 15:34:11', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ', '', 'inherit', 'closed', 'closed', '', '68-revision-6', '', '', '2013-02-04 16:34:11', '2013-02-04 15:34:11', '', 68, 'http://localhost/~gaprindashvili/festival_cinema/?p=200', 0, 'revision', '', 0),
(201, 1, '2013-02-04 16:34:25', '2013-02-04 15:34:25', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER ', '', 'inherit', 'closed', 'closed', '', '64-revision-10', '', '', '2013-02-04 16:34:25', '2013-02-04 15:34:25', '', 64, 'http://localhost/~gaprindashvili/festival_cinema/?p=201', 0, 'revision', '', 0),
(202, 1, '2013-02-05 15:43:25', '2013-02-05 14:43:25', '(C’est élémentaire - Parler de l’homosexualité à l’école)\r\n\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '58-revision-11', '', '', '2013-02-05 15:43:25', '2013-02-05 14:43:25', '', 58, 'http://localhost/~gaprindashvili/festival_cinema/?p=202', 0, 'revision', '', 0),
(203, 1, '2013-02-04 16:35:37', '2013-02-04 15:35:37', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette ', '', 'inherit', 'closed', 'closed', '', '55-revision-6', '', '', '2013-02-04 16:35:37', '2013-02-04 15:35:37', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=203', 0, 'revision', '', 0),
(204, 1, '2013-02-05 16:16:57', '2013-02-05 15:16:57', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette ', '', 'inherit', 'closed', 'closed', '', '55-revision-7', '', '', '2013-02-05 16:16:57', '2013-02-05 15:16:57', '', 55, 'http://localhost/~gaprindashvili/festival_cinema/?p=204', 0, 'revision', '', 0),
(205, 1, '2013-02-04 16:36:00', '2013-02-04 15:36:00', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...', 'Cowboy Forever ', '', 'inherit', 'closed', 'closed', '', '41-revision-5', '', '', '2013-02-04 16:36:00', '2013-02-04 15:36:00', '', 41, 'http://localhost/~gaprindashvili/festival_cinema/?p=205', 0, 'revision', '', 0),
(206, 1, '2013-02-04 16:36:29', '2013-02-04 15:36:29', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'closed', 'closed', '', '39-revision-6', '', '', '2013-02-04 16:36:29', '2013-02-04 15:36:29', '', 39, 'http://localhost/~gaprindashvili/festival_cinema/?p=206', 0, 'revision', '', 0),
(207, 1, '2013-02-04 16:37:06', '2013-02-04 15:37:06', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile  ', '', 'inherit', 'closed', 'closed', '', '37-revision-5', '', '', '2013-02-04 16:37:06', '2013-02-04 15:37:06', '', 37, 'http://localhost/~gaprindashvili/festival_cinema/?p=207', 0, 'revision', '', 0),
(208, 1, '2013-02-04 16:37:34', '2013-02-04 15:37:34', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'closed', 'closed', '', '35-revision-6', '', '', '2013-02-04 16:37:34', '2013-02-04 15:37:34', '', 35, 'http://localhost/~gaprindashvili/festival_cinema/?p=208', 0, 'revision', '', 0),
(209, 1, '2013-02-04 16:37:54', '2013-02-04 15:37:54', '7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Paule ', '', 'inherit', 'closed', 'closed', '', '24-revision-6', '', '', '2013-02-04 16:37:54', '2013-02-04 15:37:54', '', 24, 'http://localhost/~gaprindashvili/festival_cinema/?p=209', 0, 'revision', '', 0),
(210, 1, '2013-02-04 16:38:10', '2013-02-04 15:38:10', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'closed', 'closed', '', '21-revision-8', '', '', '2013-02-04 16:38:10', '2013-02-04 15:38:10', '', 21, 'http://localhost/~gaprindashvili/festival_cinema/?p=210', 0, 'revision', '', 0),
(211, 1, '2013-02-04 16:29:15', '2013-02-04 15:29:15', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '18-revision-4', '', '', '2013-02-04 16:29:15', '2013-02-04 15:29:15', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=211', 0, 'revision', '', 0),
(212, 1, '2013-02-05 16:19:21', '2013-02-05 15:19:21', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '18-revision-5', '', '', '2013-02-05 16:19:21', '2013-02-05 15:19:21', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=212', 0, 'revision', '', 0),
(213, 1, '2013-02-05 16:40:01', '2013-02-05 15:40:01', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '18-revision-6', '', '', '2013-02-05 16:40:01', '2013-02-05 15:40:01', '', 18, 'http://localhost/~gaprindashvili/festival_cinema/?p=213', 0, 'revision', '', 0),
(214, 1, '2013-02-05 16:13:33', '2013-02-05 15:13:33', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-13', '', '', '2013-02-05 16:13:33', '2013-02-05 15:13:33', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=214', 0, 'revision', '', 0),
(215, 1, '2013-02-05 16:41:37', '2013-02-05 15:41:37', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-14', '', '', '2013-02-05 16:41:37', '2013-02-05 15:41:37', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=215', 0, 'revision', '', 0),
(216, 1, '2013-02-05 16:41:48', '2013-02-05 15:41:48', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)\r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-15', '', '', '2013-02-05 16:41:48', '2013-02-05 15:41:48', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=216', 0, 'revision', '', 0),
(217, 1, '2013-02-05 16:42:08', '2013-02-05 15:42:08', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria \r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-16', '', '', '2013-02-05 16:42:08', '2013-02-05 15:42:08', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=217', 0, 'revision', '', 0),
(218, 1, '2013-02-05 16:42:19', '2013-02-05 15:42:19', 'Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria \r\n', 'CAN’T THINK STRAIGHT ', '', 'inherit', 'closed', 'closed', '', '71-revision-17', '', '', '2013-02-05 16:42:19', '2013-02-05 15:42:19', '', 71, 'http://localhost/~gaprindashvili/festival_cinema/?p=218', 0, 'revision', '', 0),
(219, 1, '2013-01-21 13:41:22', '2013-01-21 12:41:22', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu\r\n\r\n- Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'closed', 'closed', '', '84-revision-3', '', '', '2013-01-21 13:41:22', '2013-01-21 12:41:22', '', 84, 'http://localhost/~gaprindashvili/festival_cinema/?p=219', 0, 'revision', '', 0),
(220, 1, '2013-02-05 14:19:27', '2013-02-05 13:19:27', '- <a href="">Région Centre</a>\r\n\r\n- <a href="">Orléans</a>\r\n\r\n-<a href=""> Cinéma des Carmes</a>\r\n\r\n-<a href=""> GAGL</a>\r\n\r\n- <a href="">Têtu</a>\r\n\r\n- <a href="">La dixième MUSE</a>\r\n\r\n-<a href=""> CiteGay</a>\r\n\r\n- <a href="">Yagg.com</a>\r\n\r\n- <a href="">France Bleu</a>', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-8', '', '', '2013-02-05 14:19:27', '2013-02-05 13:19:27', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=220', 0, 'revision', '', 0),
(221, 1, '2013-02-05 16:46:36', '2013-02-05 15:46:36', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\r\n\r\n- <a href="http://www.cinemalescarmes.com/">Orléans</a>\r\n\r\n-<a href=""> Cinéma des Carmes</a>\r\n\r\n-<a href=""> GAGL</a>\r\n\r\n- <a href="">Têtu</a>\r\n\r\n- <a href="">La dixième MUSE</a>\r\n\r\n-<a href=""> CiteGay</a>\r\n\r\n- <a href="">Yagg.com</a>\r\n\r\n- <a href="">France Bleu</a>', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '86-revision-9', '', '', '2013-02-05 16:46:36', '2013-02-05 15:46:36', '', 86, 'http://localhost/~gaprindashvili/festival_cinema/?p=221', 0, 'revision', '', 0),
(222, 1, '2013-02-05 15:53:11', '2013-02-05 14:53:11', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. \r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-11', '', '', '2013-02-05 15:53:11', '2013-02-05 14:53:11', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=222', 0, 'revision', '', 0),
(223, 1, '2013-02-05 14:24:23', '2013-02-05 13:24:23', '<h3> Lieu du festival: </h3> Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\n<h3>Tarifs </h3>: Plein tarif : 7,50 €\r\n\r\n<h3>Pass Festival</h3> : 25 € (5 séances)\r\n\r\n<h3>Soirée courts métrages</h3> : 6 € (vendredi)\r\n\r\n<h3>2 séances consécutives le samedi ou le dimanche</h3> : 12 €\r\n\r\n\r\n\r\n<h3>Cartes &amp; réductions acceptées:</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n&nbsp;\r\n\r\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2>\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '80-revision-12', '', '', '2013-02-05 14:24:23', '2013-02-05 13:24:23', '', 80, 'http://localhost/~gaprindashvili/festival_cinema/?p=223', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(224, 1, '2013-02-05 17:22:22', '2013-02-05 16:22:22', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. \r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.\r\n', 'Edito', '', 'inherit', 'closed', 'closed', '', '76-revision-12', '', '', '2013-02-05 17:22:22', '2013-02-05 16:22:22', '', 76, 'http://localhost/~gaprindashvili/festival_cinema/?p=224', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(12, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(10, 1, 0),
(18, 3, 0),
(21, 3, 0),
(24, 3, 0),
(35, 3, 0),
(37, 3, 0),
(39, 3, 0),
(41, 3, 0),
(55, 3, 0),
(58, 2, 0),
(64, 2, 0),
(68, 2, 0),
(71, 2, 0),
(74, 1, 0),
(90, 12, 0),
(91, 12, 0),
(92, 12, 0),
(93, 12, 0),
(94, 12, 0),
(95, 12, 0),
(175, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 8),
(12, 12, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '178'),
(15, 1, 'wp_festival_user-settings', 'editor=html&hidetb=1&libraryContent=browse'),
(16, 1, 'wp_festival_user-settings-time', '1360057247'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '12'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:9:{i:0;s:9:"formatdiv";i:1;s:16:"tagsdiv-post_tag";i:2;s:11:"postexcerpt";i:3;s:13:"trackbacksdiv";i:4;s:16:"commentstatusdiv";i:5;s:11:"commentsdiv";i:6;s:7:"slugdiv";i:7;s:9:"authordiv";i:8;s:12:"revisionsdiv";}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:7:{i:0;s:7:"acf_143";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BaROHk7aCkKZgRJ1379ufvbSa63VIo0', 'admin', 'rouska777@yahoo.fr', '', '2013-01-07 15:45:16', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~gaprindashvili/wordpress/wordpress', 'yes'),
(2, 'blogname', 'mon premier site en Wordpress', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'rouska777@yahoo.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:1:{i:0;s:30:"lightbox-plus/lightboxplus.php";}', 'yes'),
(37, 'home', 'http://localhost/~gaprindashvili/wordpress/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'wordpress-bootstrap-v2.3/wordpress-bootstrap', 'yes'),
(46, 'stylesheet', 'wordpress-bootstrap-v2.3/wordpress-bootstrap', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"sidebar2";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:4:{i:1358176406;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358177054;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1358177390;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1358174199;}', 'yes'),
(107, '_transient_random_seed', '95bdb0f64e79392f52d31cd35efdfc3b', 'yes'),
(108, 'auth_key', 's~KF^[/FnPzQU5FJ?2}2).V!Nch_<d[>+b:G!W-nH[2&D1EHg;D1 nW<00e/w>ip', 'yes'),
(109, 'auth_salt', 'L8so=T=NY+c;pwp:DLDisCnN;*.KYToEh!Uj{J46-[&pq#5d3HrBNl-`N(*}eR9>', 'yes'),
(110, 'logged_in_key', 'E ~/cCeUi,m4;c;nw04^O`N>Yn?(c(Uiw8m5Bb5`&J:Rg8S*k]1L|XSZ=:r(a~du', 'yes'),
(111, 'logged_in_salt', '/M@ % gYjslVZPcsie%tWZv-6D8P%/(as,:!ni$9Uz.7E[9Mk)/EJuc!e8m3NM&a', 'yes'),
(112, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358174229;}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358174260;}', 'yes'),
(116, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:52:"http://localhost/~gaprindashvili/wordpress/wordpress";s:4:"link";s:128:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~gaprindashvili/wordpress/wordpress/";s:3:"url";s:161:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~gaprindashvili/wordpress/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(117, 'nonce_key', 'W2k](]!FGu`Y[Al-&9d,sPSNQ?l]dW.o|.X3:I@8]zfqRyyp,zI3$-40;0.K=,0^', 'yes'),
(118, 'nonce_salt', 'LL5*Et/wM2J;# P*^}4fx94(,y2LSQ]ib*K7OD9Iu1jZ9?^gd)ZXx9Tdu*6.Xq5g', 'yes'),
(119, 'can_compress_scripts', '0', 'yes'),
(120, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1354590837', 'no'),
(121, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(122, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1354590837', 'no'),
(123, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(124, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1354590838', 'no'),
(125, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(126, '_transient_timeout_plugin_slugs', '1354634671', 'no'),
(127, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:30:"lightbox-plus/lightboxplus.php";}', 'no'),
(128, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1354590849', 'no'),
(129, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(130, 'recently_activated', 'a:0:{}', 'yes'),
(132, 'lightboxplus_options', 'a:71:{s:18:"lightboxplus_style";s:8:"shadowed";s:16:"use_custom_style";s:1:"0";s:18:"lightboxplus_multi";s:1:"0";s:11:"disable_css";s:1:"0";s:12:"use_php_four";s:1:"0";s:10:"use_inline";s:1:"0";s:10:"inline_num";s:1:"1";s:10:"transition";s:7:"elastic";s:5:"speed";s:3:"350";s:5:"width";s:5:"false";s:6:"height";s:5:"false";s:11:"inner_width";s:5:"false";s:12:"inner_height";s:5:"false";s:13:"initial_width";s:3:"300";s:14:"initial_height";s:3:"100";s:9:"max_width";s:5:"false";s:10:"max_height";s:5:"false";s:6:"resize";s:1:"1";s:7:"opacity";s:3:"0.8";s:10:"preloading";s:1:"1";s:11:"label_image";s:5:"Image";s:8:"label_of";s:2:"of";s:8:"previous";s:8:"previous";s:4:"next";s:4:"next";s:5:"close";s:5:"close";s:13:"overlay_close";s:1:"1";s:9:"slideshow";s:1:"0";s:14:"slideshow_auto";s:1:"0";s:15:"slideshow_speed";s:4:"2500";s:15:"slideshow_start";s:5:"start";s:14:"slideshow_stop";s:4:"stop";s:17:"use_caption_title";s:1:"0";s:20:"gallery_lightboxplus";s:1:"0";s:18:"multiple_galleries";s:1:"0";s:16:"use_class_method";s:1:"0";s:10:"class_name";s:9:"cboxModal";s:16:"no_auto_lightbox";s:1:"0";s:10:"text_links";s:1:"0";s:16:"no_display_title";s:1:"0";s:14:"transition_sec";s:7:"elastic";s:9:"speed_sec";s:3:"350";s:9:"width_sec";s:5:"false";s:10:"height_sec";s:5:"false";s:15:"inner_width_sec";s:3:"50%";s:16:"inner_height_sec";s:3:"50%";s:17:"initial_width_sec";s:3:"300";s:18:"initial_height_sec";s:3:"100";s:13:"max_width_sec";s:5:"false";s:14:"max_height_sec";s:5:"false";s:10:"resize_sec";s:1:"1";s:11:"opacity_sec";s:3:"0.8";s:14:"preloading_sec";s:1:"1";s:15:"label_image_sec";s:5:"Image";s:12:"label_of_sec";s:2:"of";s:12:"previous_sec";s:8:"previous";s:8:"next_sec";s:4:"next";s:9:"close_sec";s:5:"close";s:17:"overlay_close_sec";s:1:"1";s:13:"slideshow_sec";s:1:"0";s:18:"slideshow_auto_sec";s:1:"1";s:19:"slideshow_speed_sec";s:4:"2500";s:19:"slideshow_start_sec";s:5:"start";s:18:"slideshow_stop_sec";s:4:"stop";s:10:"iframe_sec";s:1:"1";s:20:"use_class_method_sec";s:1:"0";s:14:"class_name_sec";s:8:"lbpModal";s:20:"no_display_title_sec";s:1:"0";s:12:"inline_links";N;s:12:"inline_hrefs";N;s:13:"inline_widths";N;s:14:"inline_heights";N;}', 'yes'),
(133, 'lightboxplus_init', '1', 'yes'),
(134, '_site_transient_timeout_wporg_theme_feature_list', '1354559291', 'yes'),
(135, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(136, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354548488;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(137, 'current_theme', 'wp-bootstrap', 'yes'),
(138, 'theme_mods_wordpress-bootstrap-v2.3/wordpress-bootstrap', 'a:1:{i:0;b:0;}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(140, 'optionsframework', 'a:2:{s:2:"id";s:11:"wpbootstrap";s:12:"knownoptions";a:1:{i:0;s:11:"wpbootstrap";}}', 'yes'),
(141, 'wpbootstrap', 'a:22:{s:18:"heading_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:20:"main_body_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:10:"link_color";s:0:"";s:16:"link_hover_color";s:0:"";s:17:"link_active_color";s:0:"";s:12:"nav_position";s:0:"";s:16:"top_nav_bg_color";s:0:"";s:19:"showhidden_gradient";s:1:"0";s:29:"top_nav_bottom_gradient_color";s:0:"";s:18:"top_nav_link_color";s:0:"";s:24:"top_nav_link_hover_color";s:0:"";s:21:"top_nav_dropdown_item";s:0:"";s:25:"top_nav_dropdown_hover_bg";s:0:"";s:10:"search_bar";s:1:"0";s:17:"showhidden_themes";s:1:"0";s:10:"wpbs_theme";s:7:"default";s:24:"showhidden_slideroptions";s:1:"0";s:14:"slider_options";s:1:"5";s:18:"hero_unit_bg_color";s:0:"";s:25:"suppress_comments_message";s:1:"1";s:9:"blog_hero";s:1:"1";s:8:"wpbs_css";s:0:"";}', 'yes'),
(146, 'category_children', 'a:2:{i:3;a:1:{i:0;i:4;}i:4;a:1:{i:0;i:5;}}', 'yes'),
(154, '_site_transient_timeout_theme_roots', '1358176060', 'yes'),
(155, '_site_transient_theme_roots', 'a:3:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:44:"wordpress-bootstrap-v2.3/wordpress-bootstrap";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1354550289:1'),
(6, 9, '_edit_last', '1'),
(7, 9, '_edit_lock', '1354550369:1'),
(10, 12, '_wp_attached_file', '2012/12/154971.jpg'),
(11, 12, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:4:"1050";s:6:"height";s:3:"787";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:18:"2012/12/154971.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:3:{s:4:"file";s:18:"154971-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:18:"154971-300x224.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"224";}s:5:"large";a:3:{s:4:"file";s:19:"154971-1024x767.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"767";}s:13:"wpbs-featured";a:3:{s:4:"file";s:18:"154971-638x300.jpg";s:5:"width";s:3:"638";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:18:"154971-970x311.jpg";s:5:"width";s:3:"970";s:6:"height";s:3:"311";}s:22:"wpbs-featured-carousel";a:3:{s:4:"file";s:18:"154971-970x400.jpg";s:5:"width";s:3:"970";s:6:"height";s:3:"400";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:18:"154971-200x150.jpg";s:5:"width";s:3:"200";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:18:"154971-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:18:"154971-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:21:"Canon PowerShot S2 IS";s:7:"caption";s:40:"red rose on wood floow - black and white";s:17:"created_timestamp";s:10:"1137101486";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.8";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:15:"Rose On Wood BW";}}'),
(12, 13, '_wp_attached_file', '2012/12/html.jpg'),
(13, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"300";s:6:"height";s:3:"225";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:16:"2012/12/html.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:16:"html-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:16:"html-200x150.jpg";s:5:"width";s:3:"200";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:16:"html-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:16:"html-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(14, 14, '_wp_attached_file', '2012/12/css3-markup.jpg'),
(15, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"500";s:6:"height";s:3:"429";s:14:"hwstring_small";s:23:"height=''96'' width=''111''";s:4:"file";s:23:"2012/12/css3-markup.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:3:{s:4:"file";s:23:"css3-markup-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:23:"css3-markup-300x257.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"257";}s:13:"wpbs-featured";a:3:{s:4:"file";s:23:"css3-markup-500x300.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"300";}s:18:"wpbs-featured-home";a:3:{s:4:"file";s:23:"css3-markup-500x311.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"311";}s:22:"wpbs-featured-carousel";a:3:{s:4:"file";s:23:"css3-markup-500x400.jpg";s:5:"width";s:3:"500";s:6:"height";s:3:"400";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:23:"css3-markup-174x150.jpg";s:5:"width";s:3:"174";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:23:"css3-markup-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:23:"css3-markup-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(18, 16, '_wp_attached_file', '2012/12/html1.jpg'),
(19, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"300";s:6:"height";s:3:"225";s:14:"hwstring_small";s:23:"height=''96'' width=''128''";s:4:"file";s:17:"2012/12/html1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:3:{s:4:"file";s:17:"html1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:17:"html1-200x150.jpg";s:5:"width";s:3:"200";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:17:"html1-300x100.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:17:"html1-125x125.jpg";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(20, 16, '_wp_attachment_image_alt', 'html/semantique');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-12-03 15:13:21', '2012-12-03 15:13:21', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-12-03 15:13:21', '2012-12-03 15:13:21', '', 0, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-12-03 15:13:21', '2012-12-03 15:13:21', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~gaprindashvili/wordpress/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2012-12-03 15:13:21', '2012-12-03 15:13:21', '', 0, 'http://localhost/~gaprindashvili/wordpress/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-12-03 16:43:59', '2012-12-03 15:43:59', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\n&nbsp;\r\n\r\n<a href="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html1.jpg"><img class="alignnone size-thumbnail wp-image-16" title="html" src="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html1-150x150.jpg" alt="html/semantique" /></a>\r\n\r\n&nbsp;\r\n\r\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', 'Test1', '', 'publish', 'closed', 'open', '', 'test1', '', '', '2012-12-03 16:59:25', '2012-12-03 15:59:25', '', 0, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=4', 0, 'post', '', 0),
(6, 1, '2012-12-03 16:35:06', '2012-12-03 15:35:06', '&nbsp;\n\n&nbsp;\n\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\n\n&nbsp;\n\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', 'Test1', '', 'inherit', 'closed', 'open', '', '4-revision', '', '', '2012-12-03 16:35:06', '2012-12-03 15:35:06', '', 4, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2012-12-03 16:43:43', '2012-12-03 15:43:43', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\n&nbsp;\r\n\r\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', 'Test1', '', 'inherit', 'closed', 'open', '', '4-revision-2', '', '', '2012-12-03 16:43:43', '2012-12-03 15:43:43', '', 4, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-12-03 17:00:01', '2012-12-03 16:00:01', '&nbsp;\n\n&nbsp;\n\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\n\n&nbsp;\n\n<a href="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html1.jpg"><img class="alignnone size-thumbnail wp-image-16" title="html" src="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html1-150x150.jpg" alt="html/semantique" /></a>\n\n&nbsp;\n\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', 'Test1', '', 'inherit', 'closed', 'open', '', '4-autosave', '', '', '2012-12-03 17:00:01', '2012-12-03 16:00:01', '', 4, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-12-03 16:49:56', '2012-12-03 15:49:56', '<a href="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/css3-markup.jpg"><img class="alignnone size-medium wp-image-14" title="css3-markup" src="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/css3-markup-300x257.jpg" alt="" /></a>\r\n\r\n&nbsp;\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n&nbsp;', 'balise html teste2', '', 'publish', 'closed', 'open', '', 'balise-html-teste2', '', '', '2012-12-03 16:58:01', '2012-12-03 15:58:01', '', 0, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=9', 0, 'post', '', 0),
(10, 1, '2012-12-03 16:49:51', '2012-12-03 15:49:51', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\n\n&nbsp;', 'balise html teste2', '', 'inherit', 'closed', 'open', '', '9-revision', '', '', '2012-12-03 16:49:51', '2012-12-03 15:49:51', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2012-12-03 17:01:08', '2012-12-03 16:01:08', '<a href="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/css3-markup.jpg"><img class="alignnone size-medium wp-image-14" title="css3-markup" src="http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/css3-markup-300x257.jpg" alt="" /></a>\n\n&nbsp;\n\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\n\n&nbsp;', 'balise html teste2', '', 'inherit', 'closed', 'open', '', '9-autosave', '', '', '2012-12-03 17:01:08', '2012-12-03 16:01:08', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2012-12-03 16:56:48', '2012-12-03 15:56:48', 'red rose on wood floow - black and white', 'Rose On Wood BW', '', 'inherit', 'closed', 'open', '', 'rose-on-wood-bw', '', '', '2012-12-03 16:56:48', '2012-12-03 15:56:48', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/154971.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2012-12-03 16:56:58', '2012-12-03 15:56:58', '', 'html', '', 'inherit', 'closed', 'open', '', 'html', '', '', '2012-12-03 16:56:58', '2012-12-03 15:56:58', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2012-12-03 16:57:31', '2012-12-03 15:57:31', 'cette une image de teste', 'css3-markup', 'voici mon image teste2', 'inherit', 'closed', 'open', '', 'css3-markup', '', '', '2012-12-03 16:57:31', '2012-12-03 15:57:31', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/css3-markup.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2012-12-03 16:49:56', '2012-12-03 15:49:56', 'On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n&nbsp;', 'balise html teste2', '', 'inherit', 'closed', 'open', '', '9-revision-2', '', '', '2012-12-03 16:49:56', '2012-12-03 15:49:56', '', 9, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2012-12-03 16:58:35', '2012-12-03 15:58:35', 'mon image html', 'html', 'html', 'inherit', 'closed', 'open', '', 'html-2', '', '', '2012-12-03 16:58:35', '2012-12-03 15:58:35', '', 4, 'http://localhost/~gaprindashvili/wordpress/wordpress/wp-content/uploads/2012/12/html1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2012-12-03 16:43:59', '2012-12-03 15:43:59', '&nbsp;\r\n\r\n&nbsp;\r\n\r\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\n&nbsp;\r\n\r\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).', 'Test1', '', 'inherit', 'closed', 'open', '', '4-revision-3', '', '', '2012-12-03 16:43:59', '2012-12-03 15:43:59', '', 4, 'http://localhost/~gaprindashvili/wordpress/wordpress/?p=17', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Liens', 'liens', 0),
(3, 'programmation', 'programmation', 0),
(4, 'html', 'html', 0),
(5, 'balise', 'balise', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(4, 4, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(9, 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 3, 2),
(5, 5, 'category', '', 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'ruska'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wp_user-settings', 'editor=tinymce&hidetb=1&uploader=1&imgsize=thumbnail'),
(16, 1, 'wp_user-settings-time', '1354550362');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ruska', '$P$BMBm7ZesxAq3g6IeWLRMzLcT6KGehk/', 'ruska', 'rouska777@yahoo.fr', '', '2012-12-03 15:13:18', '', 0, 'ruska');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
