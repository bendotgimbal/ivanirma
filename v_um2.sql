-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Sep 2018 pada 20.21
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
-- Struktur untuk view `v_um2`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_um2`  AS  select `tbl_user`.`u_id` AS `u_id`,`tbl_user`.`nama` AS `nama`,`tbl_user`.`u_name` AS `u_name`,`tbl_user`.`u_paswd` AS `u_paswd`,`tbl_user`.`role` AS `role`,`tbl_um_akses`.`um_akses_id` AS `um_akses_id`,`tbl_um_akses`.`nama` AS `namaakses`,`tbl_um_akses`.`keterangan` AS `keteranganakses`,`tbl_um_menu`.`um_menu_id` AS `um_menu_id`,`tbl_um_menu`.`nama` AS `menunama`,`tbl_um_menu`.`tipemenu` AS `tipemenu`,`tbl_um_menu`.`url` AS `url`,`tbl_um_menu`.`parenturl` AS `parenturl`,`tbl_um_menu`.`keterangan` AS `keteranganmenu` from ((`tbl_um_akses` join (`tbl_user` join `tbl_um_user_akses` on((`tbl_user`.`u_id` = `tbl_um_user_akses`.`um_user_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_user_akses`.`um_akses_id`))) join (`tbl_um_menu` join `tbl_um_menu_akses` on((`tbl_um_menu`.`um_menu_id` = `tbl_um_menu_akses`.`um_menu_id`))) on((`tbl_um_akses`.`um_akses_id` = `tbl_um_menu_akses`.`um_akses_id`))) ;

--
-- VIEW  `v_um2`
-- Data: Tidak ada
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
