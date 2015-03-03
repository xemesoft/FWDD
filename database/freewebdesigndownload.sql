-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-03-02 14:41:16
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `freewebdesigndownload`
--

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_author`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_author` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `wesite_url` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_category`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_detail`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_detail` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `download_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT '0',
  `download_count` int(11) DEFAULT '0',
  `recommend` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `fwdd_item_detail`
--

INSERT INTO `fwdd_item_detail` (`id`, `user_id`, `title`, `description`, `category_id`, `license_id`, `author_id`, `image_id`, `download_id`, `tag_id`, `view_count`, `download_count`, `recommend`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test 0000001', 'Test 0000001', 1, 1, 1, 1, 1, 1, 0, 0, 0, '2014-06-07 16:00:00', '2014-06-07 16:00:00'),
(2, 1, 'Test 0000002', 'Test 0000002', 1, 1, 1, 1, 1, 1, 0, 0, 0, '2014-06-07 16:00:00', '2014-06-07 16:00:00'),
(3, 1, 'Test 0000003', 'Test 0000003', 1, 1, 1, 1, 1, 1, 0, 0, 0, '2014-06-07 16:00:00', '2014-06-07 16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_download`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_download` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL,
  `file_size` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_image`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_image` (
  `id` int(11) NOT NULL,
  `image_name` varchar(45) DEFAULT NULL,
  `image_dir` varchar(45) DEFAULT NULL,
  `thumbnail_name` varchar(45) DEFAULT NULL,
  `thumbnail_dir` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_license`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_license` (
  `id` int(11) NOT NULL,
  `license_name` varchar(45) DEFAULT NULL,
  `license_description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_item_tag`
--

CREATE TABLE IF NOT EXISTS `fwdd_item_tag` (
  `item_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_tag`
--

CREATE TABLE IF NOT EXISTS `fwdd_tag` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fwdd_user`
--

CREATE TABLE IF NOT EXISTS `fwdd_user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `website_url` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fwdd_user`
--

INSERT INTO `fwdd_user` (`id`, `username`, `password`, `firstname`, `lastname`, `email_address`, `website_url`, `created_at`, `updated_at`) VALUES
(0, 'tiger', '1234', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fwdd_item_author`
--
ALTER TABLE `fwdd_item_author`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_category`
--
ALTER TABLE `fwdd_item_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_detail`
--
ALTER TABLE `fwdd_item_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_download`
--
ALTER TABLE `fwdd_item_download`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_image`
--
ALTER TABLE `fwdd_item_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_license`
--
ALTER TABLE `fwdd_item_license`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_item_tag`
--
ALTER TABLE `fwdd_item_tag`
 ADD PRIMARY KEY (`item_id`,`tag_id`);

--
-- Indexes for table `fwdd_tag`
--
ALTER TABLE `fwdd_tag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fwdd_user`
--
ALTER TABLE `fwdd_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fwdd_item_detail`
--
ALTER TABLE `fwdd_item_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
