-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 10:50 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `experig`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add company_ register', 7, 'add_company_register'),
(26, 'Can change company_ register', 7, 'change_company_register'),
(27, 'Can delete company_ register', 7, 'delete_company_register'),
(28, 'Can view company_ register', 7, 'view_company_register'),
(29, 'Can add project_ skill', 8, 'add_project_skill'),
(30, 'Can change project_ skill', 8, 'change_project_skill'),
(31, 'Can delete project_ skill', 8, 'delete_project_skill'),
(32, 'Can view project_ skill', 8, 'view_project_skill'),
(33, 'Can add incentive', 9, 'add_incentive'),
(34, 'Can change incentive', 9, 'change_incentive'),
(35, 'Can delete incentive', 9, 'delete_incentive'),
(36, 'Can view incentive', 9, 'view_incentive'),
(37, 'Can add plan', 10, 'add_plan'),
(38, 'Can change plan', 10, 'change_plan'),
(39, 'Can delete plan', 10, 'delete_plan'),
(40, 'Can view plan', 10, 'view_plan'),
(41, 'Can add project_ details', 11, 'add_project_details'),
(42, 'Can change project_ details', 11, 'change_project_details'),
(43, 'Can delete project_ details', 11, 'delete_project_details'),
(44, 'Can view project_ details', 11, 'view_project_details'),
(45, 'Can add plans', 12, 'add_plans'),
(46, 'Can change plans', 12, 'change_plans'),
(47, 'Can delete plans', 12, 'delete_plans'),
(48, 'Can view plans', 12, 'view_plans'),
(49, 'Can add incentives', 13, 'add_incentives'),
(50, 'Can change incentives', 13, 'change_incentives'),
(51, 'Can delete incentives', 13, 'delete_incentives'),
(52, 'Can view incentives', 13, 'view_incentives'),
(53, 'Can add project_ skills', 14, 'add_project_skills'),
(54, 'Can change project_ skills', 14, 'change_project_skills'),
(55, 'Can delete project_ skills', 14, 'delete_project_skills'),
(56, 'Can view project_ skills', 14, 'view_project_skills'),
(57, 'Can add project_ detailss', 15, 'add_project_detailss'),
(58, 'Can change project_ detailss', 15, 'change_project_detailss'),
(59, 'Can delete project_ detailss', 15, 'delete_project_detailss'),
(60, 'Can view project_ detailss', 15, 'view_project_detailss'),
(61, 'Can add incentiv', 16, 'add_incentiv'),
(62, 'Can change incentiv', 16, 'change_incentiv'),
(63, 'Can delete incentiv', 16, 'delete_incentiv'),
(64, 'Can view incentiv', 16, 'view_incentiv');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$jEoecAEJvfJd$qwqtrgYzt+GQx4NoK9VYI/euEeWhard92O7ZSX0mUdI=', NULL, 0, 'chandra', 'Chandra', 'sahoo', 'sahooc300@gmail.com', 0, 1, '2021-02-04 08:49:28.565126'),
(2, 'pbkdf2_sha256$180000$n3ueczqBQoqs$g6KPozxjD68D4T330M3fvVBOB0GgV3WwUk9Kj4ZCVuA=', NULL, 0, 'chandra12', 'Chandra', 'sahoo', 'sahooc@gmail.com', 0, 1, '2021-02-04 08:52:52.127769'),
(3, 'pbkdf2_sha256$180000$R9iEY9x00bM2$TFCbTPH++Nq5rfq2y2IE77EC7HzHlBoMOCGE4v2RsmU=', NULL, 0, 'muna', 'Chandra', 'sahoo', 'ms@gmail.com', 0, 1, '2021-02-04 08:54:12.416362'),
(4, 'pbkdf2_sha256$180000$IAu45kl6olLX$Pu59KPTDpMMy/q9Adrsp5Ql50yi+VcC/Xi5jyR38uBw=', '2021-02-05 09:41:00.574584', 0, 'mmmm', 'Chandra', 'sahoo', 'kjdsgh@gmail.com', 0, 1, '2021-02-04 08:58:26.231879');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'testapp', 'company_register'),
(16, 'testapp', 'incentiv'),
(9, 'testapp', 'incentive'),
(13, 'testapp', 'incentives'),
(10, 'testapp', 'plan'),
(12, 'testapp', 'plans'),
(11, 'testapp', 'project_details'),
(15, 'testapp', 'project_detailss'),
(8, 'testapp', 'project_skill'),
(14, 'testapp', 'project_skills');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-04 08:36:16.702834'),
(2, 'auth', '0001_initial', '2021-02-04 08:36:20.864072'),
(3, 'admin', '0001_initial', '2021-02-04 08:36:36.975994'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-04 08:36:41.139232'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-04 08:36:41.410248'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-04 08:36:50.598773'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-04 08:36:53.370932'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-04 08:36:57.565172'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-04 08:36:57.806185'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-04 08:36:59.077258'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-04 08:36:59.223266'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-04 08:36:59.567286'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-04 08:37:00.755354'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-04 08:37:02.110432'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-04 08:37:03.689522'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-04 08:37:03.781527'),
(17, 'sessions', '0001_initial', '2021-02-04 08:37:04.815586'),
(18, 'testapp', '0001_initial', '2021-02-04 08:37:05.922650'),
(19, 'testapp', '0002_project_skill', '2021-02-04 14:19:23.987681'),
(20, 'testapp', '0003_incentive', '2021-02-04 16:14:25.966059'),
(21, 'testapp', '0004_plan', '2021-02-05 05:11:57.550201'),
(22, 'testapp', '0005_project_details', '2021-02-05 06:46:53.656576'),
(23, 'testapp', '0006_auto_20210205_1251', '2021-02-05 07:21:31.398951'),
(24, 'testapp', '0007_auto_20210205_1502', '2021-02-05 09:32:09.996906');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('iewjt8f15mht4yjkhp78yt9h9773rjov', 'MWNiMmNkYmM0MTgwZmNjNDZjYTkzNWU4OWFmN2Y1NTUxMGEzZDQ4Yjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWQyNDUxMTMxZTM5N2Q5MDMyODE3YWEwZGZlOGM3MGYwOGUxNTYyIn0=', '2021-02-19 07:30:16.914077'),
('niga4u8qq4ix03twfe8p15otb5xdxhma', 'MWNiMmNkYmM0MTgwZmNjNDZjYTkzNWU4OWFmN2Y1NTUxMGEzZDQ4Yjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWQyNDUxMTMxZTM5N2Q5MDMyODE3YWEwZGZlOGM3MGYwOGUxNTYyIn0=', '2021-02-19 09:41:00.698591');

-- --------------------------------------------------------

--
-- Table structure for table `testapp_company_register`
--

CREATE TABLE `testapp_company_register` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `cityname` varchar(255) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `mobno` varchar(12) NOT NULL,
  `cnf_password` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testapp_company_register`
--

INSERT INTO `testapp_company_register` (`id`, `companyname`, `cityname`, `jobtitle`, `mobno`, `cnf_password`, `user_id`) VALUES
(2, 'Hello', 'mmmm', 'Python', '546646653563', 'mmmm', 2),
(4, 'Hello', 'mmmm', 'Python', '6253463', 'mmmm', 4);

-- --------------------------------------------------------

--
-- Table structure for table `testapp_incentiv`
--

CREATE TABLE `testapp_incentiv` (
  `id` int(11) NOT NULL,
  `cash_prize` varchar(255) DEFAULT NULL,
  `cash_prize_description` longtext,
  `letter_of_recommendation` varchar(255) DEFAULT NULL,
  `letter_of_recommendation_description` longtext,
  `internship_opportunity` varchar(255) DEFAULT NULL,
  `internship_opportunity_description` longtext,
  `team_lunch_with_ceo` varchar(255) DEFAULT NULL,
  `team_lunch_with_ceo_description` longtext,
  `job_opportunity` varchar(255) DEFAULT NULL,
  `job_opportunity_description` longtext,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testapp_incentiv`
--

INSERT INTO `testapp_incentiv` (`id`, `cash_prize`, `cash_prize_description`, `letter_of_recommendation`, `letter_of_recommendation_description`, `internship_opportunity`, `internship_opportunity_description`, `team_lunch_with_ceo`, `team_lunch_with_ceo_description`, `job_opportunity`, `job_opportunity_description`, `user_id`) VALUES
(1, 'Cash Prize', 'hmvhjvfvh', 'Letter of Recommendation', 'nmvhkbvnchb', 'Internship Opportunity', 'yfgdhjkgcfghjk', 'Team Lunch with CEO', 'k,jbvcbjknbvc bnm', 'Job Opportunity', 'jvcbvhmb ', 1),
(2, 'Cash Prize', 'hbckjxhvbjx', 'Letter of Recommendation', 'KCVNLCJBVC', 'Internship Opportunity', 'dvhkfjvbfjvbf', 'Team Lunch with CEO', 'hdfkfjvbfkjdbvfjvb', 'Job Opportunity', 'jkdhjkdsbvkjvbfkj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testapp_plans`
--

CREATE TABLE `testapp_plans` (
  `id` int(11) NOT NULL,
  `plan` varchar(140) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testapp_plans`
--

INSERT INTO `testapp_plans` (`id`, `plan`, `user_id`) VALUES
(1, 'FREE', 1),
(2, 'INR 25000', 1),
(3, 'INR 25000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testapp_project_detailss`
--

CREATE TABLE `testapp_project_detailss` (
  `id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `deadline_date` varchar(255) NOT NULL,
  `choose_template` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testapp_project_detailss`
--

INSERT INTO `testapp_project_detailss` (`id`, `project_title`, `project_type`, `deadline_date`, `choose_template`, `description`, `user_id`) VALUES
(1, 'kjdsfhgkdhsjdkbskdjcbdskjcbdh', 'TEAM', '2021-02-19', 'Data Analysis Template', 'dkjlsdbvskdhgvbskdhsd sdvsv sfvsfv fvh fhf jfkhvfkjvhf jvh fhvfj vfhv jfhv fjhvf vhf fhvfjhfdjf hfjdhv dfhfd hdfv', 1),
(2, 'kjdsfhgkdhsjdkbskdjcbdskjcbdh', 'INDIVIDUAL', '2021-02-15', 'Data Analysis Template', 'jkbvkcxbvxjkbvxcjbvjkxcv', 1),
(3, 'jfythdhgdcghfxhgxhgtxh', 'INDIVIDUAL', '2021-02-16', 'Digital Marketing Template', 'klsdhfgbksjbvlkjfbvfjkvbfkjbvfjvfjvbfvjfkvbf', 1),
(4, 'kjdsfhgkdhsjdkbskdjcbdskjcbdh', 'INDIVIDUAL', '2021-02-11', 'Data Analysis Template', 'gxcvjbjvcxbnmnvcxbgxgfc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testapp_project_skills`
--

CREATE TABLE `testapp_project_skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `nda` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testapp_project_skills`
--

INSERT INTO `testapp_project_skills` (`id`, `skill`, `nda`, `user_id`) VALUES
(1, '[\'kjdfgkjdfbvkfdv,fjvbkkfdjvbfdkjvf,fkbvkjfdbvkjdfv,kjdfgbfkfdjbvf\']', 'NO', 1),
(2, '[\'xjcbkjxcbjv,cxbvkjcxbvcjx\']', 'YES', 1);

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
-- Indexes for table `testapp_company_register`
--
ALTER TABLE `testapp_company_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testapp_company_register_user_id_1f19fefc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `testapp_incentiv`
--
ALTER TABLE `testapp_incentiv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testapp_incentiv_user_id_17071d18_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `testapp_plans`
--
ALTER TABLE `testapp_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testapp_plans_user_id_b99a0fdd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `testapp_project_detailss`
--
ALTER TABLE `testapp_project_detailss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testapp_project_detailss_user_id_c2d4986e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `testapp_project_skills`
--
ALTER TABLE `testapp_project_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testapp_project_skills_user_id_6c0c188b_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `testapp_company_register`
--
ALTER TABLE `testapp_company_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testapp_incentiv`
--
ALTER TABLE `testapp_incentiv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testapp_plans`
--
ALTER TABLE `testapp_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testapp_project_detailss`
--
ALTER TABLE `testapp_project_detailss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testapp_project_skills`
--
ALTER TABLE `testapp_project_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- Constraints for table `testapp_company_register`
--
ALTER TABLE `testapp_company_register`
  ADD CONSTRAINT `testapp_company_register_user_id_1f19fefc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `testapp_incentiv`
--
ALTER TABLE `testapp_incentiv`
  ADD CONSTRAINT `testapp_incentiv_user_id_17071d18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `testapp_plans`
--
ALTER TABLE `testapp_plans`
  ADD CONSTRAINT `testapp_plans_user_id_b99a0fdd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `testapp_project_detailss`
--
ALTER TABLE `testapp_project_detailss`
  ADD CONSTRAINT `testapp_project_detailss_user_id_c2d4986e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `testapp_project_skills`
--
ALTER TABLE `testapp_project_skills`
  ADD CONSTRAINT `testapp_project_skills_user_id_6c0c188b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
