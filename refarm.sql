-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 10:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `refarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_tanaman`
--

CREATE TABLE `kategori_tanaman` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_tanaman`
--

INSERT INTO `kategori_tanaman` (`id_kategori`, `nama_kategori`) VALUES
(101, 'Buah'),
(102, 'Pangan'),
(103, 'Sayuran');

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `id_tanaman` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_tanaman` varchar(99) NOT NULL,
  `tanggal_tanam` date NOT NULL,
  `tanggal_panen` date DEFAULT NULL,
  `media_tanam` varchar(99) NOT NULL,
  `tinggi_tanaman` int(11) NOT NULL,
  `kondisi_daun` enum('Sehat','Sebagian Layu','Layu') NOT NULL,
  `kondisi_batang` enum('Segar','Layu') NOT NULL,
  `kelembapan_tanah` enum('Basah','Kering') NOT NULL,
  `frekuensi_siram` enum('1','2','3','Lebih dari 3') NOT NULL,
  `keterangan_kondisi` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`id_tanaman`, `id_kategori`, `nama_tanaman`, `tanggal_tanam`, `tanggal_panen`, `media_tanam`, `tinggi_tanaman`, `kondisi_daun`, `kondisi_batang`, `kelembapan_tanah`, `frekuensi_siram`, `keterangan_kondisi`) VALUES
(21, 101, 'Tomat', '2024-01-01', '2024-04-01', 'Tanah', 50, 'Sehat', 'Segar', 'Basah', '2', 'Pertumbuhan sehat'),
(22, 102, 'Mentimun', '2024-02-01', '2024-05-01', 'Hidroponik', 30, 'Sebagian Layu', 'Segar', 'Basah', '3', 'Butuh lebih banyak sinar matahari'),
(23, 103, 'Selada', '2024-03-01', NULL, 'Tanah', 25, 'Layu', 'Layu', 'Kering', '1', 'Terlalu banyak air'),
(24, 102, 'Bayam', '2024-01-15', '2024-03-15', 'Tanah', 40, 'Sehat', 'Segar', 'Basah', 'Lebih dari 3', 'Tumbuh dengan baik'),
(25, 102, 'Paprika', '2024-02-20', NULL, 'Hidroponik', 35, 'Sebagian Layu', 'Segar', 'Basah', '2', 'Tanda kekurangan nutrisi'),
(26, 103, 'Wortel', '2024-01-10', '2024-04-10', 'Tanah', 20, 'Sehat', 'Segar', 'Kering', '1', NULL),
(27, 103, 'Kemangi', '2024-01-12', '2024-04-12', 'Tanah', 15, 'Sehat', 'Segar', 'Basah', '3', 'Aroma kuat'),
(28, 101, 'Stroberi', '2024-03-05', NULL, 'Hidroponik', 10, 'Sebagian Layu', 'Layu', 'Kering', '1', 'Hasil rendah'),
(29, 103, 'Mint', '2024-02-14', '2024-05-14', 'Tanah', 12, 'Layu', 'Segar', 'Basah', '2', 'Perlu dipangkas'),
(30, 103, 'Rosemary', '2024-01-22', '2024-04-22', 'Tanah', 22, 'Sehat', 'Segar', 'Basah', '3', 'Daun harum'),
(31, 102, 'Labu', '2024-01-30', '2024-06-01', 'Hidroponik', 60, 'Sebagian Layu', 'Segar', 'Basah', 'Lebih dari 3', 'Buah besar mulai terbentuk'),
(32, 103, 'Ketumbar', '2024-03-18', NULL, 'Tanah', 18, 'Layu', 'Layu', 'Kering', '1', 'Perlu dipindahkan'),
(33, 103, 'Cabai', '2024-01-25', '2024-04-25', 'Tanah', 45, 'Sehat', 'Segar', 'Basah', '2', 'Warna cerah'),
(34, 102, 'Zucchini', '2024-02-05', '2024-05-05', 'Hidroponik', 35, 'Sebagian Layu', 'Segar', 'Basah', '3', 'Pertumbuhan baik'),
(35, 103, 'Peterseli', '2024-01-20', '2024-04-20', 'Tanah', 10, 'Layu', 'Layu', 'Kering', '1', 'Pengamatan layu'),
(36, 103, 'Terong', '2024-01-18', '2024-04-18', 'Tanah', 50, 'Sehat', 'Segar', 'Basah', 'Lebih dari 3', 'Daun besar'),
(37, 102, 'Blueberry', '2024-02-28', '2024-06-28', 'Hidroponik', 25, 'Sebagian Layu', 'Segar', 'Basah', '2', 'Buah kecil mulai muncul'),
(38, 103, 'Thyme', '2024-01-16', NULL, 'Tanah', 8, 'Layu', 'Segar', 'Kering', '1', 'Lebih menyukai kondisi kering'),
(39, 103, 'Oregano', '2024-02-10', '2024-05-10', 'Tanah', 12, 'Sehat', 'Segar', 'Basah', '3', 'Rasa kuat'),
(40, 101, 'Semangka', '2024-03-01', '2024-07-01', 'Hidroponik', 70, 'Sebagian Layu', 'Segar', 'Basah', 'Lebih dari 3', 'Buah mulai terlihat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_tanaman`
--
ALTER TABLE `kategori_tanaman`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id_tanaman`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_tanaman` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
