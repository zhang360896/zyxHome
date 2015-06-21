-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 06 月 21 日 13:42
-- 服务器版本: 5.0.90-community-nt
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zyxhome`
--

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_amazingaudioplayer`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_amazingaudioplayer` (
  `id` mediumint(9) NOT NULL auto_increment,
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `authorid` tinytext NOT NULL,
  `name` tinytext NOT NULL,
  `images` text NOT NULL,
  `audios` text NOT NULL,
  `audioplayercode` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_amazingaudioplayer`
--

INSERT INTO `bluemix_0_5_wp_amazingaudioplayer` (`id`, `time`, `authorid`, `name`, `images`, `audios`, `audioplayercode`) VALUES
(2, '2015-06-21 18:00:42', '2', 'Amazing Audio Player', '', '', '\r\n    <div id="amazingaudioplayer-2" style="display:block;position:relative;width:100%;height:auto;margin:0px auto 0px;">\r\n        <ul class="amazingaudioplayer-audios" style="display:none;">\r\n            <li data-artist="Beyonce" data-title="I Was Here" data-album="4" data-info="" data-image="" data-duration="239">\r\n                <div class="amazingaudioplayer-source" data-src="http://127.0.0.1:90/wordpress/wp-content/uploads/amazingaudioplayer/2/audios/Beyonce_I_Was_Here.mp3" data-type="audio/mpeg" />\r\n            </li>\r\n        </ul>\r\n    </div>\r\n    '),
(3, '2015-06-21 18:15:12', '2', 'Amazing Audio Player', '', '', '\r\n    <div id="amazingaudioplayer-3" style="display:block;position:relative;width:100%;height:auto;margin:0px auto 0px;">\r\n        <ul class="amazingaudioplayer-audios" style="display:none;">\r\n            <li data-artist="Beyonce" data-title="I Was Here" data-album="4" data-info="" data-image="" data-duration="239">\r\n                <div class="amazingaudioplayer-source" data-src="http://127.0.0.1:90/wordpress/wp-content/uploads/amazingaudioplayer/3/audios/Beyonce_I_Was_Here.mp3" data-type="audio/mpeg" />\r\n            </li>\r\n        </ul>\r\n    </div>\r\n    '),
(4, '2015-06-21 18:20:49', '2', 'Amazing Audio Player', '', '', '\r\n    <div id="amazingaudioplayer-4" style="display:block;position:relative;width:100%;height:auto;margin:0px auto 0px;">\r\n        <ul class="amazingaudioplayer-audios" style="display:none;">\r\n            <li data-artist="Beyonce" data-title="I Was Here" data-album="4" data-info="" data-image="" data-duration="239">\r\n                <div class="amazingaudioplayer-source" data-src="http://127.0.0.1:90/wordpress/wp-content/uploads/amazingaudioplayer/4/audios/Beyonce_I_Was_Here.mp3" data-type="audio/mpeg" />\r\n            </li>\r\n        </ul>\r\n    </div>\r\n    ');

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_comments`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_comments`
--

INSERT INTO `bluemix_0_5_wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 1, 'WordPress先生', '', 'https://wordpress.org/', '', '2015-06-10 17:59:26', '2015-06-10 09:59:26', '您好，这是一条评论。\n要删除评论，请先登录，然后再查看这篇文章的评论。登录后您可以看到编辑或者删除评论的选项。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_links`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_ngg_album`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_ngg_album` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `previewpic` bigint(20) NOT NULL default '0',
  `albumdesc` mediumtext,
  `sortorder` longtext NOT NULL,
  `pageid` bigint(20) NOT NULL default '0',
  `extras_post_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_ngg_album`
--

