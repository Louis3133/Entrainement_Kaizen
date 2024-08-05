-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-07-29 06:27:50','2024-07-29 06:27:50','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:10:{i:1722828471;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1722839271;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722839283;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722839285;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1722839299;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1722842869;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722844669;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722846469;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1722925671;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','auto');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://localhost:10028','on');
INSERT INTO `wp_options` VALUES (3,'home','http://localhost:10028','on');
INSERT INTO `wp_options` VALUES (4,'blogname','montheme','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','louisledoussal@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:110:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"case_study/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"case_study/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"case_study/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"case_study/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"case_study/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"case_study/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"case_study/([^/]+)/embed/?$\";s:43:\"index.php?case_study=$matches[1]&embed=true\";s:31:\"case_study/([^/]+)/trackback/?$\";s:37:\"index.php?case_study=$matches[1]&tb=1\";s:39:\"case_study/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?case_study=$matches[1]&paged=$matches[2]\";s:46:\"case_study/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?case_study=$matches[1]&cpage=$matches[2]\";s:35:\"case_study/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?case_study=$matches[1]&page=$matches[2]\";s:27:\"case_study/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"case_study/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"case_study/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"case_study/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"case_study/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"case_study/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:1:{i:0;s:38:\"carbon-fields/carbon-fields-plugin.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','montheme','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','montheme','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','57155','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','posts','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','0','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1737786469','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','auto');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','auto');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.1\";s:7:\"version\";s:5:\"6.6.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1722802975;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (130,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1722802976;s:7:\"checked\";a:4:{s:8:\"montheme\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.2.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.5.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.8.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_browser_10f9287deaf609ee36fb37783f2b89c0','1722839284','off');
INSERT INTO `wp_options` VALUES (132,'_site_transient_browser_10f9287deaf609ee36fb37783f2b89c0','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"126.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (133,'_site_transient_timeout_php_check_1a31e573deff9bf63840fe4b3ef8afb9','1722839285','off');
INSERT INTO `wp_options` VALUES (134,'_site_transient_php_check_1a31e573deff9bf63840fe4b3ef8afb9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (138,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (149,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (150,'recently_activated','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (155,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1722802975;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (158,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (159,'theme_mods_twentytwentyfour','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1722234819;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (160,'current_theme','Mon theme','auto');
INSERT INTO `wp_options` VALUES (161,'theme_mods_montheme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (162,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (188,'recovery_mode_email_last_sent','1722596245','auto');
INSERT INTO `wp_options` VALUES (189,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (246,'_transient_health-check-site-status-result','{\"good\":18,\"recommended\":2,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (461,'_site_transient_timeout_browser_6a23775729fd6c068d20d383cbe27f9b','1723315619','off');
INSERT INTO `wp_options` VALUES (462,'_site_transient_browser_6a23775729fd6c068d20d383cbe27f9b','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"127.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (484,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1722846197','off');
INSERT INTO `wp_options` VALUES (485,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"WordCamp Bretagne\";s:3:\"url\";s:35:\"https://bretagne.wordcamp.org/2024/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2024-09-27 00:00:00\";s:8:\"end_date\";s:19:\"2024-09-27 00:00:00\";s:20:\"start_unix_timestamp\";i:1727388000;s:18:\"end_unix_timestamp\";i:1727388000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Rennes\";s:7:\"country\";s:2:\"FR\";s:8:\"latitude\";d:48.114568499999997;s:9:\"longitude\";d:-1.6799042;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:20:\"WordCamp Netherlands\";s:3:\"url\";s:38:\"https://netherlands.wordcamp.org/2024/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2024-11-29 00:00:00\";s:8:\"end_date\";s:19:\"2024-11-30 00:00:00\";s:20:\"start_unix_timestamp\";i:1732834800;s:18:\"end_unix_timestamp\";i:1732921200;s:8:\"location\";a:4:{s:8:\"location\";s:11:\"Netherlands\";s:7:\"country\";s:2:\"NL\";s:8:\"latitude\";d:52.099063700000002;s:9:\"longitude\";d:4.2975123000000002;}}i:2;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2025/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2025-06-05 00:00:00\";s:8:\"end_date\";s:19:\"2025-06-07 00:00:00\";s:20:\"start_unix_timestamp\";i:1749074400;s:18:\"end_unix_timestamp\";i:1749247200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Europe\";s:7:\"country\";s:2:\"CH\";s:8:\"latitude\";d:47.5627438;s:9:\"longitude\";d:7.5993871999999998;}}}}','off');
INSERT INTO `wp_options` VALUES (538,'_site_transient_timeout_theme_roots','1722804776','off');
INSERT INTO `wp_options` VALUES (539,'_site_transient_theme_roots','a:4:{s:8:\"montheme\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (546,'_site_transient_timeout_wp_theme_files_patterns-5490bc6d106fd7c6546aa675e17ffac8','1722830225','off');
INSERT INTO `wp_options` VALUES (547,'_site_transient_wp_theme_files_patterns-5490bc6d106fd7c6546aa675e17ffac8','a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=954 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (5,8,'_edit_lock','1722254262:1');
INSERT INTO `wp_postmeta` VALUES (6,11,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (7,11,'_icon','');
INSERT INTO `wp_postmeta` VALUES (9,11,'_edit_lock','1722773150:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_lock','1722262587:1');
INSERT INTO `wp_postmeta` VALUES (13,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,14,'_edit_lock','1722791108:1');
INSERT INTO `wp_postmeta` VALUES (18,14,'_icon','');
INSERT INTO `wp_postmeta` VALUES (23,15,'_edit_lock','1722262377:1');
INSERT INTO `wp_postmeta` VALUES (24,16,'_wp_attached_file','2024/07/IMG_2093-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (25,16,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:28:\"2024/07/IMG_2093-scaled.jpeg\";s:8:\"filesize\";i:389888;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"IMG_2093-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14454;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"IMG_2093-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46704;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"IMG_2093-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11252;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"IMG_2093-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31348;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"IMG_2093-1536x1152.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103684;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"IMG_2093-2048x1536.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:219940;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:26:\"iPhone SE (1st generation)\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1721676396\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.15\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:17:\"0.058823529411765\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"IMG_2093.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (32,17,'_wp_attached_file','2024/07/Photo-le-02-05-2024-a-20.28-scaled.jpeg');
INSERT INTO `wp_postmeta` VALUES (33,17,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:47:\"2024/07/Photo-le-02-05-2024-a-20.28-scaled.jpeg\";s:8:\"filesize\";i:194661;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Photo-le-02-05-2024-a-20.28-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15763;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"Photo-le-02-05-2024-a-20.28-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55403;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Photo-le-02-05-2024-a-20.28-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10777;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Photo-le-02-05-2024-a-20.28-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39444;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"Photo-le-02-05-2024-a-20.28-1536x1024.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92082;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:42:\"Photo-le-02-05-2024-a-20.28-2048x1365.jpeg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:138918;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:11:\"Photo Booth\";}}s:14:\"original_image\";s:32:\"Photo-le-02-05-2024-a-20.28.jpeg\";}');
INSERT INTO `wp_postmeta` VALUES (37,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (38,18,'_edit_lock','1722791369:1');
INSERT INTO `wp_postmeta` VALUES (39,19,'_wp_attached_file','2024/07/negrita-cuisine-1400x580-1.png');
INSERT INTO `wp_postmeta` VALUES (40,19,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:580;s:4:\"file\";s:38:\"2024/07/negrita-cuisine-1400x580-1.png\";s:8:\"filesize\";i:970305;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"negrita-cuisine-1400x580-1-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:57225;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"negrita-cuisine-1400x580-1-1024x424.png\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:539150;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"negrita-cuisine-1400x580-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:33546;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"negrita-cuisine-1400x580-1-768x318.png\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:324128;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (57,18,'_resultats','');
INSERT INTO `wp_postmeta` VALUES (58,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,22,'_edit_lock','1722789832:1');
INSERT INTO `wp_postmeta` VALUES (66,23,'_wp_attached_file','2024/07/info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (67,23,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:580;s:4:\"file\";s:74:\"2024/07/info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1.jpeg\";s:8:\"filesize\";i:190323;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:74:\"info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1-300x124.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9930;}s:5:\"large\";a:5:{s:4:\"file\";s:75:\"info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1-1024x424.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:97866;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:74:\"info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6961;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:74:\"info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1-768x318.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56956;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (73,14,'_resultats','');
INSERT INTO `wp_postmeta` VALUES (80,25,'_wp_attached_file','2024/07/cti-banner-1400x580-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (81,25,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:580;s:4:\"file\";s:34:\"2024/07/cti-banner-1400x580-1.jpeg\";s:8:\"filesize\";i:108933;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"cti-banner-1400x580-1-300x124.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11419;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"cti-banner-1400x580-1-1024x424.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65011;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"cti-banner-1400x580-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7911;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"cti-banner-1400x580-1-768x318.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42833;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (87,22,'_resultats','');
INSERT INTO `wp_postmeta` VALUES (88,27,'_wp_attached_file','2024/07/header-ptfca-1400x580-1.jpeg');
INSERT INTO `wp_postmeta` VALUES (89,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:580;s:4:\"file\";s:36:\"2024/07/header-ptfca-1400x580-1.jpeg\";s:8:\"filesize\";i:98340;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"header-ptfca-1400x580-1-300x124.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8277;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"header-ptfca-1400x580-1-1024x424.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:56803;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"header-ptfca-1400x580-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4826;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:36:\"header-ptfca-1400x580-1-768x318.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:318;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35976;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (95,11,'_resultats','');
INSERT INTO `wp_postmeta` VALUES (96,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (115,33,'_edit_lock','1722520989:1');
INSERT INTO `wp_postmeta` VALUES (116,33,'_category','Marketting digital');
INSERT INTO `wp_postmeta` VALUES (117,33,'_besoin','');
INSERT INTO `wp_postmeta` VALUES (118,33,'_solution','');
INSERT INTO `wp_postmeta` VALUES (119,33,'_teaser','');
INSERT INTO `wp_postmeta` VALUES (120,33,'_thumbnail','');
INSERT INTO `wp_postmeta` VALUES (121,33,'_description','Démarrage des campagnes Social Ads en mars 2022. Création de la page Facebook et du compte Instagram à cette période.');
INSERT INTO `wp_postmeta` VALUES (122,33,'_resultats|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (123,33,'_resultats|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (124,33,'_resultats|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (125,33,'_resultats|chiffre|0|0|value','+ 2 326');
INSERT INTO `wp_postmeta` VALUES (126,33,'_resultats|chiffre_explain|0|0|value','abonnés sur Facebook');
INSERT INTO `wp_postmeta` VALUES (127,33,'_resultats|chiffre|1|0|value','3.7 millions');
INSERT INTO `wp_postmeta` VALUES (128,33,'_resultats|chiffre_explain|1|0|value','d’impressions');
INSERT INTO `wp_postmeta` VALUES (129,33,'_resultats|chiffre|2|0|value','3 millions');
INSERT INTO `wp_postmeta` VALUES (130,33,'_resultats|chiffre_explain|2|0|value','de personnes touchées');
INSERT INTO `wp_postmeta` VALUES (131,33,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (132,33,'_wp_trash_meta_time','1722521137');
INSERT INTO `wp_postmeta` VALUES (133,33,'_wp_desired_post_slug','33');
INSERT INTO `wp_postmeta` VALUES (149,34,'_wp_attached_file','2024/08/274555243_104970755469740_3986838289160125107_n-1-e1722791399527.webp');
INSERT INTO `wp_postmeta` VALUES (150,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:449;s:6:\"height\";i:317;s:4:\"file\";s:77:\"2024/08/274555243_104970755469740_3986838289160125107_n-1-e1722791399527.webp\";s:8:\"filesize\";i:45008;s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"274555243_104970755469740_3986838289160125107_n-1-e1722791399527-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6130;}s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"274555243_104970755469740_3986838289160125107_n-1-e1722791399527-300x212.webp\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12772;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (151,35,'_wp_attached_file','2024/08/274591020_104968988803250_7281693144911832501_n-1-e1722791413318.webp');
INSERT INTO `wp_postmeta` VALUES (152,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:426;s:4:\"file\";s:77:\"2024/08/274591020_104968988803250_7281693144911832501_n-1-e1722791413318.webp\";s:8:\"filesize\";i:30550;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"274591020_104968988803250_7281693144911832501_n-1-e1722791413318-300x197.webp\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12532;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"274591020_104968988803250_7281693144911832501_n-1-e1722791413318-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6110;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (153,36,'_wp_attached_file','2024/08/278407737_123033170330165_1992161614761642412_n-2-e1722791432996.webp');
INSERT INTO `wp_postmeta` VALUES (154,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:420;s:4:\"file\";s:77:\"2024/08/278407737_123033170330165_1992161614761642412_n-2-e1722791432996.webp\";s:8:\"filesize\";i:40800;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"278407737_123033170330165_1992161614761642412_n-2-e1722791432996-300x194.webp\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12150;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"278407737_123033170330165_1992161614761642412_n-2-e1722791432996-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5974;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (155,37,'_wp_attached_file','2024/08/282235553_131906662776149_3252688814736834746_n-1-e1722791497338.webp');
INSERT INTO `wp_postmeta` VALUES (156,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:421;s:4:\"file\";s:77:\"2024/08/282235553_131906662776149_3252688814736834746_n-1-e1722791497338.webp\";s:8:\"filesize\";i:46640;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"282235553_131906662776149_3252688814736834746_n-1-e1722791497338-300x194.webp\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:15684;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"282235553_131906662776149_3252688814736834746_n-1-e1722791497338-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7400;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (367,38,'_wp_attached_file','2024/08/2.webp');
INSERT INTO `wp_postmeta` VALUES (368,38,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2024/08/2.webp\";s:8:\"filesize\";i:45724;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"2-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13130;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5584;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (369,39,'_wp_attached_file','2024/08/3.webp');
INSERT INTO `wp_postmeta` VALUES (370,39,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2024/08/3.webp\";s:8:\"filesize\";i:78558;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"3-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20674;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"3-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7962;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (371,40,'_wp_attached_file','2024/08/5.webp');
INSERT INTO `wp_postmeta` VALUES (372,40,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:14:\"2024/08/5.webp\";s:8:\"filesize\";i:46404;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:14:\"5-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14262;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:14:\"5-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6154;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (589,42,'_wp_attached_file','2024/08/Image-Etude-de-Cas-Site-KA-1.webp');
INSERT INTO `wp_postmeta` VALUES (590,42,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:41:\"2024/08/Image-Etude-de-Cas-Site-KA-1.webp\";s:8:\"filesize\";i:35546;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"Image-Etude-de-Cas-Site-KA-1-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9906;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"Image-Etude-de-Cas-Site-KA-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4452;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (591,43,'_wp_attached_file','2024/08/Image-Etude-de-Cas-Site-KA-2.webp');
INSERT INTO `wp_postmeta` VALUES (592,43,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:41:\"2024/08/Image-Etude-de-Cas-Site-KA-2.webp\";s:8:\"filesize\";i:18268;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"Image-Etude-de-Cas-Site-KA-2-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4940;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"Image-Etude-de-Cas-Site-KA-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2554;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (593,44,'_wp_attached_file','2024/08/Image-Etude-de-Cas-Site-KA.webp');
INSERT INTO `wp_postmeta` VALUES (594,44,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:39:\"2024/08/Image-Etude-de-Cas-Site-KA.webp\";s:8:\"filesize\";i:29820;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:39:\"Image-Etude-de-Cas-Site-KA-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10090;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:39:\"Image-Etude-de-Cas-Site-KA-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4570;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (664,11,'_category','Conception web et développement');
INSERT INTO `wp_postmeta` VALUES (665,11,'_besoin','Pierre & Territoires de France Centre Atlantique (PTFCA) avait pour volonté de moderniser son image de marque en adoptant un design de site Web contemporain.  En parallèle, leur objectif consistait à établir une connexion efficace entre leur site internet et leur système ERP.');
INSERT INTO `wp_postmeta` VALUES (666,11,'_solution','Kaizen Agency a entrepris une refonte complète et une conception optimisée de leur site web afin de garantir des performances accrues.');
INSERT INTO `wp_postmeta` VALUES (667,11,'_teaser','Promoteur immobilier, lotisseur et aménageur foncier');
INSERT INTO `wp_postmeta` VALUES (668,11,'_link','https://www.ptfca.fr/');
INSERT INTO `wp_postmeta` VALUES (669,11,'_thumbnail','27');
INSERT INTO `wp_postmeta` VALUES (670,11,'_description','');
INSERT INTO `wp_postmeta` VALUES (671,11,'_resultats|||0|_empty','');
INSERT INTO `wp_postmeta` VALUES (672,11,'_contenu|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (673,11,'_contenu|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (674,11,'_contenu|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (675,11,'_contenu|titre|0|0|value','Web design');
INSERT INTO `wp_postmeta` VALUES (676,11,'_contenu|texte_contenu|0|0|value','Revitaliser l’aspect désuet de la <strong>charte graphique</strong> en cherchant un juste équilibre avec des couleurs plus en phase avec les exigences du web. Cette démarche vise à actualiser l’image de l’entreprise tout en préservant son identité visuelle préexistante.\r\n\r\nDans ce processus de modernisation, un soin particulier est apporté à la sélection d’images et de visuels qui placent l’élément humain au centre, créant ainsi une connexion plus authentique et engageante avec les visiteurs.');
INSERT INTO `wp_postmeta` VALUES (677,11,'_contenu|image_contenu|0|0|value','44');
INSERT INTO `wp_postmeta` VALUES (678,11,'_contenu|solution_category|0|0|value','Référencement Naturel / SEO');
INSERT INTO `wp_postmeta` VALUES (679,11,'_contenu|titre|1|0|value','Développement');
INSERT INTO `wp_postmeta` VALUES (680,11,'_contenu|texte_contenu|1|0|value','Pour enrichir l’expérience des utilisateurs, nous avons intégré des cartes dynamiques, offrant ainsi une <strong>visualisation interactive</strong> des programmes immobiliers.\r\n\r\nPour faciliter la gestion quotidienne du site internet, nous avons conçu un<strong> back-office sur mesure</strong>. Cet outil dédié à leur activité offre une interface conviviale, permettant une mise à jour rapide et intuitive du contenu en ligne.\r\n\r\nPour assurer une synchronisation régulière des programmes immobiliers, nous avons également instauré un<strong> flux XM</strong>L, avec un processus de mise à jour automatique à intervalles réguliers grâce à un cron programmé toutes les heures. Cette intégration technique renforce la cohérence des informations diffusées sur le site.\r\n\r\nUne autre fonctionnalité notable réside dans la <strong>mise en place de formulaires de demandes d’informations</strong>. Chaque fiche produit dispose maintenant d’un moyen de contact direct, permettant aux visiteurs intéressés de communiquer facilement avec PTFCA pour obtenir des informations spécifiques sur les biens en question.');
INSERT INTO `wp_postmeta` VALUES (681,11,'_contenu|image_contenu|1|0|value','43');
INSERT INTO `wp_postmeta` VALUES (682,11,'_contenu|solution_category|1|0|value','Search engine marketing');
INSERT INTO `wp_postmeta` VALUES (683,11,'_contenu|titre|2|0|value','Hébergement');
INSERT INTO `wp_postmeta` VALUES (684,11,'_contenu|texte_contenu|2|0|value','<strong>Mise en place d’un serveur virtuel</strong> dédié afin de centraliser l’ensemble des sites du groupe en un seul emplacement.\r\n\r\nCette approche, plus <strong>sécurisée</strong> et <strong>bénéfique pour le référencement</strong>, favorise l’<strong>optimisation</strong> en regroupant toutes les ressources au même endroit.');
INSERT INTO `wp_postmeta` VALUES (685,11,'_contenu|image_contenu|2|0|value','42');
INSERT INTO `wp_postmeta` VALUES (686,11,'_contenu|solution_category|2|0|value','Intégration');
INSERT INTO `wp_postmeta` VALUES (687,45,'_wp_attached_file','2024/08/pexels-borja-lopez-1059078-700x450-1-650x450-1.webp');
INSERT INTO `wp_postmeta` VALUES (688,45,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:450;s:4:\"file\";s:59:\"2024/08/pexels-borja-lopez-1059078-700x450-1-650x450-1.webp\";s:8:\"filesize\";i:33920;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:59:\"pexels-borja-lopez-1059078-700x450-1-650x450-1-300x208.webp\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11718;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:59:\"pexels-borja-lopez-1059078-700x450-1-650x450-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4842;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (689,46,'_wp_attached_file','2024/08/csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450-1.webp');
INSERT INTO `wp_postmeta` VALUES (690,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:450;s:4:\"file\";s:67:\"2024/08/csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450-1.webp\";s:8:\"filesize\";i:82780;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:67:\"csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450-1-300x208.webp\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18446;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:67:\"csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7312;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (691,47,'_wp_attached_file','2024/08/Green-space-700x450-1-650x450-1.webp');
INSERT INTO `wp_postmeta` VALUES (692,47,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:650;s:6:\"height\";i:450;s:4:\"file\";s:44:\"2024/08/Green-space-700x450-1-650x450-1.webp\";s:8:\"filesize\";i:62822;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"Green-space-700x450-1-650x450-1-300x208.webp\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:17936;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"Green-space-700x450-1-650x450-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7740;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (716,22,'_category','Conception web et développement');
INSERT INTO `wp_postmeta` VALUES (717,22,'_besoin','Le Groupe CTI est un acteur majeur du marché immobilier bordelais. Ils englobent le développement, la gestion et l’assistance des projets. Leurs efforts se portent sur le soutien de chaque projet et sur la stimulation de l’économie locale.  Malgré leur activité foncière, cette entreprise familiale aspire à se démarquer de cette image pour mieux mettre en avant les diverses sphères dans lesquelles ils excellent telles que l’immobilier, le développement urbain et l’aménagement du territoire. Leur objectif est de moderniser leur image tout en mettant en lumière l’étendue de leurs domaines d’intervention.');
INSERT INTO `wp_postmeta` VALUES (718,22,'_solution',' Afin de répondre au besoin du Groupe CTI, il était primordial de moderniser le site web, véritable vitrine de leur activité et de leur image.  L’équipe Kaizen Agency a accompagné le Groupe CTI dans la création, la conception et développement d’un site web moderne et dynamique, capable de se démarquer des concurrents majeurs.');
INSERT INTO `wp_postmeta` VALUES (719,22,'_teaser','Projets immobiliers durables au cœur de la vie urbaine');
INSERT INTO `wp_postmeta` VALUES (720,22,'_link','');
INSERT INTO `wp_postmeta` VALUES (721,22,'_thumbnail','25');
INSERT INTO `wp_postmeta` VALUES (722,22,'_description','');
INSERT INTO `wp_postmeta` VALUES (723,22,'_resultats|||0|_empty','');
INSERT INTO `wp_postmeta` VALUES (724,22,'_contenu|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (725,22,'_contenu|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (726,22,'_contenu|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (727,22,'_contenu|titre|0|0|value','Webdesign');
INSERT INTO `wp_postmeta` VALUES (728,22,'_contenu|texte_contenu|0|0|value','Le domaine foncier est souvent perçu comme étant imposant et solennel. Nous avons opté pour une approche plus légère, en utilisant des <strong>visuels</strong> qui évoquent une <strong>ambiance verdoyante</strong> et réaliste. Ce qui vise à insuffler une atmosphère plus agréable et accueillante à leur<strong> image</strong>.\r\nDe plus, nous avons conservé le vert et l’orange qui étaient précédemment associés à leur<strong> identité de marque</strong>, et nous avons choisi des tons lumineux afin d’ajouter une touche de dynamisme.\r\n\r\nEn ce qui concerne l’<strong>ergonomie des éléments</strong>, nous avons hiérarchisé les informations les plus pertinentes à communiquer et les avons mises en évidence à l’aide des couleurs. Ainsi, les utilisateurs peuvent désormais <strong>naviguer facilement sur le site</strong> tout en ayant accès aux formations que le Groupe CTI souhaite promouvoir.');
INSERT INTO `wp_postmeta` VALUES (729,22,'_contenu|image_contenu|0|0|value','45');
INSERT INTO `wp_postmeta` VALUES (730,22,'_contenu|solution_category|0|0|value','Search engine marketing');
INSERT INTO `wp_postmeta` VALUES (731,22,'_contenu|titre|1|0|value','Conception développement');
INSERT INTO `wp_postmeta` VALUES (732,22,'_contenu|texte_contenu|1|0|value','Afin d’avoir un <strong>site performant</strong> et au plus proche des besoins graphiques du groupe CTI, nous avons développé et intégré un thème 100% personnalisé.\r\n\r\nLa <strong>consultation en mobilité</strong> est aujourd’hui un point important qu’il ne faut pas laisser de côté. Le<strong> site est donc responsive</strong> et s’adapte à toutes les tailles d’écran, desktop, mobile et tablette.\r\n\r\nLa solution technique retenue est le <strong>CMS WordPress</strong>. En effet, un grand <strong>besoin en autonomie</strong> sur la saisie des contenus était demandé par le Groupe CTI. Nous avons donc conçu un <strong>back-office personnalisé</strong>, afin que les équipes puissent avoir la main facilement pour actualiser et ajouter de nouvelles pages.');
INSERT INTO `wp_postmeta` VALUES (733,22,'_contenu|image_contenu|1|0|value','47');
INSERT INTO `wp_postmeta` VALUES (734,22,'_contenu|solution_category|1|0|value','E-commerce / Prestashop');
INSERT INTO `wp_postmeta` VALUES (735,22,'_contenu|titre|2|0|value','Hébergement');
INSERT INTO `wp_postmeta` VALUES (736,22,'_contenu|texte_contenu|2|0|value','Dans le but de <strong>réduire les temps de traitement</strong> au moment de la mise en ligne, le Groupe a choisi d’<strong>héberger leur site</strong> chez Kaizen Agency.\r\n\r\nLa société a par la suite, confié l’hébergement de plusieurs de leurs sites à l’agence, un <strong>serveur dédié</strong> a donc été ouvert au Groupe.');
INSERT INTO `wp_postmeta` VALUES (737,22,'_contenu|image_contenu|2|0|value','46');
INSERT INTO `wp_postmeta` VALUES (738,22,'_contenu|solution_category|2|0|value','Display Marketing');
INSERT INTO `wp_postmeta` VALUES (739,14,'_category','Marketting digital');
INSERT INTO `wp_postmeta` VALUES (740,14,'_besoin','Dans un secteur en constante évolution tel que le tourisme, atteindre une audience locale, nationale et internationale est un défi de taille pour toute entreprise. C’est dans ce contexte exigeant, que nous accompagnons depuis plusieurs années La Cité du Vin, désireuse de promouvoir son offre auprès de ces différentes cibles.');
INSERT INTO `wp_postmeta` VALUES (741,14,'_solution','En réponse à cet objectif précis, notre équipe a élaboré une stratégie digitale sur mesure. Notre ambition était claire : attirer non seulement les résidents locaux et régionaux, mais également les visiteurs internationaux, tout en élargissant la portée à l’échelle nationale.');
INSERT INTO `wp_postmeta` VALUES (742,14,'_teaser','Lieu d\'exposition sur le thème du vin.');
INSERT INTO `wp_postmeta` VALUES (743,14,'_link','https://www.laciteduvin.com/fr');
INSERT INTO `wp_postmeta` VALUES (744,14,'_thumbnail','23');
INSERT INTO `wp_postmeta` VALUES (745,14,'_description','Du 1er janvier au 31 août 2023, vs du 1er janvier au 31 août 2022.');
INSERT INTO `wp_postmeta` VALUES (746,14,'_resultats|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (747,14,'_resultats|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (748,14,'_resultats|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (749,14,'_resultats|chiffre|0|0|value','+132 %');
INSERT INTO `wp_postmeta` VALUES (750,14,'_resultats|chiffre_explain|0|0|value','de CA');
INSERT INTO `wp_postmeta` VALUES (751,14,'_resultats|chiffre|1|0|value','+62%');
INSERT INTO `wp_postmeta` VALUES (752,14,'_resultats|chiffre_explain|1|0|value','de conversions, pour un investissement +16%');
INSERT INTO `wp_postmeta` VALUES (753,14,'_resultats|chiffre|2|0|value','+17,43 %');
INSERT INTO `wp_postmeta` VALUES (754,14,'_resultats|chiffre_explain|2|0|value','de taux d’impressions sur le RR');
INSERT INTO `wp_postmeta` VALUES (755,14,'_contenu|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (756,14,'_contenu|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (757,14,'_contenu|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (758,14,'_contenu|titre|0|0|value','Campagnes SEA');
INSERT INTO `wp_postmeta` VALUES (759,14,'_contenu|texte_contenu|0|0|value','Une approche efficace pour toucher notre audience localement et nationalement.\r\n\r\n<strong>Ciblage Local</strong>\r\n\r\nPour atteindre une audience locale, habitants et touristes, nous avons conçu des <strong>campagnes SEA</strong> centrées sur des mots clés liées aux activités dans la région de Bordeaux. Cette approche nous a permis de<strong> promouvoir La Cité du Vin</strong> auprès d’un public qui n’était pas familiarisé avec ce lieu, tout en soutenant les expositions temporaires auprès des visiteurs habitués afin de réitérer leur expérience.\r\n\r\n<strong>Expansion Nationale</strong>\r\n\r\nNous avons ensuite élargi notre <strong>stratégie SEA</strong> pour toucher une <strong>audience nationale</strong>. En élargissant les mots-clés de manière pertinente, nous nous sommes inscrits dans les recherches nationales dans le but d’<strong>attirer l’attention des voyageurs en recherche d’une escapade bordelaise</strong>.');
INSERT INTO `wp_postmeta` VALUES (760,14,'_contenu|image_contenu|0|0|value','38');
INSERT INTO `wp_postmeta` VALUES (761,14,'_contenu|solution_category|0|0|value','Référencement Naturel / SEO');
INSERT INTO `wp_postmeta` VALUES (762,14,'_contenu|titre|1|0|value','Youtube');
INSERT INTO `wp_postmeta` VALUES (763,14,'_contenu|texte_contenu|1|0|value','Une plateforme incontournable pour valoriser une expérience enrichissante.\r\n\r\n<strong>Contenu vidéo attrayant</strong>\r\n\r\nYouTube est un véritable aimant pour les voyageurs en quête d’inspiration. Nous avons ainsi accompagné La Cité du Vin dans la <strong>réflexion de contenus vidéo</strong> mettant en lumière l’architecture de ce lieu emblématique associé à l’expérience unique qu’il propose.\r\n\r\n<strong>Ciblage précis pour un impact optimal</strong>\r\n\r\nEn utilisant des segments d’audience stratégiques, nous avons <strong>diffusé notre contenu</strong> auprès des personnes les plus susceptibles d’être intéressées par les offres touristiques et culturelles, <strong>maximisant ainsi la portée</strong> et l’<strong>efficacité de nos campagnes</strong>.');
INSERT INTO `wp_postmeta` VALUES (764,14,'_contenu|image_contenu|1|0|value','40');
INSERT INTO `wp_postmeta` VALUES (765,14,'_contenu|solution_category|1|0|value','Expérience utilisateur / UX et UI');
INSERT INTO `wp_postmeta` VALUES (766,14,'_contenu|titre|2|0|value','L\'équipe Kaizen Agency');
INSERT INTO `wp_postmeta` VALUES (767,14,'_contenu|texte_contenu|2|0|value','Nous sommes <strong>fiers d’accompagner La Cité du Vin</strong> dans l’accomplissement de ses objectifs.\r\n\r\nGrâce cette approche, nous contribuons, à notre échelle, à <strong>renforcer la présence de notre client</strong> <strong>sur la scène touristique et culturelle</strong>, créant ainsi une expérience immersive pour tous les publics visés.');
INSERT INTO `wp_postmeta` VALUES (768,14,'_contenu|image_contenu|2|0|value','39');
INSERT INTO `wp_postmeta` VALUES (769,14,'_contenu|solution_category|2|0|value','Search engine marketing');
INSERT INTO `wp_postmeta` VALUES (806,34,'_wp_attachment_backup_sizes','a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:54:\"274555243_104970755469740_3986838289160125107_n-1.webp\";}s:18:\"full-1722791339162\";a:3:{s:5:\"width\";i:647;s:6:\"height\";i:498;s:4:\"file\";s:69:\"274555243_104970755469740_3986838289160125107_n-1-e1722791336905.webp\";}s:18:\"full-1722791399527\";a:3:{s:5:\"width\";i:520;s:6:\"height\";i:400;s:4:\"file\";s:69:\"274555243_104970755469740_3986838289160125107_n-1-e1722791358502.webp\";}}');
INSERT INTO `wp_postmeta` VALUES (843,35,'_wp_attachment_backup_sizes','a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:54:\"274591020_104968988803250_7281693144911832501_n-1.webp\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:62:\"274591020_104968988803250_7281693144911832501_n-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6178;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:62:\"274591020_104968988803250_7281693144911832501_n-1-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13782;}}');
INSERT INTO `wp_postmeta` VALUES (844,36,'_wp_attachment_backup_sizes','a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:54:\"278407737_123033170330165_1992161614761642412_n-2.webp\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:62:\"278407737_123033170330165_1992161614761642412_n-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6020;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:62:\"278407737_123033170330165_1992161614761642412_n-2-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14158;}}');
INSERT INTO `wp_postmeta` VALUES (917,37,'_wp_attachment_backup_sizes','a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:650;s:6:\"height\";i:500;s:4:\"file\";s:54:\"282235553_131906662776149_3252688814736834746_n-1.webp\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:62:\"282235553_131906662776149_3252688814736834746_n-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7964;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:62:\"282235553_131906662776149_3252688814736834746_n-1-300x231.webp\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:18624;}}');
INSERT INTO `wp_postmeta` VALUES (918,18,'_category','Marketting digital');
INSERT INTO `wp_postmeta` VALUES (919,18,'_besoin','Negrita souhaitait construire sa présence digitale en capitalisant sur le patrimoine de la marque. Objectif ? Affirmer sa visibilité auprès de ses clients et développer sa notoriété auprès d’un public s’inscrivant dans la tendance du fait maison ainsi qu’un public plus jeune qui prend de plus en plus de plaisir à cuisiner.');
INSERT INTO `wp_postmeta` VALUES (920,18,'_solution','L’objectif principal de communication sera d’imposer l’authentique rhum Negrita comme l’ingrédient qui apportera une autre dimension aux recettes maison. Notre réponse : affiner un ciblage précis et des contenus qualitatifs pour valoriser les recettes sucrées et salées pour une cuisine simple, savoureuse, avec une touche d’originalité.');
INSERT INTO `wp_postmeta` VALUES (921,18,'_teaser','Rhum gastronomique produit dans les îles françaises');
INSERT INTO `wp_postmeta` VALUES (922,18,'_link','https://www.negrita.fr/');
INSERT INTO `wp_postmeta` VALUES (923,18,'_thumbnail','19');
INSERT INTO `wp_postmeta` VALUES (924,18,'_description','Démarrage des campagnes Social Ads en mars 2022. Création de la page Facebook et du compte Instagram à cette période.');
INSERT INTO `wp_postmeta` VALUES (925,18,'_resultats|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (926,18,'_resultats|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (927,18,'_resultats|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (928,18,'_resultats|chiffre|0|0|value','+ 2 326');
INSERT INTO `wp_postmeta` VALUES (929,18,'_resultats|chiffre_explain|0|0|value','abonnés sur Facebook');
INSERT INTO `wp_postmeta` VALUES (930,18,'_resultats|chiffre|1|0|value','3.7 millions');
INSERT INTO `wp_postmeta` VALUES (931,18,'_resultats|chiffre_explain|1|0|value','d’impressions');
INSERT INTO `wp_postmeta` VALUES (932,18,'_resultats|chiffre|2|0|value','3 millions');
INSERT INTO `wp_postmeta` VALUES (933,18,'_resultats|chiffre_explain|2|0|value','de personnes touchées');
INSERT INTO `wp_postmeta` VALUES (934,18,'_contenu|||0|value','_');
INSERT INTO `wp_postmeta` VALUES (935,18,'_contenu|||1|value','_');
INSERT INTO `wp_postmeta` VALUES (936,18,'_contenu|||2|value','_');
INSERT INTO `wp_postmeta` VALUES (937,18,'_contenu|||3|value','_');
INSERT INTO `wp_postmeta` VALUES (938,18,'_contenu|titre|0|0|value','Stratégie Social Media');
INSERT INTO `wp_postmeta` VALUES (939,18,'_contenu|texte_contenu|0|0|value','À l’aube de cette transition social media, nous nous sommes questionnés sur la manière la plus efficace de créer une communauté engagée et sensible aux messages.\r\n\r\nComment pouvons-nous asseoir le rôle de Negrita en tant qu’accompagnateur et facilitateur dans les recettes de cuisine, du quotidien ?\r\n\r\nFaisons moins, mais mieux ! Un rythme de publication raisonnable pour des contenus plus qualitatifs accompagnés d’un budget média afin de maximiser le reach et la visibilité. Les équipes Kaizen Agency pilotent ainsi les campagnes sur 3 canaux qui permettent aujourd’hui de toucher cette audience au bon endroit : Facebook, Instagram et Pinterest.');
INSERT INTO `wp_postmeta` VALUES (940,18,'_contenu|image_contenu|0|0|value','34');
INSERT INTO `wp_postmeta` VALUES (941,18,'_contenu|solution_category|0|0|value','Search engine marketing');
INSERT INTO `wp_postmeta` VALUES (942,18,'_contenu|titre|1|0|value','Phase Action');
INSERT INTO `wp_postmeta` VALUES (943,18,'_contenu|texte_contenu|1|0|value','Les réseaux sociaux étant une vitrine plébiscitée par les internautes dans la découverte et l’appréciation d’une marque, nous avions besoin de faire grandir rapidement la communauté sur les espaces social media pour une meilleure légitimité.\r\n\r\nPour répondre à ce besoin, nous avons créé une campagne de recrutement d’abonnés, ciblant des audiences similaires à celle de Negrita et affinitaire à l’univers du fait-maison.');
INSERT INTO `wp_postmeta` VALUES (944,18,'_contenu|image_contenu|1|0|value','35');
INSERT INTO `wp_postmeta` VALUES (945,18,'_contenu|solution_category|1|0|value','E-commerce / Prestashop');
INSERT INTO `wp_postmeta` VALUES (946,18,'_contenu|titre|2|0|value','Phase Considération : Recettes');
INSERT INTO `wp_postmeta` VALUES (947,18,'_contenu|texte_contenu|2|0|value','La marque Negrita est riche de son histoire et d’authenticité dans la cuisine. Nous avons observé un réel lien et sentiment d’appartenance des consommateurs, notamment à travers des moments inter-générationnels en cuisine, où ce rhum est présent dans les cuisines de nos parents et grands-parents.\r\n\r\nLa recette est par conséquent le contenu idéal pour véhiculer ces valeurs. Nous avons fait le choix d’exploiter ces contenus pour générer de l’interaction auprès d’utilisateurs ayant à cœur de partager leurs astuces et préférences culinaires. Cette réflexion à l’interaction et un affinage fin des audiences permettent d’augmenter le nombre d’abonnés, tout en améliorant le taux d’engagement (clics, likes, commentaires, partages, enregistrements, etc).');
INSERT INTO `wp_postmeta` VALUES (948,18,'_contenu|image_contenu|2|0|value','36');
INSERT INTO `wp_postmeta` VALUES (949,18,'_contenu|solution_category|2|0|value','Formations');
INSERT INTO `wp_postmeta` VALUES (950,18,'_contenu|titre|3|0|value','Phase Notoriété : Paper Cut Design');
INSERT INTO `wp_postmeta` VALUES (951,18,'_contenu|texte_contenu|3|0|value','Afin de permettre à Negrita d’accroître sa visibilité social media tout en contribuant au rajeunissement de sa cible, nous avons travaillé des campagnes de notoriété en ce sens.\r\n\r\nLes contenus médiatisés : des Paper Set. Cette technique à la fois moderne, dynamique et créative permet de mettre l’accent sur le produit, la bouteille de rhum Negrita, pour une meilleure mémorisation de marque. Plusieurs Paper Set ont été pensés pour accompagner les différents temps forts de consommation de l’année (Noël, la Chandeleur, l’été, la rentrée, etc.).');
INSERT INTO `wp_postmeta` VALUES (952,18,'_contenu|image_contenu|3|0|value','37');
INSERT INTO `wp_postmeta` VALUES (953,18,'_contenu|solution_category|3|0|value','Expérience utilisateur / UX et UI');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-07-29 06:27:50','2024-07-29 06:27:50','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-07-29 06:27:50','2024-07-29 06:27:50','',0,'http://localhost:10028/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-07-29 06:27:50','2024-07-29 06:27:50','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10028/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-07-29 06:27:50','2024-07-29 06:27:50','',0,'http://localhost:10028/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-07-29 06:27:50','2024-07-29 06:27:50','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:10028.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-07-29 06:27:50','2024-07-29 06:27:50','',0,'http://localhost:10028/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2024-07-29 06:28:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-07-29 06:28:05','0000-00-00 00:00:00','',0,'http://localhost:10028/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-07-29 11:58:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-29 11:58:13','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=6',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-07-29 11:59:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-29 11:59:59','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=7',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-07-29 12:00:05','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-07-29 12:00:05','0000-00-00 00:00:00','',0,'http://localhost:10028/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-07-29 12:00:13','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-29 12:00:13','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=9',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-07-29 12:00:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-29 12:00:59','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=10',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-07-29 12:03:13','2024-07-29 12:03:13','','Pierre & Territoires de France','','publish','closed','closed','','qsdqsdsqd','','','2024-08-04 12:05:36','2024-08-04 12:05:36','',0,'http://localhost:10028/?post_type=case_study&#038;p=11',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-07-29 12:03:26','2024-07-29 12:03:26','','sdfsdf','','publish','open','open','','sdfsdf','','','2024-07-29 12:03:26','2024-07-29 12:03:26','',0,'http://localhost:10028/?p=12',0,'post','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-07-29 12:03:26','2024-07-29 12:03:26','','sdfsdf','','inherit','closed','closed','','12-revision-v1','','','2024-07-29 12:03:26','2024-07-29 12:03:26','',12,'http://localhost:10028/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-07-29 12:57:04','2024-07-29 12:57:04','','La Cité du vin','','publish','closed','closed','','restaurant-de-fou','','','2024-08-04 16:46:40','2024-08-04 16:46:40','',0,'http://localhost:10028/?post_type=case_study&#038;p=14',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-07-29 14:14:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-07-29 14:14:40','0000-00-00 00:00:00','',0,'http://localhost:10028/?p=15',0,'post','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-07-29 14:17:24','2024-07-29 14:17:24','','IMG_2093','','inherit','open','closed','','img_2093','','','2024-07-29 14:17:24','2024-07-29 14:17:24','',0,'http://localhost:10028/wp-content/uploads/2024/07/IMG_2093.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-07-29 14:43:34','2024-07-29 14:43:34','','Photo le 02-05-2024 à 20.28','','inherit','open','closed','','photo-le-02-05-2024-a-20-28','','','2024-07-29 14:43:34','2024-07-29 14:43:34','',0,'http://localhost:10028/wp-content/uploads/2024/07/Photo-le-02-05-2024-a-20.28.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-07-30 06:25:06','2024-07-30 06:25:06','','Negrita','','publish','closed','closed','','negrita','','','2024-08-04 17:11:40','2024-08-04 17:11:40','',0,'http://localhost:10028/?post_type=case_study&#038;p=18',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-07-30 06:24:59','2024-07-30 06:24:59','','negrita-cuisine-1400x580','','inherit','open','closed','','negrita-cuisine-1400x580','','','2024-07-30 06:24:59','2024-07-30 06:24:59','',0,'http://localhost:10028/wp-content/uploads/2024/07/negrita-cuisine-1400x580-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-07-30 10:47:03','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-30 10:47:03','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=20',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-07-30 10:52:45','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-07-30 10:52:45','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=21',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-07-30 20:08:48','2024-07-30 20:08:48','','CTI','','publish','closed','closed','','euuuh','','','2024-08-04 12:10:47','2024-08-04 12:10:47','',0,'http://localhost:10028/?post_type=case_study&#038;p=22',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-07-30 20:49:21','2024-07-30 20:49:21','','info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580','','inherit','open','closed','','info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580','','','2024-07-30 20:49:21','2024-07-30 20:49:21','',0,'http://localhost:10028/wp-content/uploads/2024/07/info-background-d3104ebb903d8350f383d80f56f2c914-1-1400x580-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-07-30 20:49:53','2024-07-30 20:49:53','','La Cité du vin','','inherit','closed','closed','','14-autosave-v1','','','2024-07-30 20:49:53','2024-07-30 20:49:53','',14,'http://localhost:10028/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-07-30 20:51:41','2024-07-30 20:51:41','','cti-banner-1400x580','','inherit','open','closed','','cti-banner-1400x580','','','2024-07-30 20:51:41','2024-07-30 20:51:41','',0,'http://localhost:10028/wp-content/uploads/2024/07/cti-banner-1400x580-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-07-30 20:52:05','2024-07-30 20:52:05','','CTI','','inherit','closed','closed','','22-autosave-v1','','','2024-07-30 20:52:05','2024-07-30 20:52:05','',22,'http://localhost:10028/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-07-30 20:54:26','2024-07-30 20:54:26','','header-ptfca-1400x580','','inherit','open','closed','','header-ptfca-1400x580','','','2024-07-30 20:54:26','2024-07-30 20:54:26','',0,'http://localhost:10028/wp-content/uploads/2024/07/header-ptfca-1400x580-1.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-08-01 12:33:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-01 12:33:01','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=28',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-08-01 12:33:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-01 12:33:24','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=29',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-08-01 12:37:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-01 12:37:39','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=30',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-08-01 13:15:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-01 13:15:57','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=31',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-08-01 13:17:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-01 13:17:57','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=32',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-08-01 13:22:51','2024-08-01 13:22:51','','','','trash','closed','closed','','33__trashed','','','2024-08-01 14:05:37','2024-08-01 14:05:37','',0,'http://localhost:10028/?post_type=case_study&#038;p=33',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-08-02 06:58:36','2024-08-02 06:58:36','','274555243_104970755469740_3986838289160125107_n-1','','inherit','open','closed','','274555243_104970755469740_3986838289160125107_n-1','','','2024-08-02 06:58:36','2024-08-02 06:58:36','',0,'http://localhost:10028/wp-content/uploads/2024/08/274555243_104970755469740_3986838289160125107_n-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-08-02 06:58:36','2024-08-02 06:58:36','','274591020_104968988803250_7281693144911832501_n-1','','inherit','open','closed','','274591020_104968988803250_7281693144911832501_n-1','','','2024-08-02 06:58:36','2024-08-02 06:58:36','',0,'http://localhost:10028/wp-content/uploads/2024/08/274591020_104968988803250_7281693144911832501_n-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-08-02 06:58:36','2024-08-02 06:58:36','','278407737_123033170330165_1992161614761642412_n-2','','inherit','open','closed','','278407737_123033170330165_1992161614761642412_n-2','','','2024-08-02 06:58:36','2024-08-02 06:58:36','',0,'http://localhost:10028/wp-content/uploads/2024/08/278407737_123033170330165_1992161614761642412_n-2.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-08-02 06:58:36','2024-08-02 06:58:36','','282235553_131906662776149_3252688814736834746_n-1','','inherit','open','closed','','282235553_131906662776149_3252688814736834746_n-1','','','2024-08-02 06:58:36','2024-08-02 06:58:36','',0,'http://localhost:10028/wp-content/uploads/2024/08/282235553_131906662776149_3252688814736834746_n-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-08-02 14:02:50','2024-08-02 14:02:50','','2','','inherit','open','closed','','2','','','2024-08-02 14:02:50','2024-08-02 14:02:50','',0,'http://localhost:10028/wp-content/uploads/2024/08/2.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-08-02 14:02:51','2024-08-02 14:02:51','','3','','inherit','open','closed','','3','','','2024-08-02 14:02:51','2024-08-02 14:02:51','',0,'http://localhost:10028/wp-content/uploads/2024/08/3.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-08-02 14:02:51','2024-08-02 14:02:51','','5','','inherit','open','closed','','5','','','2024-08-02 14:02:51','2024-08-02 14:02:51','',0,'http://localhost:10028/wp-content/uploads/2024/08/5.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-08-03 18:51:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-08-03 18:51:02','0000-00-00 00:00:00','',0,'http://localhost:10028/?post_type=case_study&p=41',0,'case_study','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-08-04 12:03:25','2024-08-04 12:03:25','','Image-Etude-de-Cas-Site-KA-1','','inherit','open','closed','','image-etude-de-cas-site-ka-1','','','2024-08-04 12:03:25','2024-08-04 12:03:25','',0,'http://localhost:10028/wp-content/uploads/2024/08/Image-Etude-de-Cas-Site-KA-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-08-04 12:03:25','2024-08-04 12:03:25','','Image-Etude-de-Cas-Site-KA-2','','inherit','open','closed','','image-etude-de-cas-site-ka-2','','','2024-08-04 12:03:25','2024-08-04 12:03:25','',0,'http://localhost:10028/wp-content/uploads/2024/08/Image-Etude-de-Cas-Site-KA-2.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-08-04 12:03:25','2024-08-04 12:03:25','','Image-Etude-de-Cas-Site-KA','','inherit','open','closed','','image-etude-de-cas-site-ka','','','2024-08-04 12:03:25','2024-08-04 12:03:25','',0,'http://localhost:10028/wp-content/uploads/2024/08/Image-Etude-de-Cas-Site-KA.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-08-04 12:10:00','2024-08-04 12:10:00','','pexels-borja-lopez-1059078-700x450-1-650x450','','inherit','open','closed','','pexels-borja-lopez-1059078-700x450-1-650x450','','','2024-08-04 12:10:00','2024-08-04 12:10:00','',0,'http://localhost:10028/wp-content/uploads/2024/08/pexels-borja-lopez-1059078-700x450-1-650x450-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-08-04 12:10:09','2024-08-04 12:10:09','','csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450','','inherit','open','closed','','csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450','','','2024-08-04 12:10:09','2024-08-04 12:10:09','',0,'http://localhost:10028/wp-content/uploads/2024/08/csm_panneau_solaire_d35d094f6f-min-700x450-1-650x450-1.webp',0,'attachment','image/webp',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-08-04 12:10:09','2024-08-04 12:10:09','','Green-space-700x450-1-650x450','','inherit','open','closed','','green-space-700x450-1-650x450','','','2024-08-04 12:10:09','2024-08-04 12:10:09','',0,'http://localhost:10028/wp-content/uploads/2024/08/Green-space-700x450-1-650x450-1.webp',0,'attachment','image/webp',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (12,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Louis');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"a44a2bb1b5604b6b86818e6be844b97fc57d584bcb18e20c798ca403be229a57\";a:4:{s:10:\"expiration\";i:1723789819;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36\";s:5:\"login\";i:1722580219;}s:64:\"5e650bebc9e10f35c5c62747d0835605f8c6b82652fe4989b4a5a9eedd252909\";a:4:{s:10:\"expiration\";i:1722975797;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36\";s:5:\"login\";i:1722802997;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_user-settings','libraryContent=browse&editor=tinymce&advImgDetails=show&hidetb=1');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings-time','1722234480');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_dashboard','a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2024-07-29T14:15:34.468Z\";s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_case_study','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_case_study','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Louis','$P$B10y8lkBOtlnrkiuCPNw1VNIvGMlJx.','louis','louisledoussal@gmail.com','http://localhost:10028','2024-07-29 06:27:50','',0,'Louis');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-05  8:14:09
