-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 juin 2020 à 16:05
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecomm_wp`
--

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_actionscheduler_actions`
--

CREATE TABLE `ecomm_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_actionscheduler_actions`
--

INSERT INTO `ecomm_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-06-08 10:17:51', '2020-06-08 11:17:51', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591611471;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591611471;}', 1, 1, '2020-06-08 10:18:03', '2020-06-08 11:18:03', 0, NULL),
(7, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-06-08 10:41:27', '2020-06-08 11:41:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591612887;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591612887;}', 0, 1, '2020-06-08 10:41:49', '2020-06-08 11:41:49', 0, NULL),
(8, 'wc-admin_import_customers', 'complete', '2020-06-08 13:03:23', '2020-06-08 14:03:23', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591621403;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591621403;}', 2, 1, '2020-06-08 13:03:26', '2020-06-08 14:03:26', 0, NULL),
(9, 'wc-admin_import_orders', 'complete', '2020-06-08 13:03:23', '2020-06-08 14:03:23', '[51]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591621403;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591621403;}', 2, 1, '2020-06-08 13:03:26', '2020-06-08 14:03:26', 0, NULL),
(10, 'wc-admin_import_orders', 'complete', '2020-06-08 13:32:15', '2020-06-08 14:32:15', '[51]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591623135;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591623135;}', 2, 1, '2020-06-08 13:32:55', '2020-06-08 14:32:55', 0, NULL),
(11, 'wc-admin_import_customers', 'complete', '2020-06-08 13:32:16', '2020-06-08 14:32:16', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591623136;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591623136;}', 2, 1, '2020-06-08 13:32:55', '2020-06-08 14:32:55', 0, NULL),
(12, 'wc-admin_import_customers', 'complete', '2020-06-08 13:48:01', '2020-06-08 14:48:01', '[2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591624081;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591624081;}', 2, 1, '2020-06-08 13:48:14', '2020-06-08 14:48:14', 0, NULL),
(13, 'wc-admin_import_orders', 'complete', '2020-06-08 13:48:01', '2020-06-08 14:48:01', '[52]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591624081;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591624081;}', 2, 1, '2020-06-08 13:48:14', '2020-06-08 14:48:14', 0, NULL),
(14, 'wc-admin_import_customers', 'complete', '2020-06-08 14:30:27', '2020-06-08 15:30:27', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591626627;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591626627;}', 2, 1, '2020-06-08 14:32:05', '2020-06-08 15:32:05', 0, NULL),
(15, 'wc-admin_import_orders', 'complete', '2020-06-08 14:30:27', '2020-06-08 15:30:27', '[57]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591626627;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591626627;}', 2, 1, '2020-06-08 14:32:05', '2020-06-08 15:32:05', 0, NULL),
(16, 'wc-admin_import_orders', 'complete', '2020-06-09 09:32:36', '2020-06-09 10:32:36', '[57]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591695156;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591695156;}', 2, 1, '2020-06-09 09:32:49', '2020-06-09 10:32:49', 0, NULL),
(17, 'action_scheduler/migration_hook', 'complete', '2020-06-10 08:29:05', '2020-06-10 09:29:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591777745;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591777745;}', 1, 1, '2020-06-10 08:29:17', '2020-06-10 09:29:17', 0, NULL),
(18, 'wc-admin_import_customers', 'complete', '2020-06-10 10:36:34', '2020-06-10 11:36:34', '[2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591785394;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591785394;}', 2, 1, '2020-06-10 10:36:56', '2020-06-10 11:36:56', 0, NULL),
(19, 'wc-admin_import_orders', 'complete', '2020-06-10 10:36:34', '2020-06-10 11:36:34', '[76]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591785394;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591785394;}', 2, 1, '2020-06-10 10:36:56', '2020-06-10 11:36:56', 0, NULL),
(20, 'wc-admin_import_customers', 'complete', '2020-06-10 15:43:07', '2020-06-10 16:43:07', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591803787;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591803787;}', 2, 1, '2020-06-11 11:23:27', '2020-06-11 12:23:27', 0, NULL),
(21, 'wc-admin_import_orders', 'complete', '2020-06-10 15:43:07', '2020-06-10 16:43:07', '[80]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1591803787;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1591803787;}', 2, 1, '2020-06-11 11:23:27', '2020-06-11 12:23:27', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_actionscheduler_claims`
--

CREATE TABLE `ecomm_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_actionscheduler_groups`
--

CREATE TABLE `ecomm_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_actionscheduler_groups`
--

INSERT INTO `ecomm_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_actionscheduler_logs`
--

CREATE TABLE `ecomm_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_actionscheduler_logs`
--

INSERT INTO `ecomm_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-06-08 10:16:51', '2020-06-08 11:16:51'),
(2, 6, 'action started via Async Request', '2020-06-08 10:18:03', '2020-06-08 11:18:03'),
(3, 6, 'action complete via Async Request', '2020-06-08 10:18:03', '2020-06-08 11:18:03'),
(4, 7, 'action created', '2020-06-08 10:41:27', '2020-06-08 11:41:27'),
(5, 7, 'action started via WP Cron', '2020-06-08 10:41:49', '2020-06-08 11:41:49'),
(6, 7, 'action complete via WP Cron', '2020-06-08 10:41:49', '2020-06-08 11:41:49'),
(7, 8, 'action created', '2020-06-08 13:03:18', '2020-06-08 14:03:18'),
(8, 9, 'action created', '2020-06-08 13:03:18', '2020-06-08 14:03:18'),
(9, 8, 'action started via WP Cron', '2020-06-08 13:03:26', '2020-06-08 14:03:26'),
(10, 8, 'action complete via WP Cron', '2020-06-08 13:03:26', '2020-06-08 14:03:26'),
(11, 9, 'action started via WP Cron', '2020-06-08 13:03:26', '2020-06-08 14:03:26'),
(12, 9, 'action complete via WP Cron', '2020-06-08 13:03:26', '2020-06-08 14:03:26'),
(13, 10, 'action created', '2020-06-08 13:32:11', '2020-06-08 14:32:11'),
(14, 11, 'action created', '2020-06-08 13:32:11', '2020-06-08 14:32:11'),
(15, 10, 'action started via WP Cron', '2020-06-08 13:32:55', '2020-06-08 14:32:55'),
(16, 10, 'action complete via WP Cron', '2020-06-08 13:32:55', '2020-06-08 14:32:55'),
(17, 11, 'action started via WP Cron', '2020-06-08 13:32:55', '2020-06-08 14:32:55'),
(18, 11, 'action complete via WP Cron', '2020-06-08 13:32:55', '2020-06-08 14:32:55'),
(19, 12, 'action created', '2020-06-08 13:47:56', '2020-06-08 14:47:56'),
(20, 13, 'action created', '2020-06-08 13:47:56', '2020-06-08 14:47:56'),
(21, 12, 'action started via Async Request', '2020-06-08 13:48:14', '2020-06-08 14:48:14'),
(22, 12, 'action complete via Async Request', '2020-06-08 13:48:14', '2020-06-08 14:48:14'),
(23, 13, 'action started via Async Request', '2020-06-08 13:48:14', '2020-06-08 14:48:14'),
(24, 13, 'action complete via Async Request', '2020-06-08 13:48:14', '2020-06-08 14:48:14'),
(25, 14, 'action created', '2020-06-08 14:30:22', '2020-06-08 15:30:22'),
(26, 15, 'action created', '2020-06-08 14:30:22', '2020-06-08 15:30:22'),
(27, 14, 'action started via WP Cron', '2020-06-08 14:32:04', '2020-06-08 15:32:04'),
(28, 14, 'action complete via WP Cron', '2020-06-08 14:32:05', '2020-06-08 15:32:05'),
(29, 15, 'action started via WP Cron', '2020-06-08 14:32:05', '2020-06-08 15:32:05'),
(30, 15, 'action complete via WP Cron', '2020-06-08 14:32:05', '2020-06-08 15:32:05'),
(31, 16, 'action created', '2020-06-09 09:32:31', '2020-06-09 10:32:31'),
(32, 16, 'action started via WP Cron', '2020-06-09 09:32:49', '2020-06-09 10:32:49'),
(33, 16, 'action complete via WP Cron', '2020-06-09 09:32:49', '2020-06-09 10:32:49'),
(34, 17, 'action created', '2020-06-10 08:28:05', '2020-06-10 09:28:05'),
(35, 17, 'action started via WP Cron', '2020-06-10 08:29:17', '2020-06-10 09:29:17'),
(36, 17, 'action complete via WP Cron', '2020-06-10 08:29:17', '2020-06-10 09:29:17'),
(37, 18, 'action created', '2020-06-10 10:36:29', '2020-06-10 11:36:29'),
(38, 19, 'action created', '2020-06-10 10:36:29', '2020-06-10 11:36:29'),
(39, 18, 'action started via WP Cron', '2020-06-10 10:36:56', '2020-06-10 11:36:56'),
(40, 18, 'action complete via WP Cron', '2020-06-10 10:36:56', '2020-06-10 11:36:56'),
(41, 19, 'action started via WP Cron', '2020-06-10 10:36:56', '2020-06-10 11:36:56'),
(42, 19, 'action complete via WP Cron', '2020-06-10 10:36:56', '2020-06-10 11:36:56'),
(43, 20, 'action created', '2020-06-10 15:43:02', '2020-06-10 16:43:02'),
(44, 21, 'action created', '2020-06-10 15:43:02', '2020-06-10 16:43:02'),
(45, 20, 'action started via WP Cron', '2020-06-11 11:23:26', '2020-06-11 12:23:26'),
(46, 20, 'action complete via WP Cron', '2020-06-11 11:23:27', '2020-06-11 12:23:27'),
(47, 21, 'action started via WP Cron', '2020-06-11 11:23:27', '2020-06-11 12:23:27'),
(48, 21, 'action complete via WP Cron', '2020-06-11 11:23:27', '2020-06-11 12:23:27');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_commentmeta`
--

CREATE TABLE `ecomm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_comments`
--

CREATE TABLE `ecomm_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_comments`
--

INSERT INTO `ecomm_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 51, 'WooCommerce', '', '', '', '2020-06-08 14:03:18', '2020-06-08 13:03:18', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 51, 'me.karbal', 'me.karbal@gmail.com', '', '', '2020-06-08 14:32:14', '2020-06-08 13:32:14', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 52, 'WooCommerce', '', '', '', '2020-06-08 14:47:57', '2020-06-08 13:47:57', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 57, 'WooCommerce', '', '', '', '2020-06-08 15:30:22', '2020-06-08 14:30:22', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 57, 'me.karbal', 'me.karbal@gmail.com', '', '', '2020-06-09 10:32:31', '2020-06-09 09:32:31', 'Order status changed by bulk edit: Order status changed from Processing to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 76, 'WooCommerce', '', '', '', '2020-06-10 11:36:30', '2020-06-10 10:36:30', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 80, 'WooCommerce', '', '', '', '2020-06-10 16:43:02', '2020-06-10 15:43:02', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_links`
--

CREATE TABLE `ecomm_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_mailchimp_carts`
--

CREATE TABLE `ecomm_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_mailchimp_jobs`
--

CREATE TABLE `ecomm_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_options`
--

CREATE TABLE `ecomm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_options`
--

INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/ecomm_wp', 'yes'),
(2, 'home', 'http://localhost:8080/ecomm_wp', 'yes'),
(3, 'blogname', 'WooCommerce_app', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'me.karbal@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=47&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:1;s:19:\"jetpack/jetpack.php\";i:2;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:3;s:39:\"uk-cookie-consent/uk-cookie-consent.php\";i:4;s:17:\"weglot/weglot.php\";i:5;s:45:\"woocommerce-services/woocommerce-services.php\";i:6;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:73:\"D:\\xampp\\htdocs\\ecomm_wp/wp-content/themes/boutique/template-homepage.php\";i:1;s:65:\"D:\\xampp\\htdocs\\ecomm_wp/wp-content/themes/boutique/functions.php\";i:2;s:61:\"D:\\xampp\\htdocs\\ecomm_wp/wp-content/themes/boutique/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'boutique', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:1;}i:5;a:0:{}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}s:17:\"weglot/weglot.php\";s:23:\"weglot_plugin_uninstall\";}', 'no'),
(82, 'timezone_string', 'Africa/Casablanca', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '47', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '73', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'admin_email_lifespan', '1607162963', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'ecomm_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'en_GB', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:14:\"recent-posts-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:26:\"woocommerce_price_filter-3\";i:2;s:10:\"calendar-3\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:1:{i:0;s:10:\"nav_menu-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:18:{i:1591877627;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1591877810;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591877817;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591878207;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1591878230;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591880964;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1591881409;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591892209;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591913364;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591916400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591956564;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591956576;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591956581;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591957010;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591957019;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1592302164;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1592907469;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:11:\"custom_logo\";i:50;}', 'yes'),
(128, '_site_transient_timeout_browser_d89a5df993c1338c5235193f56aa2992', '1592215780', 'no'),
(129, '_site_transient_browser_d89a5df993c1338c5235193f56aa2992', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"76.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_80bc207537711bbc111e88c4ab5d2dc5', '1592215781', 'no'),
(131, '_site_transient_php_check_80bc207537711bbc111e88c4ab5d2dc5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:1:{s:21:\"wpglobus/wpglobus.php\";i:1591777683;}', 'yes'),
(151, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(152, 'schema-ActionScheduler_StoreSchema', '3.0.1591611407', 'yes'),
(153, 'schema-ActionScheduler_LoggerSchema', '2.0.1591611407', 'yes'),
(156, 'woocommerce_store_address', 'maroc', 'yes'),
(157, 'woocommerce_store_address_2', '', 'yes'),
(158, 'woocommerce_store_city', 'safi', 'yes'),
(159, 'woocommerce_default_country', 'MA', 'yes'),
(160, 'woocommerce_store_postcode', '46000', 'yes'),
(161, 'woocommerce_allowed_countries', 'all', 'yes'),
(162, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(163, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_ship_to_countries', '', 'yes'),
(165, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(166, 'woocommerce_default_customer_address', 'base', 'yes'),
(167, 'woocommerce_calc_taxes', 'yes', 'yes'),
(168, 'woocommerce_enable_coupons', 'yes', 'yes'),
(169, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(170, 'woocommerce_currency', 'AUD', 'yes'),
(171, 'woocommerce_currency_pos', 'right', 'yes'),
(172, 'woocommerce_price_thousand_sep', ',', 'yes'),
(173, 'woocommerce_price_decimal_sep', '.', 'yes'),
(174, 'woocommerce_price_num_decimals', '2', 'yes'),
(175, 'woocommerce_shop_page_id', '6', 'yes'),
(176, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(177, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(178, 'woocommerce_placeholder_image', '5', 'yes'),
(179, 'woocommerce_weight_unit', 'kg', 'yes'),
(180, 'woocommerce_dimension_unit', 'cm', 'yes'),
(181, 'woocommerce_enable_reviews', 'yes', 'yes'),
(182, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(183, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(184, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(185, 'woocommerce_review_rating_required', 'yes', 'no'),
(186, 'woocommerce_manage_stock', 'yes', 'yes'),
(187, 'woocommerce_hold_stock_minutes', '60', 'no'),
(188, 'woocommerce_notify_low_stock', 'yes', 'no'),
(189, 'woocommerce_notify_no_stock', 'yes', 'no'),
(190, 'woocommerce_stock_email_recipient', 'me.karbal@gmail.com', 'no'),
(191, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(192, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(193, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(194, 'woocommerce_stock_format', '', 'yes'),
(195, 'woocommerce_file_download_method', 'force', 'no'),
(196, 'woocommerce_downloads_require_login', 'no', 'no'),
(197, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(198, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(199, 'woocommerce_prices_include_tax', 'no', 'yes'),
(200, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(201, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(202, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(203, 'woocommerce_tax_classes', '', 'yes'),
(204, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(205, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(206, 'woocommerce_price_display_suffix', '', 'yes'),
(207, 'woocommerce_tax_total_display', 'itemized', 'no'),
(208, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(209, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(210, 'woocommerce_ship_to_destination', 'billing', 'no'),
(211, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(212, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(213, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(214, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(215, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(216, 'woocommerce_registration_generate_username', 'yes', 'no'),
(217, 'woocommerce_registration_generate_password', 'no', 'no'),
(218, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(219, 'woocommerce_erasure_request_removes_download_data', 'yes', 'no'),
(220, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(221, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(222, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(223, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(224, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(225, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(226, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(227, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(228, 'woocommerce_email_from_name', 'WooCommerce_app', 'no'),
(229, 'woocommerce_email_from_address', 'me.karbal@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(232, 'woocommerce_email_base_color', '#96588a', 'no'),
(233, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(234, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(235, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(236, 'woocommerce_cart_page_id', '7', 'no'),
(237, 'woocommerce_checkout_page_id', '8', 'no'),
(238, 'woocommerce_myaccount_page_id', '9', 'no'),
(239, 'woocommerce_terms_page_id', '', 'no'),
(240, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(241, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(242, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(243, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(244, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(245, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(246, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_api_enabled', 'no', 'yes'),
(256, 'woocommerce_allow_tracking', 'yes', 'no'),
(257, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(258, 'woocommerce_single_image_width', '600', 'yes'),
(259, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(260, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(261, 'woocommerce_demo_store', 'no', 'no'),
(262, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(263, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(264, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(267, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(271, 'woocommerce_version', '4.2.0', 'yes'),
(272, 'woocommerce_db_version', '4.2.0', 'yes'),
(275, 'action_scheduler_lock_async-request-runner', '1591877649', 'yes'),
(276, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"L6ooiH4iQL05u1ICvbIlg0CoI8fReR7t\";}', 'yes'),
(277, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(278, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_price_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(282, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_rating_filter', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"hjgjgj\";}}', 'yes'),
(292, 'woocommerce_admin_version', '1.2.3', 'yes'),
(293, 'woocommerce_admin_install_timestamp', '1591611410', 'yes'),
(300, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:2:{i:0;s:8:\"physical\";i:1;s:9:\"downloads\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:2:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";}s:7:\"plugins\";s:17:\"already-installed\";s:5:\"theme\";s:8:\"boutique\";}', 'yes'),
(301, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(304, '_transient_woocommerce_reports-transient-version', '1591874607', 'yes'),
(305, '_transient_timeout_orders-all-statuses', '1592404889', 'no'),
(306, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1591800089\";s:5:\"value\";a:3:{i:0;s:12:\"wc-completed\";i:1;s:13:\"wc-processing\";i:2;s:10:\"wc-on-hold\";}}', 'no'),
(328, 'jetpack_activated', '1', 'yes'),
(331, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(332, 'jetpack_sync_settings_disable', '0', 'yes'),
(333, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"8.6.1:1591611829\";s:11:\"old_version\";s:16:\"8.6.1:1591611829\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:1;}', 'yes'),
(334, 'jetpack_connection_active_plugins', 'a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}', 'yes'),
(335, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(337, 'jetpack_testimonial', '0', 'yes'),
(338, '_transient_timeout_jetpack_file_data_8.6.1', '1594117434', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(339, '_transient_jetpack_file_data_8.6.1', 'a:52:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:102:\"Help visitors quickly find answers with highly relevant instant search results and powerful filtering.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"21b59e7bb3fe0784e7525ad11ad8a8f6\";a:14:{s:4:\"name\";s:21:\"WooCommerce Analytics\";s:11:\"description\";s:53:\"Enhanced analytics for WooCommerce and Jetpack users.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"8.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Other, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:69:\"woocommerce, analytics, stats, statistics, tracking, analytics, views\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(340, 'jetpack_available_modules', 'a:1:{s:5:\"8.6.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(346, 'do_activate', '0', 'yes'),
(349, '_transient_timeout_jetpack_https_test_message', '1591961008', 'no'),
(350, '_transient_jetpack_https_test_message', '', 'no'),
(351, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(352, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(390, 'jetpack_content_post_details_comment', '1', 'yes'),
(396, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1591612909;}', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(399, 'mailchimp-woocommerce', 'a:3:{s:24:\"mailchimp_permission_cap\";s:14:\"manage_options\";s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"AUD\";}', 'yes'),
(401, 'mailchimp-woocommerce-store_id', '5ede161c8571c', 'yes'),
(402, 'mailchimp-woocommerce-store-id-last-verified', '1591876994', 'yes'),
(408, 'current_theme', 'Boutique', 'yes'),
(409, 'theme_switched', '', 'yes'),
(410, 'theme_mods_boutique', 'a:4:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:17:\"storefront_layout\";s:5:\"right\";s:11:\"custom_logo\";s:0:\"\";}', 'yes'),
(411, 'woocommerce_catalog_rows', '6', 'yes'),
(412, 'woocommerce_catalog_columns', '3', 'yes'),
(413, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(420, 'storefront_nux_fresh_site', '0', 'yes'),
(421, 'wc_facebook_for_woocommerce_is_active', 'yes', 'yes'),
(422, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(423, 'mailchimp_woocommerce_version', '2.4.0', 'no'),
(424, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes'),
(425, 'woocommerce_task_list_tracked_completed_tasks', 'a:5:{i:0;s:8:\"purchase\";i:1;s:8:\"products\";i:2;s:10:\"appearance\";i:3;s:8:\"shipping\";i:4;s:8:\"payments\";}', 'yes'),
(426, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(427, '_transient_product_query-transient-version', '1591782936', 'yes'),
(428, '_transient_product-transient-version', '1591782613', 'yes'),
(434, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'yes'),
(438, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(444, 'pa_size_children', 'a:0:{}', 'yes'),
(458, 'pa_color_children', 'a:0:{}', 'yes'),
(461, 'woocommerce_onboarding_homepage_post_id', '47', 'yes'),
(467, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(468, 'woocommerce_demo_store_notice', '', 'yes'),
(470, '_transient_shipping-transient-version', '1591613546', 'yes'),
(471, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'yes'),
(472, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1591617154,\"version\":\"1.11.4\"}]', 'no'),
(473, 'wc_facebook_for_woocommerce_version', '1.11.4', 'yes'),
(477, '_transient_timeout_sv_wc_plugin_wc_versions', '1592218356', 'no'),
(478, '_transient_sv_wc_plugin_wc_versions', 'a:62:{i:0;s:5:\"4.2.0\";i:1;s:5:\"4.1.1\";i:2;s:5:\"4.1.0\";i:3;s:5:\"4.0.1\";i:4;s:5:\"4.0.0\";i:5;s:5:\"3.9.3\";i:6;s:5:\"3.9.2\";i:7;s:5:\"3.9.1\";i:8;s:5:\"3.9.0\";i:9;s:5:\"3.8.1\";i:10;s:5:\"3.8.0\";i:11;s:5:\"3.7.1\";i:12;s:5:\"3.7.0\";i:13;s:5:\"3.6.5\";i:14;s:5:\"3.6.4\";i:15;s:5:\"3.6.3\";i:16;s:5:\"3.6.2\";i:17;s:5:\"3.6.1\";i:18;s:5:\"3.6.0\";i:19;s:5:\"3.5.8\";i:20;s:5:\"3.5.7\";i:21;s:5:\"3.5.6\";i:22;s:5:\"3.5.5\";i:23;s:5:\"3.5.4\";i:24;s:5:\"3.5.3\";i:25;s:5:\"3.5.2\";i:26;s:5:\"3.5.1\";i:27;s:5:\"3.5.0\";i:28;s:5:\"3.4.7\";i:29;s:5:\"3.4.6\";i:30;s:5:\"3.4.5\";i:31;s:5:\"3.4.4\";i:32;s:5:\"3.4.3\";i:33;s:5:\"3.4.2\";i:34;s:5:\"3.4.1\";i:35;s:5:\"3.4.0\";i:36;s:5:\"3.3.5\";i:37;s:5:\"3.3.4\";i:38;s:5:\"3.3.3\";i:39;s:5:\"3.3.2\";i:40;s:5:\"3.3.1\";i:41;s:5:\"3.3.0\";i:42;s:5:\"3.2.6\";i:43;s:5:\"3.2.5\";i:44;s:5:\"3.2.4\";i:45;s:5:\"3.2.3\";i:46;s:5:\"3.2.2\";i:47;s:5:\"3.2.1\";i:48;s:5:\"3.2.0\";i:49;s:5:\"3.1.2\";i:50;s:5:\"3.1.1\";i:51;s:5:\"3.1.0\";i:52;s:5:\"3.0.9\";i:53;s:5:\"3.0.8\";i:54;s:5:\"3.0.7\";i:55;s:5:\"3.0.6\";i:56;s:5:\"3.0.5\";i:57;s:5:\"3.0.4\";i:58;s:5:\"3.0.3\";i:59;s:5:\"3.0.2\";i:60;s:5:\"3.0.1\";i:61;s:5:\"3.0.0\";}', 'no'),
(483, 'storefront_nux_dismissed', '1', 'yes'),
(484, 'storefront_nux_guided_tour', '1', 'yes'),
(486, '_transient_timeout_wc_blocks_query_e74f185604ace3e10387516a9ef11201', '1594375049', 'no'),
(487, '_transient_wc_blocks_query_e74f185604ace3e10387516a9ef11201', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";a:4:{i:0;i:53;i:1;i:17;i:2;i:16;i:3;i:15;}}', 'no'),
(488, '_transient_timeout_wc_blocks_query_ad7ef7e456a1b156f2606ab6270ea6ef', '1594375049', 'no'),
(489, '_transient_wc_blocks_query_ad7ef7e456a1b156f2606ab6270ea6ef', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";a:4:{i:0;i:53;i:1;i:17;i:2;i:16;i:3;i:15;}}', 'no'),
(492, '_transient_timeout_wc_blocks_query_797abc85b7e4d654de2df4997954b34d', '1594205566', 'no'),
(493, '_transient_wc_blocks_query_797abc85b7e4d654de2df4997954b34d', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";a:3:{i:0;i:16;i:1;i:15;i:2;i:14;}}', 'no'),
(494, '_transient_timeout_wc_blocks_query_b8b26cf7a1dc9e3d6f2e8b909b739366', '1594375050', 'no'),
(495, '_transient_wc_blocks_query_b8b26cf7a1dc9e3d6f2e8b909b739366', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";a:4:{i:0;i:53;i:1;i:17;i:2;i:14;i:3;i:16;}}', 'no'),
(498, '_transient_timeout_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', '1594375050', 'no'),
(499, '_transient_wc_product_loop_93c8b2907cc8ca606083a7a681d1a5b4', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:53;i:1;i:17;i:2;i:16;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(502, '_transient_timeout_wc_var_prices_10', '1594287687', 'no'),
(503, '_transient_wc_var_prices_10', '{\"version\":\"1591695686\",\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(504, '_transient_timeout_wc_product_loop_e1c4b2d8e19f0fa9242861bed463c6c1', '1594375050', 'no'),
(505, '_transient_wc_product_loop_e1c4b2d8e19f0fa9242861bed463c6c1', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:53;i:1;i:17;i:2;i:16;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(506, '_transient_timeout_wc_product_loop_8b1d448b9f769e92f55fd313e8e369bf', '1594375050', 'no'),
(507, '_transient_wc_product_loop_8b1d448b9f769e92f55fd313e8e369bf', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:53;i:1;i:17;i:2;i:16;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(508, '_transient_timeout_wc_product_loop_72c92d8dbc23426086cb6fa20f22ecd7', '1594205567', 'no'),
(509, '_transient_wc_product_loop_72c92d8dbc23426086cb6fa20f22ecd7', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:16;i:1;i:15;i:2;i:14;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(510, '_transient_timeout_wc_product_loop_921c788d64dc9189ad92eddec2763ad2', '1594375050', 'no'),
(511, '_transient_wc_product_loop_921c788d64dc9189ad92eddec2763ad2', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:53;i:1;i:17;i:2;i:14;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(512, '_transient_timeout_wc_shipping_method_count_legacy', '1594205597', 'no'),
(513, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1591613546\";s:5:\"value\";i:1;}', 'no'),
(516, '_transient_timeout_wc_var_prices_11', '1594287687', 'no'),
(517, '_transient_wc_var_prices_11', '{\"version\":\"1591695686\",\"e1b88e1c9a8573a0fff4a38a491fcd6d\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(526, 'theme_mods_deli', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(527, '_transient_timeout_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', '1594212979', 'no'),
(528, '_transient_wc_product_loop_dbaaaa35f2169c63d284795d8e23308c', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:17;i:1;i:16;i:2;i:15;i:3;i:14;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(529, '_transient_timeout_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', '1594212979', 'no'),
(530, '_transient_wc_product_loop_cc8a2d32d836d33d4bec83cb31531f7d', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:17;i:1;i:16;i:2;i:15;i:3;i:14;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(531, '_transient_timeout_wc_product_loop_13c6772face456bf8f84a9df3804ba24', '1594212979', 'no'),
(532, '_transient_wc_product_loop_13c6772face456bf8f84a9df3804ba24', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:16;i:1;i:15;i:2;i:14;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(533, '_transient_timeout_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', '1594212979', 'no'),
(534, '_transient_wc_product_loop_b27d6511cd0b0974ef126df50f877a28', 'a:2:{s:7:\"version\";s:10:\"1591613041\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:17;i:1;i:16;i:2;i:15;i:3;i:14;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(541, '_transient_timeout_wc_shipping_method_count', '1594213193', 'no'),
(542, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1591613546\";s:5:\"value\";i:1;}', 'no'),
(543, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(552, '_transient_orders-transient-version', '1591803782', 'yes'),
(564, '_transient_timeout_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51', '1594368688', 'no'),
(565, '_transient_wc_product_loop_48411be95870d46f9fddbf3c0e4b8d51', 'a:2:{s:7:\"version\";s:10:\"1591737245\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:53;i:1;i:17;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(566, '_transient_timeout_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', '1594368688', 'no'),
(567, '_transient_wc_product_loop_cd4ceb08a6a3e9bac7f4260a4e03a47f', 'a:2:{s:7:\"version\";s:10:\"1591737245\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:53;i:1;i:17;i:2;i:14;i:3;i:16;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(576, 'woocommerce_tracker_ua', 'a:2:{i:0;s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0\";i:1;s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0\";}', 'yes'),
(585, '_transient_timeout_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', '1592299981', 'no'),
(586, '_transient_wc_report_customers_stats_5ff75cebf84d86c9115c2c6a07ac292c', 'a:2:{s:7:\"version\";s:10:\"1591695169\";s:5:\"value\";O:8:\"stdClass\":4:{s:15:\"customers_count\";i:2;s:16:\"avg_orders_count\";d:1.5;s:15:\"avg_total_spend\";d:146;s:19:\"avg_avg_order_value\";d:77;}}', 'no'),
(587, '_transient_timeout_wc_report_customers_a391811b3867814b9f8a9306cc690097', '1592299981', 'no'),
(588, '_transient_wc_report_customers_a391811b3867814b9f8a9306cc690097', 'a:2:{s:7:\"version\";s:10:\"1591695169\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:2:{i:0;a:15:{s:2:\"id\";i:1;s:7:\"user_id\";i:1;s:8:\"username\";s:9:\"me.karbal\";s:4:\"name\";s:11:\"hfhf hjfshj\";s:5:\"email\";s:19:\"me.karbal@gmail.com\";s:7:\"country\";s:2:\"MA\";s:4:\"city\";s:4:\"saaa\";s:5:\"state\";s:4:\"jvhg\";s:8:\"postcode\";s:7:\"1212121\";s:15:\"date_registered\";s:19:\"2020-06-08 10:09:23\";s:16:\"date_last_active\";s:19:\"2020-06-09 00:00:00\";s:15:\"date_last_order\";s:19:\"2020-06-08 15:30:22\";s:12:\"orders_count\";i:2;s:11:\"total_spend\";d:276;s:15:\"avg_order_value\";d:138;}i:1;a:15:{s:2:\"id\";i:2;s:7:\"user_id\";i:2;s:8:\"username\";s:6:\"yassir\";s:4:\"name\";s:8:\"yyy yyyy\";s:5:\"email\";s:16:\"yassir@email.com\";s:7:\"country\";s:2:\"MA\";s:4:\"city\";s:4:\"SAFI\";s:5:\"state\";s:6:\"FSMLFS\";s:8:\"postcode\";s:5:\"46000\";s:15:\"date_registered\";s:19:\"2020-06-08 13:08:59\";s:16:\"date_last_active\";s:19:\"2020-06-08 00:00:00\";s:15:\"date_last_order\";s:19:\"2020-06-08 14:47:56\";s:12:\"orders_count\";i:1;s:11:\"total_spend\";d:16;s:15:\"avg_order_value\";d:16;}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(598, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(620, 'woocommerce_task_list_payments', 'a:2:{s:9:\"completed\";i:1;s:9:\"timestamp\";i:1591623547;}', 'yes'),
(645, '_transient_timeout_wc_blocks_query_7919cffb4b7f3a0292f87360e39ee825', '1594215929', 'no'),
(646, '_transient_wc_blocks_query_7919cffb4b7f3a0292f87360e39ee825', 'a:2:{s:7:\"version\";s:10:\"1591623914\";s:5:\"value\";a:4:{i:0;i:17;i:1;i:16;i:2;i:15;i:3;i:14;}}', 'no'),
(649, '_transient_timeout_wc_product_loop_f4bfa294dec478b5a31b7dca598a09b9', '1594215929', 'no'),
(650, '_transient_wc_product_loop_f4bfa294dec478b5a31b7dca598a09b9', 'a:2:{s:7:\"version\";s:10:\"1591623914\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:17;i:1;i:16;i:2;i:15;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(681, '_transient_timeout_wc_blocks_query_1b8f7019a07039c2f45326490ca47838', '1594375050', 'no'),
(682, '_transient_wc_blocks_query_1b8f7019a07039c2f45326490ca47838', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";a:4:{i:0;i:53;i:1;i:17;i:2;i:16;i:3;i:15;}}', 'no'),
(685, '_transient_timeout_wc_product_loop_98af9710025095cd628b6a53148ed90c', '1594375050', 'no'),
(686, '_transient_wc_product_loop_98af9710025095cd628b6a53148ed90c', 'a:2:{s:7:\"version\";s:10:\"1591782936\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:53;i:1;i:17;i:2;i:16;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(703, '_transient_timeout_wc_customer_bought_product_da0575c2792704d2ad67bf7de94afb4b', '1594217964', 'no'),
(704, '_transient_wc_customer_bought_product_da0575c2792704d2ad67bf7de94afb4b', 'a:2:{s:7:\"version\";s:10:\"1591624077\";s:5:\"value\";a:4:{i:0;i:14;i:1;i:14;i:2;i:17;i:3;i:17;}}', 'no'),
(877, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"7\",\"critical\":\"0\"}', 'yes'),
(895, 'woocommerce_sales_record_date', '2020-06-08', 'yes'),
(896, 'woocommerce_sales_record_amount', '292', 'yes'),
(901, 'woocommerce_tracker_last_send', '1591697833', 'yes'),
(958, '_transient_timeout_wc_term_counts', '1594368688', 'no'),
(959, '_transient_wc_term_counts', 'a:7:{i:19;s:1:\"4\";i:16;s:1:\"7\";i:18;s:1:\"2\";i:17;s:1:\"3\";i:15;s:1:\"1\";i:21;s:0:\"\";i:20;s:0:\"\";}', 'no'),
(977, 'category_children', 'a:0:{}', 'yes'),
(985, '_transient_timeout_wc_customer_bought_product_fcef583118dbe3fc9836a00dff328e42', '1594329183', 'no'),
(986, '_transient_wc_customer_bought_product_fcef583118dbe3fc9836a00dff328e42', 'a:2:{s:7:\"version\";s:10:\"1591695151\";s:5:\"value\";a:2:{i:0;i:16;i:1;i:16;}}', 'no'),
(1030, 'wpglobus_option_language_names', 'a:34:{s:2:\"ar\";s:49:\"&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;\";s:2:\"en\";s:7:\"English\";s:2:\"au\";s:12:\"English (AU)\";s:2:\"ca\";s:12:\"English (CA)\";s:2:\"gb\";s:12:\"English (UK)\";s:2:\"zh\";s:32:\"&#31616;&#20307;&#20013;&#25991;\";s:2:\"tw\";s:32:\"&#32321;&#39636;&#20013;&#25991;\";s:2:\"da\";s:5:\"Dansk\";s:2:\"nl\";s:10:\"Nederlands\";s:2:\"gl\";s:6:\"Galego\";s:2:\"de\";s:7:\"Deutsch\";s:2:\"fi\";s:5:\"Suomi\";s:2:\"fr\";s:9:\"Français\";s:2:\"qc\";s:14:\"Français (CA)\";s:2:\"he\";s:35:\"&#1506;&#1489;&#1512;&#1497;&#1514;\";s:2:\"hi\";s:42:\"&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;\";s:2:\"hu\";s:6:\"Magyar\";s:2:\"it\";s:8:\"Italiano\";s:2:\"ja\";s:24:\"&#26085;&#26412;&#35486;\";s:2:\"ko\";s:24:\"&#54620;&#44397;&#50612;\";s:2:\"no\";s:5:\"Norsk\";s:2:\"fa\";s:35:\"&#1601;&#1575;&#1585;&#1587;&#1740;\";s:2:\"pl\";s:6:\"Polski\";s:2:\"pt\";s:10:\"Português\";s:2:\"br\";s:15:\"Português (BR)\";s:2:\"ro\";s:8:\"Română\";s:2:\"ru\";s:14:\"Русский\";s:2:\"es\";s:8:\"Español\";s:2:\"mx\";s:13:\"Español (MX)\";s:2:\"sv\";s:7:\"Svenska\";s:2:\"tr\";s:8:\"Türkçe\";s:2:\"uk\";s:20:\"Українська\";s:2:\"vi\";s:14:\"Tiếng Việt\";s:2:\"cy\";s:7:\"Cymraeg\";}', 'yes'),
(1031, 'wpglobus_option_en_language_names', 'a:34:{s:2:\"ar\";s:6:\"Arabic\";s:2:\"en\";s:7:\"English\";s:2:\"au\";s:12:\"English (AU)\";s:2:\"ca\";s:12:\"English (CA)\";s:2:\"gb\";s:12:\"English (UK)\";s:2:\"zh\";s:7:\"Chinese\";s:2:\"tw\";s:12:\"Chinese (TW)\";s:2:\"da\";s:6:\"Danish\";s:2:\"nl\";s:5:\"Dutch\";s:2:\"gl\";s:8:\"Galician\";s:2:\"de\";s:6:\"German\";s:2:\"fi\";s:7:\"Finnish\";s:2:\"fr\";s:6:\"French\";s:2:\"qc\";s:11:\"French (CA)\";s:2:\"he\";s:6:\"Hebrew\";s:2:\"hi\";s:5:\"Hindi\";s:2:\"hu\";s:9:\"Hungarian\";s:2:\"it\";s:7:\"Italian\";s:2:\"ja\";s:8:\"Japanese\";s:2:\"ko\";s:6:\"Korean\";s:2:\"no\";s:9:\"Norwegian\";s:2:\"fa\";s:7:\"Persian\";s:2:\"pl\";s:6:\"Polish\";s:2:\"pt\";s:10:\"Portuguese\";s:2:\"br\";s:15:\"Portuguese (BR)\";s:2:\"ro\";s:8:\"Romanian\";s:2:\"ru\";s:7:\"Russian\";s:2:\"es\";s:7:\"Spanish\";s:2:\"mx\";s:12:\"Spanish (MX)\";s:2:\"sv\";s:7:\"Swedish\";s:2:\"tr\";s:7:\"Turkish\";s:2:\"uk\";s:9:\"Ukrainian\";s:2:\"vi\";s:10:\"Vietnamese\";s:2:\"cy\";s:5:\"Welsh\";}', 'yes'),
(1032, 'wpglobus_option_locale', 'a:34:{s:2:\"ar\";s:2:\"ar\";s:2:\"en\";s:5:\"en_US\";s:2:\"au\";s:5:\"en_AU\";s:2:\"ca\";s:5:\"en_CA\";s:2:\"gb\";s:5:\"en_GB\";s:2:\"zh\";s:5:\"zh_CN\";s:2:\"tw\";s:5:\"zh_TW\";s:2:\"da\";s:5:\"da_DK\";s:2:\"nl\";s:5:\"nl_NL\";s:2:\"gl\";s:5:\"gl_ES\";s:2:\"de\";s:5:\"de_DE\";s:2:\"fi\";s:2:\"fi\";s:2:\"fr\";s:5:\"fr_FR\";s:2:\"qc\";s:5:\"fr_CA\";s:2:\"he\";s:5:\"he_IL\";s:2:\"hi\";s:5:\"hi_IN\";s:2:\"hu\";s:5:\"hu_HU\";s:2:\"it\";s:5:\"it_IT\";s:2:\"ja\";s:2:\"ja\";s:2:\"ko\";s:5:\"ko_KR\";s:2:\"no\";s:5:\"nb_NO\";s:2:\"fa\";s:5:\"fa_IR\";s:2:\"pl\";s:5:\"pl_PL\";s:2:\"pt\";s:5:\"pt_PT\";s:2:\"br\";s:5:\"pt_BR\";s:2:\"ro\";s:5:\"ro_RO\";s:2:\"ru\";s:5:\"ru_RU\";s:2:\"es\";s:5:\"es_ES\";s:2:\"mx\";s:5:\"es_MX\";s:2:\"sv\";s:5:\"sv_SE\";s:2:\"tr\";s:5:\"tr_TR\";s:2:\"uk\";s:2:\"uk\";s:2:\"vi\";s:2:\"vi\";s:2:\"cy\";s:2:\"cy\";}', 'yes'),
(1033, 'wpglobus_option_flags', 'a:34:{s:2:\"ar\";s:8:\"arle.png\";s:2:\"en\";s:6:\"us.png\";s:2:\"au\";s:6:\"au.png\";s:2:\"ca\";s:6:\"ca.png\";s:2:\"gb\";s:6:\"uk.png\";s:2:\"zh\";s:6:\"cn.png\";s:2:\"tw\";s:6:\"mm.png\";s:2:\"da\";s:6:\"dk.png\";s:2:\"nl\";s:6:\"nl.png\";s:2:\"gl\";s:10:\"galego.png\";s:2:\"de\";s:6:\"de.png\";s:2:\"fi\";s:6:\"fi.png\";s:2:\"fr\";s:6:\"fr.png\";s:2:\"qc\";s:9:\"fr_CA.png\";s:2:\"he\";s:6:\"il.png\";s:2:\"hi\";s:6:\"in.png\";s:2:\"hu\";s:6:\"hu.png\";s:2:\"it\";s:6:\"it.png\";s:2:\"ja\";s:6:\"jp.png\";s:2:\"ko\";s:6:\"kr.png\";s:2:\"no\";s:6:\"no.png\";s:2:\"fa\";s:6:\"ir.png\";s:2:\"pl\";s:6:\"pl.png\";s:2:\"pt\";s:6:\"pt.png\";s:2:\"br\";s:6:\"br.png\";s:2:\"ro\";s:6:\"ro.png\";s:2:\"ru\";s:6:\"ru.png\";s:2:\"es\";s:6:\"es.png\";s:2:\"mx\";s:6:\"mx.png\";s:2:\"sv\";s:6:\"se.png\";s:2:\"tr\";s:6:\"tr.png\";s:2:\"uk\";s:6:\"ua.png\";s:2:\"vi\";s:6:\"vn.png\";s:2:\"cy\";s:6:\"cy.png\";}', 'yes'),
(1034, 'wpglobus_option_versioning', 'a:1:{s:15:\"current_version\";s:5:\"2.4.9\";}', 'yes'),
(1037, 'widget_wpglobus', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1044, '_transient_timeout_wc_addons_sections', '1592382088', 'no'),
(1045, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:15:\"free-extensions\";s:5:\"label\";s:4:\"Free\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(1046, '_transient_timeout_wc_addons_featured', '1592382090', 'no'),
(1047, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-bundles/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/composite-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-vendors/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:125:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/chained-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:124:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-notices/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:104:\"https://woocommerce.com/storefront/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"WooCommerce + Zapier\";s:11:\"description\";s:89:\"Save time and increase productivity by connecting your store to more than 1000+ services.\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:121:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:6:\"button\";s:9:\"From: $59\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/kiss-metrics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/mixpanel/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:116:\"https://woocommerce.com/products/smart-coupons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:114:\"https://woocommerce.com/products/automatewoo/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"AutomateWoo\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:121:\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:27:\"automatewoo/automatewoo.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/google-product-feed/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/store-credit/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/facebook/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(1063, 'action_scheduler_migration_status', 'complete', 'yes'),
(1065, 'weglot_version', '3.1.7', 'yes'),
(1066, 'widget_weglot-translate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1067, 'weglot-translate-v3', 'a:7:{s:18:\"has_first_settings\";b:0;s:23:\"show_box_first_settings\";b:0;s:13:\"menu_switcher\";b:0;s:11:\"custom_urls\";a:0:{}s:8:\"flag_css\";s:0:\"\";s:16:\"active_wc_reload\";b:1;s:7:\"allowed\";b:1;}', 'yes'),
(1069, 'weglot-translate-api_key_private', 'wg_2a34d269053096a5d1105b0c5c1b8a1b9', 'yes'),
(1070, 'weglot-translate-api_key', 'wg_a0f045a7a3de2ead02f1ae46e66865aa8', 'yes'),
(1106, 'new_admin_email', 'me.karbal@gmail.com', 'yes'),
(1130, '_site_transient_timeout_browser_dd6b7b4ad4631f4c0d7e12a5abb0ce97', '1592385735', 'no'),
(1131, '_site_transient_browser_dd6b7b4ad4631f4c0d7e12a5abb0ce97', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"77.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1151, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(1174, '_transient_timeout_wc_products_onsale', '1594374638', 'no'),
(1175, '_transient_wc_products_onsale', 'a:6:{i:0;i:12;i:1;i:14;i:2;i:15;i:3;i:16;i:4;i:17;i:5;i:53;}', 'no'),
(1191, '_transient_timeout_wc_low_stock_count', '1594374915', 'no'),
(1192, '_transient_wc_low_stock_count', '0', 'no'),
(1193, '_transient_timeout_wc_outofstock_count', '1594374915', 'no'),
(1194, '_transient_wc_outofstock_count', '0', 'no'),
(1203, 'wc_facebook_feed_url_secret', '245cb99214c948d5a9293a396bdeff15', 'yes'),
(1305, 'ctcc_more_info_page', '77', 'yes'),
(1306, 'ctcc_options_settings', 'a:6:{s:7:\"closure\";s:5:\"click\";s:8:\"duration\";s:2:\"60\";s:13:\"scroll_height\";s:3:\"197\";s:13:\"cookie_expiry\";s:2:\"30\";s:14:\"cookie_version\";s:1:\"1\";s:25:\"wisdom_registered_setting\";i:1;}', 'yes'),
(1307, 'ctcc_content_settings', 'a:7:{s:12:\"heading_text\";s:7:\"Cookies\";s:17:\"notification_text\";s:44:\"This site uses cookies: you should accept it\";s:14:\"more_info_text\";s:14:\"Find out more.\";s:14:\"more_info_page\";s:2:\"77\";s:13:\"more_info_url\";s:0:\"\";s:16:\"more_info_target\";s:6:\"_blank\";s:11:\"accept_text\";s:12:\"Okay, thanks\";}', 'yes'),
(1308, 'ctcc_styles_settings', 'a:12:{s:8:\"position\";s:10:\"bottom-bar\";s:15:\"container_class\";s:0:\"\";s:14:\"enqueue_styles\";s:1:\"1\";s:15:\"rounded_corners\";s:1:\"1\";s:11:\"drop_shadow\";s:1:\"1\";s:24:\"display_accept_with_text\";s:1:\"1\";s:10:\"text_color\";s:4:\"#ddd\";s:8:\"bg_color\";s:7:\"#464646\";s:10:\"link_color\";s:7:\"#1e73be\";s:12:\"button_color\";s:0:\"\";s:15:\"button_bg_color\";s:0:\"\";s:11:\"flat_button\";s:1:\"1\";}', 'yes'),
(1426, '_transient_timeout_wc_report_orders_stats_5a80cd433c2289014ab85de7f09d23f3', '1592404781', 'no'),
(1427, '_transient_timeout_wc_report_orders_stats_124572fef2bba2056bb60f6e01167530', '1592404781', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1428, '_transient_wc_report_orders_stats_5a80cd433c2289014ab85de7f09d23f3', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":10:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-06-01\";s:10:\"date_start\";s:19:\"2019-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-06-02\";s:10:\"date_start\";s:19:\"2019-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-06-03\";s:10:\"date_start\";s:19:\"2019-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-06-04\";s:10:\"date_start\";s:19:\"2019-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-06-05\";s:10:\"date_start\";s:19:\"2019-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-06-06\";s:10:\"date_start\";s:19:\"2019-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-06-07\";s:10:\"date_start\";s:19:\"2019-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-06-08\";s:10:\"date_start\";s:19:\"2019-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-06-09\";s:10:\"date_start\";s:19:\"2019-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-06-10\";s:10:\"date_start\";s:19:\"2019-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2019-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1429, '_transient_wc_report_orders_stats_124572fef2bba2056bb60f6e01167530', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":10:{s:11:\"gross_sales\";d:304;s:7:\"refunds\";d:0;s:7:\"coupons\";d:12;s:11:\"net_revenue\";d:292;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:292;s:8:\"products\";i:4;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:292;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:292;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:292;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:11:\"gross_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":8:{s:11:\"gross_sales\";d:12;s:7:\"refunds\";d:0;s:7:\"coupons\";d:12;s:11:\"net_revenue\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"total_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1430, '_transient_timeout_wc_report_orders_stats_e161fc392301145ad98bb42baa7297ee', '1592404781', 'no'),
(1431, '_transient_wc_report_orders_stats_e161fc392301145ad98bb42baa7297ee', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:4;s:14:\"num_items_sold\";i:11;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:2.75;s:15:\"avg_order_value\";d:73;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:1;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:3;s:14:\"num_items_sold\";i:10;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:3.3333;s:15:\"avg_order_value\";d:97.33333333333333;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1432, '_transient_timeout_wc_report_orders_stats_6387e9b954b8e52d3256ab4fc0f3c3a9', '1592404782', 'no'),
(1433, '_transient_wc_report_orders_stats_6387e9b954b8e52d3256ab4fc0f3c3a9', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:4;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"refunds\";d:0;s:7:\"coupons\";d:12;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:8:\"products\";i:4;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:3;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:12:\"orders_count\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":9:{s:12:\"orders_count\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"refunds\";d:0;s:7:\"coupons\";d:12;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1435, '_transient_timeout_wc_report_orders_stats_91d1da6e7fc79575b695dc64d6f310a5', '1592404801', 'no'),
(1436, '_transient_wc_report_orders_stats_91d1da6e7fc79575b695dc64d6f310a5', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:4;s:14:\"num_items_sold\";i:11;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:2.75;s:15:\"avg_order_value\";d:73;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:1;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:3;s:14:\"num_items_sold\";i:10;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:3.3333;s:15:\"avg_order_value\";d:97.33333333333333;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1437, '_transient_timeout_wc_report_orders_stats_9eed7f1d7e5a80e48c2846aa8108b55c', '1592404804', 'no'),
(1438, '_transient_wc_report_orders_stats_9eed7f1d7e5a80e48c2846aa8108b55c', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:4;s:14:\"num_items_sold\";i:11;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:2.75;s:15:\"avg_order_value\";d:73;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:3;s:14:\"num_items_sold\";i:10;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:3.3333;s:15:\"avg_order_value\";d:97.33333333333333;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:1;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1439, '_transient_timeout_wc_report_orders_stats_1897eab738efdc73f2b58c9cbe6a54b0', '1592404805', 'no'),
(1440, '_transient_wc_report_orders_stats_1897eab738efdc73f2b58c9cbe6a54b0', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:4;s:14:\"num_items_sold\";i:11;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:2.75;s:15:\"avg_order_value\";d:73;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:3;s:14:\"num_items_sold\";i:10;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:3.3333;s:15:\"avg_order_value\";d:97.33333333333333;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:1;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1441, '_transient_timeout_wc_report_orders_stats_81f4a5d4be5b0964de2428f245fb3510', '1592404806', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1442, '_transient_wc_report_orders_stats_81f4a5d4be5b0964de2428f245fb3510', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:4;s:14:\"num_items_sold\";i:11;s:11:\"gross_sales\";d:304;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:2.75;s:15:\"avg_order_value\";d:73;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:3;s:14:\"num_items_sold\";i:10;s:11:\"gross_sales\";d:292;s:11:\"total_sales\";d:292;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:292;s:19:\"avg_items_per_order\";d:3.3333;s:15:\"avg_order_value\";d:97.33333333333333;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:2;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:1;s:14:\"num_items_sold\";i:1;s:11:\"gross_sales\";d:12;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:12;s:13:\"coupons_count\";i:1;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:1;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:1;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1443, '_transient_timeout_wc_report_orders_80469ed5392266ddd08630efd3212b3b', '1592404809', 'no'),
(1444, '_transient_wc_report_orders_80469ed5392266ddd08630efd3212b3b', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:4:{i:0;a:11:{s:8:\"order_id\";i:76;s:9:\"parent_id\";i:0;s:12:\"date_created\";s:19:\"2020-06-10 11:36:29\";s:16:\"date_created_gmt\";s:19:\"2020-06-10 10:36:29\";s:6:\"status\";s:10:\"processing\";s:11:\"customer_id\";i:2;s:9:\"net_total\";d:0;s:11:\"total_sales\";d:0;s:14:\"num_items_sold\";i:1;s:13:\"customer_type\";s:9:\"returning\";s:13:\"extended_info\";a:3:{s:8:\"products\";a:1:{i:0;a:3:{s:2:\"id\";s:2:\"53\";s:4:\"name\";s:10:\"HHHHHHHHHF\";s:8:\"quantity\";s:1:\"1\";}}s:7:\"coupons\";a:1:{i:0;a:2:{s:2:\"id\";s:2:\"63\";s:4:\"code\";s:3:\"aaa\";}}s:8:\"customer\";a:12:{s:11:\"customer_id\";i:2;s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:6:\"yassir\";s:10:\"first_name\";s:3:\"yyy\";s:9:\"last_name\";s:4:\"yyyy\";s:5:\"email\";s:16:\"yassir@email.com\";s:16:\"date_last_active\";s:19:\"2020-06-10 00:00:00\";s:15:\"date_registered\";s:19:\"2020-06-08 13:08:59\";s:7:\"country\";s:2:\"MA\";s:8:\"postcode\";s:5:\"46000\";s:4:\"city\";s:4:\"SAFI\";s:5:\"state\";s:6:\"FSMLFS\";}}}i:1;a:11:{s:8:\"order_id\";i:57;s:9:\"parent_id\";i:0;s:12:\"date_created\";s:19:\"2020-06-08 15:30:22\";s:16:\"date_created_gmt\";s:19:\"2020-06-08 14:30:22\";s:6:\"status\";s:7:\"on-hold\";s:11:\"customer_id\";i:1;s:9:\"net_total\";d:60;s:11:\"total_sales\";d:60;s:14:\"num_items_sold\";i:5;s:13:\"customer_type\";s:9:\"returning\";s:13:\"extended_info\";a:3:{s:8:\"products\";a:1:{i:0;a:3:{s:2:\"id\";s:2:\"53\";s:4:\"name\";s:10:\"HHHHHHHHHF\";s:8:\"quantity\";s:1:\"5\";}}s:7:\"coupons\";a:0:{}s:8:\"customer\";a:12:{s:11:\"customer_id\";i:1;s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:9:\"me.karbal\";s:10:\"first_name\";s:4:\"hfhf\";s:9:\"last_name\";s:6:\"hjfshj\";s:5:\"email\";s:19:\"me.karbal@gmail.com\";s:16:\"date_last_active\";s:19:\"2020-06-10 00:00:00\";s:15:\"date_registered\";s:19:\"2020-06-08 10:09:23\";s:7:\"country\";s:2:\"MA\";s:8:\"postcode\";s:7:\"1212121\";s:4:\"city\";s:4:\"saaa\";s:5:\"state\";s:4:\"jvhg\";}}}i:2;a:11:{s:8:\"order_id\";i:52;s:9:\"parent_id\";i:0;s:12:\"date_created\";s:19:\"2020-06-08 14:47:56\";s:16:\"date_created_gmt\";s:19:\"2020-06-08 13:47:56\";s:6:\"status\";s:10:\"processing\";s:11:\"customer_id\";i:2;s:9:\"net_total\";d:16;s:11:\"total_sales\";d:16;s:14:\"num_items_sold\";i:1;s:13:\"customer_type\";s:3:\"new\";s:13:\"extended_info\";a:3:{s:8:\"products\";a:1:{i:0;a:3:{s:2:\"id\";s:2:\"16\";s:4:\"name\";s:3:\"Cap\";s:8:\"quantity\";s:1:\"1\";}}s:7:\"coupons\";a:0:{}s:8:\"customer\";a:12:{s:11:\"customer_id\";i:2;s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:6:\"yassir\";s:10:\"first_name\";s:3:\"yyy\";s:9:\"last_name\";s:4:\"yyyy\";s:5:\"email\";s:16:\"yassir@email.com\";s:16:\"date_last_active\";s:19:\"2020-06-10 00:00:00\";s:15:\"date_registered\";s:19:\"2020-06-08 13:08:59\";s:7:\"country\";s:2:\"MA\";s:8:\"postcode\";s:5:\"46000\";s:4:\"city\";s:4:\"SAFI\";s:5:\"state\";s:6:\"FSMLFS\";}}}i:3;a:11:{s:8:\"order_id\";i:51;s:9:\"parent_id\";i:0;s:12:\"date_created\";s:19:\"2020-06-08 14:03:18\";s:16:\"date_created_gmt\";s:19:\"2020-06-08 13:03:18\";s:6:\"status\";s:9:\"completed\";s:11:\"customer_id\";i:1;s:9:\"net_total\";d:216;s:11:\"total_sales\";d:216;s:14:\"num_items_sold\";i:4;s:13:\"customer_type\";s:3:\"new\";s:13:\"extended_info\";a:3:{s:8:\"products\";a:2:{i:0;a:3:{s:2:\"id\";s:2:\"14\";s:4:\"name\";s:6:\"Beanie\";s:8:\"quantity\";s:1:\"2\";}i:1;a:3:{s:2:\"id\";s:2:\"17\";s:4:\"name\";s:10:\"Sunglasses\";s:8:\"quantity\";s:1:\"2\";}}s:7:\"coupons\";a:0:{}s:8:\"customer\";a:12:{s:11:\"customer_id\";i:1;s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:9:\"me.karbal\";s:10:\"first_name\";s:4:\"hfhf\";s:9:\"last_name\";s:6:\"hjfshj\";s:5:\"email\";s:19:\"me.karbal@gmail.com\";s:16:\"date_last_active\";s:19:\"2020-06-10 00:00:00\";s:15:\"date_registered\";s:19:\"2020-06-08 10:09:23\";s:7:\"country\";s:2:\"MA\";s:8:\"postcode\";s:7:\"1212121\";s:4:\"city\";s:4:\"saaa\";s:5:\"state\";s:4:\"jvhg\";}}}}s:5:\"total\";i:4;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1445, '_transient_timeout_wc_report_orders_stats_e20ed6385745a6b8f2bc3940372c1324', '1592404809', 'no'),
(1446, '_transient_wc_report_orders_stats_e20ed6385745a6b8f2bc3940372c1324', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:4;s:11:\"net_revenue\";d:292;s:15:\"avg_order_value\";d:73;s:19:\"avg_items_per_order\";d:2.75;s:8:\"products\";i:4;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:3;s:11:\"net_revenue\";d:292;s:15:\"avg_order_value\";d:97.33333333333333;s:19:\"avg_items_per_order\";d:3.3333;s:13:\"coupons_count\";i:1;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:1;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:1;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1447, '_transient_timeout_wc_report_orders_stats_54d8c86f870e7deade575cd6d8db9dd2', '1592404809', 'no'),
(1448, '_transient_wc_report_orders_stats_54d8c86f870e7deade575cd6d8db9dd2', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-06-01\";s:10:\"date_start\";s:19:\"2019-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-06-02\";s:10:\"date_start\";s:19:\"2019-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-06-03\";s:10:\"date_start\";s:19:\"2019-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-06-04\";s:10:\"date_start\";s:19:\"2019-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-06-05\";s:10:\"date_start\";s:19:\"2019-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-06-06\";s:10:\"date_start\";s:19:\"2019-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-06-07\";s:10:\"date_start\";s:19:\"2019-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-06-08\";s:10:\"date_start\";s:19:\"2019-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-06-09\";s:10:\"date_start\";s:19:\"2019-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-06-10\";s:10:\"date_start\";s:19:\"2019-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2019-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:12:\"orders_count\";i:0;s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:19:\"avg_items_per_order\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1449, '_transient_timeout_wc_report_orders_stats_3a404533a11f2332a9f342f67028dffa', '1592404809', 'no'),
(1450, '_transient_wc_report_orders_stats_3a404533a11f2332a9f342f67028dffa', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":8:{s:12:\"orders_count\";i:4;s:17:\"num_new_customers\";i:2;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:11;s:13:\"coupons_count\";i:1;s:11:\"net_revenue\";d:292;s:8:\"products\";i:4;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:3;s:17:\"num_new_customers\";i:2;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:10;s:13:\"coupons_count\";i:1;s:11:\"net_revenue\";d:292;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:0;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:0;s:14:\"num_items_sold\";i:0;s:13:\"coupons_count\";i:0;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":7:{s:12:\"orders_count\";i:1;s:17:\"num_new_customers\";i:0;s:23:\"num_returning_customers\";i:1;s:14:\"num_items_sold\";i:1;s:13:\"coupons_count\";i:1;s:11:\"net_revenue\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1451, '_transient_timeout_wc_report_categories_0f3763c11fa283d5c0c204471e902a88', '1592404816', 'no'),
(1452, '_transient_wc_report_categories_0f3763c11fa283d5c0c204471e902a88', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:1:{i:0;a:6:{s:11:\"category_id\";i:15;s:10:\"items_sold\";i:6;s:11:\"net_revenue\";d:60;s:12:\"orders_count\";i:2;s:14:\"products_count\";i:1;s:13:\"extended_info\";C:11:\"ArrayObject\":53:{x:i:0;a:1:{s:4:\"name\";s:13:\"Uncategorized\";};m:a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1453, '_transient_timeout_wc_report_coupons_stats_959bb3f73209ca13255442d05ea061a7', '1592404828', 'no'),
(1454, '_transient_timeout_wc_report_coupons_stats_8b5cf24c6f78f566307ad68372bcf580', '1592404828', 'no'),
(1455, '_transient_timeout_wc_report_coupons_stats_20e75f5d9fe1e7705b761e988df4819a', '1592404828', 'no'),
(1456, '_transient_timeout_wc_report_coupons_2890079db14b2332e204e3511b2a665d', '1592404828', 'no'),
(1457, '_transient_wc_report_coupons_stats_959bb3f73209ca13255442d05ea061a7', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:1;s:12:\"orders_count\";i:1;s:6:\"amount\";d:12;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:13:\"coupons_count\";i:1;s:12:\"orders_count\";i:1;s:6:\"amount\";d:12;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1458, '_transient_wc_report_coupons_stats_8b5cf24c6f78f566307ad68372bcf580', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-06-01\";s:10:\"date_start\";s:19:\"2019-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-06-02\";s:10:\"date_start\";s:19:\"2019-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-06-03\";s:10:\"date_start\";s:19:\"2019-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-06-04\";s:10:\"date_start\";s:19:\"2019-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-06-05\";s:10:\"date_start\";s:19:\"2019-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-06-06\";s:10:\"date_start\";s:19:\"2019-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-06-07\";s:10:\"date_start\";s:19:\"2019-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-06-08\";s:10:\"date_start\";s:19:\"2019-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-06-09\";s:10:\"date_start\";s:19:\"2019-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-06-10\";s:10:\"date_start\";s:19:\"2019-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2019-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1459, '_transient_wc_report_coupons_stats_20e75f5d9fe1e7705b761e988df4819a', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:1;s:6:\"amount\";d:12;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:0;s:6:\"amount\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:12:\"orders_count\";i:1;s:6:\"amount\";d:12;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1460, '_transient_wc_report_coupons_2890079db14b2332e204e3511b2a665d', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":4:{s:4:\"data\";a:1:{i:0;a:4:{s:9:\"coupon_id\";i:63;s:6:\"amount\";d:12;s:12:\"orders_count\";i:1;s:13:\"extended_info\";a:6:{s:4:\"code\";s:3:\"aaa\";s:12:\"date_created\";s:19:\"2020-06-10T10:24:30\";s:16:\"date_created_gmt\";s:19:\"2020-06-10T10:24:30\";s:12:\"date_expires\";s:0:\"\";s:16:\"date_expires_gmt\";s:0:\"\";s:13:\"discount_type\";s:10:\"fixed_cart\";}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1461, '_transient_timeout_wc_report_taxes_stats_471b521cdca03582e4ee59a1fd7837ac', '1592404836', 'no'),
(1462, '_transient_timeout_wc_report_taxes_stats_2da5d3988f88037d65a939966e9b93a0', '1592404836', 'no'),
(1463, '_transient_timeout_wc_report_taxes_stats_deb7048c46ecd5cf1bcbe61991ae010d', '1592404836', 'no'),
(1464, '_transient_wc_report_taxes_stats_471b521cdca03582e4ee59a1fd7837ac', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-06-01\";s:10:\"date_start\";s:19:\"2019-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-06-02\";s:10:\"date_start\";s:19:\"2019-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-06-03\";s:10:\"date_start\";s:19:\"2019-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-06-04\";s:10:\"date_start\";s:19:\"2019-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-06-05\";s:10:\"date_start\";s:19:\"2019-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-06-06\";s:10:\"date_start\";s:19:\"2019-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-06-07\";s:10:\"date_start\";s:19:\"2019-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-06-08\";s:10:\"date_start\";s:19:\"2019-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-06-09\";s:10:\"date_start\";s:19:\"2019-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-06-10\";s:10:\"date_start\";s:19:\"2019-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2019-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1465, '_transient_wc_report_taxes_stats_2da5d3988f88037d65a939966e9b93a0', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1466, '_transient_wc_report_taxes_stats_deb7048c46ecd5cf1bcbe61991ae010d', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1467, '_transient_timeout_wc_report_downloads_stats_d05a454a83537650e23e273b90a1989c', '1592404838', 'no'),
(1468, '_transient_timeout_wc_report_downloads_stats_9c6eb0a00a25763bccdcd9c0c685d076', '1592404838', 'no'),
(1469, '_transient_wc_report_downloads_stats_d05a454a83537650e23e273b90a1989c', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-06-01\";s:10:\"date_start\";s:19:\"2019-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-06-02\";s:10:\"date_start\";s:19:\"2019-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-06-03\";s:10:\"date_start\";s:19:\"2019-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-06-04\";s:10:\"date_start\";s:19:\"2019-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-06-05\";s:10:\"date_start\";s:19:\"2019-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-06-06\";s:10:\"date_start\";s:19:\"2019-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-06-07\";s:10:\"date_start\";s:19:\"2019-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-06-08\";s:10:\"date_start\";s:19:\"2019-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-06-09\";s:10:\"date_start\";s:19:\"2019-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-06-10\";s:10:\"date_start\";s:19:\"2019-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2019-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1470, '_transient_wc_report_downloads_stats_9c6eb0a00a25763bccdcd9c0c685d076', 'a:2:{s:7:\"version\";s:10:\"1591785416\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-06-01\";s:10:\"date_start\";s:19:\"2020-06-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-01 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-06-02\";s:10:\"date_start\";s:19:\"2020-06-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-01 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-02 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-06-03\";s:10:\"date_start\";s:19:\"2020-06-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-02 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-03 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-06-04\";s:10:\"date_start\";s:19:\"2020-06-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-03 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-04 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-06-05\";s:10:\"date_start\";s:19:\"2020-06-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-04 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-05 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-06-06\";s:10:\"date_start\";s:19:\"2020-06-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-05 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-06 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-06-07\";s:10:\"date_start\";s:19:\"2020-06-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-06 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-07 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-06-08\";s:10:\"date_start\";s:19:\"2020-06-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-07 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-08 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-06-09\";s:10:\"date_start\";s:19:\"2020-06-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-08 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-09 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-06-10\";s:10:\"date_start\";s:19:\"2020-06-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-06-09 23:00:00\";s:8:\"date_end\";s:19:\"2020-06-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-06-10 22:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1471, '_transient_timeout_wc_admin_stock_count_lowstock', '1594392043', 'no'),
(1472, '_transient_wc_admin_stock_count_lowstock', '0', 'no'),
(1473, '_transient_timeout_wc_admin_stock_count_instock', '1594392043', 'no'),
(1474, '_transient_wc_admin_stock_count_instock', '24', 'no'),
(1475, '_transient_timeout_wc_admin_stock_count_outofstock', '1594392043', 'no'),
(1476, '_transient_wc_admin_stock_count_outofstock', '2', 'no'),
(1477, '_transient_timeout_wc_admin_stock_count_onbackorder', '1594392043', 'no'),
(1478, '_transient_wc_admin_stock_count_onbackorder', '0', 'no'),
(1479, '_transient_timeout_wc_admin_product_count', '1594392044', 'no'),
(1480, '_transient_wc_admin_product_count', '7', 'no'),
(1482, 'woocommerce_excluded_report_order_statuses', 'a:2:{i:0;s:7:\"pending\";i:1;s:6:\"failed\";}', 'yes'),
(1483, 'woocommerce_actionable_order_statuses', 'a:2:{i:0;s:10:\"processing\";i:1;s:7:\"on-hold\";}', 'yes'),
(1484, 'woocommerce_default_date_range', 'period=month&amp;compare=previous_year', 'yes'),
(1570, '_transient_timeout_wc_order_80_needs_processing', '1591890182', 'no'),
(1571, '_transient_wc_order_80_needs_processing', '1', 'no'),
(1572, '_transient_is_multi_author', '0', 'yes'),
(1573, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1574, '_transient_timeout_jetpack_idc_allowed', '1591878193', 'no'),
(1575, '_transient_jetpack_idc_allowed', '1', 'no'),
(1576, '_site_transient_timeout_available_translations', '1591885400', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1577, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 13:46:18\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:41:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-02 09:15:25\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-05-17 13:16:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 06:27:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 15:15:09\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-20 09:36:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:48:51\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-17 13:49:05\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.4.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:20:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 08:19:53\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-19 19:54:21\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 12:34:15\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-08 05:34:29\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:03:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:33:04\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:28:24\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-28 09:08:47\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-04 01:49:30\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 19:01:12\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-05 16:15:41\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-31 09:30:36\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 23:14:28\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 19:45:47\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 22:04:10\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 17:57:39\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 08:36:50\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 10:30:15\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-01 12:25:22\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 21:59:14\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 21:16:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 09:42:01\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-18 15:51:49\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-05 20:35:18\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 20:45:26\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-03 10:58:08\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 21:40:48\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 12:52:04\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 04:27:22\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-24 12:23:59\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-06 14:36:42\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-26 19:43:01\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-10 19:01:41\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 08:33:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-07 07:33:40\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 06:38:25\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-15 10:13:20\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-03 12:39:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 09:19:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-22 23:19:07\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-09 14:02:07\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-30 14:51:08\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-08 11:26:21\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-27 17:42:38\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-29 15:07:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-01 01:42:23\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-06 09:38:51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-06-04 18:21:20\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 19:27:37\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 01:47:18\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-03-30 20:54:59\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-05-23 06:34:34\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(1581, '_transient_timeout_jetpack_https_test', '1591961008', 'no'),
(1582, '_transient_jetpack_https_test', '1', 'no'),
(1584, '_transient_timeout__woocommerce_helper_subscriptions', '1591875510', 'no'),
(1585, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1586, '_site_transient_timeout_theme_roots', '1591876410', 'no'),
(1587, '_site_transient_theme_roots', 'a:6:{s:8:\"boutique\";s:7:\"/themes\";s:4:\"deli\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1588, '_transient_timeout__woocommerce_helper_updates', '1591917810', 'no');
INSERT INTO `ecomm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1589, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1591874610;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1592, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.4.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1591874619;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1593, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1591874626;s:7:\"checked\";a:6:{s:8:\"boutique\";s:6:\"2.0.17\";s:4:\"deli\";s:6:\"2.0.15\";s:10:\"storefront\";s:5:\"2.5.7\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:6:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:8:\"boutique\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"2.0.17\";s:7:\"updated\";s:19:\"2018-11-27 08:04:07\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/theme/boutique/2.0.17/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:4:\"deli\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"2.0.15\";s:7:\"updated\";s:19:\"2020-04-13 12:06:25\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/theme/deli/2.0.15/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:10:\"storefront\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"2.5.7\";s:7:\"updated\";s:19:\"2020-05-05 15:20:46\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/storefront/2.5.7/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2020-03-31 21:20:04\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.5/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"2.3\";s:7:\"updated\";s:19:\"2020-03-31 21:25:42\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.3/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2020-04-05 16:11:52\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.2/en_GB.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(1594, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1591874628;s:7:\"checked\";a:10:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.11.4\";s:39:\"uk-cookie-consent/uk-cookie-consent.php\";s:6:\"2.3.15\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:5:\"8.6.1\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.4.0\";s:17:\"weglot/weglot.php\";s:5:\"3.1.7\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.2.0\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.23.0\";s:21:\"wpglobus/wpglobus.php\";s:5:\"2.4.9\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.23.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.23.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:7:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.1.5\";s:7:\"updated\";s:19:\"2020-03-17 21:00:13\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.5/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"1.11.4\";s:7:\"updated\";s:19:\"2020-05-21 16:32:59\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/translation/plugin/facebook-for-woocommerce/1.11.4/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:17:\"uk-cookie-consent\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:6:\"2.3.15\";s:7:\"updated\";s:19:\"2020-04-15 19:29:34\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/uk-cookie-consent/2.3.15/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-03-20 19:24:06\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"8.6.1\";s:7:\"updated\";s:19:\"2020-06-02 22:26:33\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/jetpack/8.6.1/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:6:\"weglot\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"3.1.7\";s:7:\"updated\";s:19:\"2018-10-16 23:39:37\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/weglot/3.1.7/en_GB.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.2.0\";s:7:\"updated\";s:19:\"2020-06-11 08:23:59\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.2.0/en_GB.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:8:{s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.11.4\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.11.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:39:\"uk-cookie-consent/uk-cookie-consent.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/uk-cookie-consent\";s:4:\"slug\";s:17:\"uk-cookie-consent\";s:6:\"plugin\";s:39:\"uk-cookie-consent/uk-cookie-consent.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/uk-cookie-consent/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/uk-cookie-consent.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/uk-cookie-consent/assets/icon-256x256.png?rev=1326394\";s:2:\"1x\";s:70:\"https://ps.w.org/uk-cookie-consent/assets/icon-128x128.png?rev=1326394\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/uk-cookie-consent/assets/banner-1544x500.jpg?rev=1326394\";s:2:\"1x\";s:72:\"https://ps.w.org/uk-cookie-consent/assets/banner-772x250.jpg?rev=1326394\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"8.6.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.8.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"weglot/weglot.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/weglot\";s:4:\"slug\";s:6:\"weglot\";s:6:\"plugin\";s:17:\"weglot/weglot.php\";s:11:\"new_version\";s:5:\"3.1.7\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/weglot/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/weglot.3.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/weglot/assets/icon-256x256.png?rev=2186774\";s:2:\"1x\";s:59:\"https://ps.w.org/weglot/assets/icon-128x128.png?rev=2186774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/weglot/assets/banner-1544x500.png?rev=2186774\";s:2:\"1x\";s:61:\"https://ps.w.org/weglot/assets/banner-772x250.png?rev=2186774\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.2.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"wpglobus/wpglobus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/wpglobus\";s:4:\"slug\";s:8:\"wpglobus\";s:6:\"plugin\";s:21:\"wpglobus/wpglobus.php\";s:11:\"new_version\";s:5:\"2.4.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/wpglobus/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/wpglobus.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/wpglobus/assets/icon-256x256.png?rev=1069705\";s:2:\"1x\";s:61:\"https://ps.w.org/wpglobus/assets/icon-128x128.png?rev=1069705\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/wpglobus/assets/banner-772x250.png?rev=956934\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1621, '_transient_timeout_weglot_cache_cdn', '1591877648', 'no'),
(1622, '_transient_weglot_cache_cdn', 'a:12:{s:15:\"api_key_private\";s:0:\"\";s:7:\"api_key\";s:0:\"\";s:13:\"language_from\";s:2:\"en\";s:9:\"languages\";a:0:{}s:11:\"auto_switch\";b:0;s:20:\"auto_switch_fallback\";N;s:15:\"excluded_blocks\";a:0:{}s:14:\"excluded_paths\";a:0:{}s:15:\"custom_settings\";a:7:{s:15:\"translate_email\";b:0;s:13:\"translate_amp\";b:0;s:16:\"translate_search\";b:0;s:12:\"button_style\";a:6:{s:9:\"full_name\";b:1;s:9:\"with_name\";b:1;s:11:\"is_dropdown\";b:1;s:10:\"with_flags\";b:1;s:9:\"flag_type\";s:13:\"rectangle_mat\";s:10:\"custom_css\";s:0:\"\";}s:13:\"rtl_ltr_style\";s:0:\"\";s:16:\"active_wc_reload\";b:1;s:8:\"flag_css\";s:0:\"\";}s:7:\"allowed\";b:1;s:18:\"has_first_settings\";b:1;s:23:\"show_box_first_settings\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_postmeta`
--

CREATE TABLE `ecomm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_postmeta`
--

INSERT INTO `ecomm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_sku', 'woo-vneck-tee'),
(6, 10, 'total_sales', '0'),
(7, 10, '_tax_status', 'taxable'),
(8, 10, '_tax_class', ''),
(9, 10, '_manage_stock', 'no'),
(10, 10, '_backorders', 'no'),
(11, 10, '_sold_individually', 'no'),
(12, 10, '_virtual', 'no'),
(13, 10, '_downloadable', 'no'),
(14, 10, '_download_limit', '0'),
(15, 10, '_download_expiry', '0'),
(16, 10, '_stock', NULL),
(17, 10, '_stock_status', 'outofstock'),
(18, 10, '_wc_average_rating', '0'),
(19, 10, '_wc_review_count', '0'),
(20, 10, '_product_version', '4.2.0'),
(21, 10, '_original_id', '44'),
(22, 11, '_sku', 'woo-hoodie'),
(23, 11, 'total_sales', '0'),
(24, 11, '_tax_status', 'taxable'),
(25, 11, '_tax_class', ''),
(26, 11, '_manage_stock', 'no'),
(27, 11, '_backorders', 'no'),
(28, 11, '_sold_individually', 'no'),
(29, 11, '_virtual', 'no'),
(30, 11, '_downloadable', 'no'),
(31, 11, '_download_limit', '0'),
(32, 11, '_download_expiry', '0'),
(33, 11, '_stock', NULL),
(34, 11, '_stock_status', 'outofstock'),
(35, 11, '_wc_average_rating', '0'),
(36, 11, '_wc_review_count', '0'),
(37, 11, '_product_version', '4.2.0'),
(38, 11, '_original_id', '45'),
(39, 12, '_sku', 'woo-hoodie-with-logo'),
(40, 12, 'total_sales', '0'),
(41, 12, '_tax_status', 'taxable'),
(42, 12, '_tax_class', ''),
(43, 12, '_manage_stock', 'no'),
(44, 12, '_backorders', 'no'),
(45, 12, '_sold_individually', 'no'),
(46, 12, '_virtual', 'no'),
(47, 12, '_downloadable', 'no'),
(48, 12, '_download_limit', '0'),
(49, 12, '_download_expiry', '0'),
(50, 12, '_stock', NULL),
(51, 12, '_stock_status', 'instock'),
(52, 12, '_wc_average_rating', '0'),
(53, 12, '_wc_review_count', '0'),
(54, 12, '_product_version', '4.2.0'),
(55, 12, '_original_id', '46'),
(56, 13, '_sku', 'woo-tshirt'),
(57, 13, 'total_sales', '0'),
(58, 13, '_tax_status', 'taxable'),
(59, 13, '_tax_class', ''),
(60, 13, '_manage_stock', 'no'),
(61, 13, '_backorders', 'no'),
(62, 13, '_sold_individually', 'no'),
(63, 13, '_virtual', 'no'),
(64, 13, '_downloadable', 'no'),
(65, 13, '_download_limit', '0'),
(66, 13, '_download_expiry', '0'),
(67, 13, '_stock', NULL),
(68, 13, '_stock_status', 'instock'),
(69, 13, '_wc_average_rating', '0'),
(70, 13, '_wc_review_count', '0'),
(71, 13, '_product_version', '4.2.0'),
(72, 13, '_original_id', '47'),
(73, 14, '_sku', 'woo-beanie'),
(74, 14, 'total_sales', '2'),
(75, 14, '_tax_status', 'taxable'),
(76, 14, '_tax_class', ''),
(77, 14, '_manage_stock', 'no'),
(78, 14, '_backorders', 'no'),
(79, 14, '_sold_individually', 'no'),
(80, 14, '_virtual', 'no'),
(81, 14, '_downloadable', 'no'),
(82, 14, '_download_limit', '0'),
(83, 14, '_download_expiry', '0'),
(84, 14, '_stock', NULL),
(85, 14, '_stock_status', 'instock'),
(86, 14, '_wc_average_rating', '0'),
(87, 14, '_wc_review_count', '0'),
(88, 14, '_product_version', '4.2.0'),
(89, 14, '_original_id', '48'),
(90, 15, '_sku', 'woo-belt'),
(91, 15, 'total_sales', '0'),
(92, 15, '_tax_status', 'taxable'),
(93, 15, '_tax_class', ''),
(94, 15, '_manage_stock', 'no'),
(95, 15, '_backorders', 'no'),
(96, 15, '_sold_individually', 'no'),
(97, 15, '_virtual', 'no'),
(98, 15, '_downloadable', 'no'),
(99, 15, '_download_limit', '0'),
(100, 15, '_download_expiry', '0'),
(101, 15, '_stock', NULL),
(102, 15, '_stock_status', 'instock'),
(103, 15, '_wc_average_rating', '0'),
(104, 15, '_wc_review_count', '0'),
(105, 15, '_product_version', '4.2.0'),
(106, 15, '_original_id', '58'),
(107, 16, '_sku', 'woo-cap'),
(108, 16, 'total_sales', '1'),
(109, 16, '_tax_status', 'taxable'),
(110, 16, '_tax_class', ''),
(111, 16, '_manage_stock', 'no'),
(112, 16, '_backorders', 'no'),
(113, 16, '_sold_individually', 'no'),
(114, 16, '_virtual', 'no'),
(115, 16, '_downloadable', 'no'),
(116, 16, '_download_limit', '0'),
(117, 16, '_download_expiry', '0'),
(118, 16, '_stock', NULL),
(119, 16, '_stock_status', 'instock'),
(120, 16, '_wc_average_rating', '0'),
(121, 16, '_wc_review_count', '0'),
(122, 16, '_product_version', '4.2.0'),
(123, 16, '_original_id', '60'),
(124, 17, '_sku', 'woo-sunglasses'),
(125, 17, 'total_sales', '3'),
(126, 17, '_tax_status', 'taxable'),
(127, 17, '_tax_class', ''),
(128, 17, '_manage_stock', 'no'),
(129, 17, '_backorders', 'no'),
(130, 17, '_sold_individually', 'no'),
(131, 17, '_virtual', 'no'),
(132, 17, '_downloadable', 'no'),
(133, 17, '_download_limit', '0'),
(134, 17, '_download_expiry', '0'),
(135, 17, '_stock', NULL),
(136, 17, '_stock_status', 'instock'),
(137, 17, '_wc_average_rating', '0'),
(138, 17, '_wc_review_count', '0'),
(139, 17, '_product_version', '4.2.0'),
(140, 17, '_original_id', '62'),
(141, 18, '_sku', 'woo-hoodie-with-pocket'),
(142, 18, 'total_sales', '0'),
(143, 18, '_tax_status', 'taxable'),
(144, 18, '_tax_class', ''),
(145, 18, '_manage_stock', 'no'),
(146, 18, '_backorders', 'no'),
(147, 18, '_sold_individually', 'no'),
(148, 18, '_virtual', 'no'),
(149, 18, '_downloadable', 'no'),
(150, 18, '_download_limit', '-1'),
(151, 18, '_download_expiry', '-1'),
(152, 18, '_stock', NULL),
(153, 18, '_stock_status', 'instock'),
(154, 18, '_wc_average_rating', '0'),
(155, 18, '_wc_review_count', '0'),
(156, 18, '_product_version', '4.2.0'),
(157, 18, '_original_id', '64'),
(158, 19, '_sku', 'woo-hoodie-with-zipper'),
(159, 19, 'total_sales', '0'),
(160, 19, '_tax_status', 'taxable'),
(161, 19, '_tax_class', ''),
(162, 19, '_manage_stock', 'no'),
(163, 19, '_backorders', 'no'),
(164, 19, '_sold_individually', 'no'),
(165, 19, '_virtual', 'no'),
(166, 19, '_downloadable', 'no'),
(167, 19, '_download_limit', '-1'),
(168, 19, '_download_expiry', '-1'),
(169, 19, '_stock', NULL),
(170, 19, '_stock_status', 'instock'),
(171, 19, '_wc_average_rating', '0'),
(172, 19, '_wc_review_count', '0'),
(173, 19, '_product_version', '4.2.0'),
(174, 19, '_original_id', '66'),
(175, 20, '_sku', 'woo-long-sleeve-tee'),
(176, 20, 'total_sales', '0'),
(177, 20, '_tax_status', 'taxable'),
(178, 20, '_tax_class', ''),
(179, 20, '_manage_stock', 'no'),
(180, 20, '_backorders', 'no'),
(181, 20, '_sold_individually', 'no'),
(182, 20, '_virtual', 'no'),
(183, 20, '_downloadable', 'no'),
(184, 20, '_download_limit', '-1'),
(185, 20, '_download_expiry', '-1'),
(186, 20, '_stock', NULL),
(187, 20, '_stock_status', 'instock'),
(188, 20, '_wc_average_rating', '0'),
(189, 20, '_wc_review_count', '0'),
(190, 20, '_product_version', '4.2.0'),
(191, 20, '_original_id', '68'),
(192, 21, '_sku', 'woo-polo'),
(193, 21, 'total_sales', '0'),
(194, 21, '_tax_status', 'taxable'),
(195, 21, '_tax_class', ''),
(196, 21, '_manage_stock', 'no'),
(197, 21, '_backorders', 'no'),
(198, 21, '_sold_individually', 'no'),
(199, 21, '_virtual', 'no'),
(200, 21, '_downloadable', 'no'),
(201, 21, '_download_limit', '-1'),
(202, 21, '_download_expiry', '-1'),
(203, 21, '_stock', NULL),
(204, 21, '_stock_status', 'instock'),
(205, 21, '_wc_average_rating', '0'),
(206, 21, '_wc_review_count', '0'),
(207, 21, '_product_version', '4.2.0'),
(208, 21, '_original_id', '70'),
(209, 22, '_sku', 'woo-album'),
(210, 22, 'total_sales', '0'),
(211, 22, '_tax_status', 'taxable'),
(212, 22, '_tax_class', ''),
(213, 22, '_manage_stock', 'no'),
(214, 22, '_backorders', 'no'),
(215, 22, '_sold_individually', 'no'),
(216, 22, '_virtual', 'no'),
(217, 22, '_downloadable', 'no'),
(218, 22, '_download_limit', '-1'),
(219, 22, '_download_expiry', '-1'),
(220, 22, '_stock', NULL),
(221, 22, '_stock_status', 'instock'),
(222, 22, '_wc_average_rating', '0'),
(223, 22, '_wc_review_count', '0'),
(224, 22, '_product_version', '4.2.0'),
(225, 22, '_original_id', '73'),
(226, 23, '_sku', 'woo-single'),
(227, 23, 'total_sales', '0'),
(228, 23, '_tax_status', 'taxable'),
(229, 23, '_tax_class', ''),
(230, 23, '_manage_stock', 'no'),
(231, 23, '_backorders', 'no'),
(232, 23, '_sold_individually', 'no'),
(233, 23, '_virtual', 'no'),
(234, 23, '_downloadable', 'no'),
(235, 23, '_download_limit', '-1'),
(236, 23, '_download_expiry', '-1'),
(237, 23, '_stock', NULL),
(238, 23, '_stock_status', 'instock'),
(239, 23, '_wc_average_rating', '0'),
(240, 23, '_wc_review_count', '0'),
(241, 23, '_product_version', '4.2.0'),
(242, 23, '_original_id', '75'),
(243, 24, '_sku', 'woo-vneck-tee-red'),
(244, 24, 'total_sales', '0'),
(245, 24, '_tax_status', 'taxable'),
(246, 24, '_tax_class', ''),
(247, 24, '_manage_stock', 'no'),
(248, 24, '_backorders', 'no'),
(249, 24, '_sold_individually', 'no'),
(250, 24, '_virtual', 'no'),
(251, 24, '_downloadable', 'no'),
(252, 24, '_download_limit', '-1'),
(253, 24, '_download_expiry', '-1'),
(254, 24, '_stock', NULL),
(255, 24, '_stock_status', 'instock'),
(256, 24, '_wc_average_rating', '0'),
(257, 24, '_wc_review_count', '0'),
(258, 24, '_product_version', '4.2.0'),
(259, 24, '_original_id', '76'),
(260, 25, '_sku', 'woo-vneck-tee-green'),
(261, 25, 'total_sales', '0'),
(262, 25, '_tax_status', 'taxable'),
(263, 25, '_tax_class', ''),
(264, 25, '_manage_stock', 'no'),
(265, 25, '_backorders', 'no'),
(266, 25, '_sold_individually', 'no'),
(267, 25, '_virtual', 'no'),
(268, 25, '_downloadable', 'no'),
(269, 25, '_download_limit', '-1'),
(270, 25, '_download_expiry', '-1'),
(271, 25, '_stock', NULL),
(272, 25, '_stock_status', 'instock'),
(273, 25, '_wc_average_rating', '0'),
(274, 25, '_wc_review_count', '0'),
(275, 25, '_product_version', '4.2.0'),
(276, 25, '_original_id', '77'),
(277, 26, '_sku', 'woo-vneck-tee-blue'),
(278, 26, 'total_sales', '0'),
(279, 26, '_tax_status', 'taxable'),
(280, 26, '_tax_class', ''),
(281, 26, '_manage_stock', 'no'),
(282, 26, '_backorders', 'no'),
(283, 26, '_sold_individually', 'no'),
(284, 26, '_virtual', 'no'),
(285, 26, '_downloadable', 'no'),
(286, 26, '_download_limit', '-1'),
(287, 26, '_download_expiry', '-1'),
(288, 26, '_stock', NULL),
(289, 26, '_stock_status', 'instock'),
(290, 26, '_wc_average_rating', '0'),
(291, 26, '_wc_review_count', '0'),
(292, 26, '_product_version', '4.2.0'),
(293, 26, '_original_id', '78'),
(294, 27, '_sku', 'woo-hoodie-red'),
(295, 27, 'total_sales', '0'),
(296, 27, '_tax_status', 'taxable'),
(297, 27, '_tax_class', ''),
(298, 27, '_manage_stock', 'no'),
(299, 27, '_backorders', 'no'),
(300, 27, '_sold_individually', 'no'),
(301, 27, '_virtual', 'no'),
(302, 27, '_downloadable', 'no'),
(303, 27, '_download_limit', '-1'),
(304, 27, '_download_expiry', '-1'),
(305, 27, '_stock', NULL),
(306, 27, '_stock_status', 'instock'),
(307, 27, '_wc_average_rating', '0'),
(308, 27, '_wc_review_count', '0'),
(309, 27, '_product_version', '4.2.0'),
(310, 27, '_original_id', '79'),
(311, 28, '_sku', 'woo-hoodie-green'),
(312, 28, 'total_sales', '0'),
(313, 28, '_tax_status', 'taxable'),
(314, 28, '_tax_class', ''),
(315, 28, '_manage_stock', 'no'),
(316, 28, '_backorders', 'no'),
(317, 28, '_sold_individually', 'no'),
(318, 28, '_virtual', 'no'),
(319, 28, '_downloadable', 'no'),
(320, 28, '_download_limit', '-1'),
(321, 28, '_download_expiry', '-1'),
(322, 28, '_stock', NULL),
(323, 28, '_stock_status', 'instock'),
(324, 28, '_wc_average_rating', '0'),
(325, 28, '_wc_review_count', '0'),
(326, 28, '_product_version', '4.2.0'),
(327, 28, '_original_id', '80'),
(328, 29, '_sku', 'woo-hoodie-blue'),
(329, 29, 'total_sales', '0'),
(330, 29, '_tax_status', 'taxable'),
(331, 29, '_tax_class', ''),
(332, 29, '_manage_stock', 'no'),
(333, 29, '_backorders', 'no'),
(334, 29, '_sold_individually', 'no'),
(335, 29, '_virtual', 'no'),
(336, 29, '_downloadable', 'no'),
(337, 29, '_download_limit', '-1'),
(338, 29, '_download_expiry', '-1'),
(339, 29, '_stock', NULL),
(340, 29, '_stock_status', 'instock'),
(341, 29, '_wc_average_rating', '0'),
(342, 29, '_wc_review_count', '0'),
(343, 29, '_product_version', '4.2.0'),
(344, 29, '_original_id', '81'),
(345, 30, '_sku', 'Woo-tshirt-logo'),
(346, 30, 'total_sales', '0'),
(347, 30, '_tax_status', 'taxable'),
(348, 30, '_tax_class', ''),
(349, 30, '_manage_stock', 'no'),
(350, 30, '_backorders', 'no'),
(351, 30, '_sold_individually', 'no'),
(352, 30, '_virtual', 'no'),
(353, 30, '_downloadable', 'no'),
(354, 30, '_download_limit', '-1'),
(355, 30, '_download_expiry', '-1'),
(356, 30, '_stock', NULL),
(357, 30, '_stock_status', 'instock'),
(358, 30, '_wc_average_rating', '0'),
(359, 30, '_wc_review_count', '0'),
(360, 30, '_product_version', '4.2.0'),
(361, 30, '_original_id', '83'),
(362, 31, '_sku', 'Woo-beanie-logo'),
(363, 31, 'total_sales', '0'),
(364, 31, '_tax_status', 'taxable'),
(365, 31, '_tax_class', ''),
(366, 31, '_manage_stock', 'no'),
(367, 31, '_backorders', 'no'),
(368, 31, '_sold_individually', 'no'),
(369, 31, '_virtual', 'no'),
(370, 31, '_downloadable', 'no'),
(371, 31, '_download_limit', '-1'),
(372, 31, '_download_expiry', '-1'),
(373, 31, '_stock', NULL),
(374, 31, '_stock_status', 'instock'),
(375, 31, '_wc_average_rating', '0'),
(376, 31, '_wc_review_count', '0'),
(377, 31, '_product_version', '4.2.0'),
(378, 31, '_original_id', '85'),
(379, 32, '_sku', 'logo-collection'),
(380, 32, 'total_sales', '0'),
(381, 32, '_tax_status', 'taxable'),
(382, 32, '_tax_class', ''),
(383, 32, '_manage_stock', 'no'),
(384, 32, '_backorders', 'no'),
(385, 32, '_sold_individually', 'no'),
(386, 32, '_virtual', 'no'),
(387, 32, '_downloadable', 'no'),
(388, 32, '_download_limit', '-1'),
(389, 32, '_download_expiry', '-1'),
(390, 32, '_stock', NULL),
(391, 32, '_stock_status', 'instock'),
(392, 32, '_wc_average_rating', '0'),
(393, 32, '_wc_review_count', '0'),
(394, 32, '_product_version', '4.2.0'),
(395, 32, '_original_id', '87'),
(396, 33, '_sku', 'wp-pennant'),
(397, 33, 'total_sales', '0'),
(398, 33, '_tax_status', 'taxable'),
(399, 33, '_tax_class', ''),
(400, 33, '_manage_stock', 'no'),
(401, 33, '_backorders', 'no'),
(402, 33, '_sold_individually', 'no'),
(403, 33, '_virtual', 'no'),
(404, 33, '_downloadable', 'no'),
(405, 33, '_download_limit', '-1'),
(406, 33, '_download_expiry', '-1'),
(407, 33, '_stock', NULL),
(408, 33, '_stock_status', 'instock'),
(409, 33, '_wc_average_rating', '0'),
(410, 33, '_wc_review_count', '0'),
(411, 33, '_product_version', '4.2.0'),
(412, 33, '_original_id', '89'),
(413, 34, '_sku', 'woo-hoodie-blue-logo'),
(414, 34, 'total_sales', '0'),
(415, 34, '_tax_status', 'taxable'),
(416, 34, '_tax_class', ''),
(417, 34, '_manage_stock', 'no'),
(418, 34, '_backorders', 'no'),
(419, 34, '_sold_individually', 'no'),
(420, 34, '_virtual', 'no'),
(421, 34, '_downloadable', 'no'),
(422, 34, '_download_limit', '-1'),
(423, 34, '_download_expiry', '-1'),
(424, 34, '_stock', NULL),
(425, 34, '_stock_status', 'instock'),
(426, 34, '_wc_average_rating', '0'),
(427, 34, '_wc_review_count', '0'),
(428, 34, '_product_version', '4.2.0'),
(429, 34, '_original_id', '90'),
(430, 35, '_wp_attached_file', '2020/06/vneck-tee-2.jpg'),
(431, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2020/06/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-416x415.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:415;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 35, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(433, 36, '_wp_attached_file', '2020/06/vnech-tee-green-1.jpg'),
(434, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2020/06/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(435, 36, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(436, 37, '_wp_attached_file', '2020/06/vnech-tee-blue-1.jpg'),
(437, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/06/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(438, 37, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(439, 10, '_wpcom_is_markdown', '1'),
(440, 10, '_wp_old_slug', 'import-placeholder-for-44'),
(441, 10, '_product_image_gallery', '36,37'),
(442, 10, '_thumbnail_id', '35'),
(443, 10, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(444, 38, '_wp_attached_file', '2020/06/hoodie-2.jpg'),
(445, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/06/hoodie-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"hoodie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(446, 38, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(447, 39, '_wp_attached_file', '2020/06/hoodie-blue-1.jpg'),
(448, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2020/06/hoodie-blue-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(449, 39, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(450, 40, '_wp_attached_file', '2020/06/hoodie-green-1.jpg'),
(451, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2020/06/hoodie-green-1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(452, 40, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(453, 41, '_wp_attached_file', '2020/06/hoodie-with-logo-2.jpg'),
(454, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2020/06/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 41, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(456, 11, '_wpcom_is_markdown', '1'),
(457, 11, '_wp_old_slug', 'import-placeholder-for-45'),
(458, 11, '_product_image_gallery', '39,40,41'),
(459, 11, '_thumbnail_id', '38'),
(460, 11, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"0\";}}'),
(461, 12, '_wpcom_is_markdown', '1'),
(462, 12, '_wp_old_slug', 'import-placeholder-for-46'),
(463, 12, '_regular_price', '45'),
(464, 12, '_thumbnail_id', '41'),
(465, 12, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(466, 12, '_price', '30'),
(467, 42, '_wp_attached_file', '2020/06/tshirt-2.jpg'),
(468, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/06/tshirt-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"tshirt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(469, 42, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(470, 13, '_wpcom_is_markdown', '1'),
(471, 13, '_wp_old_slug', 'import-placeholder-for-47'),
(472, 13, '_regular_price', '18'),
(473, 13, '_thumbnail_id', '42'),
(474, 13, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(475, 13, '_price', '18'),
(476, 43, '_wp_attached_file', '2020/06/beanie-2.jpg'),
(477, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/06/beanie-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"beanie-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(478, 43, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(479, 14, '_wpcom_is_markdown', '1'),
(480, 14, '_wp_old_slug', 'import-placeholder-for-48'),
(481, 14, '_regular_price', '20'),
(482, 14, '_sale_price', '18'),
(483, 14, '_thumbnail_id', '43'),
(484, 14, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(485, 14, '_price', '18'),
(486, 44, '_wp_attached_file', '2020/06/belt-2.jpg'),
(487, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2020/06/belt-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"belt-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(488, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(489, 15, '_wpcom_is_markdown', '1'),
(490, 15, '_wp_old_slug', 'import-placeholder-for-58'),
(491, 15, '_regular_price', '65'),
(492, 15, '_sale_price', '55'),
(493, 15, '_thumbnail_id', '44'),
(494, 15, '_price', '55'),
(495, 45, '_wp_attached_file', '2020/06/cap-2.jpg'),
(496, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2020/06/cap-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"cap-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(497, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(498, 16, '_wpcom_is_markdown', '1'),
(499, 16, '_wp_old_slug', 'import-placeholder-for-60'),
(500, 16, '_regular_price', '18'),
(501, 16, '_sale_price', '16'),
(502, 16, '_thumbnail_id', '45'),
(503, 16, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(504, 16, '_price', '16'),
(505, 46, '_wp_attached_file', '2020/06/sunglasses-2.jpg'),
(506, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2020/06/sunglasses-2.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(507, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(508, 17, '_wpcom_is_markdown', '1'),
(509, 17, '_wp_old_slug', 'import-placeholder-for-62'),
(510, 17, '_regular_price', '90'),
(511, 17, '_thumbnail_id', '46'),
(512, 17, '_price', '80'),
(513, 48, '_wp_attached_file', '2020/06/other-small.jpg'),
(514, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/06/other-small.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"other-small-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(515, 48, '_source_url', 'http://localhost:8080/ecomm_wp/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(516, 50, '_wp_attached_file', '2020/06/images.png'),
(517, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:468;s:6:\"height\";i:108;s:4:\"file\";s:18:\"2020/06/images.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"images-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x108.png\";s:5:\"width\";i:150;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"images-324x108.png\";s:5:\"width\";i:324;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"images-416x96.png\";s:5:\"width\";i:416;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"images-324x108.png\";s:5:\"width\";i:324;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"images-416x96.png\";s:5:\"width\";i:416;s:6:\"height\";i:96;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(518, 47, '_wp_page_template', 'template-homepage.php'),
(519, 51, '_order_key', 'wc_order_gFJyv40fIUhog'),
(520, 51, '_customer_user', '1'),
(521, 51, '_payment_method', 'cod'),
(522, 51, '_payment_method_title', 'Cash on delivery'),
(523, 51, '_customer_ip_address', '::1'),
(524, 51, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0'),
(525, 51, '_created_via', 'checkout'),
(526, 51, '_cart_hash', '89afb0689b65a5feb7c488f8c1b6f9cd'),
(527, 51, '_billing_first_name', 'hfhf'),
(528, 51, '_billing_last_name', 'hjfshj'),
(529, 51, '_billing_company', 'hfhkh'),
(530, 51, '_billing_address_1', 'safi'),
(531, 51, '_billing_address_2', 'sas'),
(532, 51, '_billing_city', 'saaa'),
(533, 51, '_billing_state', 'jvhg'),
(534, 51, '_billing_postcode', '1212121'),
(535, 51, '_billing_country', 'MA'),
(536, 51, '_billing_email', 'me.karbal@gmail.com'),
(537, 51, '_billing_phone', '123124142'),
(538, 51, '_shipping_first_name', 'hfhf'),
(539, 51, '_shipping_last_name', 'hjfshj'),
(540, 51, '_shipping_company', 'hfhkh'),
(541, 51, '_shipping_address_1', 'safi'),
(542, 51, '_shipping_address_2', 'sas'),
(543, 51, '_shipping_city', 'saaa'),
(544, 51, '_shipping_state', 'jvhg'),
(545, 51, '_shipping_postcode', '1212121'),
(546, 51, '_shipping_country', 'MA'),
(547, 51, '_order_currency', 'USD'),
(548, 51, '_cart_discount', '0'),
(549, 51, '_cart_discount_tax', '0'),
(550, 51, '_order_shipping', '0.00'),
(551, 51, '_order_shipping_tax', '0');
INSERT INTO `ecomm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(552, 51, '_order_tax', '0'),
(553, 51, '_order_total', '216.00'),
(554, 51, '_order_version', '4.2.0'),
(555, 51, '_prices_include_tax', 'no'),
(556, 51, '_billing_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA me.karbal@gmail.com 123124142'),
(557, 51, '_shipping_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA'),
(558, 51, 'is_vat_exempt', 'no'),
(559, 51, '_download_permissions_granted', 'yes'),
(560, 51, '_recorded_sales', 'yes'),
(561, 51, '_recorded_coupon_usage_counts', 'yes'),
(562, 51, '_order_stock_reduced', 'yes'),
(563, 8, '_edit_lock', '1591621307:1'),
(564, 51, '_date_completed', '1591623130'),
(565, 51, '_date_paid', '1591623130'),
(566, 51, '_paid_date', '2020-06-08 14:32:10'),
(567, 51, '_completed_date', '2020-06-08 14:32:10'),
(568, 17, '_edit_lock', '1591784033:1'),
(569, 17, '_edit_last', '1'),
(570, 17, '_sale_price', '80'),
(571, 17, '_wc_facebook_sync_enabled', 'no'),
(572, 12, '_edit_lock', '1591623786:1'),
(573, 12, '_edit_last', '1'),
(574, 12, '_sale_price', '30'),
(575, 12, '_wc_facebook_sync_enabled', 'no'),
(576, 52, '_order_key', 'wc_order_xvfNLAFstXDIx'),
(577, 52, '_customer_user', '2'),
(578, 52, '_payment_method', 'cod'),
(579, 52, '_payment_method_title', 'Cash on delivery'),
(580, 52, '_customer_ip_address', '::1'),
(581, 52, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0'),
(582, 52, '_created_via', 'checkout'),
(583, 52, '_cart_hash', 'e5f1900f05259b0680fd7fb6ef5453aa'),
(584, 52, '_billing_first_name', 'yassir'),
(585, 52, '_billing_last_name', 'yassir'),
(586, 52, '_billing_address_1', '12'),
(587, 52, '_billing_address_2', 'DZZZZDZAE'),
(588, 52, '_billing_city', 'SAFI'),
(589, 52, '_billing_state', 'FSMLFS'),
(590, 52, '_billing_postcode', '46000'),
(591, 52, '_billing_country', 'MA'),
(592, 52, '_billing_email', 'yassir@email.com'),
(593, 52, '_billing_phone', '12121212121'),
(594, 52, '_shipping_first_name', 'yassir'),
(595, 52, '_shipping_last_name', 'yassir'),
(596, 52, '_shipping_address_1', '12'),
(597, 52, '_shipping_address_2', 'DZZZZDZAE'),
(598, 52, '_shipping_city', 'SAFI'),
(599, 52, '_shipping_state', 'FSMLFS'),
(600, 52, '_shipping_postcode', '46000'),
(601, 52, '_shipping_country', 'MA'),
(602, 52, '_order_currency', 'AUD'),
(603, 52, '_cart_discount', '0'),
(604, 52, '_cart_discount_tax', '0'),
(605, 52, '_order_shipping', '0.00'),
(606, 52, '_order_shipping_tax', '0'),
(607, 52, '_order_tax', '0'),
(608, 52, '_order_total', '16.00'),
(609, 52, '_order_version', '4.2.0'),
(610, 52, '_prices_include_tax', 'no'),
(611, 52, '_billing_address_index', 'yassir yassir  12 DZZZZDZAE SAFI FSMLFS 46000 MA yassir@email.com 12121212121'),
(612, 52, '_shipping_address_index', 'yassir yassir  12 DZZZZDZAE SAFI FSMLFS 46000 MA'),
(613, 52, 'is_vat_exempt', 'no'),
(614, 52, '_download_permissions_granted', 'yes'),
(615, 52, '_recorded_sales', 'yes'),
(616, 52, '_recorded_coupon_usage_counts', 'yes'),
(617, 52, '_order_stock_reduced', 'yes'),
(618, 14, '_edit_lock', '1591625581:1'),
(619, 53, '_edit_lock', '1591779497:1'),
(620, 53, '_edit_last', '1'),
(621, 53, '_regular_price', '122'),
(622, 53, '_sale_price', '12'),
(623, 53, 'total_sales', '6'),
(624, 53, '_tax_status', 'shipping'),
(625, 53, '_tax_class', ''),
(626, 53, '_manage_stock', 'no'),
(627, 53, '_backorders', 'no'),
(628, 53, '_sold_individually', 'no'),
(629, 53, '_virtual', 'no'),
(630, 53, '_downloadable', 'no'),
(631, 53, '_download_limit', '-1'),
(632, 53, '_download_expiry', '-1'),
(633, 53, '_stock', NULL),
(634, 53, '_stock_status', 'instock'),
(635, 53, '_wc_average_rating', '0'),
(636, 53, '_wc_review_count', '0'),
(637, 53, '_product_version', '4.2.0'),
(638, 53, '_price', '12'),
(639, 53, '_wc_facebook_sync_enabled', 'no'),
(640, 53, '_thumbnail_id', '48'),
(642, 7, '_edit_lock', '1591626465:1'),
(643, 57, '_order_key', 'wc_order_c0voKLPH06MUg'),
(644, 57, '_customer_user', '1'),
(645, 57, '_payment_method', 'cod'),
(646, 57, '_payment_method_title', 'Cash on delivery'),
(647, 57, '_customer_ip_address', '::1'),
(648, 57, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0'),
(649, 57, '_created_via', 'checkout'),
(650, 57, '_cart_hash', '351397faf2b685bf3da13810fa7546b6'),
(651, 57, '_billing_first_name', 'hfhf'),
(652, 57, '_billing_last_name', 'hjfshj'),
(653, 57, '_billing_company', 'hfhkh'),
(654, 57, '_billing_address_1', 'safi'),
(655, 57, '_billing_address_2', 'sas'),
(656, 57, '_billing_city', 'saaa'),
(657, 57, '_billing_state', 'jvhg'),
(658, 57, '_billing_postcode', '1212121'),
(659, 57, '_billing_country', 'MA'),
(660, 57, '_billing_email', 'me.karbal@gmail.com'),
(661, 57, '_billing_phone', '123124142'),
(662, 57, '_shipping_first_name', 'hfhf'),
(663, 57, '_shipping_last_name', 'hjfshj'),
(664, 57, '_shipping_company', 'hfhkh'),
(665, 57, '_shipping_address_1', 'safi'),
(666, 57, '_shipping_address_2', 'sas'),
(667, 57, '_shipping_city', 'saaa'),
(668, 57, '_shipping_state', 'jvhg'),
(669, 57, '_shipping_postcode', '1212121'),
(670, 57, '_shipping_country', 'MA'),
(671, 57, '_order_currency', 'AUD'),
(672, 57, '_cart_discount', '0'),
(673, 57, '_cart_discount_tax', '0'),
(674, 57, '_order_shipping', '0.00'),
(675, 57, '_order_shipping_tax', '0'),
(676, 57, '_order_tax', '0'),
(677, 57, '_order_total', '60.00'),
(678, 57, '_order_version', '4.2.0'),
(679, 57, '_prices_include_tax', 'no'),
(680, 57, '_billing_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA me.karbal@gmail.com 123124142'),
(681, 57, '_shipping_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA'),
(682, 57, 'is_vat_exempt', 'no'),
(683, 57, '_download_permissions_granted', 'yes'),
(684, 57, '_recorded_sales', 'yes'),
(685, 57, '_recorded_coupon_usage_counts', 'yes'),
(686, 57, '_order_stock_reduced', 'yes'),
(687, 47, '_edit_lock', '1591803204:1'),
(688, 10, '_wp_trash_meta_status', 'publish'),
(689, 10, '_wp_trash_meta_time', '1591695714'),
(690, 10, '_wp_desired_post_slug', 'v-neck-t-shirt'),
(691, 11, '_wp_trash_meta_status', 'publish'),
(692, 11, '_wp_trash_meta_time', '1591695714'),
(693, 11, '_wp_desired_post_slug', 'hoodie'),
(694, 59, '_edit_lock', '1591781008:1'),
(695, 59, '_edit_last', '1'),
(696, 59, 'discount_type', 'fixed_cart'),
(697, 59, 'coupon_amount', '0'),
(698, 59, 'individual_use', 'no'),
(699, 59, 'usage_limit', '0'),
(700, 59, 'usage_limit_per_user', '0'),
(701, 59, 'limit_usage_to_x_items', '0'),
(702, 59, 'usage_count', '0'),
(703, 59, 'date_expires', NULL),
(704, 59, 'free_shipping', 'no'),
(705, 59, 'exclude_sale_items', 'no'),
(706, 61, '_edit_lock', '1591781043:1'),
(707, 61, '_edit_last', '1'),
(708, 61, 'discount_type', 'fixed_cart'),
(709, 61, 'coupon_amount', '17'),
(710, 61, 'individual_use', 'no'),
(711, 61, 'usage_limit', '0'),
(712, 61, 'usage_limit_per_user', '0'),
(713, 61, 'limit_usage_to_x_items', '0'),
(714, 61, 'usage_count', '0'),
(715, 61, 'date_expires', NULL),
(716, 61, 'free_shipping', 'no'),
(717, 61, 'exclude_sale_items', 'no'),
(718, 63, '_edit_lock', '1591781097:1'),
(719, 63, '_edit_last', '1'),
(720, 63, 'discount_type', 'fixed_cart'),
(721, 63, 'coupon_amount', '12'),
(722, 63, 'individual_use', 'no'),
(723, 63, 'usage_limit', '0'),
(724, 63, 'usage_limit_per_user', '0'),
(725, 63, 'limit_usage_to_x_items', '0'),
(726, 63, 'usage_count', '1'),
(727, 63, 'date_expires', NULL),
(728, 63, 'free_shipping', 'no'),
(729, 63, 'exclude_sale_items', 'no'),
(730, 1, '_wp_trash_meta_status', 'publish'),
(731, 1, '_wp_trash_meta_time', '1591782935'),
(732, 1, '_wp_desired_post_slug', 'hello-world'),
(733, 9, '_edit_lock', '1591783357:1'),
(734, 65, '_edit_lock', '1591783674:1'),
(735, 65, '_wp_trash_meta_status', 'publish'),
(736, 65, '_wp_trash_meta_time', '1591783685'),
(737, 66, '_wp_trash_meta_status', 'publish'),
(738, 66, '_wp_trash_meta_time', '1591783723'),
(739, 67, '_wp_attached_file', '2020/06/shopping-online.jpg'),
(740, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1639;s:6:\"height\";i:1159;s:4:\"file\";s:27:\"2020/06/shopping-online.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"shopping-online-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"shopping-online-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"shopping-online-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"shopping-online-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"shopping-online-1536x1086.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"shopping-online-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"shopping-online-416x294.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:294;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"shopping-online-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"shopping-online-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"shopping-online-416x294.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:294;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"shopping-online-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:28:\"sellingpix - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:99:\"Shopping cart Logo design vector template concept icon.\r\nLogotype for online store, mall, sale etc.\";s:17:\"created_timestamp\";s:10:\"1440988199\";s:9:\"copyright\";s:30:\"©sellingpix - stock.adobe.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:99:\"Shopping cart Logo design vector template concept icon.\r\nLogotype for online store, mall, sale etc.\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:82:{i:0;s:4:\"cart\";i:1;s:4:\"logo\";i:2;s:8:\"shopping\";i:3;s:6:\"design\";i:4;s:11:\"supermarket\";i:5;s:4:\"icon\";i:6;s:12:\"illustration\";i:7;s:8:\"abstract\";i:8;s:6:\"symbol\";i:9;s:6:\"vector\";i:10;s:4:\"sign\";i:11;s:8:\"business\";i:12;s:7:\"concept\";i:13;s:6:\"online\";i:14;s:7:\"trolley\";i:15;s:4:\"shop\";i:16;s:6:\"retail\";i:17;s:8:\"commerce\";i:18;s:4:\"sale\";i:19;s:3:\"red\";i:20;s:8:\"creative\";i:21;s:5:\"store\";i:22;s:7:\"company\";i:23;s:3:\"buy\";i:24;s:9:\"marketing\";i:25;s:8:\"graphics\";i:26;s:10:\"e-commerce\";i:27;s:10:\"silhouette\";i:28;s:3:\"web\";i:29;s:8:\"delivery\";i:30;s:6:\"market\";i:31;s:1:\"e\";i:32;s:6:\"simple\";i:33;s:10:\"commercial\";i:34;s:5:\"trade\";i:35;s:8:\"purchase\";i:36;s:4:\"mall\";i:37;s:6:\"emblem\";i:38;s:8:\"logotype\";i:39;s:8:\"branding\";i:40;s:5:\"event\";i:41;s:4:\"cart\";i:42;s:4:\"logo\";i:43;s:8:\"shopping\";i:44;s:6:\"design\";i:45;s:11:\"supermarket\";i:46;s:4:\"icon\";i:47;s:12:\"illustration\";i:48;s:8:\"abstract\";i:49;s:6:\"symbol\";i:50;s:6:\"vector\";i:51;s:4:\"sign\";i:52;s:8:\"business\";i:53;s:7:\"concept\";i:54;s:6:\"online\";i:55;s:7:\"trolley\";i:56;s:4:\"shop\";i:57;s:6:\"retail\";i:58;s:8:\"commerce\";i:59;s:4:\"sale\";i:60;s:3:\"red\";i:61;s:8:\"creative\";i:62;s:5:\"store\";i:63;s:7:\"company\";i:64;s:3:\"buy\";i:65;s:9:\"marketing\";i:66;s:8:\"graphics\";i:67;s:10:\"e-commerce\";i:68;s:10:\"silhouette\";i:69;s:3:\"web\";i:70;s:8:\"delivery\";i:71;s:6:\"market\";i:72;s:1:\"e\";i:73;s:6:\"simple\";i:74;s:10:\"commercial\";i:75;s:5:\"trade\";i:76;s:8:\"purchase\";i:77;s:4:\"mall\";i:78;s:6:\"emblem\";i:79;s:8:\"logotype\";i:80;s:8:\"branding\";i:81;s:5:\"event\";}}}'),
(741, 68, '_wp_attached_file', '2020/06/cropped-shopping-online.jpg'),
(742, 68, '_wp_attachment_context', 'custom-logo'),
(743, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1639;s:6:\"height\";i:506;s:4:\"file\";s:35:\"2020/06/cropped-shopping-online.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-shopping-online-300x93.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:93;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"cropped-shopping-online-1024x316.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-768x237.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"cropped-shopping-online-1536x474.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:474;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-shopping-online-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-416x128.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-416x128.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(744, 69, '_edit_lock', '1591784035:1'),
(745, 69, '_wp_trash_meta_status', 'publish'),
(746, 69, '_wp_trash_meta_time', '1591784049'),
(747, 2, '_wp_trash_meta_status', 'publish'),
(748, 2, '_wp_trash_meta_time', '1591784132'),
(749, 2, '_wp_desired_post_slug', 'sample-page'),
(750, 71, '_edit_lock', '1591784473:1'),
(751, 71, '_wp_trash_meta_status', 'publish'),
(752, 71, '_wp_trash_meta_time', '1591784474'),
(753, 72, '_edit_lock', '1591784722:1'),
(754, 73, '_wp_attached_file', '2020/06/cropped-shopping-online-1.jpg'),
(755, 73, '_wp_attachment_context', 'site-icon'),
(756, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:37:\"2020/06/cropped-shopping-online-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"cropped-shopping-online-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:37:\"cropped-shopping-online-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:35:\"cropped-shopping-online-1-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(757, 72, '_wp_trash_meta_status', 'publish'),
(758, 72, '_wp_trash_meta_time', '1591784729'),
(759, 74, '_wp_trash_meta_status', 'publish'),
(760, 74, '_wp_trash_meta_time', '1591784889'),
(761, 47, '_edit_last', '1'),
(762, 76, '_order_key', 'wc_order_4zGUhA4WoCQLT'),
(763, 76, '_customer_user', '2'),
(764, 76, '_customer_ip_address', '::1'),
(765, 76, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0'),
(766, 76, '_created_via', 'checkout'),
(767, 76, '_cart_hash', '5518e144cf792005ad206ed545579aa3'),
(768, 76, '_billing_first_name', 'yassir'),
(769, 76, '_billing_last_name', 'yassir'),
(770, 76, '_billing_address_1', '12'),
(771, 76, '_billing_address_2', 'DZZZZDZAE'),
(772, 76, '_billing_city', 'SAFI'),
(773, 76, '_billing_state', 'FSMLFS'),
(774, 76, '_billing_postcode', '46000'),
(775, 76, '_billing_country', 'MA'),
(776, 76, '_billing_email', 'yassir@email.com'),
(777, 76, '_billing_phone', '12121212121'),
(778, 76, '_shipping_first_name', 'yassir'),
(779, 76, '_shipping_last_name', 'yassir'),
(780, 76, '_shipping_address_1', '12'),
(781, 76, '_shipping_address_2', 'DZZZZDZAE'),
(782, 76, '_shipping_city', 'SAFI'),
(783, 76, '_shipping_state', 'FSMLFS'),
(784, 76, '_shipping_postcode', '46000'),
(785, 76, '_shipping_country', 'MA'),
(786, 76, '_order_currency', 'AUD'),
(787, 76, '_cart_discount', '12'),
(788, 76, '_cart_discount_tax', '0'),
(789, 76, '_order_shipping', '0.00'),
(790, 76, '_order_shipping_tax', '0'),
(791, 76, '_order_tax', '0'),
(792, 76, '_order_total', '0.00'),
(793, 76, '_order_version', '4.2.0'),
(794, 76, '_prices_include_tax', 'no'),
(795, 76, '_billing_address_index', 'yassir yassir  12 DZZZZDZAE SAFI FSMLFS 46000 MA yassir@email.com 12121212121'),
(796, 76, '_shipping_address_index', 'yassir yassir  12 DZZZZDZAE SAFI FSMLFS 46000 MA'),
(797, 76, 'is_vat_exempt', 'no'),
(798, 76, '_date_paid', '1591785389'),
(799, 76, '_paid_date', '2020-06-10 11:36:29'),
(800, 76, '_download_permissions_granted', 'yes'),
(801, 76, '_recorded_sales', 'yes'),
(802, 76, '_recorded_coupon_usage_counts', 'yes'),
(803, 63, '_used_by', '2'),
(804, 76, '_order_stock_reduced', 'yes'),
(805, 77, '_edit_lock', '1591802733:1'),
(806, 77, '_edit_last', '1'),
(807, 80, '_order_key', 'wc_order_ePbhgGbyYXvC7'),
(808, 80, '_customer_user', '1'),
(809, 80, '_payment_method', 'cod'),
(810, 80, '_payment_method_title', 'Cash on delivery'),
(811, 80, '_customer_ip_address', '::1'),
(812, 80, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0'),
(813, 80, '_created_via', 'checkout'),
(814, 80, '_cart_hash', 'aa24367704f34fde62388b8330461d27'),
(815, 80, '_billing_first_name', 'hfhf'),
(816, 80, '_billing_last_name', 'hjfshj'),
(817, 80, '_billing_company', 'hfhkh'),
(818, 80, '_billing_address_1', 'safi'),
(819, 80, '_billing_address_2', 'sas'),
(820, 80, '_billing_city', 'saaa'),
(821, 80, '_billing_state', 'jvhg'),
(822, 80, '_billing_postcode', '1212121'),
(823, 80, '_billing_country', 'MA'),
(824, 80, '_billing_email', 'me.karbal@gmail.com'),
(825, 80, '_billing_phone', '123124142'),
(826, 80, '_shipping_first_name', 'hfhf'),
(827, 80, '_shipping_last_name', 'hjfshj'),
(828, 80, '_shipping_company', 'hfhkh'),
(829, 80, '_shipping_address_1', 'safi'),
(830, 80, '_shipping_address_2', 'sas'),
(831, 80, '_shipping_city', 'saaa'),
(832, 80, '_shipping_state', 'jvhg'),
(833, 80, '_shipping_postcode', '1212121'),
(834, 80, '_shipping_country', 'MA'),
(835, 80, '_order_currency', 'AUD'),
(836, 80, '_cart_discount', '0'),
(837, 80, '_cart_discount_tax', '0'),
(838, 80, '_order_shipping', '0.00'),
(839, 80, '_order_shipping_tax', '0'),
(840, 80, '_order_tax', '0'),
(841, 80, '_order_total', '80.00'),
(842, 80, '_order_version', '4.2.0'),
(843, 80, '_prices_include_tax', 'no'),
(844, 80, '_billing_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA me.karbal@gmail.com 123124142'),
(845, 80, '_shipping_address_index', 'hfhf hjfshj hfhkh safi sas saaa jvhg 1212121 MA'),
(846, 80, 'is_vat_exempt', 'no'),
(847, 80, '_download_permissions_granted', 'yes'),
(848, 80, '_recorded_sales', 'yes'),
(849, 80, '_recorded_coupon_usage_counts', 'yes'),
(850, 80, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_posts`
--

CREATE TABLE `ecomm_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_posts`
--

INSERT INTO `ecomm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-08 11:09:23', '2020-06-08 10:09:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-06-10 10:55:35', '2020-06-10 09:55:35', '', 0, 'http://localhost:8080/ecomm_wp/?p=1', 0, 'post', '', 0),
(2, 1, '2020-06-08 11:09:23', '2020-06-08 10:09:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/ecomm_wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-06-10 11:15:32', '2020-06-10 10:15:32', '', 0, 'http://localhost:8080/ecomm_wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-08 11:09:23', '2020-06-08 10:09:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8080/ecomm_wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-08 11:09:23', '2020-06-08 10:09:23', '', 0, 'http://localhost:8080/ecomm_wp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-08 11:09:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-08 11:09:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-08 11:16:49', '2020-06-08 10:16:49', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-06-08 11:16:49', '2020-06-08 10:16:49', '', 0, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-06-08 11:20:56', '2020-06-08 10:20:56', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-06-08 11:20:56', '2020-06-08 10:20:56', '', 0, 'http://localhost:8080/ecomm_wp/shop/', 0, 'page', '', 0),
(7, 1, '2020-06-08 11:20:56', '2020-06-08 10:20:56', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-06-08 11:20:56', '2020-06-08 10:20:56', '', 0, 'http://localhost:8080/ecomm_wp/cart/', 0, 'page', '', 0),
(8, 1, '2020-06-08 11:20:56', '2020-06-08 10:20:56', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-06-08 11:20:56', '2020-06-08 10:20:56', '', 0, 'http://localhost:8080/ecomm_wp/checkout/', 0, 'page', '', 0),
(9, 1, '2020-06-08 11:20:56', '2020-06-08 10:20:56', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-06-08 11:20:56', '2020-06-08 10:20:56', '', 0, 'http://localhost:8080/ecomm_wp/my-account/', 0, 'page', '', 0),
(10, 1, '2020-06-08 11:43:38', '2020-06-08 10:43:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'trash', 'open', 'closed', '', 'v-neck-t-shirt__trashed', '', '', '2020-06-09 10:41:54', '2020-06-09 09:41:54', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-44/', 0, 'product', '', 0),
(11, 1, '2020-06-08 11:43:38', '2020-06-08 10:43:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'trash', 'open', 'closed', '', 'hoodie__trashed', '', '', '2020-06-09 10:41:54', '2020-06-09 09:41:54', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-45/', 0, 'product', '', 0),
(12, 1, '2020-06-08 11:43:38', '2020-06-08 10:43:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2020-06-08 14:45:14', '2020-06-08 13:45:14', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-46/', 0, 'product', '', 0),
(13, 1, '2020-06-08 11:43:38', '2020-06-08 10:43:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2020-06-08 11:43:54', '2020-06-08 10:43:54', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-47/', 0, 'product', '', 0),
(14, 1, '2020-06-08 11:43:38', '2020-06-08 10:43:38', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2020-06-08 11:43:56', '2020-06-08 10:43:56', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-48/', 0, 'product', '', 0),
(15, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2020-06-08 11:43:58', '2020-06-08 10:43:58', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-58/', 0, 'product', '', 0),
(16, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2020-06-08 11:44:00', '2020-06-08 10:44:00', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-60/', 0, 'product', '', 0),
(17, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2020-06-10 10:49:33', '2020-06-10 09:49:33', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-62/', 0, 'product', '', 0),
(18, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 'Import placeholder for 64', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-64', '', '', '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-64/', 0, 'product', '', 0),
(19, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 'Import placeholder for 66', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-66', '', '', '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-66/', 0, 'product', '', 0),
(20, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 'Import placeholder for 68', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-68', '', '', '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-68/', 0, 'product', '', 0),
(21, 1, '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 'Import placeholder for 70', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-70', '', '', '2020-06-08 11:43:39', '2020-06-08 10:43:39', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-70/', 0, 'product', '', 0),
(22, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 73', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-73', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-73/', 0, 'product', '', 0),
(23, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 75', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-75', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-75/', 0, 'product', '', 0),
(24, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 76', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-76', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-76/', 0, 'product', '', 0),
(25, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 77', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-77', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-77/', 0, 'product', '', 0),
(26, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 78', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-78', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-78/', 0, 'product', '', 0),
(27, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 79', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-79', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-79/', 0, 'product', '', 0),
(28, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 80', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-80', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-80/', 0, 'product', '', 0),
(29, 1, '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 'Import placeholder for 81', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-81', '', '', '2020-06-08 11:43:40', '2020-06-08 10:43:40', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-81/', 0, 'product', '', 0),
(30, 1, '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 'Import placeholder for 83', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-83', '', '', '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-83/', 0, 'product', '', 0),
(31, 1, '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 'Import placeholder for 85', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-85', '', '', '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-85/', 0, 'product', '', 0),
(32, 1, '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 'Import placeholder for 87', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-87', '', '', '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-87/', 0, 'product', '', 0),
(33, 1, '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 'Import placeholder for 89', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-89', '', '', '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-89/', 0, 'product', '', 0),
(34, 1, '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 'Import placeholder for 90', '', 'importing', 'open', 'closed', '', 'import-placeholder-for-90', '', '', '2020-06-08 11:43:41', '2020-06-08 10:43:41', '', 0, 'http://localhost:8080/ecomm_wp/product/import-placeholder-for-90/', 0, 'product', '', 0),
(35, 1, '2020-06-08 11:43:42', '2020-06-08 10:43:42', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2020-06-08 11:43:42', '2020-06-08 10:43:42', '', 10, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-06-08 11:43:45', '2020-06-08 10:43:45', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2020-06-08 11:43:45', '2020-06-08 10:43:45', '', 10, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-06-08 11:43:46', '2020-06-08 10:43:46', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2020-06-08 11:43:46', '2020-06-08 10:43:46', '', 10, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-06-08 11:43:48', '2020-06-08 10:43:48', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2020-06-08 11:43:48', '2020-06-08 10:43:48', '', 11, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-06-08 11:43:49', '2020-06-08 10:43:49', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2020-06-08 11:43:49', '2020-06-08 10:43:49', '', 11, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-06-08 11:43:51', '2020-06-08 10:43:51', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2020-06-08 11:43:51', '2020-06-08 10:43:51', '', 11, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-06-08 11:43:52', '2020-06-08 10:43:52', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2020-06-08 11:43:52', '2020-06-08 10:43:52', '', 11, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-06-08 11:43:54', '2020-06-08 10:43:54', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2020-06-08 11:43:54', '2020-06-08 10:43:54', '', 13, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-06-08 11:43:55', '2020-06-08 10:43:55', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2020-06-08 11:43:55', '2020-06-08 10:43:55', '', 14, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-06-08 11:43:57', '2020-06-08 10:43:57', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2020-06-08 11:43:57', '2020-06-08 10:43:57', '', 15, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-06-08 11:43:59', '2020-06-08 10:43:59', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2020-06-08 11:43:59', '2020-06-08 10:43:59', '', 16, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-06-08 11:44:00', '2020-06-08 10:44:00', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2020-06-08 11:44:00', '2020-06-08 10:44:00', '', 17, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-06-08 11:44:08', '2020-06-08 10:44:08', '<!-- wp:cover {\"url\":\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg\",\"id\":48,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-color has-text-align-center has-large-font-size has-white-color\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-color has-text-align-center has-white-color\"><p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost:8080/ecomm_wp/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New In</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Fan Favorites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-top-rated {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">On Sale</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Best Sellers</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->', '', '', 'publish', 'closed', 'closed', '', '47-2', '', '', '2020-06-10 16:33:21', '2020-06-10 15:33:21', '', 0, 'http://localhost:8080/ecomm_wp/homepage/', 0, 'page', '', 0),
(48, 1, '2020-06-08 11:44:09', '2020-06-08 10:44:09', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-06-08 11:44:09', '2020-06-08 10:44:09', '', 47, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-06-08 11:44:10', '2020-06-08 10:44:10', '<!-- wp:cover {\"url\":\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg\",\"id\":48,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://localhost:8080/ecomm_wp/shop/\" class=\"wp-block-button__link\">Go shopping</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Shop by Category</h2>\n				<!-- /wp:heading -->\n				<!-- wp:shortcode -->\n				[product_categories limit=\"3\" columns=\"3\" orderby=\"menu_order\"]\n				<!-- /wp:shortcode -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">New In</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-new {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-new\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\"]</div>\n				<!-- /wp:woocommerce/product-new -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Fan Favorites</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-top-rated {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-top-rated\">[products limit=\"4\" columns=\"4\" orderby=\"rating\"]</div>\n				<!-- /wp:woocommerce/product-top-rated -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">On Sale</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n				<!-- /wp:woocommerce/product-on-sale -->\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Best Sellers</h2>\n				<!-- /wp:heading -->\n				<!-- wp:woocommerce/product-best-sellers {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-best-sellers\">[products limit=\"4\" columns=\"4\" best_selling=\"1\"]</div>\n				<!-- /wp:woocommerce/product-best-sellers -->\n			', 'Homepage', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-06-08 11:44:10', '2020-06-08 10:44:10', '', 47, 'http://localhost:8080/ecomm_wp/2020/06/08/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-06-08 11:51:30', '2020-06-08 10:51:30', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-06-08 11:51:30', '2020-06-08 10:51:30', '', 0, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/images.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2020-06-08 14:03:18', '2020-06-08 13:03:18', '', 'Order &ndash; June 8, 2020 @ 02:03 PM', '', 'wc-completed', 'open', 'closed', 'wc_order_BHbWCUY63qfYc', 'order-jun-08-2020-0103-pm', '', '', '2020-06-08 14:32:10', '2020-06-08 13:32:10', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_order&#038;p=51', 0, 'shop_order', '', 2),
(52, 1, '2020-06-08 14:47:56', '2020-06-08 13:47:56', '', 'Order &ndash; June 8, 2020 @ 02:47 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_uG6Q4l6mvFnj6', 'order-jun-08-2020-0147-pm', '', '', '2020-06-08 14:47:57', '2020-06-08 13:47:57', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_order&#038;p=52', 0, 'shop_order', '', 1),
(53, 1, '2020-06-08 15:16:19', '2020-06-08 14:16:19', '<img class=\"alignnone size-medium wp-image-48\" src=\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL', 'HHHHHHHHHF', 'JHHHHHHHHHHHHHHHH', 'publish', 'open', 'closed', '', 'hhhhhhhhhf', '', '', '2020-06-10 10:50:13', '2020-06-10 09:50:13', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2020-06-08 15:16:42', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-08 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=product&p=54', 0, 'product', '', 0),
(55, 1, '2020-06-08 15:16:42', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-08 15:16:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=product&p=55', 0, 'product', '', 0),
(56, 1, '2020-06-08 15:16:46', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-08 15:16:46', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=product&p=56', 0, 'product', '', 0),
(57, 1, '2020-06-08 15:30:22', '2020-06-08 14:30:22', '', 'Order &ndash; June 8, 2020 @ 03:30 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_lRabyaxLKZff4', 'order-jun-08-2020-0230-pm', '', '', '2020-06-09 10:32:31', '2020-06-09 09:32:31', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_order&#038;p=57', 0, 'shop_order', '', 2),
(58, 1, '2020-06-08 21:37:33', '2020-06-08 20:37:33', '<!-- wp:cover {\"url\":\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg\",\"id\":48,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-color has-text-align-center has-large-font-size has-white-color\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-color has-text-align-center has-white-color\"><p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost:8080/ecomm_wp/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Shop by Category</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[product_categories limit=\"3\" columns=\"3\" orderby=\"menu_order\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New In</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Fan Favorites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-top-rated {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">On Sale</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Best Sellers</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-06-08 21:37:33', '2020-06-08 20:37:33', '', 47, 'http://localhost:8080/ecomm_wp/2020/06/08/47-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-06-10 10:23:23', '2020-06-10 09:23:23', '', 'AAA', '', 'publish', 'closed', 'closed', '', 'aaa', '', '', '2020-06-10 10:23:23', '2020-06-10 09:23:23', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_coupon&#038;p=59', 0, 'shop_coupon', '', 0),
(60, 1, '2020-06-10 10:23:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-10 10:23:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_coupon&p=60', 0, 'shop_coupon', '', 0),
(61, 1, '2020-06-10 10:24:00', '2020-06-10 09:24:00', '', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2020-06-10 10:24:00', '2020-06-10 09:24:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_coupon&#038;p=61', 0, 'shop_coupon', '', 0),
(62, 1, '2020-06-10 10:24:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-10 10:24:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_coupon&p=62', 0, 'shop_coupon', '', 0),
(63, 1, '2020-06-10 10:24:30', '2020-06-10 09:24:30', '', 'AAA', '', 'publish', 'closed', 'closed', '', 'aaa-2', '', '', '2020-06-10 10:24:30', '2020-06-10 09:24:30', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_coupon&#038;p=63', 0, 'shop_coupon', '', 0),
(64, 1, '2020-06-10 10:55:35', '2020-06-10 09:55:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-10 10:55:35', '2020-06-10 09:55:35', '', 1, 'http://localhost:8080/ecomm_wp/1-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-06-10 11:08:04', '2020-06-10 10:08:04', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:07:52\"\n    },\n    \"boutique::storefront_layout\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:07:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3901652-412b-45aa-9d30-80c502494913', '', '', '2020-06-10 11:08:04', '2020-06-10 10:08:04', '', 0, 'http://localhost:8080/ecomm_wp/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2020-06-10 11:08:42', '2020-06-10 10:08:42', '{\n    \"sidebars_widgets[wp_inactive_widgets]\": {\n        \"value\": [\n            \"recent-posts-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:08:42\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:08:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '737b3da0-ec57-42e9-aebd-4651dda8c193', '', '', '2020-06-10 11:08:42', '2020-06-10 10:08:42', '', 0, 'http://localhost:8080/ecomm_wp/737b3da0-ec57-42e9-aebd-4651dda8c193/', 0, 'customize_changeset', '', 0),
(67, 1, '2020-06-10 11:11:38', '2020-06-10 10:11:38', '', 'Shopping cart Logo design vector template concept icon.Logotype for online store, mall, sale etc.', 'Shopping cart Logo design vector template concept icon.\nLogotype for online store, mall, sale etc.', 'inherit', 'closed', 'closed', '', 'shopping-cart-logo-design-vector-template-concept-icon-logotype-for-online-store-mall-sale-etc', '', '', '2020-06-10 11:11:47', '2020-06-10 10:11:47', '', 0, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/shopping-online.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-06-10 11:12:06', '2020-06-10 10:12:06', 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/cropped-shopping-online.jpg', 'cropped-shopping-online.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-shopping-online-jpg', '', '', '2020-06-10 11:12:06', '2020-06-10 10:12:06', '', 0, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/cropped-shopping-online.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-06-10 11:14:08', '2020-06-10 10:14:08', '{\n    \"blogname\": {\n        \"value\": \"WooCommerce_app\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:13:40\"\n    },\n    \"boutique::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:13:40\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:13:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b618ece5-18da-4531-966c-1022884791e7', '', '', '2020-06-10 11:14:08', '2020-06-10 10:14:08', '', 0, 'http://localhost:8080/ecomm_wp/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2020-06-10 11:15:32', '2020-06-10 10:15:32', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/ecomm_wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-10 11:15:32', '2020-06-10 10:15:32', '', 2, 'http://localhost:8080/ecomm_wp/2-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-06-10 11:21:13', '2020-06-10 10:21:13', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"calendar-3\",\n            \"woocommerce_price_filter-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:21:13\"\n    },\n    \"boutique::storefront_layout\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:18:21\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"be9e4c230428677180f38cb1b6384660\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:19:21\"\n    },\n    \"widget_calendar[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:19:21\"\n    },\n    \"widget_woocommerce_price_filter[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:20:22\"\n    },\n    \"widget_woocommerce_rating_filter[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6ImhqZ2pnaiI7fQ==\",\n            \"title\": \"hjgjgj\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0444292271b762ca2e1b257bf242b0ca\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:21:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80561e8c-8a2f-40a3-8ed2-53bf5b4dd8d9', '', '', '2020-06-10 11:21:13', '2020-06-10 10:21:13', '', 0, 'http://localhost:8080/ecomm_wp/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2020-06-10 11:25:28', '2020-06-10 10:25:28', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"woocommerce_price_filter-3\",\n            \"calendar-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:22:22\"\n    },\n    \"sidebars_widgets[footer-4]\": {\n        \"value\": [\n            \"nav_menu-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:25:28\"\n    },\n    \"widget_categories[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:23:22\"\n    },\n    \"site_icon\": {\n        \"value\": 73,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:24:22\"\n    },\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:25:22\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:25:22\"\n    },\n    \"widget_nav_menu[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:25:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e803e4a-2832-4742-ad68-fb00c7d2d1d6', '', '', '2020-06-10 11:25:28', '2020-06-10 10:25:28', '', 0, 'http://localhost:8080/ecomm_wp/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2020-06-10 11:24:01', '2020-06-10 10:24:01', 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/cropped-shopping-online-1.jpg', 'cropped-shopping-online-1.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-shopping-online-1-jpg', '', '', '2020-06-10 11:24:01', '2020-06-10 10:24:01', '', 0, 'http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/cropped-shopping-online-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-06-10 11:28:08', '2020-06-10 10:28:08', '{\n    \"boutique::storefront_layout\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-10 10:28:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '20af2bd5-3f04-400a-8369-cc3823eb2b46', '', '', '2020-06-10 11:28:08', '2020-06-10 10:28:08', '', 0, 'http://localhost:8080/ecomm_wp/20af2bd5-3f04-400a-8369-cc3823eb2b46/', 0, 'customize_changeset', '', 0),
(75, 1, '2020-06-10 11:33:31', '2020-06-10 10:33:31', '<!-- wp:cover {\"url\":\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg\",\"id\":48,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-color has-text-align-center has-large-font-size has-white-color\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-color has-text-align-center has-white-color\"><p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost:8080/ecomm_wp/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Shop by Category</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[product_categories limit=\"3\" columns=\"3\" orderby=\"menu_order\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New In</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Fan Favorites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-top-rated {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">On Sale</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Best Sellers</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->', '', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-06-10 11:33:31', '2020-06-10 10:33:31', '', 47, 'http://localhost:8080/ecomm_wp/47-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-06-10 11:36:29', '2020-06-10 10:36:29', '', 'Order &ndash; June 10, 2020 @ 11:36 AM', '', 'wc-processing', 'closed', 'closed', 'wc_order_R2h0b7XD6Bi6e', 'order-jun-10-2020-1036-am', '', '', '2020-06-10 11:36:29', '2020-06-10 10:36:29', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_order&#038;p=76', 0, 'shop_order', '', 1);
INSERT INTO `ecomm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2020-06-10 11:43:02', '2020-06-10 10:43:02', '<img class=\"_2zEKz\" src=\"https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1000&amp;q=80\" sizes=\"(max-width: 767px) 100vw, (max-width: 532px) 500px, (max-height: 509px) 500px, (min-aspect-ratio: 6000/4000) calc((calc(100vh - 175px)) * 1.5), calc(100vw - 32px)\" srcset=\"https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=750&amp;q=80 750w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1050&amp;q=80 1050w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80 1350w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1500&amp;q=80 1500w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1650&amp;q=80 1650w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1950&amp;q=80 1950w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2100&amp;q=80 2100w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2250&amp;q=80 2250w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2550&amp;q=80 2550w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2700&amp;q=80 2700w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2850&amp;q=80 2850w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3150&amp;q=80 3150w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3300&amp;q=80 3300w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3450&amp;q=80 3450w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3750&amp;q=80 3750w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3900&amp;q=80 3900w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4050&amp;q=80 4050w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4350&amp;q=80 4350w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4500&amp;q=80 4500w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4650&amp;q=80 4650w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4950&amp;q=80 4950w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5100&amp;q=80 5100w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5250&amp;q=80 5250w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5550&amp;q=80 5550w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5700&amp;q=80 5700w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5850&amp;q=80 5850w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w\" alt=\"closeup photo of turned-on blue and white laptop computer\" />\n\nThis site uses cookies - small text files that are placed on your machine to help the site provide a better user experience. In general, cookies are used to retain user preferences, store information for things like shopping carts, and provide anonymised tracking data to third party applications like Google Analytics. As a rule, cookies will make your browsing experience better. However, you may prefer to disable cookies on this site and on others. The most effective way to do this is to disable cookies in your browser. We suggest consulting the Help section of your browser or taking a look at <a href=\"http://www.aboutcookies.org\">the About Cookies website</a> which offers guidance for all modern browsers', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2020-06-10 12:02:30', '2020-06-10 11:02:30', '', 0, 'http://localhost:8080/ecomm_wp/cookie-policy/', 0, 'page', '', 0),
(78, 1, '2020-06-10 12:02:30', '2020-06-10 11:02:30', '<img class=\"_2zEKz\" src=\"https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1000&amp;q=80\" sizes=\"(max-width: 767px) 100vw, (max-width: 532px) 500px, (max-height: 509px) 500px, (min-aspect-ratio: 6000/4000) calc((calc(100vh - 175px)) * 1.5), calc(100vw - 32px)\" srcset=\"https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=750&amp;q=80 750w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1050&amp;q=80 1050w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1350&amp;q=80 1350w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1500&amp;q=80 1500w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1650&amp;q=80 1650w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1950&amp;q=80 1950w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2100&amp;q=80 2100w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2250&amp;q=80 2250w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2550&amp;q=80 2550w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2700&amp;q=80 2700w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2850&amp;q=80 2850w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3150&amp;q=80 3150w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3300&amp;q=80 3300w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3450&amp;q=80 3450w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3750&amp;q=80 3750w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=3900&amp;q=80 3900w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4050&amp;q=80 4050w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4350&amp;q=80 4350w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4500&amp;q=80 4500w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4650&amp;q=80 4650w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=4950&amp;q=80 4950w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5100&amp;q=80 5100w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5250&amp;q=80 5250w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5550&amp;q=80 5550w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5700&amp;q=80 5700w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=5850&amp;q=80 5850w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w, https://images.unsplash.com/photo-1548092372-0d1bd40894a3?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=6000&amp;q=80 6000w\" alt=\"closeup photo of turned-on blue and white laptop computer\" />\n\nThis site uses cookies - small text files that are placed on your machine to help the site provide a better user experience. In general, cookies are used to retain user preferences, store information for things like shopping carts, and provide anonymised tracking data to third party applications like Google Analytics. As a rule, cookies will make your browsing experience better. However, you may prefer to disable cookies on this site and on others. The most effective way to do this is to disable cookies in your browser. We suggest consulting the Help section of your browser or taking a look at <a href=\"http://www.aboutcookies.org\">the About Cookies website</a> which offers guidance for all modern browsers', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2020-06-10 12:02:30', '2020-06-10 11:02:30', '', 77, 'http://localhost:8080/ecomm_wp/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-06-10 16:32:18', '2020-06-10 15:32:18', '<!-- wp:cover {\"url\":\"http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg\",\"id\":48,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost:8080/ecomm_wp/wp-content/uploads/2020/06/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-color has-text-align-center has-large-font-size has-white-color\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-color has-text-align-center has-white-color\"><p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost:8080/ecomm_wp/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New In</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Fan Favorites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-top-rated {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">On Sale</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} /-->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Best Sellers</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->', '', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2020-06-10 16:32:18', '2020-06-10 15:32:18', '', 47, 'http://localhost:8080/ecomm_wp/47-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-06-10 16:43:02', '2020-06-10 15:43:02', '', 'Order &ndash; June 10, 2020 @ 04:43 PM', '', 'wc-processing', 'closed', 'closed', 'wc_order_TjO14YyC40dvc', 'order-jun-10-2020-0343-pm', '', '', '2020-06-10 16:43:02', '2020-06-10 15:43:02', '', 0, 'http://localhost:8080/ecomm_wp/?post_type=shop_order&#038;p=80', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_termmeta`
--

CREATE TABLE `ecomm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_termmeta`
--

INSERT INTO `ecomm_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '1'),
(2, 17, 'product_count_product_cat', '3'),
(3, 16, 'product_count_product_cat', '7'),
(4, 18, 'product_count_product_cat', '2'),
(5, 19, 'product_count_product_cat', '4');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_terms`
--

CREATE TABLE `ecomm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_terms`
--

INSERT INTO `ecomm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
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
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Music', 'music', 0),
(21, 'Decor', 'decor', 0),
(22, 'Blue', 'blue', 0),
(23, 'Green', 'green', 0),
(24, 'Red', 'red', 0),
(25, 'Large', 'large', 0),
(26, 'Medium', 'medium', 0),
(27, 'Small', 'small', 0),
(28, 'Gray', 'gray', 0),
(29, 'Yellow', 'yellow', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_term_relationships`
--

CREATE TABLE `ecomm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_term_relationships`
--

INSERT INTO `ecomm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 4, 0),
(10, 8, 0),
(10, 9, 0),
(10, 17, 0),
(10, 22, 0),
(10, 23, 0),
(10, 24, 0),
(10, 25, 0),
(10, 26, 0),
(10, 27, 0),
(11, 4, 0),
(11, 9, 0),
(11, 18, 0),
(11, 22, 0),
(11, 23, 0),
(11, 24, 0),
(12, 2, 0),
(12, 18, 0),
(12, 22, 0),
(13, 2, 0),
(13, 17, 0),
(13, 28, 0),
(14, 2, 0),
(14, 19, 0),
(14, 24, 0),
(15, 2, 0),
(15, 19, 0),
(16, 2, 0),
(16, 8, 0),
(16, 19, 0),
(16, 29, 0),
(17, 2, 0),
(17, 8, 0),
(17, 17, 0),
(17, 18, 0),
(17, 19, 0),
(18, 2, 0),
(18, 15, 0),
(19, 2, 0),
(19, 15, 0),
(20, 2, 0),
(20, 15, 0),
(21, 2, 0),
(21, 15, 0),
(22, 2, 0),
(22, 15, 0),
(23, 2, 0),
(23, 15, 0),
(24, 2, 0),
(24, 15, 0),
(25, 2, 0),
(25, 15, 0),
(26, 2, 0),
(26, 15, 0),
(27, 2, 0),
(27, 15, 0),
(28, 2, 0),
(28, 15, 0),
(29, 2, 0),
(29, 15, 0),
(30, 2, 0),
(30, 15, 0),
(31, 2, 0),
(31, 15, 0),
(32, 2, 0),
(32, 15, 0),
(33, 2, 0),
(33, 15, 0),
(34, 2, 0),
(34, 15, 0),
(53, 2, 0),
(53, 8, 0),
(53, 15, 0),
(53, 17, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_term_taxonomy`
--

CREATE TABLE `ecomm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_term_taxonomy`
--

INSERT INTO `ecomm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 7),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 3),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 1),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 3),
(18, 18, 'product_cat', '', 16, 2),
(19, 19, 'product_cat', '', 16, 4),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'pa_color', '', 0, 1),
(23, 23, 'pa_color', '', 0, 0),
(24, 24, 'pa_color', '', 0, 1),
(25, 25, 'pa_size', '', 0, 0),
(26, 26, 'pa_size', '', 0, 0),
(27, 27, 'pa_size', '', 0, 0),
(28, 28, 'pa_color', '', 0, 1),
(29, 29, 'pa_color', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_usermeta`
--

CREATE TABLE `ecomm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_usermeta`
--

INSERT INTO `ecomm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'me.karbal'),
(2, 1, 'first_name', 'hfhf'),
(3, 1, 'last_name', 'hjfshj'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ecomm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ecomm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'ecomm_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:n7Q9VjnrEvJIrCN0yj0wY0Dd'),
(19, 1, 'jetpack_tracks_anon_id', 'jetpack:uKtX9gbXracnQG68pChO+mlK'),
(20, 1, 'jetpack_tracks_anon_id', 'jetpack:qfY2OIqGJtmDyUDe7pDqv8pY'),
(21, 1, 'wc_last_active', '1591747200'),
(22, 1, 'ecomm_user-settings', 'libraryContent=browse'),
(23, 1, 'ecomm_user-settings-time', '1591613550'),
(25, 1, 'last_update', '1591803782'),
(26, 1, 'billing_first_name', 'hfhf'),
(27, 1, 'billing_last_name', 'hjfshj'),
(28, 1, 'billing_company', 'hfhkh'),
(29, 1, 'billing_address_1', 'safi'),
(30, 1, 'billing_address_2', 'sas'),
(31, 1, 'billing_city', 'saaa'),
(32, 1, 'billing_state', 'jvhg'),
(33, 1, 'billing_postcode', '1212121'),
(34, 1, 'billing_country', 'MA'),
(35, 1, 'billing_email', 'me.karbal@gmail.com'),
(36, 1, 'billing_phone', '123124142'),
(37, 1, 'shipping_first_name', 'hfhf'),
(38, 1, 'shipping_last_name', 'hjfshj'),
(39, 1, 'shipping_company', 'hfhkh'),
(40, 1, 'shipping_address_1', 'safi'),
(41, 1, 'shipping_address_2', 'sas'),
(42, 1, 'shipping_city', 'saaa'),
(43, 1, 'shipping_state', 'jvhg'),
(44, 1, 'shipping_postcode', '1212121'),
(45, 1, 'shipping_country', 'MA'),
(46, 1, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(50, 2, 'nickname', 'yassir'),
(51, 2, 'first_name', 'yyy'),
(52, 2, 'last_name', 'yyyy'),
(53, 2, 'description', ''),
(54, 2, 'rich_editing', 'true'),
(55, 2, 'syntax_highlighting', 'true'),
(56, 2, 'comment_shortcuts', 'false'),
(57, 2, 'admin_color', 'fresh'),
(58, 2, 'use_ssl', '0'),
(59, 2, 'show_admin_bar_front', 'true'),
(60, 2, 'locale', ''),
(61, 2, 'ecomm_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(62, 2, 'ecomm_user_level', '0'),
(63, 2, 'dismissed_wp_pointers', ''),
(64, 2, 'last_update', '1591785394'),
(65, 1, 'paying_customer', '1'),
(69, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:\"dashboard_site_health\";}'),
(70, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(72, 2, 'wc_last_active', '1591747200'),
(75, 2, 'billing_first_name', 'yassir'),
(76, 2, 'billing_last_name', 'yassir'),
(77, 2, 'billing_address_1', '12'),
(78, 2, 'billing_address_2', 'DZZZZDZAE'),
(79, 2, 'billing_city', 'SAFI'),
(80, 2, 'billing_state', 'FSMLFS'),
(81, 2, 'billing_postcode', '46000'),
(82, 2, 'billing_country', 'MA'),
(83, 2, 'billing_email', 'yassir@email.com'),
(84, 2, 'billing_phone', '12121212121'),
(85, 2, 'shipping_first_name', 'yassir'),
(86, 2, 'shipping_last_name', 'yassir'),
(87, 2, 'shipping_address_1', '12'),
(88, 2, 'shipping_address_2', 'DZZZZDZAE'),
(89, 2, 'shipping_city', 'SAFI'),
(90, 2, 'shipping_state', 'FSMLFS'),
(91, 2, 'shipping_postcode', '46000'),
(92, 2, 'shipping_country', 'MA'),
(93, 2, 'shipping_method', 'a:1:{i:0;s:15:\"free_shipping:1\";}'),
(113, 3, 'nickname', 'ccc'),
(114, 3, 'first_name', ''),
(115, 3, 'last_name', ''),
(116, 3, 'description', ''),
(117, 3, 'rich_editing', 'true'),
(118, 3, 'syntax_highlighting', 'true'),
(119, 3, 'comment_shortcuts', 'false'),
(120, 3, 'admin_color', 'fresh'),
(121, 3, 'use_ssl', '0'),
(122, 3, 'show_admin_bar_front', 'true'),
(123, 3, 'locale', ''),
(124, 3, 'ecomm_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(125, 3, 'ecomm_user_level', '0'),
(127, 3, 'wc_last_active', '1591747200'),
(134, 2, 'paying_customer', '1'),
(135, 2, '_order_count', '2'),
(136, 1, 'session_tokens', 'a:1:{s:64:\"d560a4664779f725d1b00d1d40def442d0a705f5c39874be4af982a141d8a331\";a:4:{s:10:\"expiration\";i:1591958517;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0\";s:5:\"login\";i:1591785717;}}'),
(139, 1, '_order_count', '3');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_users`
--

CREATE TABLE `ecomm_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_users`
--

INSERT INTO `ecomm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'me.karbal', '$P$BJ.6LoZ.wGe9Eat4a9U2Ke5bwcq1zo/', 'me-karbal', 'me.karbal@gmail.com', 'http://localhost:8080/ecomm_wp', '2020-06-08 10:09:23', '', 0, 'me.karbal'),
(2, 'yassir', '$P$BO0liWIkHOoOCpjoXkMi/IJdetzcUb0', 'yassir', 'yassir@email.com', 'http://woocommerce_app', '2020-06-08 13:08:59', '1591621741:$P$Bzohq.4w5u1qFgvl6nIYNZWD4e26IZ.', 0, 'yyy yyyy'),
(3, 'ccc', '$P$BiLzAiSZ8Xa1VUjPcebOlPBDBMXbd/1', 'ccc', 'ccc@cc.com', '', '2020-06-10 10:01:32', '', 0, 'ccc');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_admin_notes`
--

CREATE TABLE `ecomm_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_admin_notes`
--

INSERT INTO `ecomm_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', 'mail', '{}', 'unactioned', 'woocommerce-admin', '2020-06-08 10:16:51', NULL, 0),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', 'speaker', '{}', 'unactioned', 'woocommerce-admin', '2020-06-08 10:16:51', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-06-08 10:16:52', NULL, 0),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-06-08 08:16:58', NULL, 0),
(5, 'wc-admin-orders-milestone', 'info', 'en_US', 'First order', 'Congratulations on getting your first order from a customer! Learn how to manage your orders.', 'trophy', '{}', 'unactioned', 'woocommerce-admin', '2020-06-08 13:18:23', NULL, 0),
(6, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-06-10 10:17:00', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_admin_note_actions`
--

CREATE TABLE `ecomm_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_admin_note_actions`
--

INSERT INTO `ecomm_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://localhost:8080/ecomm_wp/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'http://localhost:8080/ecomm_wp/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(5, 4, 'skip-profiler', 'Skip Setup', 'http://localhost:8080/ecomm_wp/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0),
(6, 5, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/managing-orders/', 'actioned', 0),
(7, 6, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_category_lookup`
--

CREATE TABLE `ecomm_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_category_lookup`
--

INSERT INTO `ecomm_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_customer_lookup`
--

CREATE TABLE `ecomm_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_customer_lookup`
--

INSERT INTO `ecomm_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'me.karbal', 'hfhf', 'hjfshj', 'me.karbal@gmail.com', '2020-06-09 23:00:00', '2020-06-08 09:09:23', 'MA', '1212121', 'saaa', 'jvhg'),
(2, 2, 'yassir', 'yyy', 'yyyy', 'yassir@email.com', '2020-06-09 23:00:00', '2020-06-08 12:08:59', 'MA', '46000', 'SAFI', 'FSMLFS');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_download_log`
--

CREATE TABLE `ecomm_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_order_coupon_lookup`
--

CREATE TABLE `ecomm_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_order_coupon_lookup`
--

INSERT INTO `ecomm_wc_order_coupon_lookup` (`order_id`, `coupon_id`, `date_created`, `discount_amount`) VALUES
(76, 63, '2020-06-10 11:36:29', 12);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_order_product_lookup`
--

CREATE TABLE `ecomm_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_order_product_lookup`
--

INSERT INTO `ecomm_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 51, 14, 0, 1, '2020-06-08 14:03:18', 2, 36, 36, 0, 0, 0, 0),
(2, 51, 17, 0, 1, '2020-06-08 14:03:18', 2, 180, 180, 0, 0, 0, 0),
(4, 52, 16, 0, 2, '2020-06-08 14:47:56', 1, 16, 16, 0, 0, 0, 0),
(6, 57, 53, 0, 1, '2020-06-08 15:30:22', 5, 60, 60, 0, 0, 0, 0),
(8, 76, 53, 0, 2, '2020-06-10 11:36:29', 1, 0, 0, 12, 0, 0, 0),
(11, 80, 17, 0, 1, '2020-06-10 16:43:02', 1, 80, 80, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_order_stats`
--

CREATE TABLE `ecomm_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_order_stats`
--

INSERT INTO `ecomm_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(51, 0, '2020-06-08 14:03:18', '2020-06-08 13:03:18', 4, 216, 0, 0, 216, 0, 'wc-completed', 1),
(52, 0, '2020-06-08 14:47:56', '2020-06-08 13:47:56', 1, 16, 0, 0, 16, 0, 'wc-processing', 2),
(57, 0, '2020-06-08 15:30:22', '2020-06-08 14:30:22', 5, 60, 0, 0, 60, 1, 'wc-on-hold', 1),
(76, 0, '2020-06-10 11:36:29', '2020-06-10 10:36:29', 1, 0, 0, 0, 0, 1, 'wc-processing', 2),
(80, 0, '2020-06-10 16:43:02', '2020-06-10 15:43:02', 1, 80, 0, 0, 80, 1, 'wc-processing', 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_order_tax_lookup`
--

CREATE TABLE `ecomm_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_product_meta_lookup`
--

CREATE TABLE `ecomm_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_product_meta_lookup`
--

INSERT INTO `ecomm_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(10, 'woo-vneck-tee', 0, 0, '0.0000', '0.0000', 0, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(11, 'woo-hoodie', 0, 0, '0.0000', '0.0000', 0, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(12, 'woo-hoodie-with-logo', 0, 0, '30.0000', '30.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(13, 'woo-tshirt', 0, 0, '18.0000', '18.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(14, 'woo-beanie', 0, 0, '18.0000', '18.0000', 1, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(15, 'woo-belt', 0, 0, '55.0000', '55.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(16, 'woo-cap', 0, 0, '16.0000', '16.0000', 1, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(17, 'woo-sunglasses', 0, 0, '80.0000', '80.0000', 1, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(18, 'woo-hoodie-with-pocket', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(19, 'woo-hoodie-with-zipper', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(20, 'woo-long-sleeve-tee', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(21, 'woo-polo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, 'woo-album', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(23, 'woo-single', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(24, 'woo-vneck-tee-red', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(25, 'woo-vneck-tee-green', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(26, 'woo-vneck-tee-blue', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(27, 'woo-hoodie-red', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(28, 'woo-hoodie-green', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(29, 'woo-hoodie-blue', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(30, 'Woo-tshirt-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(31, 'Woo-beanie-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(32, 'logo-collection', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(33, 'wp-pennant', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(34, 'woo-hoodie-blue-logo', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(53, '', 0, 0, '12.0000', '12.0000', 1, NULL, 'instock', 0, '0.00', 6, 'shipping', '');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_tax_rate_classes`
--

CREATE TABLE `ecomm_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_wc_tax_rate_classes`
--

INSERT INTO `ecomm_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_wc_webhooks`
--

CREATE TABLE `ecomm_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_api_keys`
--

CREATE TABLE `ecomm_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_attribute_taxonomies`
--

CREATE TABLE `ecomm_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_attribute_taxonomies`
--

INSERT INTO `ecomm_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `ecomm_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_log`
--

CREATE TABLE `ecomm_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_order_itemmeta`
--

CREATE TABLE `ecomm_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_order_itemmeta`
--

INSERT INTO `ecomm_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '14'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '2'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '36'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '36'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '17'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '2'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '180'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '180'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, 'method_id', 'free_shipping'),
(20, 3, 'instance_id', '1'),
(21, 3, 'cost', '0.00'),
(22, 3, 'total_tax', '0'),
(23, 3, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(24, 3, 'Items', 'Beanie &times; 2, Sunglasses &times; 2'),
(25, 4, '_product_id', '16'),
(26, 4, '_variation_id', '0'),
(27, 4, '_qty', '1'),
(28, 4, '_tax_class', ''),
(29, 4, '_line_subtotal', '16'),
(30, 4, '_line_subtotal_tax', '0'),
(31, 4, '_line_total', '16'),
(32, 4, '_line_tax', '0'),
(33, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(34, 5, 'method_id', 'free_shipping'),
(35, 5, 'instance_id', '1'),
(36, 5, 'cost', '0.00'),
(37, 5, 'total_tax', '0'),
(38, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(39, 5, 'Items', 'Cap &times; 1'),
(40, 6, '_product_id', '53'),
(41, 6, '_variation_id', '0'),
(42, 6, '_qty', '5'),
(43, 6, '_tax_class', ''),
(44, 6, '_line_subtotal', '60'),
(45, 6, '_line_subtotal_tax', '0'),
(46, 6, '_line_total', '60'),
(47, 6, '_line_tax', '0'),
(48, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(49, 7, 'method_id', 'free_shipping'),
(50, 7, 'instance_id', '1'),
(51, 7, 'cost', '0.00'),
(52, 7, 'total_tax', '0'),
(53, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(54, 7, 'Items', 'HHHHHHHHHF &times; 5'),
(55, 8, '_product_id', '53'),
(56, 8, '_variation_id', '0'),
(57, 8, '_qty', '1'),
(58, 8, '_tax_class', ''),
(59, 8, '_line_subtotal', '12'),
(60, 8, '_line_subtotal_tax', '0'),
(61, 8, '_line_total', '0'),
(62, 8, '_line_tax', '0'),
(63, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(64, 9, 'method_id', 'free_shipping'),
(65, 9, 'instance_id', '1'),
(66, 9, 'cost', '0.00'),
(67, 9, 'total_tax', '0'),
(68, 9, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(69, 9, 'Items', 'HHHHHHHHHF &times; 1'),
(70, 10, 'discount_amount', '12'),
(71, 10, 'discount_amount_tax', '0'),
(72, 10, 'coupon_data', 'a:24:{s:2:\"id\";i:63;s:4:\"code\";s:3:\"aaa\";s:6:\"amount\";s:2:\"12\";s:12:\"date_created\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2020-06-10 10:24:30.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:17:\"Africa/Casablanca\";}s:13:\"date_modified\";O:11:\"WC_DateTime\":4:{s:13:\"\0*\0utc_offset\";i:0;s:4:\"date\";s:26:\"2020-06-10 10:24:30.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:17:\"Africa/Casablanca\";}s:12:\"date_expires\";N;s:13:\"discount_type\";s:10:\"fixed_cart\";s:11:\"description\";s:0:\"\";s:11:\"usage_count\";i:0;s:14:\"individual_use\";b:0;s:11:\"product_ids\";a:0:{}s:20:\"excluded_product_ids\";a:0:{}s:11:\"usage_limit\";i:0;s:20:\"usage_limit_per_user\";i:0;s:22:\"limit_usage_to_x_items\";N;s:13:\"free_shipping\";b:0;s:18:\"product_categories\";a:0:{}s:27:\"excluded_product_categories\";a:0:{}s:18:\"exclude_sale_items\";b:0;s:14:\"minimum_amount\";s:0:\"\";s:14:\"maximum_amount\";s:0:\"\";s:18:\"email_restrictions\";a:0:{}s:7:\"virtual\";b:0;s:9:\"meta_data\";a:0:{}}'),
(73, 11, '_product_id', '17'),
(74, 11, '_variation_id', '0'),
(75, 11, '_qty', '1'),
(76, 11, '_tax_class', ''),
(77, 11, '_line_subtotal', '80'),
(78, 11, '_line_subtotal_tax', '0'),
(79, 11, '_line_total', '80'),
(80, 11, '_line_tax', '0'),
(81, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 12, 'method_id', 'free_shipping'),
(83, 12, 'instance_id', '1'),
(84, 12, 'cost', '0.00'),
(85, 12, 'total_tax', '0'),
(86, 12, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(87, 12, 'Items', 'Sunglasses &times; 1');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_order_items`
--

CREATE TABLE `ecomm_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_order_items`
--

INSERT INTO `ecomm_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Beanie', 'line_item', 51),
(2, 'Sunglasses', 'line_item', 51),
(3, 'Free shipping', 'shipping', 51),
(4, 'Cap', 'line_item', 52),
(5, 'Free shipping', 'shipping', 52),
(6, 'HHHHHHHHHF', 'line_item', 57),
(7, 'Free shipping', 'shipping', 57),
(8, 'HHHHHHHHHF', 'line_item', 76),
(9, 'Free shipping', 'shipping', 76),
(10, 'aaa', 'coupon', 76),
(11, 'Sunglasses', 'line_item', 80),
(12, 'Free shipping', 'shipping', 80);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_payment_tokenmeta`
--

CREATE TABLE `ecomm_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_payment_tokens`
--

CREATE TABLE `ecomm_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_sessions`
--

CREATE TABLE `ecomm_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_sessions`
--

INSERT INTO `ecomm_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(52, 'f9b19acdb32eaf97bc2070a23129b7b0', 'a:1:{s:8:\"customer\";s:823:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:25:\"2020-06-08T14:47:56+01:00\";s:8:\"postcode\";s:5:\"46000\";s:4:\"city\";s:4:\"SAFI\";s:9:\"address_1\";s:2:\"12\";s:7:\"address\";s:2:\"12\";s:9:\"address_2\";s:9:\"DZZZZDZAE\";s:5:\"state\";s:6:\"FSMLFS\";s:7:\"country\";s:2:\"MA\";s:17:\"shipping_postcode\";s:5:\"46000\";s:13:\"shipping_city\";s:4:\"SAFI\";s:18:\"shipping_address_1\";s:2:\"12\";s:16:\"shipping_address\";s:2:\"12\";s:18:\"shipping_address_2\";s:9:\"DZZZZDZAE\";s:14:\"shipping_state\";s:6:\"FSMLFS\";s:16:\"shipping_country\";s:2:\"MA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:6:\"yassir\";s:9:\"last_name\";s:6:\"yassir\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"12121212121\";s:5:\"email\";s:16:\"yassir@email.com\";s:19:\"shipping_first_name\";s:6:\"yassir\";s:18:\"shipping_last_name\";s:6:\"yassir\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1591954010),
(55, '5bdc7af2d4bef23b896269e7d103bbd9', 'a:1:{s:8:\"customer\";s:822:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:25:\"2020-06-08T14:47:56+01:00\";s:8:\"postcode\";s:5:\"46000\";s:4:\"city\";s:4:\"SAFI\";s:9:\"address_1\";s:2:\"12\";s:7:\"address\";s:2:\"12\";s:9:\"address_2\";s:9:\"DZZZZDZAE\";s:5:\"state\";s:6:\"FSMLFS\";s:7:\"country\";s:2:\"MA\";s:17:\"shipping_postcode\";s:5:\"46000\";s:13:\"shipping_city\";s:4:\"SAFI\";s:18:\"shipping_address_1\";s:2:\"12\";s:16:\"shipping_address\";s:2:\"12\";s:18:\"shipping_address_2\";s:9:\"DZZZZDZAE\";s:14:\"shipping_state\";s:6:\"FSMLFS\";s:16:\"shipping_country\";s:2:\"MA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:6:\"yassir\";s:9:\"last_name\";s:6:\"yassir\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"12121212121\";s:5:\"email\";s:16:\"yassir@email.com\";s:19:\"shipping_first_name\";s:6:\"yassir\";s:18:\"shipping_last_name\";s:6:\"yassir\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1591955572),
(73, 'b063cf417f92354d6cbd84aa3b67564f', 'a:1:{s:8:\"customer\";s:822:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:25:\"2020-06-10T11:36:34+01:00\";s:8:\"postcode\";s:5:\"46000\";s:4:\"city\";s:4:\"SAFI\";s:9:\"address_1\";s:2:\"12\";s:7:\"address\";s:2:\"12\";s:9:\"address_2\";s:9:\"DZZZZDZAE\";s:5:\"state\";s:6:\"FSMLFS\";s:7:\"country\";s:2:\"MA\";s:17:\"shipping_postcode\";s:5:\"46000\";s:13:\"shipping_city\";s:4:\"SAFI\";s:18:\"shipping_address_1\";s:2:\"12\";s:16:\"shipping_address\";s:2:\"12\";s:18:\"shipping_address_2\";s:9:\"DZZZZDZAE\";s:14:\"shipping_state\";s:6:\"FSMLFS\";s:16:\"shipping_country\";s:2:\"MA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:6:\"yassir\";s:9:\"last_name\";s:6:\"yassir\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"12121212121\";s:5:\"email\";s:16:\"yassir@email.com\";s:19:\"shipping_first_name\";s:6:\"yassir\";s:18:\"shipping_last_name\";s:6:\"yassir\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1591958138),
(74, '1', 'a:15:{s:22:\"mailchimp_landing_site\";s:51:\"http://localhost:8080/ecomm_wp/ecomm_wp/my-account/\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:824:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-06-10T16:43:02+01:00\";s:8:\"postcode\";s:7:\"1212121\";s:4:\"city\";s:4:\"saaa\";s:9:\"address_1\";s:4:\"safi\";s:7:\"address\";s:4:\"safi\";s:9:\"address_2\";s:3:\"sas\";s:5:\"state\";s:4:\"jvhg\";s:7:\"country\";s:2:\"MA\";s:17:\"shipping_postcode\";s:7:\"1212121\";s:13:\"shipping_city\";s:4:\"saaa\";s:18:\"shipping_address_1\";s:4:\"safi\";s:16:\"shipping_address\";s:4:\"safi\";s:18:\"shipping_address_2\";s:3:\"sas\";s:14:\"shipping_state\";s:4:\"jvhg\";s:16:\"shipping_country\";s:2:\"MA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"hfhf\";s:9:\"last_name\";s:6:\"hjfshj\";s:7:\"company\";s:5:\"hfhkh\";s:5:\"phone\";s:9:\"123124142\";s:5:\"email\";s:19:\"me.karbal@gmail.com\";s:19:\"shipping_first_name\";s:4:\"hfhf\";s:18:\"shipping_last_name\";s:6:\"hjfshj\";s:16:\"shipping_company\";s:5:\"hfhkh\";}\";s:22:\"shipping_for_package_0\";s:394:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_c1e1fb86af2e2e9bfa1b4a0148d33510\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:20:\"Sunglasses &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;}', 1591976564);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_shipping_zones`
--

CREATE TABLE `ecomm_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_shipping_zones`
--

INSERT INTO `ecomm_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Morocco', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_shipping_zone_locations`
--

CREATE TABLE `ecomm_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_shipping_zone_locations`
--

INSERT INTO `ecomm_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'MA', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_shipping_zone_methods`
--

CREATE TABLE `ecomm_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecomm_woocommerce_shipping_zone_methods`
--

INSERT INTO `ecomm_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_tax_rates`
--

CREATE TABLE `ecomm_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecomm_woocommerce_tax_rate_locations`
--

CREATE TABLE `ecomm_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ecomm_actionscheduler_actions`
--
ALTER TABLE `ecomm_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Index pour la table `ecomm_actionscheduler_claims`
--
ALTER TABLE `ecomm_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Index pour la table `ecomm_actionscheduler_groups`
--
ALTER TABLE `ecomm_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Index pour la table `ecomm_actionscheduler_logs`
--
ALTER TABLE `ecomm_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Index pour la table `ecomm_commentmeta`
--
ALTER TABLE `ecomm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ecomm_comments`
--
ALTER TABLE `ecomm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `ecomm_links`
--
ALTER TABLE `ecomm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `ecomm_mailchimp_carts`
--
ALTER TABLE `ecomm_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `ecomm_mailchimp_jobs`
--
ALTER TABLE `ecomm_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecomm_options`
--
ALTER TABLE `ecomm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `ecomm_postmeta`
--
ALTER TABLE `ecomm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ecomm_posts`
--
ALTER TABLE `ecomm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `ecomm_termmeta`
--
ALTER TABLE `ecomm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ecomm_terms`
--
ALTER TABLE `ecomm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `ecomm_term_relationships`
--
ALTER TABLE `ecomm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `ecomm_term_taxonomy`
--
ALTER TABLE `ecomm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `ecomm_usermeta`
--
ALTER TABLE `ecomm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `ecomm_users`
--
ALTER TABLE `ecomm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `ecomm_wc_admin_notes`
--
ALTER TABLE `ecomm_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Index pour la table `ecomm_wc_admin_note_actions`
--
ALTER TABLE `ecomm_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Index pour la table `ecomm_wc_category_lookup`
--
ALTER TABLE `ecomm_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Index pour la table `ecomm_wc_customer_lookup`
--
ALTER TABLE `ecomm_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `ecomm_wc_download_log`
--
ALTER TABLE `ecomm_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `ecomm_wc_order_coupon_lookup`
--
ALTER TABLE `ecomm_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `ecomm_wc_order_product_lookup`
--
ALTER TABLE `ecomm_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `ecomm_wc_order_stats`
--
ALTER TABLE `ecomm_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Index pour la table `ecomm_wc_order_tax_lookup`
--
ALTER TABLE `ecomm_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Index pour la table `ecomm_wc_product_meta_lookup`
--
ALTER TABLE `ecomm_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index pour la table `ecomm_wc_tax_rate_classes`
--
ALTER TABLE `ecomm_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Index pour la table `ecomm_wc_webhooks`
--
ALTER TABLE `ecomm_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ecomm_woocommerce_api_keys`
--
ALTER TABLE `ecomm_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `ecomm_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ecomm_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `ecomm_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ecomm_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index pour la table `ecomm_woocommerce_log`
--
ALTER TABLE `ecomm_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `ecomm_woocommerce_order_itemmeta`
--
ALTER TABLE `ecomm_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `ecomm_woocommerce_order_items`
--
ALTER TABLE `ecomm_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `ecomm_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ecomm_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `ecomm_woocommerce_payment_tokens`
--
ALTER TABLE `ecomm_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `ecomm_woocommerce_sessions`
--
ALTER TABLE `ecomm_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index pour la table `ecomm_woocommerce_shipping_zones`
--
ALTER TABLE `ecomm_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `ecomm_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ecomm_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `ecomm_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ecomm_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `ecomm_woocommerce_tax_rates`
--
ALTER TABLE `ecomm_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `ecomm_woocommerce_tax_rate_locations`
--
ALTER TABLE `ecomm_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ecomm_actionscheduler_actions`
--
ALTER TABLE `ecomm_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `ecomm_actionscheduler_claims`
--
ALTER TABLE `ecomm_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT pour la table `ecomm_actionscheduler_groups`
--
ALTER TABLE `ecomm_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecomm_actionscheduler_logs`
--
ALTER TABLE `ecomm_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `ecomm_commentmeta`
--
ALTER TABLE `ecomm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `ecomm_comments`
--
ALTER TABLE `ecomm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ecomm_links`
--
ALTER TABLE `ecomm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_mailchimp_jobs`
--
ALTER TABLE `ecomm_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_options`
--
ALTER TABLE `ecomm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;

--
-- AUTO_INCREMENT pour la table `ecomm_postmeta`
--
ALTER TABLE `ecomm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT pour la table `ecomm_posts`
--
ALTER TABLE `ecomm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `ecomm_termmeta`
--
ALTER TABLE `ecomm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ecomm_terms`
--
ALTER TABLE `ecomm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `ecomm_term_taxonomy`
--
ALTER TABLE `ecomm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `ecomm_usermeta`
--
ALTER TABLE `ecomm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT pour la table `ecomm_users`
--
ALTER TABLE `ecomm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_admin_notes`
--
ALTER TABLE `ecomm_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_admin_note_actions`
--
ALTER TABLE `ecomm_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_customer_lookup`
--
ALTER TABLE `ecomm_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_download_log`
--
ALTER TABLE `ecomm_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_tax_rate_classes`
--
ALTER TABLE `ecomm_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecomm_wc_webhooks`
--
ALTER TABLE `ecomm_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_api_keys`
--
ALTER TABLE `ecomm_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ecomm_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ecomm_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_log`
--
ALTER TABLE `ecomm_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_order_itemmeta`
--
ALTER TABLE `ecomm_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_order_items`
--
ALTER TABLE `ecomm_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ecomm_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_payment_tokens`
--
ALTER TABLE `ecomm_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_sessions`
--
ALTER TABLE `ecomm_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_shipping_zones`
--
ALTER TABLE `ecomm_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ecomm_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ecomm_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_tax_rates`
--
ALTER TABLE `ecomm_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecomm_woocommerce_tax_rate_locations`
--
ALTER TABLE `ecomm_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ecomm_wc_download_log`
--
ALTER TABLE `ecomm_wc_download_log`
  ADD CONSTRAINT `fk_ecomm_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `ecomm_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
