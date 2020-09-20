-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17 Okt 2018 pada 15.47
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_creative_gallery`
--
ALTER TABLE `tbl_creative_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_creative_gallery`
--
ALTER TABLE `tbl_creative_gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
