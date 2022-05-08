-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 04:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add my_project', 8, 'add_my_project'),
(30, 'Can change my_project', 8, 'change_my_project'),
(31, 'Can delete my_project', 8, 'delete_my_project'),
(32, 'Can view my_project', 8, 'view_my_project'),
(33, 'Can add resume', 9, 'add_resume'),
(34, 'Can change resume', 9, 'change_resume'),
(35, 'Can delete resume', 9, 'delete_resume'),
(36, 'Can view resume', 9, 'view_resume'),
(37, 'Can add skill', 10, 'add_skill'),
(38, 'Can change skill', 10, 'change_skill'),
(39, 'Can delete skill', 10, 'delete_skill'),
(40, 'Can view skill', 10, 'view_skill');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$zIcYLlOoqyWh$9qVnu9W5oSXiLfpBvGCBaDtfFz4q8gHvHQKeAflO4tM=', '2021-06-24 02:16:30.304620', 1, 'mb_mishu', '', '', 'masumbillah1717@gmail.com', 1, 1, '2021-06-24 01:38:24.131723');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-24 01:43:51.296328', '4', 'about object (4)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-06-24 01:45:07.061519', '4', '4', 2, '[{\"changed\": {\"fields\": [\"user_location\", \"user_email\", \"user_number\"]}}]', 7, 1),
(3, '2021-06-24 02:01:03.424173', '1', '1', 1, '[{\"added\": {}}]', 10, 1),
(4, '2021-06-24 02:01:18.742810', '2', '2', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-06-24 02:01:44.396078', '3', '3', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-06-24 02:02:05.405497', '4', '4', 1, '[{\"added\": {}}]', 10, 1),
(7, '2021-06-24 02:02:23.421328', '5', '5', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-06-24 02:02:39.294267', '6', '6', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-06-24 02:04:53.413763', '7', '7', 1, '[{\"added\": {}}]', 10, 1),
(10, '2021-06-24 02:05:07.540854', '8', '8', 1, '[{\"added\": {}}]', 10, 1),
(11, '2021-06-24 02:09:09.849316', '1', '1', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-06-24 02:09:36.086787', '2', '2', 1, '[{\"added\": {}}]', 9, 1),
(13, '2021-06-24 02:10:00.318444', '3', '3', 1, '[{\"added\": {}}]', 9, 1),
(14, '2021-06-24 02:10:20.191122', '4', '4', 1, '[{\"added\": {}}]', 9, 1),
(15, '2021-06-24 02:18:22.300909', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(16, '2021-06-24 02:19:01.373722', '2', '2', 1, '[{\"added\": {}}]', 8, 1),
(17, '2021-06-24 02:19:40.029410', '3', '3', 1, '[{\"added\": {}}]', 8, 1),
(18, '2021-06-24 02:20:04.580765', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(19, '2021-06-24 02:20:30.373469', '5', '5', 1, '[{\"added\": {}}]', 8, 1),
(20, '2021-06-24 02:20:45.327752', '6', '6', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'about'),
(8, 'home', 'my_project'),
(9, 'home', 'resume'),
(10, 'home', 'skill'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-24 01:34:57.627885'),
(2, 'auth', '0001_initial', '2021-06-24 01:34:57.992453'),
(3, 'admin', '0001_initial', '2021-06-24 01:34:58.416460'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-24 01:34:58.601931'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-24 01:34:58.613898'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-24 01:34:58.697675'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-24 01:34:58.750540'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-24 01:34:58.784445'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-24 01:34:58.799435'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-24 01:34:58.855286'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-24 01:34:58.859243'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-24 01:34:58.871246'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-24 01:34:58.895186'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-24 01:34:58.918118'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-24 01:34:58.941062'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-24 01:34:58.956035'),
(17, 'sessions', '0001_initial', '2021-06-24 01:34:59.021860'),
(18, 'home', '0001_initial', '2021-06-24 01:37:12.141538'),
(19, 'home', '0002_auto_20210624_0743', '2021-06-24 01:43:25.279947'),
(20, 'home', '0003_auto_20210624_0744', '2021-06-24 01:44:45.270883'),
(21, 'home', '0004_auto_20210624_0753', '2021-06-24 01:53:20.695075'),
(22, 'home', '0005_auto_20210624_0827', '2021-06-24 02:27:33.234217');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4hg0p3zlwnhz87k6t9uetojo6aie9o1c', 'MGU5MWJiNzY3MzIxYmE1Yjk5YzUxNTg3MDE4ZmE4MTI0MmI0NzRjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NDQzOGJiNGY0YWI4MWVjNDQzYjdkZDJlZjdjYmEzMDg2ZjU1OGI1In0=', '2021-07-08 02:16:30.308463'),
('qc24og0r3jywtvkigyg417is75qjdoyl', 'MGU5MWJiNzY3MzIxYmE1Yjk5YzUxNTg3MDE4ZmE4MTI0MmI0NzRjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NDQzOGJiNGY0YWI4MWVjNDQzYjdkZDJlZjdjYmEzMDg2ZjU1OGI1In0=', '2021-07-08 01:38:54.967683');

-- --------------------------------------------------------

--
-- Table structure for table `home_about`
--

CREATE TABLE `home_about` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `about_details` longtext DEFAULT NULL,
  `about_photo` varchar(100) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_location` varchar(255) DEFAULT NULL,
  `user_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_about`
--

INSERT INTO `home_about` (`id`, `user_name`, `about_details`, `about_photo`, `user_email`, `user_location`, `user_number`) VALUES
(4, 'A.T.M. Masum Billah', 'I\'m A.T.M. Masum Billah , a developer.  I am passionate about technology.  I love robotics .  I am currently studying CSE at BRAC University .', 'images/b1_8U8b3Qx.jpg', 'masumbillah1717@gmail.com', 'Dhaka,Bangladesh.', '01719118554');

-- --------------------------------------------------------

--
-- Table structure for table `home_my_project`
--

CREATE TABLE `home_my_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_status` varchar(200) DEFAULT NULL,
  `project_link` varchar(255) DEFAULT NULL,
  `project_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_my_project`
--

INSERT INTO `home_my_project` (`id`, `project_name`, `project_status`, `project_link`, `project_photo`) VALUES
(1, 'fighting bot', 'picture', NULL, 'images/fighting_bot.jpg'),
(2, 'cansat', 'video', 'https://youtu.be/cJoskliIvvc', 'images/p3.jpg'),
(3, 'traction', 'website', 'https://traction.robu-lab.org/', 'images/unknown.png'),
(4, 'iobot', 'picture', NULL, 'images/p2.jpeg'),
(5, 'joyjatra', 'website', 'https://joyjatra.robu-lab.org/', 'images/joyjatra_J4FaKKR.png'),
(6, 'dashboard', 'picture', NULL, 'images/joyjatra.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_resume`
--

CREATE TABLE `home_resume` (
  `id` int(11) NOT NULL,
  `resume_title` varchar(255) NOT NULL,
  `resume_date` varchar(255) DEFAULT NULL,
  `resume_place` varchar(255) DEFAULT NULL,
  `resume_icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_resume`
--

INSERT INTO `home_resume` (`id`, `resume_title`, `resume_date`, `resume_place`, `resume_icon`) VALUES
(1, 'ssc (bangla VERSION)', '2005 - 2015', 'Monipur High School And College, Bangladesh', 'fas fa-school'),
(2, 'HSC (bangla VERSION)', '2015 - 2017', 'Adamjee Cantonment College, Bangladesh', 'fas fa-graduation-cap'),
(3, 'COMPUTER SCIENCE & ENGINEERING', '2018-', 'BRAC University, Bangladesh', 'fas fa-user-graduate'),
(4, 'Assistant DIRECTOR', '2020-', 'Robotics Club of BRAC UNIVERSITY', 'fas fa-robot');

-- --------------------------------------------------------

--
-- Table structure for table `home_skill`
--

CREATE TABLE `home_skill` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) DEFAULT NULL,
  `skill_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_skill`
--

INSERT INTO `home_skill` (`id`, `skill_name`, `skill_photo`) VALUES
(1, 'python', 'images/python.png'),
(2, 'django', 'images/django-pony.c61d43c33ab3.png'),
(3, 'php', 'images/php.png'),
(4, 'mysql', 'images/mysql.png'),
(5, 'javascript', 'images/javascript.png'),
(6, 'html_css', 'images/html_css.png'),
(7, 'java', 'images/java.png'),
(8, 'android_studio', 'images/android.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_about`
--
ALTER TABLE `home_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_my_project`
--
ALTER TABLE `home_my_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_resume`
--
ALTER TABLE `home_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_skill`
--
ALTER TABLE `home_skill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `home_about`
--
ALTER TABLE `home_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_my_project`
--
ALTER TABLE `home_my_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_resume`
--
ALTER TABLE `home_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_skill`
--
ALTER TABLE `home_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
