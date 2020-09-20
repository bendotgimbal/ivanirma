-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Sep 2020 pada 15.41
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Struktur dari tabel `tbl_creative_about_content`
--

CREATE TABLE `tbl_creative_about_content` (
  `id_about_content` int(11) NOT NULL,
  `about_header_content` varchar(100) NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_about_content`
--

INSERT INTO `tbl_creative_about_content` (`id_about_content`, `about_header_content`, `about_content`) VALUES
(1, 'We\'ve got what you need!', 'Yang dimana kami merupakan penyedia layanan kantor virtual yang memiliki beberapa lokasi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_address`
--

CREATE TABLE `tbl_creative_address` (
  `id_address` int(11) NOT NULL,
  `address_title` varchar(100) NOT NULL,
  `address_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_address`
--

INSERT INTO `tbl_creative_address` (`id_address`, `address_title`, `address_content`) VALUES
(1, 'Lokasi 1', 'Ruko Boulevard Jl. Taman Tekno Widya Blok D No. 1, Tangerang Selatan.'),
(2, 'Lokasi 2', 'Jalan Raya Pasar Minggu no. 10 E - F, rt-14, rw-05, kel pejaten timur, psr. Minggu - jaksel.'),
(3, 'Lokasi 3', 'RUKO PASKAL HYPER SQUARE BLOK C-29\r\nJl. Pasir kaliki Nomor 25-27 Bandung.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_address_header`
--

CREATE TABLE `tbl_creative_address_header` (
  `id_address_header` int(11) NOT NULL,
  `address_header_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_address_header`
--

INSERT INTO `tbl_creative_address_header` (`id_address_header`, `address_header_content`) VALUES
(1, 'At Your Service');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_contact`
--

CREATE TABLE `tbl_creative_contact` (
  `id_contact` int(11) NOT NULL,
  `content_contact` varchar(100) NOT NULL,
  `content_type` enum('phone','email','fax''') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_contact`
--

INSERT INTO `tbl_creative_contact` (`id_contact`, `content_contact`, `content_type`) VALUES
(1, '0822-9965-6602', 'phone'),
(2, 'feedback@karyaabdikamitrana.com', 'email');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_contact_email`
--

CREATE TABLE `tbl_creative_contact_email` (
  `id_contact_email` int(11) NOT NULL,
  `content_contact_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_contact_email`
--

INSERT INTO `tbl_creative_contact_email` (`id_contact_email`, `content_contact_email`) VALUES
(1, 'feedback@karyaabdikamitrana.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_contact_phone`
--

CREATE TABLE `tbl_creative_contact_phone` (
  `id_contact_phone` int(11) NOT NULL,
  `content_contact_phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_contact_phone`
--

INSERT INTO `tbl_creative_contact_phone` (`id_contact_phone`, `content_contact_phone`) VALUES
(1, '0822-9965-6602');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_gallery`
--

CREATE TABLE `tbl_creative_gallery` (
  `id_gallery` int(11) NOT NULL,
  `gallery_category` varchar(100) NOT NULL,
  `gallery_project_name` varchar(100) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_base64` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_gallery`
--

INSERT INTO `tbl_creative_gallery` (`id_gallery`, `gallery_category`, `gallery_project_name`, `gallery_name`, `gallery_base64`) VALUES
(1, 'Category 1', 'Project 1', 'b26d731346a5a93ffdf557e172f07081.jpg', ''),
(2, 'Category 2', 'Project 2', '879bb08d8dd13a65a8329e8128825a11.jpg', ''),
(3, 'Category 3', 'Project 3', '9ba200e37f6d8fa98b6b1bdf2bee366a.jpg', ''),
(4, 'Category 4', 'Project 4', '54624ebd4fae4228612488ee6cf5166b.jpg', ''),
(5, 'Category 5', 'Project 5', '9ba7f768f9390f7959a443e0acd8140c.jpg', ''),
(6, 'Category 6', 'Project 6', 'a25e79535f5fceaa587efe9daf816dc7.jpg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_menu`
--

CREATE TABLE `tbl_creative_menu` (
  `id_menu` int(11) NOT NULL,
  `menu_href` varchar(100) NOT NULL,
  `menu_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_menu`
--

INSERT INTO `tbl_creative_menu` (`id_menu`, `menu_href`, `menu_name`) VALUES
(1, '#about', 'ABOUT'),
(2, '#services', 'SERVICE'),
(3, '#portfolio', 'PORTOFOLIO'),
(4, '#contact', 'CONTACT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_title_content`
--

CREATE TABLE `tbl_creative_title_content` (
  `id_title_content` int(11) NOT NULL,
  `title_header_content` varchar(100) NOT NULL,
  `title_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_title_content`
--

INSERT INTO `tbl_creative_title_content` (`id_title_content`, `title_header_content`, `title_content`) VALUES
(6, 'PT.KARYA ABDIKA MITRANA', 'Dengan mengedepankan kenyamanan terhadap para penghuninya, PT KAM juga memberikan layanan – layanan lainnya seperti pembinaan pengusaha dan pembentukan jaringan bisnis bagi para wiraswasta Indonesia.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_creative_visitor`
--

CREATE TABLE `tbl_creative_visitor` (
  `visitor_id` int(11) NOT NULL,
  `visitor_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visitor_ip` varchar(50) DEFAULT NULL,
  `visitor_gadget` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_creative_visitor`
--

INSERT INTO `tbl_creative_visitor` (`visitor_id`, `visitor_date`, `visitor_ip`, `visitor_gadget`) VALUES
(1, '2018-09-19 17:21:49', '::1', 'Chrome'),
(2, '2018-09-22 17:58:22', '::1', 'Chrome'),
(3, '2018-09-25 06:53:08', '::1', 'Chrome'),
(4, '2018-09-27 06:22:56', '::1', 'Chrome'),
(5, '2018-10-12 02:46:32', '::1', 'Chrome'),
(6, '2018-10-17 13:51:32', '::1', 'Chrome'),
(7, '2019-03-13 03:15:26', '::1', 'Chrome'),
(8, '2019-03-14 02:55:25', '::1', 'Chrome'),
(9, '2019-03-15 09:39:45', '::1', 'Chrome'),
(10, '2019-03-15 20:33:12', '::1', 'Chrome'),
(11, '2019-07-01 09:33:57', '::1', 'Chrome'),
(12, '2019-07-01 17:50:03', '::1', 'Chrome'),
(13, '2019-07-03 07:47:35', '::1', 'Chrome'),
(14, '2020-07-08 02:00:47', '::1', 'Chrome'),
(15, '2020-08-11 15:00:19', '::1', 'Chrome'),
(16, '2020-08-12 12:11:42', '::1', 'Chrome'),
(17, '2020-09-01 02:48:51', '::1', 'Chrome'),
(18, '2020-09-16 13:07:13', '::1', 'Chrome'),
(19, '2020-09-19 12:43:05', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_server_liqu_id`
--

CREATE TABLE `tbl_server_liqu_id` (
  `id` int(10) NOT NULL,
  `url` varchar(50) NOT NULL,
  `port` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_server_liqu_id`
--

INSERT INTO `tbl_server_liqu_id` (`id`, `url`, `port`, `username`, `api_key`, `keterangan`, `created`, `createdby`, `updated`, `updatedby`) VALUES
(1, 'api.liqu.id', '443', '3183', '', 'Domain International', '2017-11-17 17:53:20', 1, '2017-11-17 17:53:20', 1),
(2, 'api.liqu.id', '443', '5154', '', 'Domain Indonesia', '2017-11-17 18:39:32', 1, '2017-11-17 18:52:10', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_server_whm`
--

CREATE TABLE `tbl_server_whm` (
  `id` int(10) NOT NULL,
  `ip_server` varchar(50) NOT NULL,
  `port_server` varchar(50) NOT NULL,
  `user_server` varchar(50) NOT NULL,
  `pass_server` varchar(50) NOT NULL,
  `hash_server` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_server_whm`
--

INSERT INTO `tbl_server_whm` (`id`, `ip_server`, `port_server`, `user_server`, `pass_server`, `hash_server`) VALUES
(1, '103.56.205.111', '2086', 'berdikar', 'galerboy_291089', 'b094e72675f078c27e9e60208af56e7f\n8dea4f3cc402083f89e50d44e82ef920\na83bbfde0ab7c8191f68be85688c731f\n9baa37c0c136d0bdedf4e4152511c1b9\naa4140453edbe28d9d6c32064436c0b1\n9581b5d8b1133399de1d26641254277b\nf0d76292ef36fd044cfb08f8ae9e3db4\nbf88856ca40a0815d5680a771d9b690c\n1611812399008f903c7854de78cc2c6a\n1636bbb71f8464abd9f9818df599e66a\n2b29b43b018c45f388327d777d8764aa\n3d443446fc76a3f7a6d7a6538893bdf5\nb93f7c48cbfb888ae90a844d97e1820b\n0839005a69aa344458d5e519de496957\na602ac1c97e3c04e3ea4227d1268f1f9\n807ae2770382fba8bdddb063e5ae5dbe\nd01d637ba0af0dfd4cad973532be06ff\n0027a21118fdacbeaf171aedb2a66b4d\n282673e1a315fb7e3475ffcffddf1601\nbfd2b72a694d617b536d43789b738b42\n24d9b9e01422bf81a3fcf08db7768722\n4cb8d2cd9ee585b6ecd7b82fb324a96d\ne18155d620c81845225d8f29d3cff576\n4dae9e13af2695103cbad1d563c0cbee\n1047eb1718a8b9597b13fd57e61627ee\n4f94e45026987c20e071b34325aaa786\nd09caa57eebb974a6ee5e856d4749c4e\n6e2ae9f607dbfee238c08ff91a8b8769\n821d65c7e04125a4163c9c262608c3a7\n5a114583db95ef4fcce2c08df0ed194f'),
(2, '103.56.205.111', '2086', 'berdikar', 'galerboy_291089', 'b094e72675f078c27e9e60208af56e7f\n8dea4f3cc402083f89e50d44e82ef920\na83bbfde0ab7c8191f68be85688c731f\n9baa37c0c136d0bdedf4e4152511c1b9\naa4140453edbe28d9d6c32064436c0b1\n9581b5d8b1133399de1d26641254277b\nf0d76292ef36fd044cfb08f8ae9e3db4\nbf88856ca40a0815d5680a771d9b690c\n1611812399008f903c7854de78cc2c6a\n1636bbb71f8464abd9f9818df599e66a\n2b29b43b018c45f388327d777d8764aa\n3d443446fc76a3f7a6d7a6538893bdf5\nb93f7c48cbfb888ae90a844d97e1820b\n0839005a69aa344458d5e519de496957\na602ac1c97e3c04e3ea4227d1268f1f9\n807ae2770382fba8bdddb063e5ae5dbe\nd01d637ba0af0dfd4cad973532be06ff\n0027a21118fdacbeaf171aedb2a66b4d\n282673e1a315fb7e3475ffcffddf1601\nbfd2b72a694d617b536d43789b738b42\n24d9b9e01422bf81a3fcf08db7768722\n4cb8d2cd9ee585b6ecd7b82fb324a96d\ne18155d620c81845225d8f29d3cff576\n4dae9e13af2695103cbad1d563c0cbee\n1047eb1718a8b9597b13fd57e61627ee\n4f94e45026987c20e071b34325aaa786\nd09caa57eebb974a6ee5e856d4749c4e\n6e2ae9f607dbfee238c08ff91a8b8769\n821d65c7e04125a4163c9c262608c3a7\n5a114583db95ef4fcce2c08df0ed194f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_um_akses`
--

CREATE TABLE `tbl_um_akses` (
  `um_akses_id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `created` datetime DEFAULT NULL,
  `createdby` decimal(10,0) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` decimal(10,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_um_akses`
--

INSERT INTO `tbl_um_akses` (`um_akses_id`, `nama`, `keterangan`, `created`, `createdby`, `updated`, `updatedby`) VALUES
(1, 'Administrator', 'abc', NULL, NULL, '2016-08-02 16:24:49', '0');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_um_menu_akses`
--

CREATE TABLE `tbl_um_menu_akses` (
  `um_menu_akses_id` int(11) NOT NULL,
  `um_menu_id` int(11) DEFAULT NULL,
  `um_akses_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_um_menu_akses`
--

INSERT INTO `tbl_um_menu_akses` (`um_menu_akses_id`, `um_menu_id`, `um_akses_id`, `created`, `createdby`, `updated`, `updatedby`) VALUES
(1, 0, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(2, 1, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(3, 2, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(4, 3, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(5, 4, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(6, 5, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(7, 6, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(8, 7, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(9, 8, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(10, 9, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(11, 10, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(12, 11, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(13, 12, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(14, 13, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(15, 14, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(16, 15, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(17, 16, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(18, 17, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(19, 18, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(20, 19, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(21, 20, 1, '2017-11-17 17:18:07', 1, '2017-11-17 17:18:07', 1),
(393, 21, 1, '2017-11-17 23:58:56', 1, '2017-11-17 23:58:56', 1),
(394, 23, 1, '2017-11-18 01:10:07', 1, '2017-11-18 01:10:07', 1),
(395, 24, 1, '2017-11-18 01:44:01', 1, '2017-11-18 01:44:01', 1),
(396, 25, 1, '2018-09-19 13:44:43', 1, '2018-09-19 13:44:43', 1),
(397, 30, 1, '2018-09-19 13:48:52', 1, '2018-09-19 13:48:52', 1),
(398, 31, 1, '2018-09-19 13:54:18', 1, '2018-09-19 13:54:18', 1),
(399, 32, 1, '2018-09-19 13:54:24', 1, '2018-09-19 13:54:24', 1),
(400, 29, 1, '2018-09-19 14:09:43', 1, '2018-09-19 14:09:43', 1),
(401, 33, 1, '2018-09-19 15:28:15', 1, '2018-09-19 15:28:15', 1),
(402, 34, 1, '2018-09-19 15:28:20', 1, '2018-09-19 15:28:20', 1),
(403, 35, 1, '2018-09-19 15:28:27', 1, '2018-09-19 15:28:27', 1),
(404, 36, 1, '2018-09-19 15:28:33', 1, '2018-09-19 15:28:33', 1),
(405, 37, 1, '2018-09-19 15:28:49', 1, '2018-09-19 15:28:49', 1),
(406, 38, 1, '2018-09-19 17:07:23', 1, '2018-09-19 17:07:23', 1),
(407, 39, 1, '2018-09-19 17:07:30', 1, '2018-09-19 17:07:30', 1),
(408, 40, 1, '2018-09-19 17:07:39', 1, '2018-09-19 17:07:39', 1),
(409, 41, 1, '2018-09-19 17:07:48', 1, '2018-09-19 17:07:48', 1),
(410, 42, 1, '2018-09-19 17:07:57', 1, '2018-09-19 17:07:57', 1),
(411, 43, 1, '2018-09-20 14:28:38', 1, '2018-09-20 14:28:38', 1),
(412, 44, 1, '2018-09-20 14:30:31', 1, '2018-09-20 14:30:31', 1),
(413, 45, 1, '2018-09-20 21:58:14', 1, '2018-09-20 21:58:14', 1),
(414, 46, 1, '2018-09-20 22:12:23', 1, '2018-09-20 22:12:23', 1),
(415, 47, 1, '2018-09-20 22:12:30', 1, '2018-09-20 22:12:30', 1),
(416, 48, 1, '2018-09-20 22:12:37', 1, '2018-09-20 22:12:37', 1),
(417, 49, 1, '2018-09-20 22:12:47', 1, '2018-09-20 22:12:47', 1),
(418, 50, 1, '2018-09-20 22:12:56', 1, '2018-09-20 22:12:56', 1),
(419, 51, 1, '2018-09-25 15:06:37', 1, '2018-09-25 15:06:37', 1),
(420, 52, 1, '2018-09-25 15:06:46', 1, '2018-09-25 15:06:46', 1),
(421, 53, 1, '2018-09-25 15:06:55', 1, '2018-09-25 15:06:55', 1),
(422, 54, 1, '2018-09-25 15:07:04', 1, '2018-09-25 15:07:04', 1),
(423, 55, 1, '2018-09-25 15:07:10', 1, '2018-09-25 15:07:10', 1),
(424, 56, 1, '2018-09-25 15:07:26', 1, '2018-09-25 15:07:26', 1),
(425, 57, 1, '2018-09-27 13:37:13', 1, '2018-09-27 13:37:13', 1),
(426, 58, 1, '2018-09-27 13:37:34', 1, '2018-09-27 13:37:34', 1),
(427, 59, 1, '2018-09-27 13:37:51', 1, '2018-09-27 13:37:51', 1),
(428, 60, 1, '2018-09-27 13:38:05', 1, '2018-09-27 13:38:05', 1),
(429, 61, 1, '2018-09-27 13:38:23', 1, '2018-09-27 13:38:23', 1),
(430, 62, 1, '2018-09-27 16:24:42', 1, '2018-09-27 16:24:42', 1),
(431, 63, 1, '2018-09-27 16:24:47', 1, '2018-09-27 16:24:47', 1),
(432, 64, 1, '2018-09-27 16:24:54', 1, '2018-09-27 16:24:54', 1),
(433, 65, 1, '2018-09-27 16:25:02', 1, '2018-09-27 16:25:02', 1),
(434, 66, 1, '2018-09-27 16:25:07', 1, '2018-09-27 16:25:07', 1),
(435, 67, 1, '2018-09-27 16:25:14', 1, '2018-09-27 16:25:14', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_um_user`
--

CREATE TABLE `tbl_um_user` (
  `um_user_id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `keterangan` text,
  `created` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT 'avatar',
  `aktif` varchar(1) DEFAULT 'Y',
  `customer_code` varchar(20) NOT NULL DEFAULT '-',
  `location` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_um_user`
--

INSERT INTO `tbl_um_user` (`um_user_id`, `nama`, `keterangan`, `created`, `createdby`, `updated`, `updatedby`, `password`, `username`, `avatar`, `aktif`, `customer_code`, `location`, `city`) VALUES
(1, 'Administrator', NULL, '2016-04-22 14:04:50', 100, '2016-04-22 15:43:46', 1, '21232f297a57a5a743894a0e4a801fc3', 'admin', 'avatar04', 'Y', 'V13.0135', 'TGRHO', 'TGR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_um_user_akses`
--

CREATE TABLE `tbl_um_user_akses` (
  `um_user_akses_id` int(11) NOT NULL,
  `um_user_id` int(11) DEFAULT NULL,
  `um_akses_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_um_user_akses`
--

INSERT INTO `tbl_um_user_akses` (`um_user_akses_id`, `um_user_id`, `um_akses_id`, `created`, `createdby`, `updated`, `updatedby`) VALUES
(1, 1, 1, '2016-04-22 15:46:29', 1, '2016-04-22 15:46:29', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `u_id` int(3) NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `u_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `u_paswd` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `role` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`u_id`, `nama`, `u_name`, `u_paswd`, `role`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'user admin', 'user', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_um`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_um` (
`um_user_id` int(11)
,`namauser` varchar(100)
,`username` varchar(50)
,`password` varchar(50)
,`keteranganuser` text
,`avatar` varchar(50)
,`um_akses_id` int(11)
,`namaakses` varchar(50)
,`keteranganakses` text
,`um_menu_id` int(11)
,`menunama` varchar(50)
,`tipemenu` varchar(50)
,`url` varchar(50)
,`parenturl` int(11)
,`keteranganmenu` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_um2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_um2` (
`u_id` int(3)
,`nama` varchar(50)
,`u_name` varchar(50)
,`u_paswd` varchar(100)
,`role` varchar(15)
,`um_akses_id` int(11)
,`namaakses` varchar(50)
,`keteranganakses` text
,`um_menu_id` int(11)
,`menunama` varchar(50)
,`tipemenu` varchar(50)
,`url` varchar(50)
,`parenturl` int(11)
,`keteranganmenu` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_um_menu_akses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_um_menu_akses` (
`um_menu_akses_id` int(11)
,`um_menu_id` int(11)
,`namamenu` varchar(50)
,`tipemenu` varchar(50)
,`url` varchar(50)
,`keteranganmenu` text
,`parenturl` int(11)
,`um_akses_id` int(11)
,`namaakses` varchar(50)
,`keteranganakses` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_um_user_akses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_um_user_akses` (
`um_user_akses_id` int(11)
,`um_user_id` int(11)
,`namauser` varchar(100)
,`username` varchar(50)
,`password` varchar(50)
,`keterangan` text
,`namaakses` varchar(50)
,`um_akses_id` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_um`
--
DROP TABLE IF EXISTS `v_um`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_um`  AS  select `tbl_um_user`.`um_user_id` AS `um_user_id`,`tbl_um_user`.`nama` AS `namauser`,`tbl_um_user`.`username` AS `username`,`tbl_um_user`.`password` AS `password`,`tbl_um_user`.`keterangan` AS `keteranganuser`,`tbl_um_user`.`avatar` AS `avatar`,`tbl_um_akses`.`um_akses_id` AS `um_akses_id`,`tbl_um_akses`.`nama` AS `namaakses`,`tbl_um_akses`.`keterangan` AS `keteranganakses`,`tbl_um_menu`.`um_menu_id` AS `um_menu_id`,`tbl_um_menu`.`nama` AS `menunama`,`tbl_um_menu`.`tipemenu` AS `tipemenu`,`tbl_um_menu`.`url` AS `url`,`tbl_um_menu`.`parenturl` AS `parenturl`,`tbl_um_menu`.`keterangan` AS `keteranganmenu` from ((`tbl_um_akses` join (`tbl_um_user` join `tbl_um_user_akses` on((`tbl_um_user`.`um_user_id` = `tbl_um_user_akses`.`um_user_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_user_akses`.`um_akses_id`))) join (`tbl_um_menu` join `tbl_um_menu_akses` on((`tbl_um_menu`.`um_menu_id` = `tbl_um_menu_akses`.`um_menu_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_menu_akses`.`um_akses_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_um2`
--
DROP TABLE IF EXISTS `v_um2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_um2`  AS  select `tbl_user`.`u_id` AS `u_id`,`tbl_user`.`nama` AS `nama`,`tbl_user`.`u_name` AS `u_name`,`tbl_user`.`u_paswd` AS `u_paswd`,`tbl_user`.`role` AS `role`,`tbl_um_akses`.`um_akses_id` AS `um_akses_id`,`tbl_um_akses`.`nama` AS `namaakses`,`tbl_um_akses`.`keterangan` AS `keteranganakses`,`tbl_um_menu`.`um_menu_id` AS `um_menu_id`,`tbl_um_menu`.`nama` AS `menunama`,`tbl_um_menu`.`tipemenu` AS `tipemenu`,`tbl_um_menu`.`url` AS `url`,`tbl_um_menu`.`parenturl` AS `parenturl`,`tbl_um_menu`.`keterangan` AS `keteranganmenu` from ((`tbl_um_akses` join (`tbl_user` join `tbl_um_user_akses` on((`tbl_user`.`u_id` = `tbl_um_user_akses`.`um_user_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_user_akses`.`um_akses_id`))) join (`tbl_um_menu` join `tbl_um_menu_akses` on((`tbl_um_menu`.`um_menu_id` = `tbl_um_menu_akses`.`um_menu_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_menu_akses`.`um_akses_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_um_menu_akses`
--
DROP TABLE IF EXISTS `v_um_menu_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_um_menu_akses`  AS  select `tbl_um_menu_akses`.`um_menu_akses_id` AS `um_menu_akses_id`,`tbl_um_menu_akses`.`um_menu_id` AS `um_menu_id`,`tbl_um_menu`.`nama` AS `namamenu`,`tbl_um_menu`.`tipemenu` AS `tipemenu`,`tbl_um_menu`.`url` AS `url`,`tbl_um_menu`.`keterangan` AS `keteranganmenu`,`tbl_um_menu`.`parenturl` AS `parenturl`,`tbl_um_menu_akses`.`um_akses_id` AS `um_akses_id`,`tbl_um_akses`.`nama` AS `namaakses`,`tbl_um_akses`.`keterangan` AS `keteranganakses` from (`tbl_um_akses` join (`tbl_um_menu` join `tbl_um_menu_akses` on((`tbl_um_menu`.`um_menu_id` = `tbl_um_menu_akses`.`um_menu_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_menu_akses`.`um_akses_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_um_user_akses`
--
DROP TABLE IF EXISTS `v_um_user_akses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_um_user_akses`  AS  select `tbl_um_user_akses`.`um_user_akses_id` AS `um_user_akses_id`,`tbl_um_user_akses`.`um_user_id` AS `um_user_id`,`tbl_um_user`.`nama` AS `namauser`,`tbl_um_user`.`username` AS `username`,`tbl_um_user`.`password` AS `password`,`tbl_um_user`.`keterangan` AS `keterangan`,`tbl_um_akses`.`nama` AS `namaakses`,`tbl_um_user_akses`.`um_akses_id` AS `um_akses_id` from (`tbl_um_akses` join (`tbl_um_user` join `tbl_um_user_akses` on((`tbl_um_user`.`um_user_id` = `tbl_um_user_akses`.`um_user_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_user_akses`.`um_akses_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_creative_about_content`
--
ALTER TABLE `tbl_creative_about_content`
  ADD PRIMARY KEY (`id_about_content`);

--
-- Indeks untuk tabel `tbl_creative_address`
--
ALTER TABLE `tbl_creative_address`
  ADD PRIMARY KEY (`id_address`);

--
-- Indeks untuk tabel `tbl_creative_address_header`
--
ALTER TABLE `tbl_creative_address_header`
  ADD PRIMARY KEY (`id_address_header`);

--
-- Indeks untuk tabel `tbl_creative_contact_email`
--
ALTER TABLE `tbl_creative_contact_email`
  ADD PRIMARY KEY (`id_contact_email`);

--
-- Indeks untuk tabel `tbl_creative_contact_phone`
--
ALTER TABLE `tbl_creative_contact_phone`
  ADD PRIMARY KEY (`id_contact_phone`);

--
-- Indeks untuk tabel `tbl_creative_gallery`
--
ALTER TABLE `tbl_creative_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `tbl_creative_menu`
--
ALTER TABLE `tbl_creative_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_creative_title_content`
--
ALTER TABLE `tbl_creative_title_content`
  ADD PRIMARY KEY (`id_title_content`);

--
-- Indeks untuk tabel `tbl_creative_visitor`
--
ALTER TABLE `tbl_creative_visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indeks untuk tabel `tbl_server_liqu_id`
--
ALTER TABLE `tbl_server_liqu_id`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_server_whm`
--
ALTER TABLE `tbl_server_whm`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_um_akses`
--
ALTER TABLE `tbl_um_akses`
  ADD PRIMARY KEY (`um_akses_id`);

--
-- Indeks untuk tabel `tbl_um_menu`
--
ALTER TABLE `tbl_um_menu`
  ADD PRIMARY KEY (`um_menu_id`);

--
-- Indeks untuk tabel `tbl_um_menu_akses`
--
ALTER TABLE `tbl_um_menu_akses`
  ADD PRIMARY KEY (`um_menu_akses_id`);

--
-- Indeks untuk tabel `tbl_um_user`
--
ALTER TABLE `tbl_um_user`
  ADD PRIMARY KEY (`um_user_id`),
  ADD KEY `customer_code` (`customer_code`);

--
-- Indeks untuk tabel `tbl_um_user_akses`
--
ALTER TABLE `tbl_um_user_akses`
  ADD PRIMARY KEY (`um_user_akses_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_about_content`
--
ALTER TABLE `tbl_creative_about_content`
  MODIFY `id_about_content` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_address`
--
ALTER TABLE `tbl_creative_address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_address_header`
--
ALTER TABLE `tbl_creative_address_header`
  MODIFY `id_address_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_contact_email`
--
ALTER TABLE `tbl_creative_contact_email`
  MODIFY `id_contact_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_contact_phone`
--
ALTER TABLE `tbl_creative_contact_phone`
  MODIFY `id_contact_phone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_gallery`
--
ALTER TABLE `tbl_creative_gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_menu`
--
ALTER TABLE `tbl_creative_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_title_content`
--
ALTER TABLE `tbl_creative_title_content`
  MODIFY `id_title_content` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_creative_visitor`
--
ALTER TABLE `tbl_creative_visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_server_liqu_id`
--
ALTER TABLE `tbl_server_liqu_id`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_server_whm`
--
ALTER TABLE `tbl_server_whm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_um_akses`
--
ALTER TABLE `tbl_um_akses`
  MODIFY `um_akses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_um_menu`
--
ALTER TABLE `tbl_um_menu`
  MODIFY `um_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `tbl_um_menu_akses`
--
ALTER TABLE `tbl_um_menu_akses`
  MODIFY `um_menu_akses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT untuk tabel `tbl_um_user`
--
ALTER TABLE `tbl_um_user`
  MODIFY `um_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_um_user_akses`
--
ALTER TABLE `tbl_um_user_akses`
  MODIFY `um_user_akses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `u_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