INSERT INTO `bluemix_0_5_wp_ngg_album` (`id`, `name`, `slug`, `previewpic`, `albumdesc`, `sortorder`, `pageid`, `extras_post_id`) VALUES
(1, '测试相册', '%e6%b5%8b%e8%af%95%e7%9b%b8%e5%86%8c-1', 0, '', 'W10=', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_ngg_gallery`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_ngg_gallery` (
  `gid` bigint(20) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `path` mediumtext,
  `title` mediumtext,
  `galdesc` mediumtext,
  `pageid` bigint(20) NOT NULL default '0',
  `previewpic` bigint(20) NOT NULL default '0',
  `author` bigint(20) NOT NULL default '0',
  `extras_post_id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`gid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_ngg_gallery`
--

INSERT INTO `bluemix_0_5_wp_ngg_gallery` (`gid`, `name`, `slug`, `path`, `title`, `galdesc`, `pageid`, `previewpic`, `author`, `extras_post_id`) VALUES
(1, '%e6%b5%8b%e8%af%95%e5%9b%be%e5%ba%93', '%e6%b5%8b%e8%af%95%e5%9b%be%e5%ba%93-1', '\\wp-content\\uploads\\sites\\1\\nggallery\\%e6%b5%8b%e8%af%95%e5%9b%be%e5%ba%93-1', '测试图库', '', 0, 1, 2, 118),
(2, 'test', 'test', '\\wp-content\\uploads\\sites\\1\\nggallery\\test', 'test', '', 0, 4, 2, 131);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_ngg_pictures`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_ngg_pictures` (
  `pid` bigint(20) NOT NULL auto_increment,
  `image_slug` varchar(255) NOT NULL,
  `post_id` bigint(20) NOT NULL default '0',
  `galleryid` bigint(20) NOT NULL default '0',
  `filename` varchar(255) NOT NULL,
  `description` mediumtext,
  `alttext` mediumtext,
  `imagedate` datetime NOT NULL default '0000-00-00 00:00:00',
  `exclude` tinyint(4) default '0',
  `sortorder` bigint(20) NOT NULL default '0',
  `meta_data` longtext,
  `extras_post_id` bigint(20) NOT NULL default '0',
  `updated_at` bigint(20) default NULL,
  PRIMARY KEY  (`pid`),
  KEY `extras_post_id_key` (`extras_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_ngg_pictures`
--

INSERT INTO `bluemix_0_5_wp_ngg_pictures` (`pid`, `image_slug`, `post_id`, `galleryid`, `filename`, `description`, `alttext`, `imagedate`, `exclude`, `sortorder`, `meta_data`, `extras_post_id`, `updated_at`) VALUES
(3, 'gou', 0, 1, 'gou.jpg', '', 'gou', '2015-06-21 08:16:47', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJnb3UuanBnIiwid2lkdGgiOjM2OCwiaGVpZ2h0Ijo0NzUsImdlbmVyYXRlZCI6IjAuNzgwMzEwMDAgMTQzNDg3NDYwNyJ9LCJ3aWR0aCI6MzY4LCJoZWlnaHQiOjQ3NSwiZnVsbCI6eyJ3aWR0aCI6MzY4LCJoZWlnaHQiOjQ3NX0sInRodW1ibmFpbCI6eyJ3aWR0aCI6MjQwLCJoZWlnaHQiOjE2MCwiZmlsZW5hbWUiOiJ0aHVtYnNfZ291LmpwZyIsImdlbmVyYXRlZCI6IjAuMTM2ODU5MDAgMTQzNDg3NDYwOCJ9LCJhcGVydHVyZSI6ZmFsc2UsImNyZWRpdCI6ZmFsc2UsImNhbWVyYSI6ZmFsc2UsImNhcHRpb24iOmZhbHNlLCJjcmVhdGVkX3RpbWVzdGFtcCI6ZmFsc2UsImNvcHlyaWdodCI6ZmFsc2UsImZvY2FsX2xlbmd0aCI6ZmFsc2UsImlzbyI6ZmFsc2UsInNodXR0ZXJfc3BlZWQiOmZhbHNlLCJmbGFzaCI6ZmFsc2UsInRpdGxlIjpmYWxzZSwia2V5d29yZHMiOmZhbHNlLCJzYXZlZCI6dHJ1ZX0=', 127, 1434874608),
(2, 'programmingmonkey-1', 0, 1, 'programmingMonkey.jpg', ' ', 'programmingMonkey', '2015-06-21 08:04:27', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJwcm9ncmFtbWluZ01vbmtleS5qcGciLCJ3aWR0aCI6NjA1LCJoZWlnaHQiOjYxMSwiZ2VuZXJhdGVkIjoiMC42Nzc2OTUwMCAxNDM0ODczODY3In0sIndpZHRoIjo2MDUsImhlaWdodCI6NjExLCJmdWxsIjp7IndpZHRoIjo2MDUsImhlaWdodCI6NjExfSwidGh1bWJuYWlsIjp7IndpZHRoIjoyNDAsImhlaWdodCI6MTYwLCJmaWxlbmFtZSI6InRodW1ic19wcm9ncmFtbWluZ01vbmtleS5qcGciLCJnZW5lcmF0ZWQiOiIwLjg4ODk1MjAwIDE0MzQ4NzM4NjcifSwiYXBlcnR1cmUiOmZhbHNlLCJjcmVkaXQiOmZhbHNlLCJjYW1lcmEiOmZhbHNlLCJjYXB0aW9uIjpmYWxzZSwiY3JlYXRlZF90aW1lc3RhbXAiOmZhbHNlLCJjb3B5cmlnaHQiOmZhbHNlLCJmb2NhbF9sZW5ndGgiOmZhbHNlLCJpc28iOmZhbHNlLCJzaHV0dGVyX3NwZWVkIjpmYWxzZSwiZmxhc2giOmZhbHNlLCJ0aXRsZSI6ZmFsc2UsImtleXdvcmRzIjpmYWxzZSwic2F2ZWQiOnRydWV9', 123, 1434873867),
(4, 'cloud-1', 0, 2, 'Cloud-1.png', '', 'Cloud 1', '2015-06-21 08:31:24', 0, 0, 'eyJiYWNrdXAiOnsiZmlsZW5hbWUiOiJDbG91ZC0xLnBuZyIsIndpZHRoIjoxMTE1LCJoZWlnaHQiOjExMTUsImdlbmVyYXRlZCI6IjAuMjAyNjEyMDAgMTQzNDg3NTQ4NCJ9LCJ3aWR0aCI6MTExNSwiaGVpZ2h0IjoxMTE1LCJmdWxsIjp7IndpZHRoIjoxMTE1LCJoZWlnaHQiOjExMTV9LCJ0aHVtYm5haWwiOnsid2lkdGgiOjI0MCwiaGVpZ2h0IjoxNjAsImZpbGVuYW1lIjoidGh1bWJzX0Nsb3VkLTEucG5nIiwiZ2VuZXJhdGVkIjoiMC41NDI0MDEwMCAxNDM0ODc1NDg0In0sImFwZXJ0dXJlIjpmYWxzZSwiY3JlZGl0IjpmYWxzZSwiY2FtZXJhIjpmYWxzZSwiY2FwdGlvbiI6ZmFsc2UsImNyZWF0ZWRfdGltZXN0YW1wIjpmYWxzZSwiY29weXJpZ2h0IjpmYWxzZSwiZm9jYWxfbGVuZ3RoIjpmYWxzZSwiaXNvIjpmYWxzZSwic2h1dHRlcl9zcGVlZCI6ZmFsc2UsImZsYXNoIjpmYWxzZSwidGl0bGUiOmZhbHNlLCJrZXl3b3JkcyI6ZmFsc2UsInNhdmVkIjp0cnVlfQ==', 130, 1434875484);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_options`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2228 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_options`
--

INSERT INTO `bluemix_0_5_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2, 'siteurl', 'http://zyxhome.mybluemix.net', 'yes'),
(12, 'home', 'http://zyxhome.mybluemix.net', 'yes'),
(22, 'blogname', 'ZYX&#039;s Home', 'yes'),
(32, 'blogdescription', 'Home, sweet home', 'yes'),
(42, 'users_can_register', '0', 'yes'),
(52, 'admin_email', '360896270@qq.com', 'yes'),
(62, 'start_of_week', '1', 'yes'),
(72, 'use_balanceTags', '0', 'yes'),
(82, 'use_smilies', '1', 'yes'),
(92, 'require_name_email', '1', 'yes'),
(102, 'comments_notify', '1', 'yes'),
(112, 'posts_per_rss', '10', 'yes'),
(122, 'rss_use_excerpt', '0', 'yes'),
(132, 'mailserver_url', 'mail.example.com', 'yes'),
(142, 'mailserver_login', 'login@example.com', 'yes'),
(152, 'mailserver_pass', 'password', 'yes'),
(162, 'mailserver_port', '110', 'yes'),
(172, 'default_category', '1', 'yes'),
(182, 'default_comment_status', 'open', 'yes'),
(192, 'default_ping_status', 'open', 'yes'),
(202, 'default_pingback_flag', '1', 'yes'),
(212, 'posts_per_page', '10', 'yes'),
(222, 'date_format', 'Y年n月j日', 'yes'),
(232, 'time_format', 'ag:i', 'yes'),
(242, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(252, 'comment_moderation', '', 'yes'),
(262, 'moderation_notify', '1', 'yes'),
(272, 'permalink_structure', '', 'yes'),
(282, 'gzipcompression', '0', 'yes'),
(292, 'hack_file', '0', 'yes'),
(302, 'blog_charset', 'UTF-8', 'yes'),
(312, 'moderation_keys', '', 'no'),
(322, 'active_plugins', 'a:13:{i:0;s:36:"amazingPlayer/amazingaudioplayer.php";i:1;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:2;s:45:"disable-google-fonts/disable-google-fonts.php";i:3;s:35:"fancybox-for-wordpress/fancybox.php";i:4;s:49:"featured-image-via-url/featured-image-via-url.php";i:5;s:33:"gravatar-fixed/gravatar-fixed.php";i:6;s:9:"hello.php";i:7;s:39:"kindeditor-for-wordpress/kindeditor.php";i:8;s:29:"nextgen-gallery/nggallery.php";i:9;s:24:"page-theme/pageTheme.php";i:10;s:39:"siteorigin-panels/siteorigin-panels.php";i:11;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:12;s:25:"wp-cumulus/wp-cumulus.php";}', 'yes'),
(332, 'category_base', '', 'yes'),
(342, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(352, 'advanced_edit', '0', 'yes'),
(362, 'comment_max_links', '2', 'yes'),
(372, 'gmt_offset', '0', 'yes'),
(382, 'default_email_category', '1', 'yes'),
(392, 'recently_edited', 'a:5:{i:0;s:86:"E:\\ZYX\\tools\\PHPnow\\vhosts\\127.0.0.1\\wordpress/wp-content/themes/zifer-child/style.css";i:2;s:104:"E:\\ZYX\\tools\\PHPnow\\vhosts\\127.0.0.1\\wordpress/wp-content/themes/zifer-child/sections/category_posts.php";i:3;s:85:"E:\\ZYX\\tools\\PHPnow\\vhosts\\127.0.0.1\\wordpress/wp-content/themes/zerif-lite/index.php";i:4;s:85:"E:\\ZYX\\tools\\PHPnow\\vhosts\\127.0.0.1\\wordpress/wp-content/themes/zerif-lite/style.css";i:5;s:99:"E:\\ZYX\\tools\\PHPnow\\vhosts\\127.0.0.1\\wordpress/wp-content/plugins/gravatar-fixed/gravatar-fixed.php";}', 'no'),
(402, 'template', 'zerif-lite', 'yes'),
(412, 'stylesheet', 'zifer-child', 'yes'),
(422, 'comment_whitelist', '1', 'yes'),
(432, 'blacklist_keys', '', 'no'),
(442, 'comment_registration', '', 'yes'),
(452, 'html_type', 'text/html', 'yes'),
(462, 'use_trackback', '0', 'yes'),
(472, 'default_role', 'subscriber', 'yes'),
(482, 'db_version', '32453', 'yes'),
(492, 'uploads_use_yearmonth_folders', '1', 'yes'),
(502, 'upload_path', '', 'yes'),
(512, 'blog_public', '1', 'yes'),
(522, 'default_link_category', '2', 'yes'),
(532, 'show_on_front', 'posts', 'yes'),
(542, 'tag_base', '', 'yes'),
(552, 'show_avatars', '', 'yes'),
(562, 'avatar_rating', 'G', 'yes'),
(572, 'upload_url_path', '', 'yes'),
(582, 'thumbnail_size_w', '150', 'yes'),
(592, 'thumbnail_size_h', '150', 'yes'),
(602, 'thumbnail_crop', '1', 'yes'),
(612, 'medium_size_w', '300', 'yes'),
(622, 'medium_size_h', '300', 'yes'),
(632, 'avatar_default', 'mystery', 'yes'),
(642, 'large_size_w', '1024', 'yes'),
(652, 'large_size_h', '1024', 'yes'),
(662, 'image_default_link_type', 'file', 'yes'),
(672, 'image_default_size', '', 'yes'),
(682, 'image_default_align', '', 'yes'),
(692, 'close_comments_for_old_posts', '', 'yes'),
(702, 'close_comments_days_old', '14', 'yes'),
(712, 'thread_comments', '1', 'yes'),
(722, 'thread_comments_depth', '5', 'yes'),
(732, 'page_comments', '', 'yes'),
(742, 'comments_per_page', '50', 'yes'),
(752, 'default_comments_page', 'newest', 'yes'),
(762, 'comment_order', 'asc', 'yes'),
(772, 'sticky_posts', 'a:0:{}', 'yes'),
(782, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(792, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(802, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(812, 'uninstall_plugins', 'a:1:{s:36:"amazingPlayer/amazingaudioplayer.php";s:28:"amazingaudioplayer_uninstall";}', 'no'),
(822, 'timezone_string', 'Asia/Shanghai', 'yes'),
(842, 'page_on_front', '0', 'yes'),
(852, 'default_post_format', '0', 'yes'),
(862, 'link_manager_enabled', '0', 'yes'),
(872, 'initial_db_version', '31535', 'yes'),
(882, 'bluemix_0_5_wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:72:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:24:"NextGEN Gallery overview";b:1;s:19:"NextGEN Use TinyMCE";b:1;s:21:"NextGEN Upload images";b:1;s:22:"NextGEN Manage gallery";b:1;s:19:"NextGEN Manage tags";b:1;s:29:"NextGEN Manage others gallery";b:1;s:18:"NextGEN Edit album";b:1;s:20:"NextGEN Change style";b:1;s:22:"NextGEN Change options";b:1;s:24:"NextGEN Attach Interface";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(892, 'WPLANG', 'zh_CN', 'yes'),
(902, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(912, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(922, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(932, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(942, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(952, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(972, 'cron', 'a:6:{i:1434894869;a:1:{s:29:"ngg_delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"ngg_custom";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1434921994;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1434931020;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1434941698;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1434961436;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(982, 'default_plugins_activated', '1', 'yes'),
(992, 'sendgrid_user', '6v9PHhfmxd', 'yes'),
(1002, 'sendgrid_pwd', 'EfNQZOw9TYXh0864', 'yes'),
(1012, 'sendgrid_api', 'api', 'yes'),
(1032, 'disable_updates_blocked', 'a:0:{}', 'yes'),
(1072, 'auth_key', 'K?r<s<24sA$qcA2q7jP[>2U1E%zK(QH3??mUCA$~:hhVxbe-tioF7Vk 0QZiYdd2', 'yes'),
(1082, 'auth_salt', 'd`}Z^co([^>r(0lfE$,AnD0FK<BddoAu pk8I_S.&B*v||z1;C8I$!n$UBh[^!OA', 'yes'),
(1092, 'logged_in_key', 'IY5Moh0kA#{#zYk@WNu4HL.x(g_N(p#u`?:R-cG`F_fVWH)3wbfvl4NC}6NJ3w,1', 'yes'),
(1102, 'logged_in_salt', 'N4,rwQqDL#~1o/3O-j3<+KqUJ)[@1g0s[@C`5Eb!DjtZ4^T R4uWG> 0jWj,*R.L', 'yes'),
(1122, 'MPSUM', 'a:3:{s:4:"core";a:1:{s:11:"all_updates";s:3:"off";}s:7:"plugins";a:0:{}s:6:"themes";a:0:{}}', 'yes'),
(1132, 'object_storage', 'a:6:{s:6:"bucket";s:9:"WordPress";s:7:"expires";s:1:"1";s:13:"object-prefix";s:19:"wp-content/uploads/";s:13:"copy-to-swift";s:1:"1";s:16:"serve-from-swift";s:1:"1";s:17:"remove-local-file";s:1:"1";}', 'yes'),
(1545, 'can_compress_scripts', '1', 'yes'),
(1212, 'nonce_key', '<{<jd6e68YJ.*RhBE!)t1X{H(89UAa_=w+]_]KCQ)KN/E ?tmN|~+8/D 5Epi@4l', 'yes'),
(1222, 'nonce_salt', '<Dg~L61d3iZ$HS2~PCfT}{$p@k;9*XiflB+1/G/BaU2aLGOjnPqju(0{wtAW=a:`', 'yes'),
(1232, '_site_transient_timeout_browser_3fc6b4e5639314d139c5d624e9b51b17', '1434596099', 'yes'),
(1242, '_site_transient_browser_3fc6b4e5639314d139c5d624e9b51b17', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.135";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1969, 'photocrati_auto_update_admin_update_list', '', 'yes'),
(1970, 'photocrati_auto_update_admin_check_date', '', 'yes'),
(1971, 'ngg_db_version', '1.8.1', 'yes'),
(1972, 'pope_module_list', 'a:33:{i:0;s:17:"photocrati-fs|0.4";i:1;s:19:"photocrati-i18n|0.1";i:2;s:25:"photocrati-validation|0.1";i:3;s:21:"photocrati-router|0.7";i:4;s:32:"photocrati-wordpress_routing|0.6";i:5;s:23:"photocrati-security|0.2";i:6;s:31:"photocrati-nextgen_settings|0.8";i:7;s:18:"photocrati-mvc|0.5";i:8;s:19:"photocrati-ajax|0.8";i:9;s:25:"photocrati-datamapper|0.8";i:10;s:30:"photocrati-nextgen-legacy|0.14";i:11;s:28:"photocrati-nextgen-data|0.10";i:12;s:33:"photocrati-dynamic_thumbnails|0.6";i:13;s:28:"photocrati-nextgen_admin|0.9";i:14;s:39:"photocrati-nextgen_gallery_display|0.13";i:15;s:34:"photocrati-frame_communication|0.4";i:16;s:30:"photocrati-attach_to_post|0.11";i:17;s:38:"photocrati-nextgen_addgallery_page|0.6";i:18;s:36:"photocrati-nextgen_other_options|0.8";i:19;s:33:"photocrati-nextgen_pagination|0.3";i:20;s:33:"photocrati-dynamic_stylesheet|0.3";i:21;s:23:"photocrati-mediarss|0.4";i:22;s:20:"photocrati-cache|0.2";i:23;s:24:"photocrati-lightbox|0.14";i:24;s:38:"photocrati-nextgen_basic_templates|0.5";i:25;s:37:"photocrati-nextgen_basic_gallery|0.13";i:26;s:42:"photocrati-nextgen_basic_imagebrowser|0.10";i:27;s:39:"photocrati-nextgen_basic_singlepic|0.11";i:28;s:38:"photocrati-nextgen_basic_tagcloud|0.11";i:29;s:35:"photocrati-nextgen_basic_album|0.10";i:30;s:21:"photocrati-widget|0.5";i:31;s:33:"photocrati-third_party_compat|0.4";i:32;s:29:"photocrati-nextgen_xmlrpc|0.4";}', 'yes'),
(1783, 'mfbfw_active_version', '3.0.6', 'yes'),
(1795, 'widget_siteorigin-panels-builder', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1796, 'widget_siteorigin-panels-post-content', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1797, 'widget_siteorigin-panels-postloop', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1948, 'auto_updater.lock', '1434892032', 'no'),
(1942, '_site_transient_timeout_theme_roots', '1434893812', 'yes'),
(1943, '_site_transient_theme_roots', 'a:9:{s:7:"gridsby";s:7:"/themes";s:9:"pictorico";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";s:11:"zifer-child";s:7:"/themes";}', 'yes'),
(1794, 'widget_black-studio-tinymce', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1563, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1434432571;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(1564, 'current_theme', 'Zifer Child', 'yes'),
(1565, 'theme_mods_pictorico', 'a:3:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1434443924;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:9:"sidebar-4";N;}}}', 'yes'),
(1566, 'theme_switched', '', 'yes'),
(1931, '_site_transient_timeout_available_translations', '1434821247', 'yes'),
(1932, '_site_transient_available_translations', 'a:56:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-01 14:30:22";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 06:36:25";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 18:55:51";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-24 05:23:15";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-30 08:59:10";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-19 15:30:54";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-19 21:59:02";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-04 14:48:26";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 17:53:27";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-16 10:01:41";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 09:59:32";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.5/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 19:32:58";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 08:22:08";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:43:50";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:07:32";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 11:14:20";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 19:34:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-07 07:33:53";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:22";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-27 10:29:43";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:59:29";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-09 10:15:05";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.5/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-27 09:25:14";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-12 01:38:15";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-18 17:18:37";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-31 11:58:44";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-04 20:54:02";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:08:28";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 15:16:26";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 07:01:28";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.5";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-28 13:43:48";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-29 06:37:03";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(1633, 'widget_zerif_clients-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1595, 'theme_mods_adirondack', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1434505577;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(1494, 'recently_activated', 'a:0:{}', 'yes'),
(1542, 'db_upgraded', '', 'yes'),
(1966, 'ngg_transient_groups', 'a:2:{s:9:"__counter";i:2;s:3:"MVC";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}}', 'yes'),
(1967, 'ngg_options', 'a:12:{s:11:"gallerypath";s:37:"wp-content\\uploads\\sites\\1\\nggallery\\";s:11:"wpmuCSSfile";s:13:"nggallery.css";s:9:"wpmuStyle";b:0;s:9:"wpmuRoles";b:0;s:16:"wpmuImportFolder";b:0;s:13:"wpmuZipUpload";b:0;s:14:"wpmuQuotaCheck";b:0;s:17:"datamapper_driver";s:23:"custom_table_datamapper";s:21:"gallerystorage_driver";s:25:"ngglegacy_gallery_storage";s:20:"maximum_entity_count";i:500;s:17:"router_param_slug";s:9:"nggallery";s:23:"dynamic_stylesheet_slug";s:12:"nextgen-dcss";}', 'yes'),
(1973, 'wpcumulus_options', 'a:13:{s:5:"width";s:3:"400";s:6:"height";s:3:"400";s:6:"tcolor";s:6:"2768FF";s:7:"tcolor2";s:6:"ffffff";s:7:"hicolor";s:6:"ffffff";s:7:"bgcolor";s:6:"333333";s:5:"speed";s:3:"100";s:5:"trans";s:4:"true";s:5:"distr";s:4:"true";s:4:"args";s:11:"smallest=10";s:8:"compmode";s:0:"";s:10:"showwptags";s:4:"true";s:4:"mode";s:4:"both";}', 'yes'),
(1974, 'wpcumulus_widget', 'a:13:{s:5:"width";s:3:"160";s:6:"height";s:3:"160";s:6:"tcolor";s:6:"333333";s:7:"tcolor2";s:6:"333333";s:7:"hicolor";s:6:"000000";s:7:"bgcolor";s:6:"ffffff";s:5:"speed";s:3:"100";s:5:"trans";s:5:"false";s:5:"distr";s:4:"true";s:4:"args";s:0:"";s:8:"compmode";s:5:"false";s:10:"showwptags";s:4:"true";s:4:"mode";s:4:"tags";}', 'yes'),
(1907, '_site_transient_timeout_browser_90472215165fcf038a65396293e7c33c', '1435399840', 'yes'),
(1908, '_site_transient_browser_90472215165fcf038a65396293e7c33c', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.101";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1945, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:11:"development";s:8:"download";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:15:"4.3-alpha-32895";s:7:"version";s:15:"4.3-alpha-32895";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://wordpress.org/nightly-builds/wordpress-latest.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:15:"4.3-alpha-32895";s:7:"version";s:15:"4.3-alpha-32895";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1434892021;s:15:"version_checked";s:15:"4.3-alpha-32791";s:12:"translations";a:0:{}}', 'yes'),
(1573, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1574, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1575, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1576, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(2182, 'category_children', 'a:0:{}', 'yes'),
(1629, '_site_transient_timeout_wporg_theme_feature_list', '1434517270', 'yes'),
(1630, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(1946, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1434892035;s:7:"checked";a:7:{s:7:"gridsby";s:6:"1.0.38";s:9:"pictorico";s:4:"1.07";s:12:"twentyeleven";s:3:"2.1";s:9:"twentyten";s:3:"1.9";s:12:"twentytwelve";s:3:"1.7";s:10:"zerif-lite";s:7:"1.8.2.1";s:11:"zifer-child";s:5:"1.0.4";}s:8:"response";a:0:{}s:12:"translations";a:3:{i:0;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:12:"twentyeleven";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"2.1";s:7:"updated";s:19:"2015-04-23 01:41:35";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentyeleven/2.1/zh_CN.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:9:"twentyten";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"1.9";s:7:"updated";s:19:"2015-04-23 01:44:05";s:7:"package";s:73:"https://downloads.wordpress.org/translation/theme/twentyten/1.9/zh_CN.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:5:"theme";s:4:"slug";s:12:"twentytwelve";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"1.7";s:7:"updated";s:19:"2015-04-23 01:41:42";s:7:"package";s:76:"https://downloads.wordpress.org/translation/theme/twentytwelve/1.7/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'yes'),
(1589, 'widget_gridsby_contact_info', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1590, 'widget_gridsby_video_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1914, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(1913, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1434808632', 'yes'),
(1592, 'theme_mods_gridsby', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1434506523;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:11:"home-widget";N;}}}', 'yes'),
(1632, 'theme_mods_zifer-child', 'a:15:{i:0;b:0;s:17:"zerif_about_title";s:16:"About this place";s:16:"zerif_about_text";s:34:"Here is the actual home of a nerd.";s:20:"zerif_bigtitle_title";s:12:"欢迎来访";s:19:"zerif_bigtitle_text";s:426:"“欢迎光临！”\n\n“我是张小嚼，我的主人正忙着…额…找工作，所以让小嚼我在这伺候着您呐！”\n\n“我是主人的宠物柯基张小嚼，英文名叫Bob，法文名叫Hélodie Jaqucline。我主人白天是个程序猿，晚上是个音乐宅。他身处天朝的帝都，现在已然变成工作狗（PS：希望来访的人能给他一份工作吧，不然我就没狗粮吃了^-^）”";s:31:"zerif_bigtitle_bluebutton_label";s:12:"去客厅！";s:22:"zerif_latestnews_title";s:12:"最新动态";s:25:"zerif_latestnews_subtitle";s:45:"------记录此人邪魅狷狂的最新轨迹";s:11:"zerif_email";s:54:"<a href="mailto:360896270@qq.com">360896270@qq.com</a>";s:11:"zerif_phone";s:49:"<a href="tel:86 18701321565">(+86)18701321565</a>";s:13:"zerif_address";s:21:"Some place in Beijing";s:26:"zerif_customcategory_title";s:12:"主人信息";s:27:"zerif_customcategory_select";s:1:"6";s:25:"zerif_customcategory_show";s:0:"";s:21:"zerif_latestnews_show";s:1:"1";}', 'yes'),
(1634, 'widget_ctup-ads-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1635, 'widget_zerif_team-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1636, 'widget_zerif_testim-widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(1915, 'gravatar_server_1', 'http://www.gravatar.com', 'yes'),
(1916, 'gravatar_server_s', 'https://secure.gravatar.com', 'yes'),
(1777, 'siteorigin_widget_bundle_version', '1.2.4', 'yes'),
(1778, 'siteorigin_panels_initial_version', '2.1.2', 'no'),
(1779, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(1780, 'ke_auto_highlight', '', 'yes'),
(1781, 'ke_highlight_type', 'prettify', 'yes');
INSERT INTO `bluemix_0_5_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1782, 'mfbfw', 'a:47:{s:6:"border";s:0:"";s:11:"borderColor";s:7:"#BBBBBB";s:15:"showCloseButton";s:2:"on";s:11:"closeHorPos";s:5:"right";s:11:"closeVerPos";s:3:"top";s:12:"paddingColor";s:7:"#FFFFFF";s:7:"padding";s:2:"10";s:11:"overlayShow";s:2:"on";s:12:"overlayColor";s:7:"#666666";s:14:"overlayOpacity";s:3:"0.3";s:9:"titleShow";s:2:"on";s:13:"titlePosition";s:6:"inside";s:10:"titleColor";s:7:"#333333";s:13:"showNavArrows";s:2:"on";s:11:"zoomOpacity";s:2:"on";s:11:"zoomSpeedIn";s:3:"500";s:12:"zoomSpeedOut";s:3:"500";s:15:"zoomSpeedChange";s:3:"300";s:12:"transitionIn";s:4:"fade";s:13:"transitionOut";s:4:"fade";s:6:"easing";s:0:"";s:8:"easingIn";s:11:"easeOutBack";s:9:"easingOut";s:10:"easeInBack";s:12:"easingChange";s:14:"easeInOutQuart";s:10:"imageScale";s:2:"on";s:14:"centerOnScroll";s:2:"on";s:18:"hideOnContentClick";s:0:"";s:18:"hideOnOverlayClick";s:2:"on";s:18:"enableEscapeButton";s:2:"on";s:6:"cyclic";s:0:"";s:10:"mouseWheel";s:0:"";s:11:"galleryType";s:3:"all";s:16:"customExpression";s:74:"jQuery(thumbnails).addClass("fancybox").attr("rel","fancybox").getTitle();";s:14:"autoDimensions";s:2:"on";s:10:"frameWidth";s:3:"560";s:11:"frameHeight";s:3:"340";s:12:"loadAtFooter";s:0:"";s:14:"callbackEnable";s:0:"";s:15:"callbackOnStart";s:31:"function() { alert("Start!"); }";s:16:"callbackOnCancel";s:32:"function() { alert("Cancel!"); }";s:18:"callbackOnComplete";s:34:"function() { alert("Complete!"); }";s:17:"callbackOnCleanup";s:33:"function() { alert("CleanUp!"); }";s:15:"callbackOnClose";s:31:"function() { alert("Close!"); }";s:8:"nojQuery";s:0:"";s:16:"extraCallsEnable";s:0:"";s:14:"extraCallsData";s:0:"";s:9:"uninstall";s:0:"";}', 'yes'),
(1753, '_site_transient_timeout_browser_49497c90c71ea653da15a8f7bd802892', '1435326532', 'yes'),
(1754, '_site_transient_browser_49497c90c71ea653da15a8f7bd802892', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"31.0.1650.63";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(1949, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1434892099;s:7:"checked";a:17:{s:19:"akismet/akismet.php";s:5:"3.1.1";s:36:"amazingPlayer/amazingaudioplayer.php";s:3:"1.0";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:5:"2.2.4";s:37:"login-customizer/login-customizer.php";s:5:"1.0.1";s:45:"disable-google-fonts/disable-google-fonts.php";s:3:"1.1";s:29:"events-maker/events-maker.php";s:5:"1.6.4";s:35:"fancybox-for-wordpress/fancybox.php";s:5:"3.0.6";s:49:"featured-image-via-url/featured-image-via-url.php";s:3:"0.1";s:33:"gravatar-fixed/gravatar-fixed.php";s:3:"1.0";s:9:"hello.php";s:3:"1.6";s:39:"kindeditor-for-wordpress/kindeditor.php";s:5:"1.4.3";s:29:"nextgen-gallery/nggallery.php";s:5:"2.1.0";s:39:"siteorigin-panels/siteorigin-panels.php";s:5:"2.1.2";s:24:"page-theme/pageTheme.php";s:3:"3.5";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:5:"1.2.4";s:43:"the-events-calendar/the-events-calendar.php";s:4:"3.10";s:25:"wp-cumulus/wp-cumulus.php";s:4:"1.23";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.2.zip";}}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"3.1";s:7:"updated";s:19:"2015-04-23 02:24:05";s:7:"package";s:72:"https://downloads.wordpress.org/translation/plugin/akismet/3.1/zh_CN.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:13:{s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":7:{s:2:"id";s:5:"27008";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.2.4";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.2.4.zip";s:14:"upgrade_notice";s:124:"Version 2.x is a major update. If you are upgrading from version 1.x please ensure to backup your database before upgrading.";}s:37:"login-customizer/login-customizer.php";O:8:"stdClass":6:{s:2:"id";s:5:"55995";s:4:"slug";s:16:"login-customizer";s:6:"plugin";s:37:"login-customizer/login-customizer.php";s:11:"new_version";s:5:"1.0.1";s:3:"url";s:47:"https://wordpress.org/plugins/login-customizer/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/login-customizer.zip";}s:45:"disable-google-fonts/disable-google-fonts.php";O:8:"stdClass":6:{s:2:"id";s:5:"46033";s:4:"slug";s:20:"disable-google-fonts";s:6:"plugin";s:45:"disable-google-fonts/disable-google-fonts.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:51:"https://wordpress.org/plugins/disable-google-fonts/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/disable-google-fonts.1.1.zip";}s:29:"events-maker/events-maker.php";O:8:"stdClass":7:{s:2:"id";s:5:"44015";s:4:"slug";s:12:"events-maker";s:6:"plugin";s:29:"events-maker/events-maker.php";s:11:"new_version";s:5:"1.6.4";s:3:"url";s:43:"https://wordpress.org/plugins/events-maker/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/events-maker.1.6.4.zip";s:14:"upgrade_notice";s:137:"Fix: Calendar widget incorrect day archive link\nFix: Call to undefined method Events_Maker_Settings::update_menu() on plugin deactivation";}s:35:"fancybox-for-wordpress/fancybox.php";O:8:"stdClass":6:{s:2:"id";s:4:"6502";s:4:"slug";s:22:"fancybox-for-wordpress";s:6:"plugin";s:35:"fancybox-for-wordpress/fancybox.php";s:11:"new_version";s:5:"3.0.6";s:3:"url";s:53:"https://wordpress.org/plugins/fancybox-for-wordpress/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/fancybox-for-wordpress.3.0.6.zip";}s:49:"featured-image-via-url/featured-image-via-url.php";O:8:"stdClass":6:{s:2:"id";s:5:"41824";s:4:"slug";s:22:"featured-image-via-url";s:6:"plugin";s:49:"featured-image-via-url/featured-image-via-url.php";s:11:"new_version";s:3:"0.1";s:3:"url";s:53:"https://wordpress.org/plugins/featured-image-via-url/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/featured-image-via-url.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:39:"kindeditor-for-wordpress/kindeditor.php";O:8:"stdClass":6:{s:2:"id";s:5:"25818";s:4:"slug";s:24:"kindeditor-for-wordpress";s:6:"plugin";s:39:"kindeditor-for-wordpress/kindeditor.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:55:"https://wordpress.org/plugins/kindeditor-for-wordpress/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/kindeditor-for-wordpress.1.4.3.zip";}s:29:"nextgen-gallery/nggallery.php";O:8:"stdClass":6:{s:2:"id";s:3:"592";s:4:"slug";s:15:"nextgen-gallery";s:6:"plugin";s:29:"nextgen-gallery/nggallery.php";s:11:"new_version";s:5:"2.1.0";s:3:"url";s:46:"https://wordpress.org/plugins/nextgen-gallery/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/nextgen-gallery.2.1.0.zip";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:5:"2.1.2";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.1.2.zip";}s:24:"page-theme/pageTheme.php";O:8:"stdClass":6:{s:2:"id";s:5:"15181";s:4:"slug";s:10:"page-theme";s:6:"plugin";s:24:"page-theme/pageTheme.php";s:11:"new_version";s:3:"3.5";s:3:"url";s:41:"https://wordpress.org/plugins/page-theme/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/page-theme.3.5.zip";}s:39:"so-widgets-bundle/so-widgets-bundle.php";O:8:"stdClass":6:{s:2:"id";s:5:"50709";s:4:"slug";s:17:"so-widgets-bundle";s:6:"plugin";s:39:"so-widgets-bundle/so-widgets-bundle.php";s:11:"new_version";s:5:"1.2.4";s:3:"url";s:48:"https://wordpress.org/plugins/so-widgets-bundle/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/so-widgets-bundle.1.2.4.zip";}s:43:"the-events-calendar/the-events-calendar.php";O:8:"stdClass":6:{s:2:"id";s:5:"11861";s:4:"slug";s:19:"the-events-calendar";s:6:"plugin";s:43:"the-events-calendar/the-events-calendar.php";s:11:"new_version";s:4:"3.10";s:3:"url";s:50:"https://wordpress.org/plugins/the-events-calendar/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/the-events-calendar.3.10.zip";}}}', 'yes'),
(2226, '_transient_timeout_2__536483053', '1434895869', 'no'),
(2227, '_transient_2__536483053', '{"photocrati-ajax#ajax.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\ajax\\\\static\\\\ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\gritter\\\\gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\gritter\\\\css\\\\gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\select2\\\\select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\select2\\\\select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_admin\\\\static\\\\jquery-ui\\\\jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\frame_communication\\\\static\\\\frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_gallery_display\\\\static\\\\nextgen_gallery_display_settings.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\plupload-2.1.1\\\\moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\plupload-2.1.1\\\\plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\plupload-2.1.1\\\\jquery.plupload.queue\\\\jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\plupload-2.1.1\\\\jquery.plupload.queue\\\\css\\\\jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\jquery.filetree\\\\jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css|0":"E:\\\\ZYX\\\\tools\\\\PHPnow\\\\vhosts\\\\127.0.0.1\\\\wordpress\\\\wp-content\\\\plugins\\\\nextgen-gallery\\\\products\\\\photocrati_nextgen\\\\modules\\\\nextgen_addgallery_page\\\\static\\\\jquery.filetree\\\\jquery.filetree.min.css"}', 'no'),
(2184, 'widget_ngg-mrssw', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(2185, 'widget_slideshow', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(2186, 'widget_ngg-images', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(2224, '_transient_timeout_2__974818834', '1434895872', 'no'),
(2225, '_transient_2__974818834', '{"photocrati-ajax#ajax.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/ajax\\/static\\/ajax.min.js","photocrati-nextgen_admin#gritter\\/gritter.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/gritter.min.js","photocrati-nextgen_admin#gritter\\/css\\/gritter.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/gritter\\/css\\/gritter.min.css","photocrati-nextgen_admin#ngg_progressbar.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.js","photocrati-nextgen_admin#ngg_progressbar.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/ngg_progressbar.min.css","photocrati-nextgen_admin#select2\\/select2.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.min.css","photocrati-nextgen_admin#select2\\/select2.modded.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/select2\\/select2.modded.min.js","photocrati-nextgen_admin#jquery.nextgen_radio_toggle.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery.nextgen_radio_toggle.min.js","photocrati-nextgen_admin#jquery-ui\\/jquery-ui-1.10.4.custom.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_admin\\/static\\/jquery-ui\\/jquery-ui-1.10.4.custom.min.css","photocrati-frame_communication#frame_event_publisher.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/frame_communication\\/static\\/frame_event_publisher.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.js","photocrati-nextgen_gallery_display#nextgen_gallery_display_settings.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_gallery_display\\/static\\/nextgen_gallery_display_settings.min.css","photocrati-nextgen_addgallery_page#browserplus-2.4.21.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/browserplus-2.4.21.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/moxie.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/moxie.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/plupload.dev.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/plupload.dev.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/jquery.plupload.queue.min.js","photocrati-nextgen_addgallery_page#plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/plupload-2.1.1\\/jquery.plupload.queue\\/css\\/jquery.plupload.queue.min.css","photocrati-nextgen_addgallery_page#styles.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/styles.min.css","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.js||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.js","photocrati-nextgen_addgallery_page#jquery.filetree\\/jquery.filetree.css||http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/mu-plugins|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zerif-lite|http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/themes\\/zifer-child":"http:\\/\\/127.0.0.1:90\\/wordpress\\/wp-content\\/plugins\\/nextgen-gallery\\/products\\/photocrati_nextgen\\/modules\\/nextgen_addgallery_page\\/static\\/jquery.filetree\\/jquery.filetree.min.css"}', 'no');

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=389 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_postmeta`
--

INSERT INTO `bluemix_0_5_wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 2, '_wp_page_template', 'default'),
(12, 2, '_edit_lock', '1434520164:2'),
(13, 2, '_edit_last', '2'),
(16, 12, '_edit_lock', '1434810004:2'),
(17, 12, '_edit_last', '2'),
(105, 64, '_edit_lock', '1434810155:2'),
(104, 64, '_edit_last', '2'),
(119, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:332;s:6:"height";i:220;s:4:"file";s:16:"2015/06/CSDN.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"CSDN-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"CSDN-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"CSDN-250x220.jpg";s:5:"width";i:250;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:16:"CSDN-332x200.jpg";s:5:"width";i:332;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:16:"CSDN-285x214.jpg";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:16:"CSDN-174x174.jpg";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(79, 55, '_edit_last', '2'),
(80, 55, '_edit_lock', '1434810072:2'),
(81, 57, '_edit_last', '2'),
(82, 57, '_edit_lock', '1434724231:2'),
(85, 59, '_edit_last', '2'),
(86, 59, '_edit_lock', '1434518332:2'),
(120, 68, '_wp_attached_file', '2015/06/CSDN.jpg'),
(121, 2, '_thumbnail_id', '68'),
(56, 51, '_menu_item_type', 'post_type'),
(57, 51, '_menu_item_menu_item_parent', '0'),
(58, 51, '_menu_item_object_id', '12'),
(59, 51, '_menu_item_object', 'page'),
(60, 51, '_menu_item_target', ''),
(61, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 51, '_menu_item_xfn', ''),
(63, 51, '_menu_item_url', ''),
(64, 51, '_menu_item_orphaned', '1434442718'),
(65, 52, '_menu_item_type', 'post_type'),
(66, 52, '_menu_item_menu_item_parent', '0'),
(67, 52, '_menu_item_object_id', '12'),
(68, 52, '_menu_item_object', 'page'),
(69, 52, '_menu_item_target', ''),
(70, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(71, 52, '_menu_item_xfn', ''),
(72, 52, '_menu_item_url', ''),
(73, 52, '_menu_item_orphaned', '1434442718'),
(124, 71, '_edit_last', '2'),
(125, 71, '_edit_lock', '1434721842:2'),
(126, 71, '_wp_page_template', 'template-fullwidth.php'),
(127, 57, '_wp_page_template', 'template-living-room.php'),
(128, 57, 'panels_data', 'a:3:{s:7:"widgets";a:6:{i:0;a:4:{s:5:"title";s:0:"";s:4:"text";s:85:"“Welcome！这里是主人的会客室，保留着他的朋友和他们的足迹”";s:11:"panels_info";a:5:{s:5:"class";s:14:"WP_Widget_Text";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:6:"filter";b:0;}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:15:"零号程序猿";s:4:"text";s:7:"朋友1";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:7:"padding";s:4:"10px";s:18:"background_display";s:5:"cover";}}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:15:"一号程序猿";s:4:"text";s:7:"朋友2";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";i:68;s:18:"background_display";s:4:"tile";}}}i:3;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:15:"二号程序猿";s:4:"text";s:7:"朋友3";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:2:{s:7:"padding";s:4:"10px";s:18:"background_display";s:4:"tile";}}}i:4;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:15:"三号程序猿";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:0;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}i:5;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:11:"panels_info";a:6:{s:5:"class";s:25:"WP_Widget_Recent_Comments";s:3:"raw";b:0;s:4:"grid";i:1;s:4:"cell";i:1;s:2:"id";i:5;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:2:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}i:1;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:3:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}i:1;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.2447425670775900119480184002895839512348175048828125;}i:2;a:2:{s:4:"grid";i:1;s:6:"weight";d:0.7552574329224099880519815997104160487651824951171875;}}}'),
(129, 57, '_thumbnail_id', '68'),
(130, 57, '_panels_data_preview', 'a:3:{s:7:"widgets";a:3:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:7:"Friend1";s:4:"text";s:7:"朋友1";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";b:0;s:18:"background_display";s:5:"cover";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:7:"friend2";s:4:"text";s:7:"朋友2";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:11:"panels_info";a:6:{s:5:"class";s:25:"WP_Widget_Recent_Comments";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:1;s:2:"id";i:2;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.2447425670775924544386725756339728832244873046875;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.7552574329224075455613274243660271167755126953125;}}}'),
(131, 77, 'panels_data', 'a:3:{s:7:"widgets";a:3:{i:0;a:1:{s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";b:0;s:18:"background_display";s:5:"cover";}}}i:1;a:1:{s:11:"panels_info";a:6:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:11:"panels_info";a:5:{s:5:"class";s:25:"WP_Widget_Recent_Comments";s:4:"grid";i:0;s:4:"cell";i:1;s:2:"id";i:2;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.5;}}}'),
(132, 76, 'panels_data', 'a:3:{s:7:"widgets";a:5:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:7:"Friend1";s:4:"text";s:7:"朋友1";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";b:0;s:18:"background_display";s:5:"cover";}}}i:1;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:7:"friend2";s:4:"text";s:7:"朋友2";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:1;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";i:68;s:18:"background_display";s:4:"tile";}}}i:2;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:7:"friend3";s:4:"text";s:7:"朋友3";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:2;s:5:"style";a:3:{s:7:"padding";s:4:"10px";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:3;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:3;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}i:4;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:11:"panels_info";a:6:{s:5:"class";s:25:"WP_Widget_Recent_Comments";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:1;s:2:"id";i:4;s:5:"style";a:1:{s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:2;s:5:"style";a:0:{}}}s:10:"grid_cells";a:2:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.2447425670775900119480184002895839512348175048828125;}i:1;a:2:{s:4:"grid";i:0;s:6:"weight";d:0.7552574329224099880519815997104160487651824951171875;}}}'),
(133, 78, '_edit_last', '2'),
(134, 78, '_edit_lock', '1434893398:2'),
(140, 80, '_edit_lock', '1434724825:2'),
(139, 80, '_edit_last', '2'),
(147, 83, '_edit_lock', '1434893820:2'),
(146, 83, '_edit_last', '2'),
(143, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2507;s:6:"height";i:3646;s:4:"file";s:21:"2015/06/IMG_6118-.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"IMG_6118--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"IMG_6118--206x300.jpg";s:5:"width";i:206;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"IMG_6118--704x1024.jpg";s:5:"width";i:704;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"IMG_6118--250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:21:"IMG_6118--750x500.jpg";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:21:"IMG_6118--600x300.jpg";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:21:"IMG_6118--400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:21:"IMG_6118--285x214.jpg";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:21:"IMG_6118--174x174.jpg";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:21:"IMG_6118--272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(144, 82, '_wp_attached_file', '2015/06/IMG_6118-.jpg'),
(145, 80, '_thumbnail_id', '82'),
(156, 80, '_wp_trash_meta_time', '1434725066'),
(155, 80, '_wp_trash_meta_status', 'publish'),
(154, 64, '_wp_old_slug', '%e8%87%aa%e6%88%91%e4%bb%8b%e7%bb%8d'),
(161, 64, '_wp_old_slug', 'tagcloud'),
(170, 78, '_wp_old_slug', '%e7%8b%97%e7%8b%97%e4%bb%8b%e7%bb%8d'),
(173, 78, '_wp_old_slug', 'cloudtinfo'),
(182, 83, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:4:"type";s:6:"visual";s:5:"title";s:5:"fwefw";s:4:"text";s:7:"sadasda";s:6:"filter";s:1:"1";s:11:"panels_info";a:5:{s:5:"class";s:30:"WP_Widget_Black_Studio_TinyMCE";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:27:"background_image_attachment";i:82;s:18:"background_display";s:6:"center";s:12:"border_color";s:7:"#213dce";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(267, 12, '_wp_trash_meta_status', 'publish'),
(268, 12, '_wp_trash_meta_time', '1434810156'),
(269, 71, '_wp_trash_meta_status', 'publish'),
(270, 71, '_wp_trash_meta_time', '1434810162'),
(215, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:854;s:6:"height";i:854;s:4:"file";s:22:"2015/06/googleCut1.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"googleCut1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"googleCut1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"googleCut1-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:22:"googleCut1-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:22:"googleCut1-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:22:"googleCut1-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:22:"googleCut1-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:22:"googleCut1-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:22:"googleCut1-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(210, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:366;s:6:"height";i:368;s:4:"file";s:18:"2015/06/dogCut.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"dogCut-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"dogCut-298x300.png";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"dogCut-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:18:"dogCut-366x300.png";s:5:"width";i:366;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:18:"dogCut-366x200.png";s:5:"width";i:366;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:18:"dogCut-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:18:"dogCut-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:18:"dogCut-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(211, 94, '_wp_attached_file', '2015/06/dogCut.png'),
(212, 64, '_thumbnail_id', '94'),
(216, 95, '_wp_attached_file', '2015/06/googleCut1.png'),
(217, 83, '_thumbnail_id', '95'),
(258, 103, '_wp_attached_file', '2015/06/Cloud-1.png'),
(259, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1115;s:6:"height";i:1115;s:4:"file";s:19:"2015/06/Cloud-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cloud-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Cloud-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"Cloud-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Cloud-1-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"Cloud-1-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"Cloud-1-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"Cloud-1-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"Cloud-1-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"Cloud-1-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:19:"Cloud-1-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(271, 106, 'title', 'NextGEN 缩略图 基础版'),
(272, 106, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\thumb_preview.jpg'),
(273, 106, 'default_source', 'galleries'),
(274, 106, 'view_order', '10000'),
(275, 106, 'name', 'photocrati-nextgen_basic_thumbnails'),
(276, 106, 'installed_at_version', '2.1.0'),
(277, 106, 'hidden_from_ui', ''),
(278, 106, '__defaults_set', '1'),
(279, 106, 'filter', 'raw'),
(280, 106, 'entity_types', 'WyJpbWFnZSJd'),
(281, 106, 'id_field', 'ID'),
(282, 106, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1x1NjYzZVx1NzkzYVx1NWU3Ylx1NzA2Zlx1NzI0N10iLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(283, 107, 'title', 'NextGEN 幻灯片 基础版'),
(284, 107, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_gallery\\static\\slideshow_preview.jpg'),
(285, 107, 'default_source', 'galleries'),
(286, 107, 'view_order', '10010'),
(287, 107, 'name', 'photocrati-nextgen_basic_slideshow'),
(288, 107, 'installed_at_version', '2.1.0'),
(289, 107, 'hidden_from_ui', ''),
(290, 107, '__defaults_set', '1'),
(291, 107, 'filter', 'raw'),
(292, 107, 'entity_types', 'WyJpbWFnZSJd'),
(293, 107, 'id_field', 'ID'),
(294, 107, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltcdTY2M2VcdTc5M2FcdTdmMjlcdTc1NjVcdTU2ZmVdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(295, 108, 'title', 'NextGEN ImageBrowser 基础版'),
(296, 108, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_imagebrowser\\static\\preview.jpg'),
(297, 108, 'default_source', 'galleries'),
(298, 108, 'view_order', '10020'),
(299, 108, 'name', 'photocrati-nextgen_basic_imagebrowser'),
(300, 108, 'installed_at_version', '2.1.0'),
(301, 108, 'hidden_from_ui', ''),
(302, 108, '__defaults_set', '1'),
(303, 108, 'filter', 'raw'),
(304, 108, 'entity_types', 'WyJpbWFnZSJd'),
(305, 108, 'id_field', 'ID'),
(306, 108, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ0ZW1wbGF0ZSI6IiIsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(307, 109, 'title', 'NextGEN Basic SinglePic'),
(308, 109, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_singlepic\\static\\preview.gif'),
(309, 109, 'default_source', 'galleries'),
(310, 109, 'view_order', '10060'),
(311, 109, 'hidden_from_ui', '1'),
(312, 109, 'name', 'photocrati-nextgen_basic_singlepic'),
(313, 109, 'installed_at_version', '2.1.0'),
(314, 109, '__defaults_set', '1'),
(315, 109, 'filter', 'raw'),
(316, 109, 'entity_types', 'WyJpbWFnZSJd'),
(317, 109, 'id_field', 'ID'),
(318, 109, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJ3aWR0aCI6IiIsImhlaWdodCI6IiIsIm1vZGUiOiIiLCJkaXNwbGF5X3dhdGVybWFyayI6MCwiZGlzcGxheV9yZWZsZWN0aW9uIjowLCJmbG9hdCI6IiIsImxpbmsiOiIiLCJsaW5rX3RhcmdldCI6Il9ibGFuayIsInF1YWxpdHkiOjEwMCwiY3JvcCI6MCwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(319, 110, 'title', 'NextGEN Basic TagCloud'),
(320, 110, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_tagcloud\\static\\preview.gif'),
(321, 110, 'default_source', 'tags'),
(322, 110, 'view_order', '10100'),
(323, 110, 'name', 'photocrati-nextgen_basic_tagcloud'),
(324, 110, 'installed_at_version', '2.1.0'),
(325, 110, 'hidden_from_ui', ''),
(326, 110, '__defaults_set', '1'),
(327, 110, 'filter', 'raw'),
(328, 110, 'entity_types', 'WyJpbWFnZSJd'),
(329, 110, 'id_field', 'ID'),
(330, 110, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJkaXNwbGF5X3R5cGUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfdGh1bWJuYWlscyIsIm51bWJlciI6NDUsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifQ=='),
(331, 111, 'title', 'NextGEN 紧凑视图相册 基础版'),
(332, 111, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\compact_preview.jpg'),
(333, 111, 'default_source', 'albums'),
(334, 111, 'view_order', '10200'),
(335, 111, 'name', 'photocrati-nextgen_basic_compact_album'),
(336, 111, 'installed_at_version', '2.1.0'),
(337, 111, 'hidden_from_ui', ''),
(338, 111, '__defaults_set', '1'),
(339, 111, 'filter', 'raw'),
(340, 111, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(341, 111, 'id_field', 'ID'),
(342, 111, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(343, 112, 'title', 'NextGEN 扩展视图相册 基础版'),
(344, 112, 'preview_image_relpath', '\\nextgen-gallery\\products\\photocrati_nextgen\\modules\\nextgen_basic_album\\static\\extended_preview.jpg'),
(345, 112, 'default_source', 'albums'),
(346, 112, 'view_order', '10210'),
(347, 112, 'name', 'photocrati-nextgen_basic_extended_album'),
(348, 112, 'installed_at_version', '2.1.0'),
(349, 112, 'hidden_from_ui', ''),
(350, 112, '__defaults_set', '1'),
(351, 112, 'filter', 'raw'),
(352, 112, 'entity_types', 'WyJhbGJ1bSIsImdhbGxlcnkiXQ=='),
(353, 112, 'id_field', 'ID'),
(354, 112, 'settings', 'eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0='),
(364, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1102;s:6:"height";i:1272;s:4:"file";s:19:"2015/06/Cloud14.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cloud14-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Cloud14-260x300.png";s:5:"width";i:260;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Cloud14-887x1024.png";s:5:"width";i:887;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Cloud14-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"Cloud14-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"Cloud14-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"Cloud14-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"Cloud14-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"Cloud14-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:19:"Cloud14-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(357, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1102;s:6:"height";i:1272;s:4:"file";s:19:"2015/06/Cloud13.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cloud13-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Cloud13-260x300.png";s:5:"width";i:260;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Cloud13-887x1024.png";s:5:"width";i:887;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Cloud13-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"Cloud13-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"Cloud13-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"Cloud13-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"Cloud13-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"Cloud13-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:19:"Cloud13-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(358, 113, '_wp_attached_file', '2015/06/Cloud13.png'),
(369, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1209;s:6:"height";i:1100;s:4:"file";s:19:"2015/06/Cloud15.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cloud15-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Cloud15-300x273.png";s:5:"width";i:300;s:6:"height";i:273;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Cloud15-1024x932.png";s:5:"width";i:1024;s:6:"height";i:932;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Cloud15-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"Cloud15-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"Cloud15-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"Cloud15-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"Cloud15-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"Cloud15-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:19:"Cloud15-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(365, 114, '_wp_attached_file', '2015/06/Cloud14.png'),
(374, 78, '_wp_trash_meta_status', 'publish'),
(370, 115, '_wp_attached_file', '2015/06/Cloud15.png'),
(371, 78, '_thumbnail_id', '115'),
(375, 78, '_wp_trash_meta_time', '1434893572'),
(376, 59, '_wp_trash_meta_status', 'publish'),
(377, 59, '_wp_trash_meta_time', '1434893580'),
(378, 64, '_wp_trash_meta_status', 'publish'),
(379, 64, '_wp_trash_meta_time', '1434893592'),
(380, 116, '_edit_last', '2'),
(381, 116, '_edit_lock', '1434893700:2'),
(384, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1209;s:6:"height";i:1100;s:4:"file";s:19:"2015/06/Cloud16.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Cloud16-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"Cloud16-300x273.png";s:5:"width";i:300;s:6:"height";i:273;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"Cloud16-1024x932.png";s:5:"width";i:1024;s:6:"height";i:932;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"Cloud16-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:19:"Cloud16-750x500.png";s:5:"width";i:750;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:19:"Cloud16-600x300.png";s:5:"width";i:600;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:19:"Cloud16-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:19:"Cloud16-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:19:"Cloud16-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:19:"Cloud16-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(385, 118, '_wp_attached_file', '2015/06/Cloud16.png'),
(386, 116, '_thumbnail_id', '118');

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_posts`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_posts`
--

INSERT INTO `bluemix_0_5_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 2, '2015-06-10 17:59:26', '2015-06-10 09:59:26', '我的CSDN博客，暂时没空翻她的牌子。。。因为目前只能写写leetcode，没啥可写的，找到工作后再跟她亲热', 'CSDN 博客', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-06-17 13:51:00', '2015-06-17 05:51:00', '', 0, 'http://zyxhome.mybluemix.net/?p=1', 0, 'post', '', 1),
(12, 2, '2015-06-10 17:59:26', '2015-06-10 09:59:26', '&nbsp;”Welcome ！ 这里是会客室，主人的很多朋友在这里呢！“<br />', '客厅', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-06-20 22:22:36', '2015-06-20 14:22:36', '', 0, 'http://zyxhome.mybluemix.net/?page_id=2', 0, 'page', '', 0),
(73, 2, '2015-06-19 22:13:41', '2015-06-19 14:13:41', '&nbsp;”Welcome ！ 这里是会客室，主人的很多朋友在这里呢！“<br />', '客厅', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-06-19 22:13:41', '2015-06-19 14:13:41', '', 12, 'http://127.0.0.1:90/wordpress/2015/06/19/12-revision-v1/', 0, 'revision', '', 0),
(74, 2, '2015-06-19 22:14:15', '2015-06-19 14:14:15', '这里是会客室', '客厅', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-19 22:14:15', '2015-06-19 14:14:15', '', 57, 'http://127.0.0.1:90/wordpress/2015/06/19/57-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2015-06-16 15:47:56', '2015-06-16 07:47:56', '&nbsp;\n<blockquote>“欢迎光临！”\n\n“我是张小嚼，我的主人正忙着…额…<strong><span style="color: #ff0000;">找工作</span></strong>，所以让小嚼我在这伺候着您呐！”\n\n“主人白天是个程序猿，晚上是个音乐宅。主人现在天朝的帝都，他特别盼望着养一条叫做Bob的小柯基，因为他有个叫嚼嚼的小姑娘特别爱BB（希望她没机会来拜访这里^-^）”\n\n&nbsp;</blockquote>', '示例页面', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-06-16 15:47:56', '2015-06-16 07:47:56', '', 12, 'http://127.0.0.1/wordpress/2015/06/16/12-revision-v1/', 0, 'revision', '', 0),
(32, 2, '2015-06-16 16:21:41', '2015-06-16 08:21:41', '我的CSN', 'CSDN 博客', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-06-16 16:21:41', '2015-06-16 08:21:41', '', 2, 'http://127.0.0.1/wordpress/2015/06/16/2-autosave-v1/', 0, 'revision', '', 0),
(64, 2, '2015-06-17 13:36:18', '2015-06-17 05:36:18', '看门狗12', '狗狗', '', 'trash', 'open', 'open', '', 'doginfo', '', '', '2015-06-21 21:33:12', '2015-06-21 13:33:12', '', 0, 'http://127.0.0.1/wordpress/?p=64', 0, 'post', '', 0),
(54, 2, '2015-06-16 16:22:51', '2015-06-16 08:22:51', '我的CSDN博客，暂时没空翻她的牌子。。。因为目前只能写写leetcode，没啥可写的，找到工作后再跟她亲热', 'CSDN 博客', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-06-16 16:22:51', '2015-06-16 08:22:51', '', 2, 'http://127.0.0.1/wordpress/2015/06/16/2-revision-v1/', 0, 'revision', '', 0),
(33, 2, '2015-06-16 15:45:49', '2015-06-16 07:45:49', '“欢迎光临！”\n\n“我是张小嚼，我的主人正忙着…额…找工作，所以让小嚼我在这伺候着您呐！”\n\n“主人白天是个程序猿，晚上是个音乐宅。主人现在天朝的帝都，他特别盼望着养一条叫做Bob的柯基，因为他有个叫嚼嚼的小姑娘特别爱BB（希望她没机会来拜访这里^-^）”', 'ZYX的家', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-06-16 15:45:49', '2015-06-16 07:45:49', '', 2, 'http://127.0.0.1/wordpress/2015/06/16/2-revision-v1/', 0, 'revision', '', 0),
(34, 2, '2015-06-19 22:12:40', '2015-06-19 14:12:40', '&nbsp;\n<blockquote>“欢迎光临！”\n\n“我是张小嚼，我的主人正忙着…额…<strong><span style="color: #ff0000;">找工作</span></strong>，所以让小嚼我在这伺候着您呐！”\n\n“主人白天是个程序猿，晚上是个音乐宅。主人现在天朝的帝都，他特别盼望着养一条叫做Bob的小柯基，因为他有个叫嚼嚼的小姑娘特别爱BB（希望她没机会来拜访这里^-^）”\n\n&nbsp;</blockquote>', '客厅', '', 'inherit', 'open', 'open', '', '12-autosave-v1', '', '', '2015-06-19 22:12:40', '2015-06-19 14:12:40', '', 12, 'http://127.0.0.1/wordpress/2015/06/16/12-autosave-v1/', 0, 'revision', '', 0),
(36, 2, '2015-06-16 15:48:16', '2015-06-16 07:48:16', '&nbsp;\r\n<blockquote>“欢迎光临！”\r\n\r\n“我是张小嚼，我的主人正忙着…额…<strong><span style="color: #ff0000;">找工作</span></strong>，所以让小嚼我在这伺候着您呐！”\r\n\r\n“主人白天是个程序猿，晚上是个音乐宅。主人现在天朝的帝都，他特别盼望着养一条叫做Bob的小柯基，因为他有个叫嚼嚼的小姑娘特别爱BB（希望她没机会来拜访这里^-^）”\r\n\r\n&nbsp;</blockquote>', 'ZYX的家', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-06-16 15:48:16', '2015-06-16 07:48:16', '', 12, 'http://127.0.0.1/wordpress/2015/06/16/12-revision-v1/', 0, 'revision', '', 0),
(56, 2, '2015-06-16 16:24:21', '2015-06-16 08:24:21', '', '最近动态', '', 'inherit', 'open', 'open', '', '55-revision-v1', '', '', '2015-06-16 16:24:21', '2015-06-16 08:24:21', '', 55, 'http://127.0.0.1/wordpress/2015/06/16/55-revision-v1/', 0, 'revision', '', 0),
(57, 2, '2015-06-16 16:24:42', '2015-06-16 08:24:42', '<h1>\r\n	"Welcome! 这里是主人的会客室，很多朋友都在这里留下了脚印呢"\r\n	<blockquote>\r\n	</blockquote>\r\n</h1>\r\n<a href="http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/CSDN.jpg"><img src="http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/CSDN-300x199.jpg" alt="" width="300" height="199" class="alignnone size-medium wp-image-68" /></a>', '客厅', '', 'publish', 'open', 'open', '', '%e4%b8%aa%e4%ba%ba%e9%93%be%e6%8e%a5', '', '', '2015-06-19 22:28:20', '2015-06-19 14:28:20', '', 0, 'http://127.0.0.1/wordpress/?page_id=57', 0, 'page', '', 0),
(68, 2, '2015-06-17 13:51:03', '2015-06-17 05:51:03', '', '', '', 'inherit', 'open', 'open', '', '68', '', '', '2015-06-17 13:51:03', '2015-06-17 05:51:03', '', 2, 'http://127.0.0.1/wordpress/wp-content/uploads/2015/06/CSDN.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 2, '2015-06-17 13:52:04', '2015-06-17 05:52:04', '自我介绍1', '自我介绍', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-17 13:52:04', '2015-06-17 05:52:04', '', 64, 'http://127.0.0.1/wordpress/2015/06/17/64-revision-v1/', 0, 'revision', '', 0),
(55, 2, '2015-06-16 16:24:21', '2015-06-16 08:24:21', '', '最近动态', '', 'publish', 'open', 'open', '', '%e6%9c%80%e8%bf%91%e5%8a%a8%e6%80%81', '', '', '2015-06-16 16:24:21', '2015-06-16 08:24:21', '', 0, 'http://127.0.0.1/wordpress/?page_id=55', 0, 'page', '', 0),
(65, 2, '2015-06-17 13:36:18', '2015-06-17 05:36:18', '自我介绍', '自我介绍', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-17 13:36:18', '2015-06-17 05:36:18', '', 64, 'http://127.0.0.1/wordpress/2015/06/17/64-revision-v1/', 0, 'revision', '', 0),
(51, 2, '2015-06-16 16:18:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-16 16:18:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=51', 1, 'nav_menu_item', '', 0),
(52, 2, '2015-06-16 16:18:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-16 16:18:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=52', 1, 'nav_menu_item', '', 0),
(58, 2, '2015-06-16 16:24:42', '2015-06-16 08:24:42', '', '个人链接', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-16 16:24:42', '2015-06-16 08:24:42', '', 57, 'http://127.0.0.1/wordpress/2015/06/16/57-revision-v1/', 0, 'revision', '', 0),
(59, 2, '2015-06-17 09:51:29', '2015-06-17 01:51:29', 'test', 'test', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-06-21 21:33:00', '2015-06-21 13:33:00', '', 0, 'http://127.0.0.1/wordpress/?p=59', 0, 'post', '', 0),
(60, 2, '2015-06-17 09:51:29', '2015-06-17 01:51:29', 'test', 'test', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-06-17 09:51:29', '2015-06-17 01:51:29', '', 59, 'http://127.0.0.1/wordpress/2015/06/17/59-revision-v1/', 0, 'revision', '', 0),
(61, 2, '2015-06-17 11:33:00', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-17 11:33:00', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=61', 0, 'post', '', 0),
(66, 2, '2015-06-19 22:52:04', '2015-06-19 14:52:04', '', '狗狗', '', 'inherit', 'open', 'open', '', '64-autosave-v1', '', '', '2015-06-19 22:52:04', '2015-06-19 14:52:04', '', 64, 'http://127.0.0.1/wordpress/2015/06/17/64-autosave-v1/', 0, 'revision', '', 0),
(70, 2, '2015-06-19 21:48:53', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-06-19 21:48:53', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1:90/wordpress/?p=70', 0, 'post', '', 0),
(71, 2, '2015-06-19 21:49:20', '2015-06-19 13:49:20', 'sdfadfasdf', 'test', '', 'trash', 'open', 'open', '', 'test', '', '', '2015-06-20 22:22:42', '2015-06-20 14:22:42', '', 0, 'http://127.0.0.1:90/wordpress/?page_id=71', 0, 'page', '', 0),
(72, 2, '2015-06-19 21:49:20', '2015-06-19 13:49:20', 'sdfadfasdf', 'test', '', 'inherit', 'open', 'open', '', '71-revision-v1', '', '', '2015-06-19 21:49:20', '2015-06-19 13:49:20', '', 71, 'http://127.0.0.1:90/wordpress/2015/06/19/71-revision-v1/', 0, 'revision', '', 0),
(75, 2, '2015-06-19 22:16:14', '2015-06-19 14:16:14', '<h1>\r\n	"Welcome! 这里是主人的会客室，很多朋友都在这里留下了脚印呢"\r\n	<blockquote>\r\n	</blockquote>\r\n</h1>', '客厅', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-19 22:16:14', '2015-06-19 14:16:14', '', 57, 'http://127.0.0.1:90/wordpress/2015/06/19/57-revision-v1/', 0, 'revision', '', 0),
(76, 2, '2015-06-19 22:25:16', '2015-06-19 14:25:16', '<h3 class="widget-title">Friend1</h3>朋友1<h3 class="widget-title">一号程序猿</h3>朋友2<h3 class="widget-title">friend3</h3>朋友3<h3 class="widget-title">近期评论</h3><ul id="recentcomments"></ul>', '客厅', '', 'inherit', 'open', 'open', '', '57-autosave-v1', '', '', '2015-06-19 22:25:16', '2015-06-19 14:25:16', '', 57, 'http://127.0.0.1:90/wordpress/2015/06/19/57-autosave-v1/', 0, 'revision', '', 0),
(77, 2, '2015-06-19 22:22:19', '2015-06-19 14:22:19', '<h1>\r\n	"Welcome! 这里是主人的会客室，很多朋友都在这里留下了脚印呢"\r\n	<blockquote>\r\n	</blockquote>\r\n</h1>\r\n<a href="http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/CSDN.jpg"><img src="http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/CSDN-300x199.jpg" alt="" width="300" height="199" class="alignnone size-medium wp-image-68" /></a>', '客厅', '', 'inherit', 'open', 'open', '', '57-revision-v1', '', '', '2015-06-19 22:22:19', '2015-06-19 14:22:19', '', 57, 'http://127.0.0.1:90/wordpress/2015/06/19/57-revision-v1/', 0, 'revision', '', 0),
(78, 2, '2015-06-19 22:33:45', '2015-06-19 14:33:45', '标签云2', '个人标签', '', 'trash', 'open', 'open', '', 'cloudttagi', '', '', '2015-06-21 21:32:52', '2015-06-21 13:32:52', '', 0, 'http://127.0.0.1:90/wordpress/?p=78', 0, 'post', '', 0),
(79, 2, '2015-06-19 22:33:45', '2015-06-19 14:33:45', '看门狗', '狗狗介绍', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-06-19 22:33:45', '2015-06-19 14:33:45', '', 78, 'http://127.0.0.1:90/wordpress/2015/06/19/78-revision-v1/', 0, 'revision', '', 0),
(80, 2, '2015-06-19 22:34:30', '2015-06-19 14:34:30', '自我介绍', '个人简介', '', 'trash', 'open', 'open', '', '%e4%b8%aa%e4%ba%ba%e7%ae%80%e4%bb%8b', '', '', '2015-06-19 22:44:26', '2015-06-19 14:44:26', '', 0, 'http://127.0.0.1:90/wordpress/?p=80', 0, 'post', '', 0),
(81, 2, '2015-06-19 22:34:30', '2015-06-19 14:34:30', '自我介绍', '个人简介', '', 'inherit', 'open', 'open', '', '80-revision-v1', '', '', '2015-06-19 22:34:30', '2015-06-19 14:34:30', '', 80, 'http://127.0.0.1:90/wordpress/2015/06/19/80-revision-v1/', 0, 'revision', '', 0),
(82, 2, '2015-06-19 22:34:33', '2015-06-19 14:34:33', '', '', '', 'inherit', 'open', 'open', '', '82', '', '', '2015-06-19 22:34:33', '2015-06-19 14:34:33', '', 81, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/IMG_6118-.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 2, '2015-06-19 22:41:25', '2015-06-19 14:41:25', '个人简介1', '个人简介', '', 'publish', 'open', 'open', '', 'selfintroduction', '', '', '2015-06-21 21:36:59', '2015-06-21 13:36:59', '', 0, 'http://127.0.0.1:90/wordpress/?p=83', 0, 'post', '', 0),
(84, 2, '2015-06-19 22:41:25', '2015-06-19 14:41:25', '个人简介', '个人简介', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-06-19 22:41:25', '2015-06-19 14:41:25', '', 83, 'http://127.0.0.1:90/wordpress/2015/06/19/83-revision-v1/', 0, 'revision', '', 0),
(85, 2, '2015-06-19 22:41:54', '2015-06-19 14:41:54', '标签云', '标签云', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-06-19 22:41:54', '2015-06-19 14:41:54', '', 78, 'http://127.0.0.1:90/wordpress/2015/06/19/78-revision-v1/', 0, 'revision', '', 0),
(86, 2, '2015-06-19 22:43:26', '2015-06-19 14:43:26', '标签云', '标签云', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-19 22:43:26', '2015-06-19 14:43:26', '', 64, 'http://127.0.0.1:90/wordpress/2015/06/19/64-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2015-06-19 22:45:16', '2015-06-19 14:45:16', '看门狗', '狗狗', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-19 22:45:16', '2015-06-19 14:45:16', '', 64, 'http://127.0.0.1:90/wordpress/2015/06/19/64-revision-v1/', 0, 'revision', '', 0),
(88, 2, '2015-06-19 22:49:03', '2015-06-19 14:49:03', '标签云1', '标签云', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-06-19 22:49:03', '2015-06-19 14:49:03', '', 78, 'http://127.0.0.1:90/wordpress/2015/06/19/78-revision-v1/', 0, 'revision', '', 0),
(89, 2, '2015-06-19 22:49:47', '2015-06-19 14:49:47', '个人简介1', '个人简介', '', 'inherit', 'open', 'open', '', '83-revision-v1', '', '', '2015-06-19 22:49:47', '2015-06-19 14:49:47', '', 83, 'http://127.0.0.1:90/wordpress/2015/06/19/83-revision-v1/', 0, 'revision', '', 0),
(104, 2, '2015-06-19 23:48:08', '2015-06-19 15:48:08', '看门狗12', '狗狗', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-19 23:48:08', '2015-06-19 15:48:08', '', 64, 'http://127.0.0.1:90/wordpress/2015/06/19/64-revision-v1/', 0, 'revision', '', 0),
(105, 2, '2015-06-19 23:50:12', '2015-06-19 15:50:12', '标签云2', '个人标签', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-06-19 23:50:12', '2015-06-19 15:50:12', '', 78, 'http://127.0.0.1:90/wordpress/2015/06/19/78-revision-v1/', 0, 'revision', '', 0),
(93, 2, '2015-06-19 23:19:00', '2015-06-19 15:19:00', '看门狗1', '狗狗', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-06-19 23:19:00', '2015-06-19 15:19:00', '', 64, 'http://127.0.0.1:90/wordpress/2015/06/19/64-revision-v1/', 0, 'revision', '', 0),
(94, 2, '2015-06-19 23:19:01', '2015-06-19 15:19:01', '', '', '', 'inherit', 'open', 'open', '', '94', '', '', '2015-06-19 23:19:01', '2015-06-19 15:19:01', '', 93, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/dogCut.png', 0, 'attachment', 'image/png', 0),
(95, 2, '2015-06-19 23:19:41', '2015-06-19 15:19:41', '', '', '', 'inherit', 'open', 'open', '', '95', '', '', '2015-06-19 23:19:41', '2015-06-19 15:19:41', '', 83, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/googleCut1.png', 0, 'attachment', 'image/png', 0),
(96, 2, '2015-06-19 23:22:27', '2015-06-19 15:22:27', '标签云2', '标签云', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-06-19 23:22:27', '2015-06-19 15:22:27', '', 78, 'http://127.0.0.1:90/wordpress/2015/06/19/78-revision-v1/', 0, 'revision', '', 0),
(103, 2, '2015-06-19 23:46:29', '2015-06-19 15:46:29', '', 'Cloud 1', '', 'inherit', 'open', 'open', '', 'cloud-1', '', '', '2015-06-19 23:46:29', '2015-06-19 15:46:29', '', 78, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/Cloud-1.png', 0, 'attachment', 'image/png', 0),
(106, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU3ZjI5XHU3NTY1XHU1NmZlIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1x1NjYzZVx1NzkzYVx1NWU3Ylx1NzA2Zlx1NzI0N10iLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN 缩略图 基础版', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU3ZjI5XHU3NTY1XHU1NmZlIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHRodW1iX3ByZXZpZXcuanBnIiwiZGVmYXVsdF9zb3VyY2UiOiJnYWxsZXJpZXMiLCJ2aWV3X29yZGVyIjoxMDAwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJpbWFnZXNfcGVyX3BhZ2UiOiIyMCIsIm51bWJlcl9vZl9jb2x1bW5zIjowLCJ0aHVtYm5haWxfd2lkdGgiOjI0MCwidGh1bWJuYWlsX2hlaWdodCI6MTYwLCJzaG93X2FsbF9pbl9saWdodGJveCI6MCwiYWpheF9wYWdpbmF0aW9uIjowLCJ1c2VfaW1hZ2Vicm93c2VyX2VmZmVjdCI6MCwidGVtcGxhdGUiOiIiLCJkaXNwbGF5X25vX2ltYWdlc19lcnJvciI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJzaG93X3NsaWRlc2hvd19saW5rIjoxLCJzbGlkZXNob3dfbGlua190ZXh0IjoiW1x1NjYzZVx1NzkzYVx1NWU3Ylx1NzA2Zlx1NzI0N10iLCJvdmVycmlkZV90aHVtYm5haWxfc2V0dGluZ3MiOjAsInRodW1ibmFpbF9xdWFsaXR5IjoiMTAwIiwidGh1bWJuYWlsX2Nyb3AiOjEsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsIm5nZ190cmlnZ2Vyc19kaXNwbGF5IjoibmV2ZXIifSwiaGlkZGVuX2Zyb21fdWkiOmZhbHNlLCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=106', 0, 'display_type', '', 0),
(107, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU1ZTdiXHU3MDZmXHU3MjQ3IFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHNsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltcdTY2M2VcdTc5M2FcdTdmMjlcdTc1NjVcdTU2ZmVdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN 幻灯片 基础版', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU1ZTdiXHU3MDZmXHU3MjQ3IFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19nYWxsZXJ5XFxzdGF0aWNcXHNsaWRlc2hvd19wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwMTAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfc2xpZGVzaG93IiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJ5X3dpZHRoIjo2MDAsImdhbGxlcnlfaGVpZ2h0Ijo0MDAsInRodW1ibmFpbF93aWR0aCI6MjQwLCJ0aHVtYm5haWxfaGVpZ2h0IjoxNjAsImN5Y2xlX2ludGVydmFsIjoxMCwiY3ljbGVfZWZmZWN0IjoiZmFkZSIsImVmZmVjdF9jb2RlIjoiY2xhc3M9XCJuZ2ctZmFuY3lib3hcIiByZWw9XCIlR0FMTEVSWV9OQU1FJVwiIiwic2hvd190aHVtYm5haWxfbGluayI6MSwidGh1bWJuYWlsX2xpbmtfdGV4dCI6IltcdTY2M2VcdTc5M2FcdTdmMjlcdTc1NjVcdTU2ZmVdIiwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=107', 0, 'display_type', '', 0),
(108, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gSW1hZ2VCcm93c2VyIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcXHN0YXRpY1xccHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN ImageBrowser 基础版', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gSW1hZ2VCcm93c2VyIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJpbWFnZSJdLCJwcmV2aWV3X2ltYWdlX3JlbHBhdGgiOiJcXG5leHRnZW4tZ2FsbGVyeVxccHJvZHVjdHNcXHBob3RvY3JhdGlfbmV4dGdlblxcbW9kdWxlc1xcbmV4dGdlbl9iYXNpY19pbWFnZWJyb3dzZXJcXHN0YXRpY1xccHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImdhbGxlcmllcyIsInZpZXdfb3JkZXIiOjEwMDIwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2ltYWdlYnJvd3NlciIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwidGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=108', 0, 'display_type', '', 0),
(109, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 'NextGEN Basic SinglePic', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgU2luZ2xlUGljIiwiZW50aXR5X3R5cGVzIjpbImltYWdlIl0sInByZXZpZXdfaW1hZ2VfcmVscGF0aCI6IlxcbmV4dGdlbi1nYWxsZXJ5XFxwcm9kdWN0c1xccGhvdG9jcmF0aV9uZXh0Z2VuXFxtb2R1bGVzXFxuZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpY1xcc3RhdGljXFxwcmV2aWV3LmdpZiIsImRlZmF1bHRfc291cmNlIjoiZ2FsbGVyaWVzIiwidmlld19vcmRlciI6MTAwNjAsImhpZGRlbl9mcm9tX3VpIjp0cnVlLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3NpbmdsZXBpYyIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwid2lkdGgiOiIiLCJoZWlnaHQiOiIiLCJtb2RlIjoiIiwiZGlzcGxheV93YXRlcm1hcmsiOjAsImRpc3BsYXlfcmVmbGVjdGlvbiI6MCwiZmxvYXQiOiIiLCJsaW5rIjoiIiwibGlua190YXJnZXQiOiJfYmxhbmsiLCJxdWFsaXR5IjoxMDAsImNyb3AiOjAsInRlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJfX2RlZmF1bHRzX3NldCI6dHJ1ZX0=', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=109', 0, 'display_type', '', 0),
(110, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJudW1iZXIiOjQ1LCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN Basic TagCloud', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gQmFzaWMgVGFnQ2xvdWQiLCJlbnRpdHlfdHlwZXMiOlsiaW1hZ2UiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfdGFnY2xvdWRcXHN0YXRpY1xccHJldmlldy5naWYiLCJkZWZhdWx0X3NvdXJjZSI6InRhZ3MiLCJ2aWV3X29yZGVyIjoxMDEwMCwibmFtZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190YWdjbG91ZCIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJudW1iZXIiOjQ1LCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=110', 0, 'display_type', '', 0),
(111, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU3ZDI3XHU1MWQxXHU4OWM2XHU1NmZlXHU3NmY4XHU1MThjIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGVtcGxhdGUiOiIiLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 'NextGEN 紧凑视图相册 基础版', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU3ZDI3XHU1MWQxXHU4OWM2XHU1NmZlXHU3NmY4XHU1MThjIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcY29tcGFjdF9wcmV2aWV3LmpwZyIsImRlZmF1bHRfc291cmNlIjoiYWxidW1zIiwidmlld19vcmRlciI6MTAyMDAsIm5hbWUiOiJwaG90b2NyYXRpLW5leHRnZW5fYmFzaWNfY29tcGFjdF9hbGJ1bSIsImluc3RhbGxlZF9hdF92ZXJzaW9uIjoiMi4xLjAiLCJpZF9maWVsZCI6IklEIiwic2V0dGluZ3MiOnsidXNlX2xpZ2h0Ym94X2VmZmVjdCI6dHJ1ZSwiZ2FsbGVyaWVzX3Blcl9wYWdlIjowLCJlbmFibGVfYnJlYWRjcnVtYnMiOjEsImRpc2FibGVfcGFnaW5hdGlvbiI6MCwidGVtcGxhdGUiOiIiLCJnYWxsZXJ5X2Rpc3BsYXlfdHlwZSI6InBob3RvY3JhdGktbmV4dGdlbl9iYXNpY190aHVtYm5haWxzIiwiZ2FsbGVyeV9kaXNwbGF5X3RlbXBsYXRlIjoiIiwibmdnX3RyaWdnZXJzX2Rpc3BsYXkiOiJuZXZlciJ9LCJoaWRkZW5fZnJvbV91aSI6ZmFsc2UsIl9fZGVmYXVsdHNfc2V0Ijp0cnVlfQ==', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=111', 0, 'display_type', '', 0),
(112, 2, '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU2MjY5XHU1YzU1XHU4OWM2XHU1NmZlXHU3NmY4XHU1MThjIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcZXh0ZW5kZWRfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjEwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 'NextGEN 扩展视图相册 基础版', '', 'draft', 'open', 'open', '', '', '', '', '2015-06-21 21:08:40', '0000-00-00 00:00:00', 'eyJ0aXRsZSI6Ik5leHRHRU4gXHU2MjY5XHU1YzU1XHU4OWM2XHU1NmZlXHU3NmY4XHU1MThjIFx1NTdmYVx1Nzg0MFx1NzI0OCIsImVudGl0eV90eXBlcyI6WyJhbGJ1bSIsImdhbGxlcnkiXSwicHJldmlld19pbWFnZV9yZWxwYXRoIjoiXFxuZXh0Z2VuLWdhbGxlcnlcXHByb2R1Y3RzXFxwaG90b2NyYXRpX25leHRnZW5cXG1vZHVsZXNcXG5leHRnZW5fYmFzaWNfYWxidW1cXHN0YXRpY1xcZXh0ZW5kZWRfcHJldmlldy5qcGciLCJkZWZhdWx0X3NvdXJjZSI6ImFsYnVtcyIsInZpZXdfb3JkZXIiOjEwMjEwLCJuYW1lIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX2V4dGVuZGVkX2FsYnVtIiwiaW5zdGFsbGVkX2F0X3ZlcnNpb24iOiIyLjEuMCIsImlkX2ZpZWxkIjoiSUQiLCJzZXR0aW5ncyI6eyJ1c2VfbGlnaHRib3hfZWZmZWN0Ijp0cnVlLCJnYWxsZXJpZXNfcGVyX3BhZ2UiOjAsImVuYWJsZV9icmVhZGNydW1icyI6MSwiZGlzYWJsZV9wYWdpbmF0aW9uIjowLCJ0ZW1wbGF0ZSI6IiIsIm92ZXJyaWRlX3RodW1ibmFpbF9zZXR0aW5ncyI6MCwidGh1bWJuYWlsX3dpZHRoIjoyNDAsInRodW1ibmFpbF9oZWlnaHQiOjE2MCwidGh1bWJuYWlsX3F1YWxpdHkiOjEwMCwidGh1bWJuYWlsX2Nyb3AiOnRydWUsInRodW1ibmFpbF93YXRlcm1hcmsiOjAsImdhbGxlcnlfZGlzcGxheV90eXBlIjoicGhvdG9jcmF0aS1uZXh0Z2VuX2Jhc2ljX3RodW1ibmFpbHMiLCJnYWxsZXJ5X2Rpc3BsYXlfdGVtcGxhdGUiOiIiLCJuZ2dfdHJpZ2dlcnNfZGlzcGxheSI6Im5ldmVyIn0sImhpZGRlbl9mcm9tX3VpIjpmYWxzZSwiX19kZWZhdWx0c19zZXQiOnRydWV9', 0, 'http://127.0.0.1:90/wordpress/?post_type=display_type&p=112', 0, 'display_type', '', 0),
(113, 2, '2015-06-21 21:13:15', '2015-06-21 13:13:15', '', '', '', 'inherit', 'open', 'open', '', '113', '', '', '2015-06-21 21:13:15', '2015-06-21 13:13:15', '', 78, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/Cloud13.png', 0, 'attachment', 'image/png', 0),
(114, 2, '2015-06-21 21:20:08', '2015-06-21 13:20:08', '', '', '', 'inherit', 'open', 'open', '', '114', '', '', '2015-06-21 21:20:08', '2015-06-21 13:20:08', '', 78, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/Cloud14.png', 0, 'attachment', 'image/png', 0),
(115, 2, '2015-06-21 21:24:35', '2015-06-21 13:24:35', '', '', '', 'inherit', 'open', 'open', '', '115', '', '', '2015-06-21 21:24:35', '2015-06-21 13:24:35', '', 78, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/Cloud15.png', 0, 'attachment', 'image/png', 0),
(116, 2, '2015-06-21 21:34:50', '2015-06-21 13:34:50', '', '个人技术标签', '', 'publish', 'open', 'open', '', '%e4%b8%aa%e4%ba%ba%e6%8a%80%e6%9c%af%e6%a0%87%e7%ad%be', '', '', '2015-06-21 21:34:50', '2015-06-21 13:34:50', '', 0, 'http://127.0.0.1:90/wordpress/?p=116', 0, 'post', '', 0),
(117, 2, '2015-06-21 21:34:50', '2015-06-21 13:34:50', '', '个人技术标签', '', 'inherit', 'open', 'open', '', '116-revision-v1', '', '', '2015-06-21 21:34:50', '2015-06-21 13:34:50', '', 116, 'http://127.0.0.1:90/wordpress/?p=117', 0, 'revision', '', 0),
(118, 2, '2015-06-21 21:34:52', '2015-06-21 13:34:52', '', '', '', 'inherit', 'open', 'open', '', '118', '', '', '2015-06-21 21:34:52', '2015-06-21 13:34:52', '', 117, 'http://127.0.0.1:90/wordpress/wp-content/uploads/2015/06/Cloud16.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_terms`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_terms`
--

INSERT INTO `bluemix_0_5_wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, 'post-format-image', 'post-format-image', 0),
(3, '相册', 'photography', 0),
(4, '文章', 'article', 0),
(5, '个人简介', 'selfintroduction', 0),
(6, '个人标签', '%e4%b8%aa%e4%ba%ba%e6%a0%87%e7%ad%be', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bluemix_0_5_wp_term_relationships`
--

INSERT INTO `bluemix_0_5_wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 12, 0),
(2, 14, 0),
(59, 12, 0),
(59, 14, 0),
(59, 13, 0),
(64, 15, 0),
(80, 2, 0),
(78, 15, 0),
(83, 15, 0),
(116, 16, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_term_taxonomy`
--

INSERT INTO `bluemix_0_5_wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 1, 'category', '', 0, 0),
(12, 2, 'post_format', '', 0, 1),
(13, 3, 'category', '照片请放在这里，易碎品，小心轻放', 0, 0),
(14, 4, 'category', '最新的吐槽资讯，技术链接，家庭纠纷请来这里观赏', 0, 1),
(15, 5, 'category', '简单的自我介绍', 0, 1),
(16, 6, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=160 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_usermeta`
--

INSERT INTO `bluemix_0_5_wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(2, 2, 'nickname', 'zhang360896270'),
(12, 2, 'first_name', ''),
(22, 2, 'last_name', ''),
(32, 2, 'description', ''),
(42, 2, 'rich_editing', 'false'),
(52, 2, 'comment_shortcuts', 'false'),
(62, 2, 'admin_color', 'fresh'),
(72, 2, 'use_ssl', '0'),
(82, 2, 'show_admin_bar_front', 'true'),
(92, 2, 'bluemix_0_5_wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(102, 2, 'bluemix_0_5_wp_user_level', '10'),
(112, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(122, 2, 'show_welcome_panel', '1'),
(132, 2, 'session_tokens', 'a:3:{s:64:"bdc43cbe19398a18303f2eddb8d05c9f49d6781633289e46bf0a07c37c9cf913";a:4:{s:10:"expiration";i:1434894530;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:119:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36 SE 2.X MetaSr 1.0";s:5:"login";i:1434721730;}s:64:"1cbe75df869839fa1e64e586ce9f24d8a991ae971e4ad0643662b9224fec0d9b";a:4:{s:10:"expiration";i:1434967837;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36";s:5:"login";i:1434795037;}s:64:"8fb795585ad6b215c228aa04077c6acacfcced3a46b5d2360f3626b8af9c91c9";a:4:{s:10:"expiration";i:1435064860;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36";s:5:"login";i:1434892060;}}'),
(158, 2, 'closedpostboxes_page', 'a:0:{}'),
(159, 2, 'metaboxhidden_page', 'a:7:{i:0;s:16:"so-panels-panels";i:1;s:12:"revisionsdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(142, 2, 'bluemix_0_5_wp_dashboard_quick_press_last_post_id', '70'),
(154, 2, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:"dashboard_quick_press";}'),
(155, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(152, 2, 'bluemix_0_5_wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&hidetb=1&unfold=1&mfold=o&imgsize=full'),
(153, 2, 'bluemix_0_5_wp_user-settings-time', '1434892067'),
(156, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(157, 2, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_users`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `bluemix_0_5_wp_users`
--

INSERT INTO `bluemix_0_5_wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(2, 'zhang360896270', '$P$BVOPd4sFroaAvUF/0JnzovbAsmO1Cj1', 'zhang360896270', '360896270@qq.com', '', '2015-06-10 09:59:24', '', 0, 'zhang360896270');

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_wpuf_customfields`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_wpuf_customfields` (
  `id` int(11) NOT NULL auto_increment,
  `field` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `values` text NOT NULL,
  `label` varchar(200) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `required` varchar(5) NOT NULL,
  `region` varchar(20) NOT NULL default 'top',
  `order` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_wpuf_subscription`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_wpuf_subscription` (
  `id` mediumint(9) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `count` int(5) default '0',
  `duration` int(5) NOT NULL default '0',
  `cost` float NOT NULL default '0',
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bluemix_0_5_wp_wpuf_transaction`
--

CREATE TABLE IF NOT EXISTS `bluemix_0_5_wp_wpuf_transaction` (
  `id` mediumint(9) NOT NULL auto_increment,
  `user_id` bigint(20) default NULL,
  `status` varchar(255) NOT NULL default 'pending_payment',
  `cost` varchar(255) default '',
  `post_id` bigint(20) default NULL,
  `pack_id` bigint(20) default NULL,
  `payer_first_name` longtext,
  `payer_last_name` longtext,
  `payer_email` longtext,
  `payment_type` longtext,
  `payer_address` longtext,
  `transaction_id` longtext,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
