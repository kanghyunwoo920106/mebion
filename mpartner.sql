-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.3.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 ttt.g5_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_auth:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_auth` ENABLE KEYS */;

-- 테이블 ttt.g5_autosave 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_autosave:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_autosave` ENABLE KEYS */;

-- 테이블 ttt.g5_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_write_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_download_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_html_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_link_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_point` int(11) NOT NULL DEFAULT 0,
  `bo_write_point` int(11) NOT NULL DEFAULT 0,
  `bo_comment_point` int(11) NOT NULL DEFAULT 0,
  `bo_download_point` int(11) NOT NULL DEFAULT 0,
  `bo_use_category` tinyint(4) NOT NULL DEFAULT 0,
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_good` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_name` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_table_width` int(11) NOT NULL DEFAULT 0,
  `bo_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_new` int(11) NOT NULL DEFAULT 0,
  `bo_hot` int(11) NOT NULL DEFAULT 0,
  `bo_image_width` int(11) NOT NULL DEFAULT 0,
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_upload_size` int(11) NOT NULL DEFAULT 0,
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_search` tinyint(4) NOT NULL DEFAULT 0,
  `bo_order` int(11) NOT NULL DEFAULT 0,
  `bo_count_write` int(11) NOT NULL DEFAULT 0,
  `bo_count_comment` int(11) NOT NULL DEFAULT 0,
  `bo_write_min` int(11) NOT NULL DEFAULT 0,
  `bo_write_max` int(11) NOT NULL DEFAULT 0,
  `bo_comment_min` int(11) NOT NULL DEFAULT 0,
  `bo_comment_max` int(11) NOT NULL DEFAULT 0,
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT 0,
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_board:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_board` DISABLE KEYS */;
INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_use_captcha`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
	('free', 'community', '자유게시판', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'theme/forum', 'theme/forum', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 3, 1, 0, 0, 0, 0, '3', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	('gallery', 'community', '갤러리', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'theme/gallery', 'theme/gallery', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 6, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	('notice', 'community', '공지사항', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'theme/basic', 'theme/basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 1, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
	('qa', 'community', '질문답변', '', 'both', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, 5, 1, -20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 835, 'theme/basic', 'theme/basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 202, 150, 125, 100, 1048576, 1, 0, 0, 2, 0, 0, 0, 0, 0, '', 2, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_board` ENABLE KEYS */;

-- 테이블 ttt.g5_board_file 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `bf_no` int(11) NOT NULL DEFAULT 0,
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT 0,
  `bf_width` int(11) NOT NULL DEFAULT 0,
  `bf_height` smallint(6) NOT NULL DEFAULT 0,
  `bf_type` tinyint(4) NOT NULL DEFAULT 0,
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_board_file:~13 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_board_file` DISABLE KEYS */;
INSERT INTO `g5_board_file` (`bo_table`, `wr_id`, `bf_no`, `bf_source`, `bf_file`, `bf_download`, `bf_content`, `bf_fileurl`, `bf_thumburl`, `bf_storage`, `bf_filesize`, `bf_width`, `bf_height`, `bf_type`, `bf_datetime`) VALUES
	('free', 1, 0, '02.png', '0_AyFJv1lY_0950b58ef095dc92100b5dee838ac5915e062838.png', 0, '', '', '', '', 1910467, 1920, 940, 3, '2021-02-18 15:53:17'),
	('free', 1, 1, '03.png', '0_DPgZJqWn_2295102c57d766b423f8485354380d268f7eae5a.png', 0, '', '', '', '', 1904683, 1920, 940, 3, '2021-02-18 15:53:17'),
	('free', 3, 0, 'default.png', '0_X1cR3oHZ_dc37b472037ab22d13355f7629dcf71d80255126.png', 0, '', '', '', '', 6686, 400, 200, 3, '2021-02-18 17:13:02'),
	('gallery', 1, 0, '03.png', '0_SKc01NUt_036a41b6aead49d932f80bdac898d88cd0fe95f2.png', 0, '', '', '', '', 1904683, 1920, 940, 3, '2021-02-18 15:54:11'),
	('gallery', 2, 0, 'KakaoTalk_20210129_104740542.jpg', '0_ea0QoLcS_68baca60765b5ed1351a1645a9b07123de606a59.jpg', 0, '', '', '', '', 56880, 374, 662, 2, '2021-02-18 17:59:21'),
	('gallery', 3, 0, '03.png', '0_e8vogjCm_a09646009c218fba8609b05aa92faf9357aedada.png', 0, '', '', '', '', 1904683, 1920, 940, 3, '2021-02-18 18:00:46'),
	('gallery', 4, 0, '04.png', '0_eu5ti2fc_cf747477293a7f434a361d85a4d72981adb91da8.png', 0, '', '', '', '', 629881, 1920, 940, 3, '2021-02-18 18:01:00'),
	('gallery', 5, 0, '03.png', '0_cZKEIxeb_52adb9442c36e4558c201f54ccb05236a3234b29.png', 0, '', '', '', '', 1904683, 1920, 940, 3, '2021-02-22 10:18:29'),
	('gallery', 6, 0, '01.png', '0_0mQ2kCqt_a4bbedb29146fae0b0be17d5cf1c7ea87f2d7ce8.png', 0, '', '', '', '', 1564739, 1920, 940, 3, '2021-02-22 10:57:37'),
	('notice', 1, 0, '01.png', '0_Kzh1XJts_459cb0a419c58369f00b6023100903255004366b.png', 0, '', '', '', '', 1564739, 1920, 940, 3, '2021-02-18 15:53:56'),
	('qa', 1, 0, '04.png', '0_uC9LN5Hm_b632a35ecfbf3c23b94ff37a86165499a9ea7a62.png', 0, '', '', '', '', 629881, 1920, 940, 3, '2021-02-18 15:53:42');
/*!40000 ALTER TABLE `g5_board_file` ENABLE KEYS */;

-- 테이블 ttt.g5_board_good 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_board_good:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_board_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_board_good` ENABLE KEYS */;

-- 테이블 ttt.g5_board_new 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_board_new:~13 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_board_new` DISABLE KEYS */;
INSERT INTO `g5_board_new` (`bn_id`, `bo_table`, `wr_id`, `wr_parent`, `bn_datetime`, `mb_id`) VALUES
	(1, 'free', 1, 1, '2021-02-18 15:53:17', 'admin'),
	(2, 'qa', 1, 1, '2021-02-18 15:53:42', 'admin'),
	(3, 'notice', 1, 1, '2021-02-18 15:53:56', 'admin'),
	(4, 'gallery', 1, 1, '2021-02-18 15:54:11', 'admin'),
	(5, 'free', 2, 1, '2021-02-18 16:20:46', 'admin'),
	(6, 'free', 3, 3, '2021-02-18 17:13:02', 'admin'),
	(7, 'gallery', 2, 2, '2021-02-18 17:59:21', 'admin'),
	(8, 'qa', 2, 2, '2021-02-18 18:00:15', 'admin'),
	(9, 'gallery', 3, 3, '2021-02-18 18:00:46', 'admin'),
	(10, 'gallery', 4, 4, '2021-02-18 18:01:00', 'admin'),
	(11, 'gallery', 5, 5, '2021-02-22 10:18:29', 'admin'),
	(12, 'gallery', 6, 6, '2021-02-22 10:57:37', 'admin'),
	(14, 'free', 4, 4, '2021-02-22 11:22:45', 'admin');
/*!40000 ALTER TABLE `g5_board_new` ENABLE KEYS */;

-- 테이블 ttt.g5_cert_history 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_cert_history:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_cert_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_cert_history` ENABLE KEYS */;

-- 테이블 ttt.g5_config 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT 0,
  `cf_point_term` int(11) NOT NULL DEFAULT 0,
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT 0,
  `cf_login_point` int(11) NOT NULL DEFAULT 0,
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT 0,
  `cf_nick_modify` int(11) NOT NULL DEFAULT 0,
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT 0,
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_point` int(11) NOT NULL DEFAULT 0,
  `cf_comment_point` int(11) NOT NULL DEFAULT 0,
  `cf_download_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_pages` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_pages` int(11) NOT NULL DEFAULT 0,
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT 0,
  `cf_delay_sec` int(11) NOT NULL DEFAULT 0,
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_point` int(11) NOT NULL DEFAULT 0,
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT 0,
  `cf_recommend_point` int(11) NOT NULL DEFAULT 0,
  `cf_leave_day` int(11) NOT NULL DEFAULT 0,
  `cf_search_part` int(11) NOT NULL DEFAULT 0,
  `cf_email_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT 0,
  `cf_memo_del` int(11) NOT NULL DEFAULT 0,
  `cf_visit_del` int(11) NOT NULL DEFAULT 0,
  `cf_popular_del` int(11) NOT NULL DEFAULT 0,
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT 0,
  `cf_member_icon_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_height` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_height` int(11) NOT NULL DEFAULT 0,
  `cf_login_minutes` int(11) NOT NULL DEFAULT 0,
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT 0,
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT 0,
  `cf_memo_send_point` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT 0,
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT 0,
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_config:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_config` DISABLE KEYS */;
INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_bbs_rewrite`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_member_img_size`, `cf_member_img_width`, `cf_member_img_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_social_login_use`, `cf_social_servicelist`, `cf_payco_clientid`, `cf_payco_secret`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_google_clientid`, `cf_google_secret`, `cf_naver_clientid`, `cf_naver_secret`, `cf_kakao_rest_key`, `cf_kakao_client_secret`, `cf_kakao_js_apikey`, `cf_captcha`, `cf_recaptcha_site_key`, `cf_recaptcha_secret_key`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
	('그누보드5', 'basic', 'admin', 'admin@domain.com', '그누보드5', '', 1, 0, 1, 0, 100, 15, 60, 'theme/basic', 15, 'theme/basic', 'theme/basic', 'theme/basic', 0, 0, 0, 0, 10, 5, '_blank', 0, 30, '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', 'theme/basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2021-02-22', 2, 5000, 22, 22, 50000, 60, 60, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '오늘:1,어제:1,최대:1,전체:8', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'theme/basic', 'theme/basic', 'theme/basic', 'theme/basic', 'theme/basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, '', '', '', '', '211.172.232.124', '7295', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kcaptcha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_config` ENABLE KEYS */;

-- 테이블 ttt.g5_content 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT 0,
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT 0,
  `co_hit` int(11) NOT NULL DEFAULT 0,
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL,
  PRIMARY KEY (`co_id`),
  KEY `co_seo_title` (`co_seo_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_content:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_content` DISABLE KEYS */;
INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_seo_title`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
	('company', 1, '회사소개', '<p align="center"><b>test</b></p>', '회사소개', '', 'theme/basic', 'theme/basic', 1, 0, '', ''),
	('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '개인정보-처리방침', '', '', '', 0, 0, '', ''),
	('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '서비스-이용약관', '', '', '', 0, 0, '', '');
/*!40000 ALTER TABLE `g5_content` ENABLE KEYS */;

-- 테이블 ttt.g5_faq 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT 0,
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_faq:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_faq` ENABLE KEYS */;

-- 테이블 ttt.g5_faq_master 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_faq_master:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_faq_master` DISABLE KEYS */;
INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
	(1, '자주하시는 질문', '<p>test</p>', '', '', '', 0);
/*!40000 ALTER TABLE `g5_faq_master` ENABLE KEYS */;

-- 테이블 ttt.g5_group 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT 0,
  `gr_order` int(11) NOT NULL DEFAULT 0,
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_group:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_group` DISABLE KEYS */;
INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`) VALUES
	('community', '커뮤니티', 'both', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_group` ENABLE KEYS */;

-- 테이블 ttt.g5_group_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_group_member:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_group_member` ENABLE KEYS */;

-- 테이블 ttt.g5_login 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_login:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_login` DISABLE KEYS */;
INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
	('::1', '', '2021-05-04 16:15:27', '그누보드5', '/page.php?id=dashboard');
/*!40000 ALTER TABLE `g5_login` ENABLE KEYS */;

-- 테이블 ttt.g5_mail 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_mail:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_mail` ENABLE KEYS */;

-- 테이블 ttt.g5_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT 0,
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT 0,
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sms` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_member:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_member` DISABLE KEYS */;
INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_memo_cnt`, `mb_scrap_cnt`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
	(1, 'admin', 'sha256:12000:ckje4vwruRczBJOFTNud84FJ6K7TabpQ:Tn2PLAOFZKau64VqHgvy5xfwmeami81X', '최고관리자', '최고관리자', '0000-00-00', 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 261, '2021-02-22 10:16:33', '::1', '2021-02-18 15:50:10', '::1', '', '', '2021-02-18 15:50:10', '', '', '', 1, 0, 1, '0000-00-00', '', '', 0, 0, '', '', '', '', '', '', '', '', '', ''),
	(2, 'teset1', 'sha256:12000:d4CpCYNnWNxHSNo3Bly5nsAl0PU4Am7B:VwYUUWex1BU9/sWBeQR9f2WVwAwCnU3b', 'ㅇㅇㅇ', 'ㅇㅇㅇㅇ', '2021-02-18', 'xxx@naver.com', '', 2, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 999, '2021-02-18 17:11:35', '::1', '2021-02-18 17:11:35', '::1', '', '', '2021-02-18 17:11:35', '', '', '', 1, 0, 1, '2021-02-18', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_member` ENABLE KEYS */;

-- 테이블 ttt.g5_member_social_profiles 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `mp_no` (`mp_no`),
  KEY `mb_id` (`mb_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_member_social_profiles:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_member_social_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_member_social_profiles` ENABLE KEYS */;

-- 테이블 ttt.g5_memo 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_memo` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT 0,
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_memo:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_memo` ENABLE KEYS */;

-- 테이블 ttt.g5_menu 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT 0,
  `me_use` tinyint(4) NOT NULL DEFAULT 0,
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_menu:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_menu` DISABLE KEYS */;
INSERT INTO `g5_menu` (`me_id`, `me_code`, `me_name`, `me_link`, `me_target`, `me_order`, `me_use`, `me_mobile_use`) VALUES
	(13, '10', 'menu1', '/page.php?id=test12', 'self', 0, 1, 1),
	(14, '20', 'menu2', '/page.php?id=test13', 'self', 0, 1, 1),
	(15, '30', 'menu3', 'cc', 'self', 0, 1, 1);
/*!40000 ALTER TABLE `g5_menu` ENABLE KEYS */;

-- 테이블 ttt.g5_new_win 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT 0,
  `nw_left` int(11) NOT NULL DEFAULT 0,
  `nw_top` int(11) NOT NULL DEFAULT 0,
  `nw_height` int(11) NOT NULL DEFAULT 0,
  `nw_width` int(11) NOT NULL DEFAULT 0,
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`nw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_new_win:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_new_win` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_new_win` ENABLE KEYS */;

-- 테이블 ttt.g5_point 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_use_point` int(11) NOT NULL DEFAULT 0,
  `po_expired` tinyint(4) NOT NULL DEFAULT 0,
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT 0,
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_point:~17 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_point` DISABLE KEYS */;
INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
	(1, 'admin', '2021-02-18 15:50:47', '2021-02-18 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2021-02-18'),
	(2, 'admin', '2021-02-18 15:53:17', '자유게시판 1 글쓰기', 5, 0, 0, '9999-12-31', 105, 'free', '1', '쓰기'),
	(3, 'admin', '2021-02-18 15:53:42', '질문답변 1 글쓰기', 5, 0, 0, '9999-12-31', 110, 'qa', '1', '쓰기'),
	(4, 'admin', '2021-02-18 15:53:56', '공지사항 1 글쓰기', 5, 0, 0, '9999-12-31', 115, 'notice', '1', '쓰기'),
	(5, 'admin', '2021-02-18 15:54:11', '갤러리 1 글쓰기', 5, 0, 0, '9999-12-31', 120, 'gallery', '1', '쓰기'),
	(6, 'admin', '2021-02-18 16:20:46', '자유게시판 1-2 댓글쓰기', 1, 0, 0, '9999-12-31', 121, 'free', '2', '댓글'),
	(7, 'teset1', '2021-02-18 17:11:35', '회원가입 축하', 1000, 1, 0, '9999-12-31', 1000, '@member', 'teset1', '회원가입'),
	(8, 'admin', '2021-02-18 17:13:02', '자유게시판 3 글쓰기', 5, 0, 0, '9999-12-31', 126, 'free', '3', '쓰기'),
	(9, 'teset1', '2021-02-18 17:42:27', '갤러리 1 글읽기', -1, 0, 1, '2021-02-18', 999, 'gallery', '1', '읽기'),
	(10, 'admin', '2021-02-18 17:59:21', '갤러리 2 글쓰기', 5, 0, 0, '9999-12-31', 131, 'gallery', '2', '쓰기'),
	(11, 'admin', '2021-02-18 18:00:15', '질문답변 2 글쓰기', 5, 0, 0, '9999-12-31', 136, 'qa', '2', '쓰기'),
	(12, 'admin', '2021-02-18 18:00:46', '갤러리 3 글쓰기', 5, 0, 0, '9999-12-31', 141, 'gallery', '3', '쓰기'),
	(13, 'admin', '2021-02-18 18:01:00', '갤러리 4 글쓰기', 5, 0, 0, '9999-12-31', 146, 'gallery', '4', '쓰기'),
	(14, 'admin', '2021-02-22 10:16:33', '2021-02-22 첫로그인', 100, 0, 0, '9999-12-31', 246, '@login', 'admin', '2021-02-22'),
	(15, 'admin', '2021-02-22 10:18:29', '갤러리 5 글쓰기', 5, 0, 0, '9999-12-31', 251, 'gallery', '5', '쓰기'),
	(16, 'admin', '2021-02-22 10:57:37', '갤러리 6 글쓰기', 5, 0, 0, '9999-12-31', 256, 'gallery', '6', '쓰기'),
	(18, 'admin', '2021-02-22 11:22:45', '자유게시판 4 글쓰기', 5, 0, 0, '9999-12-31', 261, 'free', '4', '쓰기');
/*!40000 ALTER TABLE `g5_point` ENABLE KEYS */;

-- 테이블 ttt.g5_poll 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT 0,
  `po_cnt2` int(11) NOT NULL DEFAULT 0,
  `po_cnt3` int(11) NOT NULL DEFAULT 0,
  `po_cnt4` int(11) NOT NULL DEFAULT 0,
  `po_cnt5` int(11) NOT NULL DEFAULT 0,
  `po_cnt6` int(11) NOT NULL DEFAULT 0,
  `po_cnt7` int(11) NOT NULL DEFAULT 0,
  `po_cnt8` int(11) NOT NULL DEFAULT 0,
  `po_cnt9` int(11) NOT NULL DEFAULT 0,
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT 0,
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_poll:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_poll` ENABLE KEYS */;

-- 테이블 ttt.g5_poll_etc 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT 0,
  `po_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_poll_etc:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_poll_etc` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_poll_etc` ENABLE KEYS */;

-- 테이블 ttt.g5_popular 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_popular:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_popular` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_popular` ENABLE KEYS */;

-- 테이블 ttt.g5_qa_config 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT 0,
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_image_width` int(11) NOT NULL DEFAULT 0,
  `qa_upload_size` int(11) NOT NULL DEFAULT 0,
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_qa_config:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_qa_config` DISABLE KEYS */;
INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`) VALUES
	('1:1문의', '회원|포인트', 'theme/basic', 'theme/basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_qa_config` ENABLE KEYS */;

-- 테이블 ttt.g5_qa_content 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT 0,
  `qa_parent` int(11) NOT NULL DEFAULT 0,
  `qa_related` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT 0,
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_html` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT 0,
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_qa_content:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_qa_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_qa_content` ENABLE KEYS */;

-- 테이블 ttt.g5_scrap 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_scrap:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_scrap` DISABLE KEYS */;
/*!40000 ALTER TABLE `g5_scrap` ENABLE KEYS */;

-- 테이블 ttt.g5_uniqid 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_uniqid:~14 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_uniqid` DISABLE KEYS */;
INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`) VALUES
	(2021021815530535, '::1'),
	(2021021815533422, '::1'),
	(2021021815534913, '::1'),
	(2021021815540407, '::1'),
	(2021021817124398, '::1'),
	(2021021817591141, '::1'),
	(2021021818001250, '::1'),
	(2021021818003671, '::1'),
	(2021021818005209, '::1'),
	(2021021818022537, '::1'),
	(2021021818022844, '::1'),
	(2021021818332587, '::1'),
	(2021022210181935, '::1'),
	(2021022210573102, '::1'),
	(2021022211180952, '::1'),
	(2021022211224205, '::1'),
	(2021022217434683, '::1');
/*!40000 ALTER TABLE `g5_uniqid` ENABLE KEYS */;

-- 테이블 ttt.g5_visit 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT 0,
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_visit:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_visit` DISABLE KEYS */;
INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`, `vi_browser`, `vi_os`, `vi_device`) VALUES
	(1, '::1', '2021-02-18', '15:53:17', 'http://localhost:8079/bbs/write.php?bo_table=free', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '', '', ''),
	(2, '::1', '2021-02-19', '17:35:11', 'http://localhost:8079/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '', '', ''),
	(3, '::1', '2021-04-27', '10:14:20', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', ''),
	(4, '::1', '2021-04-28', '10:14:38', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', ''),
	(5, '::1', '2021-04-29', '10:15:39', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', ''),
	(6, '::1', '2021-04-30', '10:26:25', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', ''),
	(7, '::1', '2021-05-03', '10:06:50', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', ''),
	(8, '::1', '2021-05-04', '10:22:03', 'http://localhost:8079/page.php?id=dashboard', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', '', '', '');
/*!40000 ALTER TABLE `g5_visit` ENABLE KEYS */;

-- 테이블 ttt.g5_visit_sum 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_visit_sum:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_visit_sum` DISABLE KEYS */;
INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`) VALUES
	('2021-02-18', 1),
	('2021-02-19', 1),
	('2021-04-27', 1),
	('2021-04-28', 1),
	('2021-04-29', 1),
	('2021-04-30', 1),
	('2021-05-03', 1),
	('2021-05-04', 1);
/*!40000 ALTER TABLE `g5_visit_sum` ENABLE KEYS */;

-- 테이블 ttt.g5_write_free 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_write_free` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_write_free:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_write_free` DISABLE KEYS */;
INSERT INTO `g5_write_free` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_seo_title`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
	(1, -1, '', 1, 0, 1, '', '', '', 'test1', 'test1', 'test1', '', '', 0, 0, 3, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 15:53:17', 2, '2021-02-18 16:20:46', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(2, -1, '', 1, 1, 1, '', '', '', '', 'ddddd', '', '', '', 0, 0, 0, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 16:20:46', 0, '', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(3, -2, '', 3, 0, 0, '', '', '', 'test55', 'test55', 'test55', '', '', 0, 0, 3, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 17:13:02', 1, '2021-02-18 17:13:02', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(4, -3, '', 4, 0, 0, '', '', '', 'ttttt', 'ttttt', 'ttttt', '', '', 0, 0, 2, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-22 11:22:45', 0, '2021-02-22 11:22:45', '::1', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_write_free` ENABLE KEYS */;

-- 테이블 ttt.g5_write_gallery 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_write_gallery` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_write_gallery:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_write_gallery` DISABLE KEYS */;
INSERT INTO `g5_write_gallery` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_seo_title`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
	(1, -1, '', 1, 0, 0, '', '', '', 'test5', 'test5', 'test5', '', '', 0, 0, 4, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 15:54:11', 1, '2021-02-18 15:54:11', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(2, -2, '', 2, 0, 0, '', '', '', 'ddddd', 'dddddddd', 'ddddd', '', '', 0, 0, 1, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 17:59:21', 0, '2021-02-18 17:59:21', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(3, -3, '', 3, 0, 0, '', '', '', 'dddddddddd', 'dddddddddddd', 'dddddddddd', '', '', 0, 0, 2, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 18:00:46', 1, '2021-02-18 18:00:46', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(4, -4, '', 4, 0, 0, '', '', '', 'dddddddddddddd', 'ddddddddddddddddddd', 'dddddddddddddd', '', '', 0, 0, 2, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 18:01:00', 1, '2021-02-18 18:01:00', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(5, -5, '', 5, 0, 0, '', '', '', 'test12', 'test12', 'test12', '', '', 0, 0, 1, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-22 10:18:29', 1, '2021-02-22 10:18:29', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(6, -6, '', 6, 0, 0, '', '', '', 'fwefwe', 'ewfwef', 'fwefwe', '', '', 0, 0, 1, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-22 10:57:37', 1, '2021-02-22 10:57:37', '::1', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_write_gallery` ENABLE KEYS */;

-- 테이블 ttt.g5_write_notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_write_notice` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_write_notice:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_write_notice` DISABLE KEYS */;
INSERT INTO `g5_write_notice` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_seo_title`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
	(1, -1, '', 1, 0, 0, '', '', '', 'test3', 'test3', 'test3', '', '', 0, 0, 3, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 15:53:56', 1, '2021-02-18 15:53:56', '::1', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_write_notice` ENABLE KEYS */;

-- 테이블 ttt.g5_write_qa 구조 내보내기
CREATE TABLE IF NOT EXISTS `g5_write_qa` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.g5_write_qa:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `g5_write_qa` DISABLE KEYS */;
INSERT INTO `g5_write_qa` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_seo_title`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
	(1, -1, '', 1, 0, 0, '', '', '', 'test2', 'test2', 'test2', '', '', 0, 0, 3, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 15:53:42', 1, '2021-02-18 15:53:42', '::1', '', '', '', '', '', '', '', '', '', '', '', ''),
	(2, -2, '', 2, 0, 0, '', '', '', 'dddd', 'ddddddd', 'dddd', '', '', 0, 0, 2, 0, 0, 'admin', '', '최고관리자', 'admin@domain.com', '', '2021-02-18 18:00:15', 0, '2021-02-18 18:00:15', '::1', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `g5_write_qa` ENABLE KEYS */;

-- 테이블 ttt.sms5_book 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_book` (
  `bk_no` int(11) NOT NULL AUTO_INCREMENT,
  `bg_no` int(11) NOT NULL DEFAULT 0,
  `mb_no` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_name` varchar(255) NOT NULL DEFAULT '',
  `bk_hp` varchar(255) NOT NULL DEFAULT '',
  `bk_receipt` tinyint(4) NOT NULL DEFAULT 0,
  `bk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bk_memo` text NOT NULL,
  PRIMARY KEY (`bk_no`),
  KEY `bk_name` (`bk_name`),
  KEY `bk_hp` (`bk_hp`),
  KEY `mb_no` (`mb_no`),
  KEY `bg_no` (`bg_no`,`bk_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_book:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_book` ENABLE KEYS */;

-- 테이블 ttt.sms5_book_group 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_book_group` (
  `bg_no` int(11) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(255) NOT NULL DEFAULT '',
  `bg_count` int(11) NOT NULL DEFAULT 0,
  `bg_member` int(11) NOT NULL DEFAULT 0,
  `bg_nomember` int(11) NOT NULL DEFAULT 0,
  `bg_receipt` int(11) NOT NULL DEFAULT 0,
  `bg_reject` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bg_no`),
  KEY `bg_name` (`bg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_book_group:1 rows 내보내기
/*!40000 ALTER TABLE `sms5_book_group` DISABLE KEYS */;
INSERT INTO `sms5_book_group` (`bg_no`, `bg_name`, `bg_count`, `bg_member`, `bg_nomember`, `bg_receipt`, `bg_reject`) VALUES
	(1, '미분류', 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `sms5_book_group` ENABLE KEYS */;

-- 테이블 ttt.sms5_config 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_config` (
  `cf_phone` varchar(255) NOT NULL DEFAULT '',
  `cf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_config:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_config` ENABLE KEYS */;

-- 테이블 ttt.sms5_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_form` (
  `fo_no` int(11) NOT NULL AUTO_INCREMENT,
  `fg_no` tinyint(4) NOT NULL DEFAULT 0,
  `fg_member` char(1) NOT NULL DEFAULT '0',
  `fo_name` varchar(255) NOT NULL DEFAULT '',
  `fo_content` text NOT NULL,
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`fo_no`),
  KEY `fg_no` (`fg_no`,`fo_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_form:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_form` ENABLE KEYS */;

-- 테이블 ttt.sms5_form_group 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_form_group` (
  `fg_no` int(11) NOT NULL AUTO_INCREMENT,
  `fg_name` varchar(255) NOT NULL DEFAULT '',
  `fg_count` int(11) NOT NULL DEFAULT 0,
  `fg_member` tinyint(4) NOT NULL,
  PRIMARY KEY (`fg_no`),
  KEY `fg_name` (`fg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_form_group:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_form_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_form_group` ENABLE KEYS */;

-- 테이블 ttt.sms5_history 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_history` (
  `hs_no` int(11) NOT NULL AUTO_INCREMENT,
  `wr_no` int(11) NOT NULL DEFAULT 0,
  `wr_renum` int(11) NOT NULL DEFAULT 0,
  `bg_no` int(11) NOT NULL DEFAULT 0,
  `mb_no` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_no` int(11) NOT NULL DEFAULT 0,
  `hs_name` varchar(30) NOT NULL DEFAULT '',
  `hs_hp` varchar(255) NOT NULL DEFAULT '',
  `hs_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hs_flag` tinyint(4) NOT NULL DEFAULT 0,
  `hs_code` varchar(255) NOT NULL DEFAULT '',
  `hs_memo` varchar(255) NOT NULL DEFAULT '',
  `hs_log` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hs_no`),
  KEY `wr_no` (`wr_no`),
  KEY `mb_no` (`mb_no`),
  KEY `bk_no` (`bk_no`),
  KEY `hs_hp` (`hs_hp`),
  KEY `hs_code` (`hs_code`),
  KEY `bg_no` (`bg_no`),
  KEY `mb_id` (`mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_history:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_history` ENABLE KEYS */;

-- 테이블 ttt.sms5_write 구조 내보내기
CREATE TABLE IF NOT EXISTS `sms5_write` (
  `wr_no` int(11) NOT NULL DEFAULT 1,
  `wr_renum` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(255) NOT NULL DEFAULT '',
  `wr_message` varchar(255) NOT NULL DEFAULT '',
  `wr_booking` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_total` int(11) NOT NULL DEFAULT 0,
  `wr_re_total` int(11) NOT NULL DEFAULT 0,
  `wr_success` int(11) NOT NULL DEFAULT 0,
  `wr_failure` int(11) NOT NULL DEFAULT 0,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_memo` text NOT NULL,
  KEY `wr_no` (`wr_no`,`wr_renum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 테이블 데이터 ttt.sms5_write:0 rows 내보내기
/*!40000 ALTER TABLE `sms5_write` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms5_write` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
