-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Okt 2018 pada 15.39
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kam_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_um_menu`
--

CREATE TABLE `tbl_um_menu` (
  `um_menu_id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tipemenu` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(11) NOT NULL,
  `parenturl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_um_menu`
--

INSERT INTO `tbl_um_menu` (`um_menu_id`, `nama`, `tipemenu`, `url`, `keterangan`, `created`, `createdby`, `updated`, `updatedby`, `parenturl`) VALUES
(1, 'User Management', 'Summary', '#', 'PAGE_UM_AKSES;PAGE_UM_MENU;PAGE_UM_MENU_AKSES;PAGE_UM_USER;PAGE_UM_USER_AKSES', '2017-11-17 08:34:42', 1, '2017-11-17 08:34:42', 1, 0),
(3, 'List Menu', 'List', 'admincreative/ummenu', 'PAGE_UM_MENU', '2018-09-16 16:38:27', 1, '2018-09-16 16:38:27', 1, 1),
(4, 'Menu Akses List', 'List', 'admincreative/ummenuakses', 'PAGE_UM_MENU_AKSES', '2018-09-19 06:43:01', 1, '2018-09-19 06:43:01', 1, 1),
(5, 'Menu User Login', 'List', 'admincreative/umuser', 'PAGE_UM_USER', '2018-09-14 11:08:24', 1, '2018-09-14 11:08:24', 1, 1),
(6, 'User Hak Akses', 'List', 'admincreative/umuserakses', 'PAGE_UM_USER_AKSES', '2018-09-14 11:08:48', 1, '2018-09-14 11:08:48', 1, 1),
(7, 'PAGE_UM_AKSES', 'Form', 'admincreative/umakses/data.php', 'PAGE_UM_AKSES', '2018-09-14 11:17:28', 1, '2018-09-14 11:17:28', 1, 0),
(8, 'PAGE_UM_AKSES_ADDFORM', 'Form', 'admincreative/umakses/form.php', 'PAGE_UM_AKSES_ADDFORM', '2018-09-14 11:17:30', 1, '2018-09-14 11:17:30', 1, 0),
(9, 'PAGE_UM_AKSES_FORMUPDATE', 'Fom', 'admincreative/umakses/update.php', 'PAGE_UM_AKSES_FORMUPDATE', '2018-09-14 11:17:34', 1, '2018-09-14 11:17:34', 1, 0),
(10, 'PAGE_UM_MENU', 'Form', 'ummenu/data.php', 'PAGE_UM_MENU', '2018-09-14 11:28:12', 1, '2018-09-14 11:28:12', 1, 0),
(11, 'PAGE_UM_MENU_ADDFORM', 'Form', 'ummenu/form.php', 'PAGE_UM_MENU_ADDFORM', '2018-09-14 11:28:46', 1, '2018-09-14 11:28:46', 1, 0),
(12, 'PAGE_UM_MENU_FORMUPDATE', 'Form', 'ummenu/update.php', 'PAGE_UM_MENU_FORMUPDATE', '2018-09-14 11:28:50', 1, '2018-09-14 11:28:50', 1, 0),
(13, 'PAGE_UM_MENU_AKSES', 'Form', 'ummenuakses/data.php', 'PAGE_UM_MENU_AKSES', '2017-11-17 10:06:26', 1, '2017-11-17 10:06:26', 1, 0),
(14, 'PAGE_UM_MENU_AKSES_ADDFORM', 'Form', 'ummenuakses/form.php', 'PAGE_UM_MENU_AKSES_ADDFORM', '2017-11-17 10:06:49', 1, '2017-11-17 10:06:49', 1, 0),
(15, 'PAGE_UM_MENU_AKSES_FORMUPDATE', 'Form', 'ummenuakses/update.php', 'PAGE_UM_MENU_AKSES_FORMUPDATE', '2017-11-17 10:15:14', 1, '2017-11-17 10:15:14', 1, 0),
(16, 'PAGE_UM_USER', 'Form', 'umuser/data.php', 'PAGE_UM_USER', '2017-11-17 10:15:32', 1, '2017-11-17 10:15:32', 1, 0),
(17, 'PAGE_UM_USER_ADDFORM', 'Form', 'umuser/form.php', 'PAGE_UM_USER_ADDFORM', '2017-11-17 10:15:53', 1, '2017-11-17 10:15:53', 1, 0),
(18, 'PAGE_UM_USER_FORMUPDATE', 'Form', 'umuser/update.php', 'PAGE_UM_USER_FORMUPDATE', '2017-11-17 10:16:10', 1, '2017-11-17 10:16:10', 1, 0),
(19, 'PAGE_UM_USER_AKSES', 'Form', 'umuserakses/data.php', 'PAGE_UM_USER_AKSES', '2017-11-17 10:17:51', 1, '2017-11-17 10:17:51', 1, 0),
(20, 'PAGE_UM_USER_AKSES_ADDFORM', 'Form', 'umuserakses/form.php', 'PAGE_UM_USER_AKSES_ADDFORM', '2017-11-17 10:18:07', 1, '2017-11-17 10:18:07', 1, 0),
(25, 'Title', 'Summary', '#', 'PAGE_UM_TITLE', '2018-09-19 06:30:24', 1, '2018-09-19 06:30:24', 1, 0),
(29, 'Title Content', 'List', 'admincreative/title', 'PAGE_UM_TITLE', '2018-09-19 06:48:41', 1, '2018-09-19 06:48:41', 1, 25),
(30, 'PAGE_UM_TITLE', 'Form', 'title/data.php', 'PAGE_UM_TITLE', '2018-09-19 10:27:36', 1, '2018-09-19 10:27:36', 1, 0),
(31, 'PAGE_UM_TITLE_ADDFORM', 'Form', 'title/form.php', 'PAGE_UM_TITLE_ADDFORM', '2018-09-19 06:52:25', 1, '2018-09-19 06:52:25', 1, 0),
(32, 'PAGE_UM_TITLE_AKSES', 'Form', 'title/data.php', 'PAGE_UM_TITLE_AKSES', '2018-09-19 10:27:41', 1, '2018-09-19 10:27:41', 1, 0),
(33, 'About', 'Summary', '#', 'PAGE_UM_ABOUT', '2018-09-20 07:48:50', 1, '2018-09-20 07:48:50', 1, 0),
(34, 'About Content', 'List', 'admincreative/about', 'PAGE_UM_ABOUT', '2018-09-19 08:25:29', 1, '2018-09-19 08:25:29', 1, 33),
(35, 'PAGE_UM_ABOUT', 'Form', 'about/data.php', 'PAGE_UM_ABOUT', '2018-09-19 08:26:02', 1, '2018-09-19 08:26:02', 1, 0),
(36, 'PAGE_UM_ABOUT_ADDFORM', 'Form', 'about/form.php', 'PAGE_UM_ABOUT_ADDFORM', '2018-09-19 08:26:48', 1, '2018-09-19 08:26:48', 1, 0),
(37, 'PAGE_UM_ABOUT_AKSES', 'Form', 'about/data.php', 'PAGE_UM_ABOUT_AKSES', '2018-09-19 08:27:45', 1, '2018-09-19 08:27:45', 1, 0),
(38, 'Contact', 'Summary', '#', 'PAGE_UM_CONTACT_PHONE;PAGE_UM_CONTACT_EMAIL', '2018-09-20 14:54:01', 1, '2018-09-20 14:54:01', 1, 0),
(39, 'Contact Phone Content', 'List', 'admincreative/contactphone', 'PAGE_UM_CONTACT_PHONE', '2018-09-20 14:54:38', 1, '2018-09-20 14:54:38', 1, 38),
(40, 'PAGE_UM_CONTACT_PHONE', 'Form', 'contactphone/data.php', 'PAGE_UM_CONTACT_PHONE', '2018-09-19 10:28:00', 1, '2018-09-19 10:28:00', 1, 0),
(41, 'PAGE_UM_CONTACT_PHONE_ADDFORM', 'Form', 'contactphone/form.php', 'PAGE_UM_CONTACT_PHONE_ADDFORM', '2018-09-19 10:28:08', 1, '2018-09-19 10:28:08', 1, 0),
(42, 'PAGE_UM_CONTACT_PHONE_AKSES', 'Form', 'contactphone/data.php', 'PAGE_UM_CONTACT_PHONE_AKSES', '2018-09-19 10:28:04', 1, '2018-09-19 10:28:04', 1, 0),
(43, 'PAGE_UM_TITLE_FORMUPDATE', 'Form', 'title/update.php', 'PAGE_UM_TITLE_FORMUPDATE', '2018-09-25 08:04:57', 1, '2018-09-25 08:04:57', 1, 0),
(44, 'PAGE_UM_ABOUT_FORMUPDATE', 'Form', 'about/update.php', 'PAGE_UM_ABOUT_FORMUPDATE', '2018-09-20 07:30:18', 1, '2018-09-20 07:30:18', 1, 0),
(45, 'PAGE_UM_CONTACT_PHONE_FORMUPDATE', 'Form', 'contactphone/update.php', 'PAGE_UM_CONTACT_PHONE_FORMUPDATE', '2018-09-20 14:57:55', 1, '2018-09-20 14:57:55', 1, 0),
(46, 'Contact Email Content', 'List', 'admincreative/contactemail', 'PAGE_UM_CONTACT_EMAIL', '2018-09-20 15:09:26', 1, '2018-09-20 15:09:26', 1, 38),
(47, 'PAGE_UM_CONTACT_EMAIL', 'Form', 'contactemail/data.php', 'PAGE_UM_CONTACT_EMAIL', '2018-09-20 15:10:07', 1, '2018-09-20 15:10:07', 1, 0),
(48, 'PAGE_UM_CONTACT_EMAIL_ADDFORM', 'Form', 'contactemail/form.php', 'PAGE_UM_CONTACT_EMAIL_ADDFORM', '2018-09-20 15:10:52', 1, '2018-09-20 15:10:52', 1, 0),
(49, 'PAGE_UM_CONTACT_EMAIL_AKSES', 'Form', 'contactemail/data.php', 'PAGE_UM_CONTACT_EMAIL_AKSES', '2018-09-20 15:11:31', 1, '2018-09-20 15:11:31', 1, 0),
(50, 'PAGE_UM_CONTACT_EMAIL_FORMUPDATE', 'Form', 'contactemail/update.php', 'PAGE_UM_CONTACT_EMAIL_FORMUPDATE', '2018-09-20 15:12:13', 1, '2018-09-20 15:12:13', 1, 0),
(51, 'Address', 'Summary', '#', 'PAGE_UM_ADDRESS', '2018-09-25 08:00:51', 1, '2018-09-25 08:00:51', 1, 0),
(52, 'PAGE_UM_ADDRESS', 'Form', 'address/data.php', 'PAGE_UM_ADDRESS', '2018-09-25 08:01:58', 1, '2018-09-25 08:01:58', 1, 0),
(53, 'PAGE_UM_ADDRESS_ADDFORM', 'Form', 'address/form.php', 'PAGE_UM_ADDRESS_ADDFORM', '2018-09-25 08:03:11', 1, '2018-09-25 08:03:11', 1, 0),
(54, 'PAGE_UM_ADDRESS_AKSES', 'Form', 'address/data.php', 'PAGE_UM_ADDRESS_AKSES', '2018-09-25 08:04:00', 1, '2018-09-25 08:04:00', 1, 0),
(55, 'PAGE_UM_ADDRESS_FORMUPDATE', 'Form', 'address/update.php', 'PAGE_UM_ADDRESS_FORMUPDATE', '2018-09-25 08:05:01', 1, '2018-09-25 08:05:01', 1, 0),
(56, 'Address Content', 'List', 'admincreative/address', 'PAGE_UM_ADDRESS', '2018-09-25 08:06:29', 1, '2018-09-25 08:06:29', 1, 51),
(57, 'Address Header', 'List', 'admincreative/addressheader', 'PAGE_UM_ADDRESS_HEADER', '2018-09-27 06:32:56', 1, '2018-09-27 06:32:56', 1, 51),
(58, 'PAGE_UM_ADDRESS_HEADER', 'Form', 'addressheader/data.php', 'PAGE_UM_ADDRESS_HEADER', '2018-09-27 06:33:55', 1, '2018-09-27 06:33:55', 1, 0),
(59, 'PAGE_UM_ADDRESS_HEADER_ADDFORM', 'Form', 'addressheader/form.php', 'PAGE_UM_ADDRESS_HEADER_ADDFORM', '2018-09-27 06:34:46', 1, '2018-09-27 06:34:46', 1, 0),
(60, 'PAGE_UM_ADDRESS_HEADER_AKSES', 'Form', 'addressheader/data.php', 'PAGE_UM_ADDRESS_HEADER_AKSES', '2018-09-27 06:35:53', 1, '2018-09-27 06:35:53', 1, 0),
(61, 'PAGE_UM_ADDRESS_HEADER_FORMUPDATE', 'Form', 'addressheader/update.php', 'PAGE_UM_ADDRESS_HEADER_FORMUPDATE', '2018-09-27 06:37:00', 1, '2018-09-27 06:37:00', 1, 0),
(62, 'Gallery', 'Summary', '#', 'PAGE_UM_GALLERY', '2018-09-27 07:03:12', 1, '2018-09-27 07:03:12', 1, 0),
(63, 'Gallery Content', 'List', 'admincreative/gallery', 'PAGE_UM_GALLERY', '2018-09-27 09:20:23', 1, '2018-09-27 09:20:23', 1, 62),
(64, 'PAGE_UM_GALLERY', 'Form', 'gallery/data.php', 'PAGE_UM_GALLERY', '2018-09-27 09:21:27', 1, '2018-09-27 09:21:27', 1, 0),
(65, 'PAGE_UM_GALLERY_ADDFORM', 'Form', 'gallery/form.php', 'PAGE_UM_GALLERY_ADDFORM', '2018-09-27 09:22:06', 1, '2018-09-27 09:22:06', 1, 0),
(66, 'PAGE_UM_GALLERY_AKSES', 'Form', 'gallery/data.php', 'PAGE_UM_GALLERY_AKSES', '2018-09-27 09:23:20', 1, '2018-09-27 09:23:20', 1, 0),
(67, 'PAGE_UM_GALLERY_FORMUPDATE', 'Form', 'gallery/update.php', 'PAGE_UM_GALLERY_FORMUPDATE', '2018-09-27 09:24:31', 1, '2018-09-27 09:24:31', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_um_menu`
--
ALTER TABLE `tbl_um_menu`
  ADD PRIMARY KEY (`um_menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_um_menu`
--
ALTER TABLE `tbl_um_menu`
  MODIFY `um_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
