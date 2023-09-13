-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2021 at 11:24 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mining_fraudsters_and_fraudulent`
--
CREATE DATABASE IF NOT EXISTS `mining_fraudsters_and_fraudulent` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mining_fraudsters_and_fraudulent`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0doxd89lelsb62hh61y1u9xvhgis91ks', 'eyJ1c2VyaWQiOjE5fQ:1mDlBs:xxj-bSmT5wd80FZ0QPs9yzR1wUnf-8naNjRRmgbWt-4', '2021-08-25 10:10:28.069873'),
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('1wj37edv4gq53278fyfhsundj6bii03u', 'eyJ1c2VyaWQiOjExfQ:1mgOWY:A5nO4RDcezVcQ0rvOBdZroxJf_S2imnC4BrCwQhdjK4', '2021-11-12 09:50:10.498517'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4rqt7ft7c05r76m77a0w3rfs3nmdfat2', 'eyJ1c2VyaWQiOjN9:1ms2fz:RVaokmFeWJFQHo781U3qkl9f6naWKnrjyvPBKU-ZhTs', '2021-12-14 12:56:03.173795'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('71xmxi6jtpq7no8f7u22lhhebulooqr6', 'eyJ1c2VyaWQiOjExfQ:1mgQXe:is7Cn6UTAegQ0nVYNUq6rB_f6gcITGroNgByN9FyUPc', '2021-11-12 11:59:26.727159'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('8513umqfmujgqghu9acxxvvnr6830p4s', 'eyJ1c2VyaWQiOjZ9:1msN2Q:wrYBbKQe1sFzi-Cd_VoxKL7TDX5at4vsSBlGy3ZeXy0', '2021-12-15 10:40:34.200958'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('au3tqhab9csr4r2g5p8wxgktebzxone0', 'eyJ1c2VyaWQiOjExfQ:1mexd7:BmPTZn93Z2602ApV03LTh7BmDypyoNMN2YRKctHrGF8', '2021-11-08 10:55:01.820399'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('fq0czwxzas1e5bjz5cx5pr6ytm8uhejy', 'eyJ1c2VyaWQiOjExfQ:1mfKoD:eQbeRUgZ8NFqCleEdS6fE0NAoRs3zn6_B82CZb4YtiQ', '2021-11-09 11:40:01.472965'),
('h2up0dvopjvwswxnvprj7id9lgrivhus', 'eyJ1c2VyaWQiOjIzfQ:1mfM3f:FAuAUdY-ly6qun6t571yt1pYKVGhXfjbjhiruld5rNs', '2021-11-09 13:00:03.703809'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i530ldontosd9c37rlmr7i190cc8j54c', 'eyJ1c2VyaWQiOjExfQ:1mfGFZ:PSpZPmdPYnGzwCScqY4tYBkDj8BMVATwweZjjxmG5dk', '2021-11-09 06:47:57.629900'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jgcbya9z2s6b6mmldfv28lm18imc73m8', 'eyJ1c2VyaWQiOjIxfQ:1mDnYP:GTRQ2I-UYLdsCCyA0-WsFSAVBNno1wLo6lk4M8JS0OU', '2021-08-25 12:41:53.312085'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('ktjsa2dwmkzggkc8htfro0m1zf2kt78d', 'eyJ1c2VyaWQiOjI0fQ:1mfiev:rUgpc2VOr-8MQnmWwZsSVM_IqXQAA3Bacheqmp_LQ2o', '2021-11-10 13:08:01.503971'),
('nuktrii5wd89zyebplhoxpwwyeci9sb1', 'eyJ1c2VyaWQiOjJ9:1mrKKB:pAvzQgoZlUiwt3M2a3vyKvZlafkkwPNjWE3tBos5q0E', '2021-12-12 13:34:35.330951'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('owqt9fqa6pkheboduh6f4k5p4lkwj0yc', 'eyJ1c2VyaWQiOjExfQ:1mfiXk:Wzn12pygxu_2Z1TzCSC4bKDawuXj_i7_BFLhJjKx-10', '2021-11-10 13:00:36.684741'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('q6hp9a2l9dbrclvox0o02x1aamx1ukj7', 'eyJ1c2VyaWQiOjIyfQ:1mfGz3:wkq7ZgyB738cK3Jugrc0viqb3eI1C0gWhyypHF_DE-A', '2021-11-09 07:34:57.860407'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('rn48bwukkb2yv60kvkacr8nc0njr5xky', 'eyJ1c2VyaWQiOjExfQ:1mfggv:xsbmrrGzxtrEFgspA0Wp7oWTp9qDl0shDSlGG8fHJo4', '2021-11-10 11:01:57.519295'),
('s24oyo68fnhtlhvmddkl82ui8hhiv6ty', 'eyJ1c2VyaWQiOjI1fQ:1mgQcp:BHQKRv6sKgValy4vdX2xGo5GCeFSFLnC0vxfE2nPhGM', '2021-11-12 12:04:47.833718'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('t7rw8y5ue5rnvd5eadkkmjei1egw5anm', 'eyJ1c2VyaWQiOjV9:1ms3Eq:OGqt8KbYOdfziu-FguOtucU9d9o3zPlY2HimNjh4LOY', '2021-12-14 13:32:04.881140'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('tx26u0gjaebi1m6miqvms83dw452rw7c', 'eyJ1c2VyaWQiOjExfQ:1mg01H:i0OHhHK7t2WdfySWwMXXs92TaT7Vn1UQf2i0eZBO70s', '2021-11-11 07:40:15.053714'),
('u0tux9m6ma83x0300mksdy4d073yvhw6', 'eyJ1c2VyaWQiOjd9:1msPEG:hfUTyi0gPLaXu7v6pv5PRJyyZ1JI9oT6Qv52IeMgLXk', '2021-12-15 13:00:56.369546'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(6, 'Ramesh', 'Ramesh123@gmail.com', 'Ramesh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(7, 'Manjunath', 'tmksmanju13@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `remote_user_detection_accuracy_model`
--

INSERT INTO `remote_user_detection_accuracy_model` (`id`, `names`, `ratio`) VALUES
(47, 'Naive Bayes', '99.84500774961252'),
(48, 'SVM', '99.84000799960002'),
(49, 'Logistic Regression', '99.84500774961252'),
(50, 'Decision Tree Classifier', '99.84000799960002');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `remote_user_detection_ratio_model`
--

INSERT INTO `remote_user_detection_ratio_model` (`id`, `names`, `ratio`) VALUES
(39, 'Fraud', '25.0'),
(40, 'Non Fraud', '75.0');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_fraudsters_and_fraudulent_details`
--

CREATE TABLE IF NOT EXISTS `remote_user_fraudsters_and_fraudulent_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `nameOrig` varchar(300) NOT NULL,
  `oldbalanceOrg` varchar(300) NOT NULL,
  `newbalanceOrig` varchar(300) NOT NULL,
  `nameDest` varchar(300) NOT NULL,
  `oldbalanceDest` varchar(300) NOT NULL,
  `newbalanceDest` varchar(300) NOT NULL,
  `isFraud` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1504 ;

--
-- Dumping data for table `remote_user_fraudsters_and_fraudulent_details`
--

INSERT INTO `remote_user_fraudsters_and_fraudulent_details` (`id`, `step`, `type`, `amount`, `nameOrig`, `oldbalanceOrg`, `newbalanceOrig`, `nameDest`, `oldbalanceDest`, `newbalanceDest`, `isFraud`) VALUES
(1003, '1', 'PAYMENT', '9839.64', 'C1231006815', '170136', '160296.36', 'M1979787155', '0', '0', '0'),
(1004, '1', 'PAYMENT', '1864.28', 'C1666544295', '21249', '19384.72', 'M2044282225', '0', '0', '0'),
(1005, '1', 'TRANSFER', '181', 'C1305486145', '181', '0', 'C553264065', '0', '0', '1'),
(1006, '1', 'CASH_OUT', '181', 'C840083671', '181', '0', 'C38997010', '21182', '0', '1'),
(1007, '1', 'PAYMENT', '11668.14', 'C2048537720', '41554', '29885.86', 'M1230701703', '0', '0', '0'),
(1008, '1', 'PAYMENT', '7817.71', 'C90045638', '53860', '46042.29', 'M573487274', '0', '0', '0'),
(1009, '1', 'PAYMENT', '7107.77', 'C154988899', '183195', '176087.23', 'M408069119', '0', '0', '0'),
(1010, '1', 'PAYMENT', '7861.64', 'C1912850431', '176087.23', '168225.59', 'M633326333', '0', '0', '0'),
(1011, '1', 'PAYMENT', '4024.36', 'C1265012928', '2671', '0', 'M1176932104', '0', '0', '0'),
(1012, '1', 'DEBIT', '5337.77', 'C712410124', '41720', '36382.23', 'C195600860', '41898', '40348.79', '0'),
(1013, '1', 'DEBIT', '9644.94', 'C1900366749', '4465', '0', 'C997608398', '10845', '157982.12', '0'),
(1014, '1', 'PAYMENT', '3099.97', 'C249177573', '20771', '17671.03', 'M2096539129', '0', '0', '0'),
(1015, '1', 'PAYMENT', '2560.74', 'C1648232591', '5070', '2509.26', 'M972865270', '0', '0', '0'),
(1016, '1', 'PAYMENT', '11633.76', 'C1716932897', '10127', '0', 'M801569151', '0', '0', '0'),
(1017, '1', 'PAYMENT', '4098.78', 'C1026483832', '503264', '499165.22', 'M1635378213', '0', '0', '0'),
(1018, '1', 'CASH_OUT', '229133.94', 'C905080434', '15325', '0', 'C476402209', '5083', '51513.44', '0'),
(1019, '1', 'PAYMENT', '1563.82', 'C761750706', '450', '0', 'M1731217984', '0', '0', '0'),
(1020, '1', 'PAYMENT', '1157.86', 'C1237762639', '21156', '19998.14', 'M1877062907', '0', '0', '0'),
(1021, '1', 'PAYMENT', '671.64', 'C2033524545', '15123', '14451.36', 'M473053293', '0', '0', '0'),
(1022, '1', 'TRANSFER', '215310.3', 'C1670993182', '705', '0', 'C1100439041', '22425', '0', '0'),
(1023, '1', 'PAYMENT', '1373.43', 'C20804602', '13854', '12480.57', 'M1344519051', '0', '0', '0'),
(1024, '1', 'DEBIT', '9302.79', 'C1566511282', '11299', '1996.21', 'C1973538135', '29832', '16896.7', '0'),
(1025, '1', 'DEBIT', '1065.41', 'C1959239586', '1817', '751.59', 'C515132998', '10330', '0', '0'),
(1026, '1', 'PAYMENT', '3876.41', 'C504336483', '67852', '63975.59', 'M1404932042', '0', '0', '0'),
(1027, '1', 'TRANSFER', '311685.89', 'C1984094095', '10835', '0', 'C932583850', '6267', '2719172.89', '0'),
(1028, '1', 'PAYMENT', '6061.13', 'C1043358826', '443', '0', 'M1558079303', '0', '0', '0'),
(1029, '1', 'PAYMENT', '9478.39', 'C1671590089', '116494', '107015.61', 'M58488213', '0', '0', '0'),
(1030, '1', 'PAYMENT', '8009.09', 'C1053967012', '10968', '2958.91', 'M295304806', '0', '0', '0'),
(1031, '1', 'PAYMENT', '8901.99', 'C1632497828', '2958.91', '0', 'M33419717', '0', '0', '0'),
(1032, '1', 'PAYMENT', '9920.52', 'C764826684', '0', '0', 'M1940055334', '0', '0', '0'),
(1033, '1', 'PAYMENT', '3448.92', 'C2103763750', '0', '0', 'M335107734', '0', '0', '0'),
(1034, '1', 'PAYMENT', '4206.84', 'C215078753', '0', '0', 'M1757317128', '0', '0', '0'),
(1035, '1', 'PAYMENT', '5885.56', 'C840514538', '0', '0', 'M1804441305', '0', '0', '0'),
(1036, '1', 'PAYMENT', '5307.88', 'C1768242710', '0', '0', 'M1971783162', '0', '0', '0'),
(1037, '1', 'PAYMENT', '5031.22', 'C247113419', '0', '0', 'M151442075', '0', '0', '0'),
(1038, '1', 'PAYMENT', '24213.67', 'C1238616099', '0', '0', 'M70695990', '0', '0', '0'),
(1039, '1', 'PAYMENT', '8603.42', 'C1608633989', '253', '0', 'M1615617512', '0', '0', '0'),
(1040, '1', 'PAYMENT', '2791.42', 'C923341586', '300481', '297689.58', 'M107994825', '0', '0', '0'),
(1041, '1', 'PAYMENT', '7413.54', 'C1470868839', '297689.58', '290276.03', 'M1426725223', '0', '0', '0'),
(1042, '1', 'PAYMENT', '3295.19', 'C711197015', '233633', '230337.81', 'M1384454980', '0', '0', '0'),
(1043, '1', 'PAYMENT', '1684.81', 'C1481594086', '297', '0', 'M1569435561', '0', '0', '0'),
(1044, '1', 'DEBIT', '5758.59', 'C1466917878', '32604', '26845.41', 'C1297685781', '209699', '16997.22', '0'),
(1045, '1', 'CASH_OUT', '110414.71', 'C768216420', '26845.41', '0', 'C1509514333', '288800', '2415.16', '0'),
(1046, '1', 'PAYMENT', '7823.46', 'C260084831', '998', '0', 'M267814113', '0', '0', '0'),
(1047, '1', 'PAYMENT', '5086.48', 'C598357562', '0', '0', 'M1593224710', '0', '0', '0'),
(1048, '1', 'PAYMENT', '5281.48', 'C1440738283', '152019', '146737.52', 'M1849015357', '0', '0', '0'),
(1049, '1', 'PAYMENT', '13875.98', 'C484199463', '15818', '1942.02', 'M2008106788', '0', '0', '0'),
(1050, '1', 'CASH_OUT', '56953.9', 'C1570470538', '1942.02', '0', 'C824009085', '70253', '64106.18', '0'),
(1051, '1', 'CASH_OUT', '5346.89', 'C512549200', '0', '0', 'C248609774', '652637', '6453430.91', '0'),
(1052, '1', 'PAYMENT', '2204.04', 'C1615801298', '586', '0', 'M490391704', '0', '0', '0'),
(1053, '1', 'PAYMENT', '2641.47', 'C460570271', '23053', '20411.53', 'M1653361344', '0', '0', '0'),
(1054, '1', 'CASH_OUT', '23261.3', 'C2072313080', '20411.53', '0', 'C2001112025', '25742', '0', '0'),
(1055, '1', 'PAYMENT', '2330.64', 'C816944408', '203543', '201212.36', 'M909132503', '0', '0', '0'),
(1056, '1', 'PAYMENT', '1614.64', 'C912966811', '41276', '39661.36', 'M1792384402', '0', '0', '0'),
(1057, '1', 'PAYMENT', '9164.71', 'C1458621573', '47235.77', '38071.06', 'M1658980982', '0', '0', '0'),
(1058, '1', 'PAYMENT', '2970.97', 'C46941357', '38071.06', '35100.09', 'M1152606315', '0', '0', '0'),
(1059, '1', 'PAYMENT', '38.66', 'C343345308', '16174', '16135.34', 'M1714688478', '0', '0', '0'),
(1060, '1', 'PAYMENT', '2252.44', 'C104716441', '1627', '0', 'M1506951181', '0', '0', '0'),
(1061, '1', 'TRANSFER', '62610.8', 'C1976401987', '79114', '16503.2', 'C1937962514', '517', '8383.29', '0'),
(1062, '1', 'DEBIT', '5529.13', 'C867288517', '8547', '3017.87', 'C242131142', '10206', '0', '0'),
(1063, '1', 'CASH_OUT', '82940.31', 'C1528834618', '3017.87', '0', 'C476800120', '132372', '49864.36', '0'),
(1064, '1', 'DEBIT', '4510.22', 'C280615803', '10256', '5745.78', 'C1254526270', '10697', '0', '0'),
(1065, '1', 'DEBIT', '8727.74', 'C166694583', '882770', '874042.26', 'C1129670968', '12636', '0', '0'),
(1066, '1', 'PAYMENT', '2599.46', 'C885910946', '874042.26', '871442.79', 'M1860591867', '0', '0', '0'),
(1067, '1', 'DEBIT', '4874.49', 'C811207775', '153', '0', 'C1971489295', '253104', '0', '0'),
(1068, '1', 'PAYMENT', '6440.78', 'C1161148117', '2192', '0', 'M516875052', '0', '0', '0'),
(1069, '1', 'PAYMENT', '4910.14', 'C1131592118', '41551', '36640.86', 'M589987187', '0', '0', '0'),
(1070, '1', 'PAYMENT', '6444.64', 'C1262609629', '12019', '5574.36', 'M587180314', '0', '0', '0'),
(1071, '1', 'DEBIT', '5149.66', 'C1955990522', '4782', '0', 'C1330106945', '52752', '24044.18', '0'),
(1072, '1', 'PAYMENT', '7292.16', 'C69673470', '216827', '209534.84', 'M1082411691', '0', '0', '0'),
(1073, '1', 'CASH_OUT', '47458.86', 'C527211736', '209534.84', '162075.98', 'C2096057945', '52120', '0', '0'),
(1074, '1', 'CASH_OUT', '136872.92', 'C1533123860', '162075.98', '25203.05', 'C766572210', '217806', '0', '0'),
(1075, '1', 'CASH_OUT', '94253.33', 'C1718906711', '25203.05', '0', 'C977993101', '99773', '965870.05', '0'),
(1076, '1', 'PAYMENT', '2998.04', 'C71802912', '12030', '9031.96', 'M2134271532', '0', '0', '0'),
(1077, '1', 'PAYMENT', '3454.08', 'C686349795', '9031.96', '5577.88', 'M1831010686', '0', '0', '0'),
(1078, '1', 'PAYMENT', '4316.2', 'C1423768154', '10999', '6682.8', 'M404222443', '0', '0', '0'),
(1079, '1', 'PAYMENT', '2131.84', 'C1987977423', '224', '0', 'M61073295', '0', '0', '0'),
(1080, '1', 'PAYMENT', '12986.61', 'C807322507', '23350', '10363.39', 'M396485834', '0', '0', '0'),
(1081, '1', 'TRANSFER', '42712.39', 'C283039401', '10363.39', '0', 'C1330106945', '57901.66', '24044.18', '0'),
(1082, '1', 'TRANSFER', '77957.68', 'C207471778', '0', '0', 'C1761291320', '94900', '22233.65', '0'),
(1083, '1', 'TRANSFER', '17231.46', 'C1243171897', '0', '0', 'C783286238', '24672', '0', '0'),
(1084, '1', 'TRANSFER', '78766.03', 'C1376151044', '0', '0', 'C1749186397', '103772', '277515.05', '0'),
(1085, '1', 'TRANSFER', '224606.64', 'C873175411', '0', '0', 'C766572210', '354678.92', '0', '0'),
(1086, '1', 'TRANSFER', '125872.53', 'C1443967876', '0', '0', 'C392292416', '348512', '3420103.09', '0'),
(1087, '1', 'TRANSFER', '379856.23', 'C1449772539', '0', '0', 'C1590550415', '900180', '19200000', '0'),
(1088, '1', 'TRANSFER', '1505626.01', 'C926859124', '0', '0', 'C665576141', '29031', '5515763.34', '0'),
(1089, '1', 'TRANSFER', '554026.99', 'C1603696865', '0', '0', 'C766572210', '579285.56', '0', '0'),
(1090, '1', 'TRANSFER', '147543.1', 'C12905860', '0', '0', 'C1359044626', '223220', '16518.36', '0'),
(1091, '1', 'TRANSFER', '761507.39', 'C412788346', '0', '0', 'C1590550415', '1280036.23', '19200000', '0'),
(1092, '1', 'TRANSFER', '1429051.47', 'C1520267010', '0', '0', 'C1590550415', '2041543.62', '19200000', '0'),
(1093, '1', 'TRANSFER', '358831.92', 'C908084672', '0', '0', 'C392292416', '474384.53', '3420103.09', '0'),
(1094, '1', 'TRANSFER', '367768.4', 'C288306765', '0', '0', 'C1359044626', '370763.1', '16518.36', '0'),
(1095, '1', 'TRANSFER', '209711.11', 'C1556867940', '0', '0', 'C1509514333', '399214.71', '2415.16', '0'),
(1096, '1', 'TRANSFER', '583848.46', 'C1839168128', '0', '0', 'C1286084959', '667778', '2107778.11', '0'),
(1097, '1', 'TRANSFER', '1724887.05', 'C1495608502', '0', '0', 'C1590550415', '3470595.1', '19200000', '0'),
(1098, '1', 'TRANSFER', '710544.77', 'C835773569', '0', '0', 'C1359044626', '738531.5', '16518.36', '0'),
(1099, '1', 'TRANSFER', '581294.26', 'C843299092', '0', '0', 'C1590550415', '5195482.15', '19200000', '0'),
(1100, '1', 'TRANSFER', '11996.58', 'C605982374', '0', '0', 'C1225616405', '40255', '0', '0'),
(1101, '1', 'PAYMENT', '2875.1', 'C1412322831', '15443', '12567.9', 'M1651262695', '0', '0', '0'),
(1102, '1', 'PAYMENT', '8586.98', 'C1305004711', '3763', '0', 'M494077446', '0', '0', '0'),
(1103, '1', 'PAYMENT', '871.75', 'C1003206025', '19869', '18997.25', 'M989889899', '0', '0', '0'),
(1104, '1', 'PAYMENT', '1035.36', 'C806813022', '71636', '70600.64', 'M902860396', '0', '0', '0'),
(1105, '1', 'PAYMENT', '1063.53', 'C1406206626', '83084', '82020.47', 'M1816522350', '0', '0', '0'),
(1106, '1', 'PAYMENT', '1019.9', 'C1799230133', '204237', '203217.1', 'M1521238608', '0', '0', '0'),
(1107, '1', 'PAYMENT', '4059.38', 'C20156341', '26304', '22244.62', 'M1111897955', '0', '0', '0'),
(1108, '1', 'PAYMENT', '1876.44', 'C1509309988', '182', '0', 'M1643141512', '0', '0', '0'),
(1109, '1', 'CASH_OUT', '28404.6', 'C2091072548', '0', '0', 'C1282788025', '51744', '0', '0'),
(1110, '1', 'CASH_OUT', '75405.1', 'C263053820', '0', '0', 'C1870252780', '104209', '46462.23', '0'),
(1111, '1', 'CASH_OUT', '50101.88', 'C1740826931', '0', '0', 'C97730845', '67684', '9940339.29', '0'),
(1112, '1', 'CASH_OUT', '14121.82', 'C69062746', '0', '0', 'C100555887', '52679', '10963.66', '0'),
(1113, '1', 'CASH_OUT', '78292.91', 'C1631227617', '0', '0', 'C1983747920', '121112', '95508.95', '0'),
(1114, '1', 'CASH_OUT', '176149.9', 'C24650043', '0', '0', 'C736709391', '259813', '46820.71', '0'),
(1115, '1', 'CASH_OUT', '212228.35', 'C1896074070', '0', '0', 'C401424608', '429747', '1178808.14', '0'),
(1116, '1', 'CASH_OUT', '85423.63', 'C460741164', '0', '0', 'C1590550415', '5776776.41', '19200000', '0'),
(1117, '1', 'CASH_OUT', '11648.5', 'C781091365', '0', '0', 'C985934102', '260976', '971418.91', '0'),
(1118, '1', 'PAYMENT', '6165.58', 'C1858015030', '20925', '14759.42', 'M25764044', '0', '0', '0'),
(1119, '1', 'PAYMENT', '3705.83', 'C671596011', '41903.46', '38197.63', 'M1925352804', '0', '0', '0'),
(1120, '1', 'CASH_OUT', '419801.4', 'C1687354037', '38197.63', '0', 'C33524623', '499962', '1517262.16', '0'),
(1121, '1', 'CASH_OUT', '335416.51', 'C743778731', '144478', '0', 'C575335780', '295', '52415.15', '0'),
(1122, '1', 'PAYMENT', '3372.29', 'C967323951', '41398', '38025.71', 'M1600594643', '0', '0', '0'),
(1123, '1', 'PAYMENT', '661.43', 'C743648472', '14078', '13416.57', 'M692998280', '0', '0', '0'),
(1124, '1', 'DEBIT', '864.68', 'C1368862151', '69836', '68971.32', 'C20671747', '12040', '43691.09', '0'),
(1125, '1', 'PAYMENT', '1203.44', 'C922807452', '29941', '28737.56', 'M33563464', '0', '0', '0'),
(1126, '1', 'TRANSFER', '330757.04', 'C1494346128', '103657', '0', 'C564160838', '79676', '1254956.07', '0'),
(1127, '1', 'PAYMENT', '1915.43', 'C822087264', '11450', '9534.57', 'M30699728', '0', '0', '0'),
(1128, '1', 'PAYMENT', '8.73', 'C38603201', '81313', '81304.27', 'M1422273905', '0', '0', '0'),
(1129, '1', 'DEBIT', '3058.8', 'C1694784135', '18138', '15079.2', 'C801197928', '11054', '8917.54', '0'),
(1130, '1', 'PAYMENT', '5154.97', 'C1207231495', '9476', '4321.03', 'M756936249', '0', '0', '0'),
(1131, '1', 'PAYMENT', '5213.25', 'C1221981006', '36380', '31166.75', 'M264394929', '0', '0', '0'),
(1132, '1', 'PAYMENT', '5392.75', 'C1878413714', '50757', '45364.25', 'M769132147', '0', '0', '0'),
(1133, '1', 'PAYMENT', '25.12', 'C1257299717', '61663', '61637.88', 'M1474957626', '0', '0', '0'),
(1134, '1', 'PAYMENT', '17150.89', 'C181252244', '61637.88', '44486.99', 'M1733022752', '0', '0', '0'),
(1135, '1', 'TRANSFER', '679502.24', 'C722417467', '290', '0', 'C451111351', '171866', '3940085.21', '0'),
(1136, '1', 'TRANSFER', '177652.91', 'C753631393', '23720', '0', 'C716157500', '55', '4894.45', '0'),
(1137, '1', 'PAYMENT', '5443.26', 'C1262869688', '236997', '231553.74', 'M1914108708', '0', '0', '0'),
(1138, '1', 'PAYMENT', '244.87', 'C544386226', '257978.49', '257733.62', 'M1357700757', '0', '0', '0'),
(1139, '1', 'PAYMENT', '8281.57', 'C900298796', '257733.62', '249452.05', 'M1889757798', '0', '0', '0'),
(1140, '1', 'PAYMENT', '1175.59', 'C1166106620', '20509', '19333.41', 'M1932470703', '0', '0', '0'),
(1141, '1', 'PAYMENT', '1097.74', 'C221861886', '24866', '23768.26', 'M1713568869', '0', '0', '0'),
(1142, '1', 'TRANSFER', '184986.8', 'C697508322', '39588', '0', 'C1688019098', '52340', '97263.78', '0'),
(1143, '1', 'PAYMENT', '1718.29', 'C603658030', '117811', '116092.71', 'M1689924104', '0', '0', '0'),
(1144, '1', 'PAYMENT', '3671.32', 'C361380654', '100094', '96422.68', 'M631673932', '0', '0', '0'),
(1145, '1', 'DEBIT', '3580.26', 'C1579132337', '2565', '0', 'C1321640594', '21185', '18910.85', '0'),
(1146, '1', 'PAYMENT', '8550.9', 'C1795225096', '40060', '31509.1', 'M790094605', '0', '0', '0'),
(1147, '1', 'PAYMENT', '9753.55', 'C1048712791', '60829', '51075.45', 'M487792155', '0', '0', '0'),
(1148, '1', 'PAYMENT', '3026.98', 'C1909398279', '31139', '28112.02', 'M1632670136', '0', '0', '0'),
(1149, '1', 'CASH_OUT', '467177.03', 'C1338905451', '28112.02', '0', 'C1170794006', '975121', '22190.99', '0'),
(1150, '1', 'DEBIT', '3875.99', 'C1252540239', '259138', '255262.01', 'C1509514333', '608925.82', '2415.16', '0'),
(1151, '1', 'PAYMENT', '2148.89', 'C1136005694', '31213', '29064.11', 'M638486177', '0', '0', '0'),
(1152, '1', 'PAYMENT', '466.97', 'C426019904', '80030', '79563.03', 'M314411620', '0', '0', '0'),
(1153, '1', 'CASH_OUT', '154139.72', 'C1642679791', '79563.03', '0', 'C564160838', '410433.04', '1254956.07', '0'),
(1154, '1', 'CASH_OUT', '82685.93', 'C855700733', '0', '0', 'C392292416', '833216.44', '3420103.09', '0'),
(1155, '1', 'CASH_OUT', '83857.23', 'C247162961', '0', '0', 'C1297685781', '215457.59', '16997.22', '0'),
(1156, '1', 'CASH_OUT', '99109.77', 'C1890266440', '0', '0', 'C1297685781', '299314.82', '16997.22', '0'),
(1157, '1', 'CASH_OUT', '187726.67', 'C1527152775', '0', '0', 'C747464370', '190573', '1567434.81', '0'),
(1158, '1', 'CASH_OUT', '281339.92', 'C1863655430', '0', '0', 'C1509514333', '612801.81', '2415.16', '0'),
(1159, '1', 'CASH_OUT', '186447.51', 'C976827477', '0', '0', 'C1590550415', '5862200.03', '19200000', '0'),
(1160, '1', 'CASH_OUT', '81029.86', 'C324112183', '0', '0', 'C288665596', '105343', '8496.61', '0'),
(1161, '1', 'CASH_OUT', '139054.95', 'C2092709730', '0', '0', 'C1749186397', '182538.03', '277515.05', '0'),
(1162, '1', 'CASH_OUT', '154716.2', 'C980364771', '0', '0', 'C453211571', '187433', '3461666.05', '0'),
(1163, '1', 'CASH_OUT', '53631.83', 'C1233595751', '0', '0', 'C757108857', '83244', '0', '0'),
(1164, '1', 'CASH_OUT', '289645.52', 'C1446001495', '0', '0', 'C1023714065', '871442.79', '1412484.09', '0'),
(1165, '1', 'CASH_OUT', '267148.82', 'C1261044180', '0', '0', 'C401424608', '641975.35', '1178808.14', '0'),
(1166, '1', 'CASH_OUT', '47913.58', 'C141110631', '0', '0', 'C240650537', '51304', '0', '0'),
(1167, '1', 'CASH_OUT', '193605.38', 'C2029372696', '0', '0', 'C1971489295', '249452.05', '0', '0'),
(1168, '1', 'CASH_OUT', '344464.4', 'C793293778', '0', '0', 'C766572210', '1133312.56', '0', '0'),
(1169, '1', 'CASH_OUT', '169409.87', 'C888611662', '0', '0', 'C401424608', '909124.16', '1178808.14', '0'),
(1170, '1', 'CASH_OUT', '25793.74', 'C1966355106', '0', '0', 'C476800120', '215312.31', '49864.36', '0'),
(1171, '1', 'CASH_OUT', '114712.48', 'C599782425', '0', '0', 'C1209271652', '145400', '0', '0'),
(1172, '1', 'CASH_OUT', '89038.75', 'C1233327519', '0', '0', 'C2083562754', '189808', '1186556.81', '0'),
(1173, '1', 'CASH_OUT', '1341.58', 'C1155769010', '0', '0', 'C557041912', '80341', '557537.26', '0'),
(1174, '1', 'CASH_OUT', '44443.08', 'C269892014', '0', '0', 'C1590550415', '6048647.54', '19200000', '0'),
(1175, '1', 'CASH_OUT', '34729.64', 'C1280641161', '0', '0', 'C1435804085', '44853', '96.88', '0'),
(1176, '1', 'CASH_OUT', '105979.34', 'C489411441', '0', '0', 'C736709391', '435962.9', '46820.71', '0'),
(1177, '1', 'CASH_OUT', '57794.61', 'C1141113940', '0', '0', 'C240650537', '99217.58', '0', '0'),
(1178, '1', 'CASH_OUT', '15918.79', 'C1711185459', '0', '0', 'C1854778591', '24553', '0', '0'),
(1179, '1', 'CASH_OUT', '19162.08', 'C25936709', '0', '0', 'C885951223', '60169', '215851.28', '0'),
(1180, '1', 'CASH_OUT', '220691.42', 'C1123559518', '0', '0', 'C1590550415', '6093090.62', '19200000', '0'),
(1181, '1', 'CASH_OUT', '9536.54', 'C649769713', '0', '0', 'C1060830840', '49161', '130747.56', '0'),
(1182, '1', 'CASH_OUT', '29784.06', 'C925150995', '0', '0', 'C920011586', '63553', '0', '0'),
(1183, '1', 'CASH_OUT', '190445.51', 'C1760219993', '0', '0', 'C1360767589', '203679', '2107965.39', '0'),
(1184, '1', 'CASH_OUT', '57279.11', 'C1800649922', '0', '0', 'C824009085', '127206.9', '64106.18', '0'),
(1185, '1', 'CASH_OUT', '112086.81', 'C403547747', '0', '0', 'C1531333864', '292728', '55974.56', '0'),
(1186, '1', 'CASH_OUT', '80311.89', 'C172215878', '0', '0', 'C434091818', '87408', '63112.23', '0'),
(1187, '1', 'CASH_OUT', '151829.91', 'C873309260', '0', '0', 'C1023714065', '1161088.31', '1412484.09', '0'),
(1188, '1', 'CASH_OUT', '26004.52', 'C1112456099', '0', '0', 'C1225616405', '52251.58', '0', '0'),
(1189, '1', 'CASH_OUT', '3146.16', 'C923083575', '0', '0', 'C1504109395', '9471', '593737.38', '0'),
(1190, '1', 'CASH_OUT', '296752.75', 'C589363823', '0', '0', 'C1531333864', '404814.81', '55974.56', '0'),
(1191, '1', 'CASH_OUT', '191702.06', 'C2052457859', '0', '0', 'C985934102', '272624.5', '971418.91', '0'),
(1192, '1', 'CASH_OUT', '365510.05', 'C1299327689', '0', '0', 'C564160838', '564572.76', '1254956.07', '0'),
(1193, '1', 'CASH_OUT', '202332.08', 'C1408279755', '0', '0', 'C453211571', '342149.2', '3461666.05', '0'),
(1194, '1', 'CASH_OUT', '55105.9', 'C2007486296', '0', '0', 'C932583850', '317952.89', '2719172.89', '0'),
(1195, '1', 'CASH_OUT', '171508.59', 'C1033348658', '0', '0', 'C1971489295', '443057.43', '0', '0'),
(1196, '1', 'CASH_OUT', '178439.26', 'C1634723627', '0', '0', 'C2083562754', '278846.75', '1186556.81', '0'),
(1197, '1', 'CASH_OUT', '88834.86', 'C938463537', '0', '0', 'C985934102', '464326.57', '971418.91', '0'),
(1198, '1', 'CASH_OUT', '210370.09', 'C2121995675', '0', '0', 'C1170794006', '1442298.03', '22190.99', '0'),
(1199, '1', 'CASH_OUT', '36437.06', 'C2120063568', '0', '0', 'C1740000325', '154606', '1363368.51', '0'),
(1200, '1', 'CASH_OUT', '82691.56', 'C1620409359', '0', '0', 'C248609774', '657983.89', '6453430.91', '0'),
(1201, '1', 'CASH_OUT', '338767.1', 'C691691381', '0', '0', 'C453211571', '544481.28', '3461666.05', '0'),
(1202, '1', 'CASH_OUT', '187728.59', 'C264978436', '0', '0', 'C1360767589', '394124.51', '2107965.39', '0'),
(1203, '1', 'CASH_OUT', '271002.7', 'C500618423', '0', '0', 'C451111351', '851368.24', '3940085.21', '0'),
(1204, '1', 'CASH_OUT', '323105.08', 'C1458091526', '0', '0', 'C747464370', '378299.67', '1567434.81', '0'),
(1205, '1', 'CASH_OUT', '10782.94', 'C768776793', '0', '0', 'C796533847', '100585', '0', '0'),
(1206, '1', 'CASH_OUT', '89962.11', 'C2018260103', '0', '0', 'C240650537', '157012.19', '0', '0'),
(1207, '1', 'CASH_OUT', '101940.14', 'C1393828949', '0', '0', 'C357863579', '105362', '92307.65', '0'),
(1208, '1', 'CASH_OUT', '163100.34', 'C1088417975', '0', '0', 'C401424608', '1078534.03', '1178808.14', '0'),
(1209, '1', 'CASH_OUT', '136030.66', 'C2036775591', '0', '0', 'C757108857', '136875.83', '0', '0'),
(1210, '1', 'CASH_OUT', '68912.23', 'C1620529408', '0', '0', 'C1688019098', '237326.8', '97263.78', '0'),
(1211, '1', 'CASH_OUT', '73464.06', 'C307488715', '0', '0', 'C1789550256', '444779', '4619798.56', '0'),
(1212, '1', 'CASH_OUT', '106117.28', 'C758572926', '0', '0', 'C476402209', '234216.94', '51513.44', '0'),
(1213, '1', 'CASH_OUT', '503333.79', 'C1640612861', '0', '0', 'C985934102', '553161.42', '971418.91', '0'),
(1214, '1', 'CASH_OUT', '71991.42', 'C990679445', '0', '0', 'C557041912', '81682.58', '557537.26', '0'),
(1215, '1', 'CASH_OUT', '91379.93', 'C913065088', '0', '0', 'C401424608', '1241634.38', '1178808.14', '0'),
(1216, '1', 'CASH_OUT', '26759.05', 'C746280996', '0', '0', 'C1360767589', '581853.1', '2107965.39', '0'),
(1217, '1', 'CASH_OUT', '128487.35', 'C50503805', '0', '0', 'C747464370', '701404.75', '1567434.81', '0'),
(1218, '1', 'CASH_OUT', '252908.87', 'C1557989809', '0', '0', 'C33524623', '919763.4', '1517262.16', '0'),
(1219, '1', 'CASH_OUT', '64489.64', 'C146874094', '0', '0', 'C1297685781', '398424.59', '16997.22', '0'),
(1220, '1', 'CASH_OUT', '171369.73', 'C2123222442', '0', '0', 'C451111351', '1122370.94', '3940085.21', '0'),
(1221, '1', 'PAYMENT', '4493.29', 'C1746570062', '8258', '3764.71', 'M1555990397', '0', '0', '0'),
(1222, '1', 'PAYMENT', '12121.5', 'C1544078442', '97058', '84936.5', 'M1291367132', '0', '0', '0'),
(1223, '1', 'PAYMENT', '2278.19', 'C1887699190', '290', '0', 'M1479140596', '0', '0', '0'),
(1224, '1', 'PAYMENT', '7707.44', 'C1108889615', '99827', '92119.56', 'M1275028674', '0', '0', '0'),
(1225, '1', 'PAYMENT', '4013.02', 'C455888635', '92119.56', '88106.55', 'M204805934', '0', '0', '0'),
(1226, '1', 'PAYMENT', '5775.15', 'C204322447', '132329', '126553.85', 'M1019484860', '0', '0', '0'),
(1227, '1', 'PAYMENT', '4843.93', 'C1164365897', '51718', '46874.07', 'M1640899500', '0', '0', '0'),
(1228, '1', 'PAYMENT', '2397.82', 'C3565780', '20421', '18023.18', 'M473666452', '0', '0', '0'),
(1229, '1', 'PAYMENT', '4391.44', 'C1865219266', '228', '0', 'M2138005960', '0', '0', '0'),
(1230, '1', 'DEBIT', '4497.87', 'C1278002745', '107388', '102890.13', 'C510113906', '19053', '5417.23', '0'),
(1231, '1', 'PAYMENT', '7452.89', 'C214649627', '102397', '94944.11', 'M67730604', '0', '0', '0'),
(1232, '1', 'PAYMENT', '3930.81', 'C15477956', '6032', '2101.19', 'M710623214', '0', '0', '0'),
(1233, '1', 'CASH_OUT', '71532.24', 'C2082351661', '2101.19', '0', 'C1810132623', '74956', '97128.19', '0'),
(1234, '1', 'CASH_OUT', '61159.51', 'C859690270', '0', '0', 'C476402209', '340334.22', '51513.44', '0'),
(1235, '1', 'CASH_OUT', '12401.9', 'C1389774257', '0', '0', 'C1096283470', '349763', '0', '0'),
(1236, '1', 'CASH_OUT', '32702.61', 'C553759818', '0', '0', 'C75457651', '253053', '31469.78', '0'),
(1237, '1', 'PAYMENT', '6926.67', 'C751021317', '152927', '146000.33', 'M1896552614', '0', '0', '0'),
(1238, '1', 'PAYMENT', '893.57', 'C294658299', '10676', '9782.43', 'M1033856359', '0', '0', '0'),
(1239, '1', 'TRANSFER', '480222.51', 'C201677908', '11110', '0', 'C451111351', '1293740.67', '3940085.21', '0'),
(1240, '1', 'PAYMENT', '3608.41', 'C635611994', '11150', '7541.59', 'M904253669', '0', '0', '0'),
(1241, '1', 'PAYMENT', '5946.79', 'C1930903395', '7541.59', '1594.8', 'M1431710377', '0', '0', '0'),
(1242, '1', 'PAYMENT', '6099.96', 'C1700721442', '42133', '36033.04', 'M2116511124', '0', '0', '0'),
(1243, '1', 'PAYMENT', '372.34', 'C872522004', '65254', '64881.66', 'M1348916831', '0', '0', '0'),
(1244, '1', 'PAYMENT', '4635.18', 'C1110698130', '6313782.05', '6309146.87', 'M125644421', '0', '0', '0'),
(1245, '1', 'PAYMENT', '1267.97', 'C1053632127', '6309146.87', '6307878.9', 'M1493158871', '0', '0', '0'),
(1246, '1', 'PAYMENT', '6911.99', 'C89509666', '6307878.9', '6300966.92', 'M1806880779', '0', '0', '0'),
(1247, '1', 'PAYMENT', '1795.67', 'C1016856028', '6300966.92', '6299171.25', 'M446445803', '0', '0', '0'),
(1248, '1', 'PAYMENT', '3199.06', 'C832292933', '6299171.25', '6295972.18', 'M1280603381', '0', '0', '0'),
(1249, '1', 'PAYMENT', '10265.17', 'C792855998', '6295972.18', '6285707.02', 'M1424108509', '0', '0', '0'),
(1250, '1', 'PAYMENT', '9029.12', 'C1003755748', '25480', '16450.88', 'M1414013111', '0', '0', '0'),
(1251, '1', 'PAYMENT', '7600.57', 'C1805164661', '50747', '43146.43', 'M778162712', '0', '0', '0'),
(1252, '1', 'PAYMENT', '2057.71', 'C896138248', '25132', '23074.29', 'M548482954', '0', '0', '0'),
(1253, '1', 'PAYMENT', '3823.08', 'C243575009', '10382', '6558.92', 'M777341499', '0', '0', '0'),
(1254, '1', 'TRANSFER', '2806', 'C1420196421', '2806', '0', 'C972765878', '0', '0', '1'),
(1255, '1', 'CASH_OUT', '2806', 'C2101527076', '2806', '0', 'C1007251739', '26202', '0', '1'),
(1256, '1', 'PAYMENT', '6737.2', 'C1454026445', '624', '0', 'M1378497201', '0', '0', '0'),
(1257, '1', 'PAYMENT', '9161.98', 'C892931811', '11128', '1966.02', 'M1577167234', '0', '0', '0'),
(1258, '1', 'PAYMENT', '1239.06', 'C1574873161', '396386', '395146.94', 'M1591916281', '0', '0', '0'),
(1259, '1', 'PAYMENT', '365', 'C600958416', '319', '0', 'M1884231057', '0', '0', '0'),
(1260, '1', 'PAYMENT', '5237.54', 'C1492875057', '27105', '21867.46', 'M333793193', '0', '0', '0'),
(1261, '1', 'PAYMENT', '2618.76', 'C1068945248', '21867.46', '19248.7', 'M937277082', '0', '0', '0'),
(1262, '1', 'PAYMENT', '339.82', 'C882646447', '12076', '11736.18', 'M234740890', '0', '0', '0'),
(1263, '1', 'DEBIT', '1393.46', 'C79290250', '100068', '98674.54', 'C1076835071', '26446', '318637.36', '0'),
(1264, '1', 'PAYMENT', '2731.37', 'C1586151649', '17540', '14808.63', 'M179294202', '0', '0', '0'),
(1265, '1', 'PAYMENT', '8364.73', 'C1767230265', '81', '0', 'M593103894', '0', '0', '0'),
(1266, '1', 'PAYMENT', '6598.71', 'C727666004', '16392', '9793.29', 'M1601935322', '0', '0', '0'),
(1267, '1', 'PAYMENT', '4304.58', 'C414225167', '10708', '6403.42', 'M1803093683', '0', '0', '0'),
(1268, '1', 'PAYMENT', '2867.14', 'C975033189', '943', '0', 'M962287291', '0', '0', '0'),
(1269, '1', 'PAYMENT', '2946.38', 'C628064884', '0', '0', 'M109069556', '0', '0', '0'),
(1270, '1', 'PAYMENT', '507.12', 'C1389509050', '87005', '86497.88', 'M828326869', '0', '0', '0'),
(1271, '1', 'PAYMENT', '3020.86', 'C1761217448', '50361', '47340.14', 'M1817789863', '0', '0', '0'),
(1272, '1', 'PAYMENT', '8948.03', 'C788905599', '11137', '2188.97', 'M1678709153', '0', '0', '0'),
(1273, '1', 'CASH_OUT', '280877.92', 'C1544614339', '2188.97', '0', 'C1297685781', '462914.23', '16997.22', '0'),
(1274, '1', 'PAYMENT', '1084.9', 'C2059592603', '13727', '12642.1', 'M2016828666', '0', '0', '0'),
(1275, '1', 'PAYMENT', '9456.69', 'C1688782916', '12642.1', '3185.41', 'M1064154107', '0', '0', '0'),
(1276, '1', 'PAYMENT', '5812.36', 'C1390301622', '3185.41', '0', 'M415565467', '0', '0', '0'),
(1277, '1', 'TRANSFER', '157883.07', 'C973936431', '46547', '0', 'C1335050193', '72793', '353532.56', '0'),
(1278, '1', 'PAYMENT', '2734.77', 'C1756207614', '4511', '1776.23', 'M1214133948', '0', '0', '0'),
(1279, '1', 'CASH_OUT', '102153.86', 'C2015301874', '1776.23', '0', 'C1335050193', '230676.07', '353532.56', '0'),
(1280, '1', 'PAYMENT', '584.52', 'C712627377', '15479', '14894.48', 'M782228073', '0', '0', '0'),
(1281, '1', 'PAYMENT', '6113.14', 'C399373008', '15629', '9515.86', 'M391506011', '0', '0', '0'),
(1282, '1', 'CASH_OUT', '369989.2', 'C1936550492', '9515.86', '0', 'C1789550256', '518243.06', '4619798.56', '0'),
(1283, '1', 'CASH_OUT', '215338.28', 'C594651850', '0', '0', 'C75457651', '285755.61', '31469.78', '0'),
(1284, '1', 'CASH_OUT', '65521.42', 'C1532139270', '0', '0', 'C920011586', '93337.06', '0', '0'),
(1285, '1', 'CASH_OUT', '116977.58', 'C1677568775', '0', '0', 'C1740000325', '191043.06', '1363368.51', '0'),
(1286, '1', 'CASH_OUT', '262392.36', 'C2069500590', '0', '0', 'C2083562754', '457286.01', '1186556.81', '0'),
(1287, '1', 'CASH_OUT', '51121.05', 'C1431556341', '0', '0', 'C1740000325', '308020.64', '1363368.51', '0'),
(1288, '1', 'CASH_OUT', '202624.59', 'C452364286', '0', '0', 'C985934102', '1056495.21', '971418.91', '0'),
(1289, '1', 'CASH_OUT', '118235.16', 'C350069300', '0', '0', 'C1335050193', '332829.93', '353532.56', '0'),
(1290, '1', 'CASH_OUT', '118056.71', 'C1060703587', '0', '0', 'C757108857', '272906.49', '0', '0'),
(1291, '1', 'CASH_OUT', '498960.91', 'C1957078537', '0', '0', 'C1360767589', '608612.15', '2107965.39', '0'),
(1292, '1', 'CASH_OUT', '691738.36', 'C1514214932', '0', '0', 'C1590550415', '6285707.02', '19200000', '0'),
(1293, '1', 'CASH_OUT', '58820.08', 'C594858858', '0', '0', 'C1360767589', '1107573.06', '2107965.39', '0'),
(1294, '1', 'PAYMENT', '4419.04', 'C1423016050', '52951', '48531.96', 'M352776719', '0', '0', '0'),
(1295, '1', 'PAYMENT', '4270.02', 'C1202042637', '9516', '5245.98', 'M1112527632', '0', '0', '0'),
(1296, '1', 'PAYMENT', '3007.83', 'C440736059', '49905', '46897.17', 'M955324150', '0', '0', '0'),
(1297, '1', 'PAYMENT', '1824.59', 'C1384563514', '25138', '23313.41', 'M1852661033', '0', '0', '0'),
(1298, '1', 'PAYMENT', '993.46', 'C1548946718', '19448', '18454.54', 'M1814423236', '0', '0', '0'),
(1299, '1', 'CASH_OUT', '302693.14', 'C140404585', '18454.54', '0', 'C1688019098', '306239.03', '97263.78', '0'),
(1300, '1', 'PAYMENT', '1445.06', 'C207546206', '10892', '9446.94', 'M1218519094', '0', '0', '0'),
(1301, '1', 'PAYMENT', '4059.25', 'C200404000', '4186', '126.75', 'M1894758168', '0', '0', '0'),
(1302, '1', 'PAYMENT', '3417.18', 'C191945292', '126.75', '0', 'M1242688388', '0', '0', '0'),
(1303, '1', 'DEBIT', '3428.95', 'C1317375498', '147798', '144369.05', 'C665576141', '1534657.01', '5515763.34', '0'),
(1304, '1', 'PAYMENT', '5580.98', 'C1130346421', '7781', '2200.02', 'M1316005672', '0', '0', '0'),
(1305, '1', 'DEBIT', '3455.85', 'C192428201', '3509', '53.15', 'C401424608', '1333014.31', '1178808.14', '0'),
(1306, '1', 'PAYMENT', '7265.63', 'C1768882706', '14508', '7242.37', 'M1463022229', '0', '0', '0'),
(1307, '1', 'PAYMENT', '3852.64', 'C472991420', '1449076.27', '1445223.63', 'M1455855843', '0', '0', '0'),
(1308, '1', 'PAYMENT', '7870.29', 'C1202220987', '1445223.63', '1437353.34', 'M256346753', '0', '0', '0'),
(1309, '1', 'DEBIT', '12872.92', 'C425015667', '11197', '0', 'C466505482', '51885', '0', '0'),
(1310, '1', 'PAYMENT', '6675.34', 'C2075568954', '10107', '3431.66', 'M2145896000', '0', '0', '0'),
(1311, '1', 'CASH_OUT', '410201.89', 'C1279740095', '21448', '0', 'C1750905143', '61613', '424250.45', '0'),
(1312, '1', 'PAYMENT', '13310.78', 'C2095677157', '0', '0', 'M852026681', '0', '0', '0'),
(1313, '1', 'PAYMENT', '664.35', 'C1943855334', '102983', '102318.65', 'M94919826', '0', '0', '0'),
(1314, '1', 'PAYMENT', '2130.3', 'C847320212', '10958', '8827.7', 'M1201004240', '0', '0', '0'),
(1315, '1', 'PAYMENT', '7771.4', 'C1406848276', '8827.7', '1056.3', 'M349259569', '0', '0', '0'),
(1316, '1', 'PAYMENT', '36349.35', 'C785306763', '1056.3', '0', 'M1204088028', '0', '0', '0'),
(1317, '1', 'PAYMENT', '749.34', 'C1123236701', '0', '0', 'M1552221437', '0', '0', '0'),
(1318, '1', 'PAYMENT', '2340.34', 'C79161706', '0', '0', 'M1685407532', '0', '0', '0'),
(1319, '1', 'PAYMENT', '9686.85', 'C1057468716', '0', '0', 'M1272051933', '0', '0', '0'),
(1320, '1', 'PAYMENT', '15785.85', 'C1888924788', '0', '0', 'M1041547629', '0', '0', '0'),
(1321, '1', 'PAYMENT', '9006.78', 'C1016633682', '0', '0', 'M2018220300', '0', '0', '0'),
(1322, '1', 'PAYMENT', '9014.95', 'C1027319653', '0', '0', 'M633079302', '0', '0', '0'),
(1323, '1', 'PAYMENT', '14420.66', 'C1561745898', '0', '0', 'M2033268925', '0', '0', '0'),
(1324, '1', 'PAYMENT', '4802.31', 'C424786033', '0', '0', 'M1545077099', '0', '0', '0'),
(1325, '1', 'PAYMENT', '28527.44', 'C867093003', '0', '0', 'M1135278099', '0', '0', '0'),
(1326, '1', 'PAYMENT', '4182.93', 'C1470911015', '0', '0', 'M1268974304', '0', '0', '0'),
(1327, '1', 'PAYMENT', '4088.21', 'C244872973', '0', '0', 'M451312813', '0', '0', '0'),
(1328, '1', 'PAYMENT', '8491.9', 'C795748540', '0', '0', 'M2081000371', '0', '0', '0'),
(1329, '1', 'DEBIT', '6666.78', 'C837073696', '11876', '5209.22', 'C655381473', '24777', '189534.74', '0'),
(1330, '1', 'PAYMENT', '6536.86', 'C416201381', '17319', '10782.14', 'M1178290888', '0', '0', '0'),
(1331, '1', 'CASH_OUT', '40684.97', 'C1985938863', '10782.14', '0', 'C1291286504', '49530', '66575.5', '0'),
(1332, '1', 'PAYMENT', '1553.21', 'C1660325375', '31516', '29962.79', 'M251664534', '0', '0', '0'),
(1333, '1', 'DEBIT', '7344.92', 'C334593716', '0', '0', 'C485041780', '185432', '0', '0'),
(1334, '1', 'CASH_OUT', '106267.21', 'C487416600', '0', '0', 'C476800120', '241106.05', '49864.36', '0'),
(1335, '1', 'PAYMENT', '5491.5', 'C1271041075', '36605', '31113.5', 'M1141500277', '0', '0', '0'),
(1336, '1', 'PAYMENT', '3666.42', 'C1544895390', '48117', '44450.58', 'M712410791', '0', '0', '0'),
(1337, '1', 'PAYMENT', '5507.18', 'C1971991758', '36030', '30522.82', 'M2126723403', '0', '0', '0'),
(1338, '1', 'DEBIT', '4565.14', 'C201274566', '30265', '25699.86', 'C747464370', '829892.09', '1567434.81', '0'),
(1339, '1', 'PAYMENT', '11348.71', 'C354605216', '734899', '723550.29', 'M824881806', '0', '0', '0'),
(1340, '1', 'TRANSFER', '123179.97', 'C1447353473', '7215', '0', 'C20671747', '12904.68', '43691.09', '0'),
(1341, '1', 'PAYMENT', '7073.6', 'C611289995', '0', '0', 'M663466110', '0', '0', '0'),
(1342, '1', 'PAYMENT', '2803.83', 'C1129433283', '0', '0', 'M864138492', '0', '0', '0'),
(1343, '1', 'PAYMENT', '106.81', 'C1810518740', '0', '0', 'M295180183', '0', '0', '0'),
(1344, '1', 'PAYMENT', '6297.71', 'C1547883191', '762', '0', 'M1650113431', '0', '0', '0'),
(1345, '1', 'PAYMENT', '2610.01', 'C1528769018', '58697.54', '56087.54', 'M183155105', '0', '0', '0'),
(1346, '1', 'PAYMENT', '5320.1', 'C1089930529', '56087.54', '50767.43', 'M2001115307', '0', '0', '0'),
(1347, '1', 'PAYMENT', '1460.63', 'C1429483328', '1132', '0', 'M172794870', '0', '0', '0'),
(1348, '1', 'TRANSFER', '522264.81', 'C1927963027', '24', '0', 'C1234776885', '11361', '2025098.66', '0'),
(1349, '1', 'DEBIT', '3584.21', 'C833240229', '135496', '131911.79', 'C1330106945', '100614.05', '24044.18', '0'),
(1350, '1', 'PAYMENT', '3704.97', 'C1167088639', '24553', '20848.03', 'M707531688', '0', '0', '0'),
(1351, '1', 'PAYMENT', '2773.61', 'C191568263', '14332', '11558.39', 'M1799635803', '0', '0', '0'),
(1352, '1', 'PAYMENT', '3896.42', 'C751608431', '11558.39', '7661.97', 'M1723290893', '0', '0', '0'),
(1353, '1', 'PAYMENT', '18781.84', 'C893640573', '7661.97', '0', 'M2085886997', '0', '0', '0'),
(1354, '1', 'PAYMENT', '6660.33', 'C893523498', '17710', '11049.67', 'M1770070706', '0', '0', '0'),
(1355, '1', 'TRANSFER', '26923.42', 'C1108517064', '11049.67', '0', 'C1983747920', '199404.91', '95508.95', '0'),
(1356, '1', 'TRANSFER', '53783.57', 'C511354923', '0', '0', 'C1899073220', '75514', '420946.86', '0'),
(1357, '1', 'TRANSFER', '80333.28', 'C992743048', '0', '0', 'C1749186397', '321592.98', '277515.05', '0'),
(1358, '1', 'TRANSFER', '211075.91', 'C1540894701', '0', '0', 'C564160838', '930082.81', '1254956.07', '0'),
(1359, '1', 'TRANSFER', '100677.86', 'C203149502', '0', '0', 'C1531333864', '701567.56', '55974.56', '0'),
(1360, '1', 'TRANSFER', '473499.51', 'C1198197478', '0', '0', 'C453211571', '883248.39', '3461666.05', '0'),
(1361, '1', 'TRANSFER', '1538200.39', 'C476579021', '0', '0', 'C1590550415', '6977445.38', '19200000', '0'),
(1362, '1', 'TRANSFER', '2421578.09', 'C106297322', '0', '0', 'C1590550415', '8515645.77', '19200000', '0'),
(1363, '1', 'TRANSFER', '1349670.68', 'C1419332030', '0', '0', 'C665576141', '1538085.96', '5515763.34', '0'),
(1364, '1', 'TRANSFER', '314403.14', 'C1262110193', '0', '0', 'C1789550256', '888232.25', '4619798.56', '0'),
(1365, '1', 'TRANSFER', '1457213.54', 'C396918327', '0', '0', 'C1590550415', '10900000', '19200000', '0'),
(1366, '1', 'TRANSFER', '180368.84', 'C1055601039', '0', '0', 'C1359044626', '1437353.34', '16518.36', '0'),
(1367, '1', 'TRANSFER', '445038.71', 'C547441493', '0', '0', 'C1531333864', '802245.42', '55974.56', '0'),
(1368, '1', 'TRANSFER', '1123206.66', 'C967677821', '0', '0', 'C451111351', '1773963.18', '3940085.21', '0'),
(1369, '1', 'DEBIT', '996', 'C1839206329', '46132', '45136', 'C998351292', '88106.55', '1015132.48', '0'),
(1370, '1', 'TRANSFER', '176334.26', 'C169880779', '45136', '0', 'C1286084959', '1251626.46', '2107778.11', '0'),
(1371, '1', 'TRANSFER', '161217.61', 'C552674617', '0', '0', 'C909295153', '199733', '5602234.95', '0'),
(1372, '1', 'TRANSFER', '108443.61', 'C1974622245', '0', '0', 'C240650537', '246974.3', '0', '0'),
(1373, '1', 'TRANSFER', '75442.68', 'C402808045', '0', '0', 'C1318822808', '80469', '500631.71', '0'),
(1374, '1', 'TRANSFER', '55536.86', 'C332365138', '0', '0', 'C392292416', '915902.37', '3420103.09', '0'),
(1375, '1', 'TRANSFER', '438437.09', 'C977160959', '0', '0', 'C248609774', '740675.45', '6453430.91', '0'),
(1376, '1', 'TRANSFER', '928722.69', 'C1563053805', '0', '0', 'C985934102', '1259119.8', '971418.91', '0'),
(1377, '1', 'TRANSFER', '1478772.04', 'C1464177809', '0', '0', 'C1170794006', '1652668.12', '22190.99', '0'),
(1378, '1', 'TRANSFER', '2545478.01', 'C1057507014', '0', '0', 'C1590550415', '12400000', '19200000', '0'),
(1379, '1', 'TRANSFER', '2061082.82', 'C2007599722', '0', '0', 'C1590550415', '14900000', '19200000', '0'),
(1380, '1', 'TRANSFER', '983479.66', 'C2029780820', '0', '0', 'C1170794006', '3131440.16', '22190.99', '0'),
(1381, '1', 'TRANSFER', '635507.97', 'C65080774', '0', '0', 'C747464370', '834457.23', '1567434.81', '0'),
(1382, '1', 'TRANSFER', '848231.57', 'C2116179210', '0', '0', 'C1170794006', '4114919.82', '22190.99', '0'),
(1383, '1', 'TRANSFER', '739112.93', 'C1172535934', '0', '0', 'C564160838', '1141158.73', '1254956.07', '0'),
(1384, '1', 'TRANSFER', '324397.94', 'C1648700617', '0', '0', 'C932583850', '373058.79', '2719172.89', '0'),
(1385, '1', 'TRANSFER', '982862.81', 'C1765900922', '0', '0', 'C985934102', '2187842.49', '971418.91', '0'),
(1386, '1', 'TRANSFER', '955855', 'C94830685', '0', '0', 'C248609774', '1179112.54', '6453430.91', '0'),
(1387, '1', 'TRANSFER', '179253.24', 'C1539947037', '0', '0', 'C1870252780', '179614.1', '46462.23', '0'),
(1388, '1', 'PAYMENT', '5446.88', 'C270661321', '666', '0', 'M1964434661', '0', '0', '0'),
(1389, '1', 'PAYMENT', '648.64', 'C1217312754', '873', '224.36', 'M1585571244', '0', '0', '0'),
(1390, '1', 'PAYMENT', '8494.71', 'C1099552523', '11129', '2634.29', 'M66724371', '0', '0', '0'),
(1391, '1', 'CASH_OUT', '373068.26', 'C1047934137', '20034', '0', 'C1286084959', '1427960.73', '2107778.11', '0'),
(1392, '1', 'CASH_IN', '143236.26', 'C1862994526', '0', '143236.26', 'C1688019098', '608932.17', '97263.78', '0'),
(1393, '1', 'CASH_IN', '228451.89', 'C1614133563', '143236.26', '371688.15', 'C2083562754', '719678.38', '1186556.81', '0'),
(1394, '1', 'CASH_IN', '35902.49', 'C839771540', '371688.15', '407590.65', 'C2001112025', '49003.3', '0', '0'),
(1395, '1', 'CASH_IN', '232953.64', 'C1037163664', '407590.65', '640544.28', 'C33524623', '1172672.27', '1517262.16', '0'),
(1396, '1', 'CASH_IN', '65912.95', 'C180316302', '640544.28', '706457.23', 'C1330106945', '104198.26', '24044.18', '0'),
(1397, '1', 'CASH_IN', '193492.68', 'C1200546947', '706457.23', '899949.91', 'C1531333864', '1247284.13', '55974.56', '0'),
(1398, '1', 'CASH_IN', '60836.64', 'C443713699', '899949.91', '960786.56', 'C488044861', '143436', '5203.54', '0'),
(1399, '1', 'CASH_IN', '62325.15', 'C695530017', '960786.56', '1023111.71', 'C564160838', '1880271.66', '1254956.07', '0'),
(1400, '1', 'CASH_IN', '349640.51', 'C1493042329', '1023111.71', '1372752.22', 'C909295153', '360950.61', '5602234.95', '0'),
(1401, '1', 'CASH_IN', '135324.19', 'C1751403001', '1372752.22', '1508076.41', 'C453211571', '1356747.89', '3461666.05', '0'),
(1402, '1', 'CASH_IN', '380015.14', 'C1717433286', '1508076.41', '1888091.55', 'C401424608', '1336470.16', '1178808.14', '0'),
(1403, '1', 'CASH_IN', '418688.27', 'C1756819670', '1888091.55', '2306779.82', 'C401424608', '956455.03', '1178808.14', '0'),
(1404, '1', 'CASH_IN', '311023.52', 'C1078262677', '2306779.82', '2617803.34', 'C766572210', '1477776.96', '0', '0'),
(1405, '1', 'CASH_IN', '151862.38', 'C178604517', '2617803.34', '2769665.72', 'C920011586', '158858.48', '0', '0'),
(1406, '1', 'CASH_IN', '228710.05', 'C57624756', '2769665.72', '2998375.78', 'C1297685781', '743792.14', '16997.22', '0'),
(1407, '1', 'CASH_IN', '220431.09', 'C1543518287', '2998375.78', '3218806.87', 'C451111351', '2897169.84', '3940085.21', '0'),
(1408, '1', 'CASH_IN', '182861.45', 'C998242313', '3218806.87', '3401668.32', 'C485041780', '192776.92', '0', '0'),
(1409, '1', 'CASH_IN', '231881.5', 'C464872674', '3401668.32', '3633549.82', 'C1509514333', '894141.72', '2415.16', '0'),
(1410, '1', 'CASH_IN', '38071.17', 'C1659286984', '3633549.82', '3671620.98', 'C601893033', '122487', '54985.05', '0'),
(1411, '1', 'CASH_IN', '87117.29', 'C1064905627', '3671620.98', '3758738.27', 'C75457651', '501093.89', '31469.78', '0'),
(1412, '1', 'CASH_IN', '114271.72', 'C2072130509', '3758738.27', '3873009.99', 'C985934102', '3170705.3', '971418.91', '0'),
(1413, '1', 'CASH_IN', '73199.1', 'C1260440107', '3873009.99', '3946209.08', 'C1749186397', '401926.25', '277515.05', '0'),
(1414, '1', 'CASH_IN', '764772.98', 'C482307698', '3946209.08', '4710982.07', 'C985934102', '3056433.58', '971418.91', '0'),
(1415, '1', 'CASH_IN', '106847.36', 'C1793899405', '4710982.07', '4817829.42', 'C575335780', '335711.51', '52415.15', '0'),
(1416, '1', 'CASH_IN', '6287.28', 'C1765702', '4817829.42', '4824116.71', 'C1651855867', '11274', '0', '0'),
(1417, '1', 'CASH_IN', '24936.34', 'C1302725372', '4824116.71', '4849053.05', 'C660143728', '104408', '42450.71', '0'),
(1418, '1', 'CASH_IN', '55837.16', 'C713898436', '4849053.05', '4904890.21', 'C100555887', '66800.82', '10963.66', '0'),
(1419, '1', 'CASH_IN', '63255.29', 'C632475595', '4904890.21', '4968145.5', 'C1100439041', '237735.3', '0', '0'),
(1420, '1', 'CASH_IN', '104605.78', 'C1920305914', '4968145.5', '5072751.28', 'C357863579', '207302.14', '92307.65', '0'),
(1421, '1', 'CASH_IN', '154160.82', 'C263833514', '5072751.28', '5226912.1', 'C503195940', '157376', '0', '0'),
(1422, '1', 'CASH_IN', '257348.03', 'C1278839936', '5226912.1', '5484260.13', 'C985934102', '2291660.6', '971418.91', '0'),
(1423, '1', 'CASH_IN', '201073.81', 'C2143739483', '5484260.13', '5685333.94', 'C401424608', '537766.76', '1178808.14', '0'),
(1424, '1', 'CASH_IN', '53560.68', 'C565881091', '5685333.94', '5738894.62', 'C1761291320', '172857.68', '22233.65', '0'),
(1425, '1', 'CASH_IN', '334234.39', 'C1618984457', '5738894.62', '6073129.01', 'C1870252780', '358867.35', '46462.23', '0'),
(1426, '1', 'CASH_IN', '227335.16', 'C1621254922', '6073129.01', '6300464.17', 'C564160838', '1817946.5', '1254956.07', '0'),
(1427, '1', 'CASH_IN', '134426.08', 'C702500163', '6300464.17', '6434890.26', 'C575335780', '228864.16', '52415.15', '0'),
(1428, '1', 'CASH_IN', '2643.45', 'C1574509514', '6434890.26', '6437533.71', 'C215145189', '49974', '1891.79', '0'),
(1429, '1', 'CASH_IN', '134977.11', 'C1087072654', '6437533.71', '6572510.82', 'C1750905143', '471814.89', '424250.45', '0'),
(1430, '1', 'CASH_IN', '25090.03', 'C864221358', '6572510.82', '6597600.85', 'C1282788025', '80148.6', '0', '0'),
(1431, '1', 'CASH_IN', '147388.67', 'C1617174216', '6597600.85', '6744989.53', 'C824009085', '184486.01', '64106.18', '0'),
(1432, '1', 'CASH_IN', '217615.09', 'C1979080261', '6744989.53', '6962604.61', 'C392292416', '971439.24', '3420103.09', '0'),
(1433, '1', 'CASH_IN', '355294.5', 'C1860886124', '6962604.61', '7317899.11', 'C747464370', '1469965.2', '1567434.81', '0'),
(1434, '1', 'CASH_IN', '12336.48', 'C1250499735', '7317899.11', '7330235.59', 'C990398217', '21024', '83845.22', '0'),
(1435, '1', 'CASH_IN', '349505.89', 'C173791568', '7330235.59', '7679741.48', 'C1590550415', '17000000', '19200000', '0'),
(1436, '1', 'CASH_IN', '285185.34', 'C1293462056', '7679741.48', '7964926.82', 'C1335050193', '451065.09', '353532.56', '0'),
(1437, '1', 'CASH_IN', '132953.45', 'C1966670937', '7964926.82', '8097880.27', 'C1359044626', '1617722.17', '16518.36', '0'),
(1438, '1', 'CASH_IN', '214851.41', 'C2002174925', '8097880.27', '8312731.68', 'C33524623', '939718.63', '1517262.16', '0'),
(1439, '1', 'CASH_IN', '54988.56', 'C588449070', '8312731.68', '8367720.25', 'C11003494', '60870', '10600000', '0'),
(1440, '1', 'CASH_IN', '62871.06', 'C735228558', '8367720.25', '8430591.3', 'C716157500', '177707.91', '4894.45', '0'),
(1441, '1', 'CASH_IN', '61150.85', 'C376725601', '8430591.3', '8491742.16', 'C1360767589', '1166393.13', '2107965.39', '0'),
(1442, '1', 'CASH_IN', '131409.27', 'C1476235721', '8491742.16', '8623151.43', 'C1068824137', '290276.03', '265092.36', '0'),
(1443, '1', 'CASH_IN', '10844.33', 'C1828508781', '8623151.43', '8633995.76', 'C2083117811', '42274', '290772.6', '0'),
(1444, '1', 'PAYMENT', '2054.84', 'C1376017854', '22195', '20140.16', 'M1732663543', '0', '0', '0'),
(1445, '1', 'CASH_IN', '313373.56', 'C1552870927', '20140.16', '333513.72', 'C985934102', '2034312.57', '971418.91', '0'),
(1446, '1', 'CASH_IN', '13289.87', 'C1448805967', '333513.72', '346803.59', 'C1225616405', '78256.1', '0', '0'),
(1447, '1', 'CASH_IN', '27070.11', 'C641882263', '346803.59', '373873.7', 'C1568059495', '70595', '122750.49', '0'),
(1448, '1', 'CASH_IN', '127954.7', 'C1930837320', '373873.7', '501828.4', 'C564160838', '1590611.34', '1254956.07', '0'),
(1449, '1', 'CASH_IN', '197031.04', 'C1489193907', '501828.4', '698859.44', 'C1297685781', '515082.09', '16997.22', '0'),
(1450, '1', 'CASH_IN', '144366.64', 'C1453606810', '698859.44', '843226.08', 'C985934102', '1720939.01', '971418.91', '0'),
(1451, '1', 'CASH_IN', '7965.49', 'C1645624121', '843226.08', '851191.57', 'C195600860', '35100.09', '40348.79', '0'),
(1452, '1', 'CASH_IN', '123103.74', 'C547923534', '851191.57', '974295.31', 'C736709391', '541942.24', '46820.71', '0'),
(1453, '1', 'CASH_IN', '106634.77', 'C1660223291', '974295.31', '1080930.07', 'C1170794006', '4963151.39', '22190.99', '0'),
(1454, '1', 'CASH_IN', '74933.22', 'C379124840', '1080930.07', '1155863.3', 'C1023714065', '1312918.22', '1412484.09', '0'),
(1455, '1', 'CASH_IN', '120234.99', 'C1157943921', '1155863.3', '1276098.29', 'C977993101', '194026.33', '965870.05', '0'),
(1456, '1', 'CASH_IN', '5763.99', 'C544966217', '1276098.29', '1281862.28', 'C1870252780', '24632.95', '46462.23', '0'),
(1457, '1', 'CASH_IN', '156922.36', 'C1706272858', '1281862.28', '1438784.65', 'C665576141', '2887756.64', '5515763.34', '0'),
(1458, '1', 'CASH_IN', '162665.98', 'C882471736', '1438784.65', '1601450.63', 'C1096283470', '362164.9', '0', '0'),
(1459, '1', 'CASH_IN', '110226.34', 'C1475192960', '1601450.63', '1601450.63', 'C1816757085', '1601450.63', '10700000', '0'),
(1460, '1', 'CASH_IN', '142577.44', 'C727197178', '1601450.63', '1744028.07', 'C1100439041', '174480.01', '0', '0'),
(1461, '1', 'CASH_IN', '6915.38', 'C1406253491', '1744028.07', '1750943.45', 'C85777802', '49685', '0', '0'),
(1462, '1', 'CASH_IN', '157108.01', 'C749604930', '1750943.45', '1908051.46', 'C985934102', '1576572.37', '971418.91', '0'),
(1463, '1', 'CASH_IN', '223555.14', 'C373097727', '1908051.46', '2131606.6', 'C564160838', '1462656.64', '1254956.07', '0'),
(1464, '1', 'CASH_IN', '146331.12', 'C2082509879', '2131606.6', '2277937.72', 'C1531333864', '1053791.45', '55974.56', '0'),
(1465, '1', 'CASH_IN', '141131.23', 'C576894497', '2277937.72', '2419068.96', 'C985934102', '1419464.36', '971418.91', '0'),
(1466, '1', 'CASH_IN', '222711.47', 'C2123533871', '2419068.96', '2641780.43', 'C1590550415', '16700000', '19200000', '0'),
(1467, '1', 'CASH_IN', '84980.31', 'C16148478', '2641780.43', '2726760.74', 'C1335050193', '165879.75', '353532.56', '0'),
(1468, '1', 'CASH_IN', '628719.07', 'C2022689531', '2726760.74', '3355479.81', 'C1359044626', '1484768.73', '16518.36', '0'),
(1469, '1', 'CASH_IN', '79285.8', 'C1340848245', '3355479.81', '3434765.61', 'C1170794006', '4856516.62', '22190.99', '0'),
(1470, '1', 'CASH_IN', '57809.81', 'C635610193', '3434765.61', '3492575.42', 'C1454031203', '59666', '0', '0'),
(1471, '1', 'CASH_IN', '75043.17', 'C379121284', '3492575.42', '3567618.59', 'C1511785794', '156547', '0', '0'),
(1472, '1', 'CASH_IN', '248196.92', 'C281421502', '3567618.59', '3815815.51', 'C1297685781', '318051.05', '16997.22', '0'),
(1473, '1', 'CASH_IN', '18851.44', 'C50072771', '3815815.51', '3834666.95', 'C215145189', '47330.55', '1891.79', '0'),
(1474, '1', 'CASH_IN', '403418.39', 'C848097505', '3834666.95', '4238085.34', 'C1286084959', '1801028.99', '2107778.11', '0'),
(1475, '1', 'CASH_IN', '235564.81', 'C1672598778', '4238085.34', '4473650.15', 'C451111351', '2676738.75', '3940085.21', '0'),
(1476, '1', 'CASH_IN', '32325.24', 'C1122233828', '4473650.15', '4505975.39', 'C1068824137', '158866.76', '265092.36', '0'),
(1477, '1', 'CASH_IN', '345347.7', 'C538667887', '4505975.39', '4851323.08', 'C240650537', '355417.92', '0', '0'),
(1478, '1', 'CASH_IN', '355500.25', 'C1967496309', '4851323.08', '5206823.33', 'C766572210', '1166753.44', '0', '0'),
(1479, '1', 'CASH_IN', '103005.78', 'C406749219', '5206823.33', '5309829.12', 'C716157500', '114836.85', '4894.45', '0'),
(1480, '1', 'CASH_IN', '108803.98', 'C1173340685', '5309829.12', '5418633.09', 'C766572210', '811253.19', '0', '0'),
(1481, '1', 'CASH_IN', '259753.27', 'C1045731788', '5418633.09', '5678386.36', 'C1209271652', '260112.48', '0', '0'),
(1482, '1', 'CASH_IN', '234094.24', 'C1739267143', '5678386.36', '5912480.6', 'C985934102', '1278333.12', '971418.91', '0');
INSERT INTO `remote_user_fraudsters_and_fraudulent_details` (`id`, `step`, `type`, `amount`, `nameOrig`, `oldbalanceOrg`, `newbalanceOrig`, `nameDest`, `oldbalanceDest`, `newbalanceDest`, `isFraud`) VALUES
(1483, '1', 'CASH_IN', '273305.73', 'C192456457', '5912480.6', '6185786.33', 'C1023714065', '1237985', '1412484.09', '0'),
(1484, '1', 'CASH_IN', '186838.95', 'C817689537', '6185786.33', '6372625.28', 'C736709391', '418838.5', '46820.71', '0'),
(1485, '1', 'CASH_IN', '193161.04', 'C708613859', '6372625.28', '6565786.32', 'C451111351', '2441173.94', '3940085.21', '0'),
(1486, '1', 'CASH_IN', '152823.85', 'C365625031', '6565786.32', '6718610.17', 'C1789550256', '1202635.39', '4619798.56', '0'),
(1487, '1', 'CASH_IN', '91457.82', 'C1531200408', '6718610.17', '6810067.99', 'C1509514333', '662260.23', '2415.16', '0'),
(1488, '1', 'CASH_IN', '277807.48', 'C212963786', '6810067.99', '7087875.47', 'C1531333864', '907460.33', '55974.56', '0'),
(1489, '1', 'CASH_IN', '8679.13', 'C1123321137', '7087875.47', '7096554.61', 'C575335780', '94438.08', '52415.15', '0'),
(1490, '1', 'CASH_IN', '2099.59', 'C685934', '7096554.61', '7098654.2', 'C1854778591', '40471.79', '0', '0'),
(1491, '1', 'CASH_IN', '221693.08', 'C2032909428', '7098654.2', '7320347.28', 'C1531333864', '629652.85', '55974.56', '0'),
(1492, '1', 'CASH_IN', '206097.65', 'C2031377754', '7320347.28', '7526444.93', 'C564160838', '1239101.5', '1254956.07', '0'),
(1493, '1', 'CASH_IN', '22384.21', 'C523211332', '7526444.93', '7548829.13', 'C459857341', '42211', '387263.02', '0'),
(1494, '1', 'CASH_IN', '73210.99', 'C1280124872', '7548829.13', '7622040.12', 'C1435804085', '79582.64', '96.88', '0'),
(1495, '1', 'CASH_IN', '236747.6', 'C1747053097', '7622040.12', '7858787.73', 'C757108857', '390963.21', '0', '0'),
(1496, '1', 'CASH_IN', '6284.18', 'C864326906', '7858787.73', '7865071.9', 'C1749186397', '328727.16', '277515.05', '0'),
(1497, '1', 'CASH_IN', '100198.77', 'C1348115836', '7865071.9', '7965270.68', 'C1750905143', '336837.78', '424250.45', '0'),
(1498, '1', 'CASH_IN', '160347.32', 'C1972143064', '7965270.68', '8125617.99', 'C33524623', '724867.22', '1517262.16', '0'),
(1499, '1', 'CASH_IN', '289272.75', 'C312168418', '8125617.99', '8414890.75', 'C75457651', '413976.6', '31469.78', '0'),
(1500, '1', 'CASH_IN', '63189.26', 'C95369743', '8414890.75', '8478080', 'C1860513229', '101925', '0', '0'),
(1501, '1', 'CASH_IN', '196725.32', 'C26928827', '8478080', '8674805.32', 'C451111351', '2248012.9', '3940085.21', '0'),
(1502, '1', 'PAYMENT', '5882.32', 'C278476563', '10252', '4369.68', 'M1479909053', '0', '0', '0'),
(1503, '1', 'DEBIT', '625.92', 'C615954678', '30165', '29539.08', 'C811587677', '1042', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_fraudsters_and_fraudulent_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_fraudsters_and_fraudulent_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `nameOrig` varchar(300) NOT NULL,
  `oldbalanceOrg` varchar(300) NOT NULL,
  `newbalanceOrig` varchar(300) NOT NULL,
  `nameDest` varchar(300) NOT NULL,
  `oldbalanceDest` varchar(300) NOT NULL,
  `newbalanceDest` varchar(300) NOT NULL,
  `prediction` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `remote_user_fraudsters_and_fraudulent_prediction`
--

INSERT INTO `remote_user_fraudsters_and_fraudulent_prediction` (`id`, `step`, `type`, `amount`, `nameOrig`, `oldbalanceOrg`, `newbalanceOrig`, `nameDest`, `oldbalanceDest`, `newbalanceDest`, `prediction`) VALUES
(1, '1', 'TRANSFER', '181', 'C1305486145', '181', '0', 'C553264065', '0', '0', 'Fraud'),
(2, '1', 'PAYMENT', '9839.64', 'C1231006815', '170136', '160296.36', 'M1979787155', '0', '0', 'Non Fraud'),
(3, '1', 'PAYMENT', '7817.71', 'C90045638', '53860', '46042.29', 'M573487274', '0', '0', 'Non Fraud'),
(4, '1', 'PAYMENT', '7107.77', 'C154988899', '183195', '176087.23', 'M408069119', '0', '0', 'Non Fraud'),
(5, '1', 'CASH_OUT', '229133.94', 'C905080434', '15325', '0', 'C476402209', '5083', '51513.44', 'Non Fraud'),
(6, '1', 'CASH_OUT', '229133.94', 'C905080434', '15325', '0', 'C476402209', '5083', '51513.44', 'Non Fraud'),
(7, '1', 'TRANSFER', '17231.46', 'C1243171897', '0', '0', 'C783286238', '24672', '0', 'Non Fraud'),
(8, '1', 'TRANSFER', '2806', 'C1420196421', '2806', '0', 'C972765878', '0', '0', 'Fraud');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
