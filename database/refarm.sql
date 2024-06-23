-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 11:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `kategori_kelas`
--

CREATE TABLE `kategori_kelas` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_kelas`
--

INSERT INTO `kategori_kelas` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pertanian Tanaman Pangan'),
(2, 'Pertanian Organik'),
(3, 'Teknologi Pertanian'),
(4, 'Pengolahan Hasil Pertanian'),
(5, 'Pengelolaan Lahan dan Irigasi'),
(6, 'Kewirausahaan Pertanian');

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
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_kelas` varchar(999) NOT NULL,
  `jumlah_modul` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(999) NOT NULL,
  `gambar` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_kategori`, `nama_kelas`, `jumlah_modul`, `durasi`, `harga`, `deskripsi`, `gambar`) VALUES
(1, 1, 'Budidaya Padi', 8, 15, 299000, 'Modul lengkap tentang budidaya padi mulai dari persiapan lahan hingga panen.', NULL),
(2, 1, 'Teknik Menanam Jagung', 8, 14, 399000, 'Teknik lengkap menanam jagung dari pemilihan bibit hingga pasca panen.', NULL),
(3, 1, 'Manajemen Lahan Padi', 6, 12, 299000, 'Strategi manajemen lahan untuk tanaman padi yang optimal.', NULL),
(4, 1, 'Budidaya Gandum', 7, 16, 499000, 'Teknik budidaya gandum yang efisien dan efektif.', NULL),
(5, 1, 'Optimalisasi Panen Padi', 5, 10, 399000, 'Cara-cara optimal untuk meningkatkan hasil panen padi.', NULL),
(6, 2, 'Pertanian Organik Sayuran', 10, 20, 499000, 'Panduan lengkap menanam sayuran secara organik tanpa pestisida kimia.', NULL),
(7, 2, 'Pupuk Organik dari Limbah', 5, 8, 299000, 'Cara membuat pupuk organik dari limbah pertanian dan rumah tangga.', NULL),
(8, 2, 'Budidaya Sayuran Organik di Greenhouse', 6, 12, 399000, 'Teknik budidaya sayuran organik dalam greenhouse.', NULL),
(9, 2, 'Teknologi Kompos Organik', 4, 6, 199000, 'Pembuatan dan penggunaan teknologi kompos organik.', NULL),
(10, 2, 'Teknik Irigasi Organik', 7, 14, 499000, 'Metode irigasi yang sesuai untuk pertanian organik.', NULL),
(11, 3, 'Teknologi Pengairan Modern', 7, 12, 399000, 'Pengenalan teknologi pengairan modern untuk meningkatkan efisiensi air.', NULL),
(12, 3, 'Mesin Pemisah Gabah', 4, 6, 199000, 'Penggunaan mesin pemisah gabah untuk meningkatkan efisiensi produksi.', NULL),
(13, 3, 'Teknologi Pemanenan Modern', 8, 16, 499000, 'Inovasi dalam teknologi pemanenan untuk meningkatkan produktivitas.', NULL),
(14, 3, 'Alat Pertanian Otomatis', 5, 10, 299000, 'Penggunaan alat-alat pertanian otomatis untuk efisiensi kerja.', NULL),
(15, 3, 'Sistem Hidroponik Canggih', 9, 18, 599000, 'Teknologi hidroponik untuk pertanian modern dan efisien.', NULL),
(16, 4, 'Pengolahan Buah Tropis', 6, 10, 599000, 'Teknik pengolahan buah tropis menjadi produk yang bernilai jual tinggi.', NULL),
(17, 4, 'Pengolahan Hasil Panen Kopi', 7, 22, 699000, 'Proses pengolahan biji kopi pasca panen menjadi produk siap jual.', NULL),
(18, 4, 'Pengolahan Sayuran Pasca Panen', 8, 16, 499000, 'Teknik pengolahan sayuran pasca panen untuk nilai tambah.', NULL),
(19, 4, 'Teknik Pengawetan Hasil Panen', 5, 10, 399000, 'Metode pengawetan hasil panen untuk memperpanjang umur simpan.', NULL),
(20, 4, 'Pengolahan Biji Kakao', 9, 20, 799000, 'Teknik pengolahan biji kakao menjadi produk olahan berkualitas.', NULL),
(21, 5, 'Manajemen Irigasi Sawah', 9, 18, 799000, 'Manajemen sistem irigasi untuk sawah agar menghasilkan panen optimal.', NULL),
(22, 5, 'Optimalisasi Penggunaan Air', 6, 16, 499000, 'Cara mengoptimalkan penggunaan air dalam irigasi untuk hasil maksimal.', NULL),
(23, 5, 'Teknik Irigasi Tetes', 8, 14, 399000, 'Metode irigasi tetes untuk efisiensi penggunaan air dan nutrisi.', NULL),
(24, 5, 'Pengelolaan Irigasi Tersier', 5, 12, 299000, 'Manajemen irigasi tersier untuk distribusi air yang efektif.', NULL),
(25, 5, 'Sistem Irigasi Berbasis Teknologi', 7, 20, 599000, 'Implementasi sistem irigasi berbasis teknologi modern.', NULL),
(26, 6, 'Kewirausahaan Pertanian Dasar', 10, 25, 899000, 'Dasar-dasar kewirausahaan di bidang pertanian untuk pemula.', NULL),
(27, 6, 'Pemasaran Produk Pertanian', 10, 30, 899000, 'Strategi pemasaran efektif untuk produk pertanian di pasar lokal dan global.', NULL),
(28, 6, 'Manajemen Keuangan Pertanian', 6, 15, 499000, 'Teknik manajemen keuangan untuk usaha pertanian.', NULL),
(29, 6, 'Studi Kelayakan Usaha Pertanian', 8, 20, 699000, 'Analisis kelayakan usaha di bidang pertanian.', NULL),
(30, 6, 'Pengembangan Produk Pertanian Inovatif', 5, 18, 599000, 'Teknik inovasi dan pengembangan produk pertanian baru.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_proggress`
--

CREATE TABLE `kelas_proggress` (
  `id_proggress` int(11) NOT NULL,
  `id_user_kelas` int(11) NOT NULL,
  `tanggal_pembaruan` date NOT NULL,
  `persentase_proggres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_modul` varchar(999) NOT NULL,
  `isi_modul` varchar(999) NOT NULL,
  `urutan_modul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `id_kelas`, `nama_modul`, `isi_modul`, `urutan_modul`) VALUES
(1, 1, 'Persiapan Lahan', 'Paragraf 1. Persiapan lahan adalah tahap pertama dalam budidaya padi. Paragraf 2. Anda harus memastikan lahan terbebas dari gulma dan hama. Paragraf 3. Gunakan pupuk organik untuk meningkatkan kesuburan tanah.', 1),
(2, 1, 'Pemilihan Bibit', 'Paragraf 1. Memilih bibit padi yang berkualitas sangat penting. Paragraf 2. Bibit unggul biasanya memiliki daya tahan terhadap penyakit. Paragraf 3. Bibit yang baik akan meningkatkan hasil panen.', 2),
(3, 1, 'Penanaman', 'Paragraf 1. Penanaman padi memerlukan teknik khusus. Paragraf 2. Jarak tanam harus diatur dengan baik. Paragraf 3. Gunakan alat tanam modern untuk efisiensi.', 3),
(4, 1, 'Pemeliharaan', 'Paragraf 1. Pemeliharaan padi meliputi penyiraman dan pemupukan. Paragraf 2. Gunakan pestisida alami untuk menghindari hama. Paragraf 3. Periksa kondisi tanaman secara rutin.', 4),
(5, 1, 'Pengendalian Hama', 'Paragraf 1. Pengendalian hama penting untuk menjaga kesehatan tanaman. Paragraf 2. Gunakan metode biologis untuk mengendalikan hama. Paragraf 3. Hindari penggunaan pestisida kimia berlebihan.', 5),
(6, 1, 'Panen', 'Paragraf 1. Panen dilakukan saat padi sudah matang. Paragraf 2. Gunakan alat panen modern untuk efisiensi. Paragraf 3. Pastikan padi tidak rusak selama proses panen.', 6),
(7, 1, 'Pasca Panen', 'Paragraf 1. Penanganan pasca panen meliputi pengeringan dan penyimpanan. Paragraf 2. Gunakan tempat penyimpanan yang bersih dan kering. Paragraf 3. Proses pengeringan yang baik akan meningkatkan kualitas padi.', 7),
(8, 1, 'Pemasaran', 'Paragraf 1. Pemasaran padi harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 8),
(9, 2, 'Pemilihan Bibit', 'Paragraf 1. Memilih bibit jagung yang unggul adalah langkah pertama. Paragraf 2. Bibit unggul tahan terhadap penyakit dan menghasilkan panen yang baik. Paragraf 3. Bibit berkualitas akan mempengaruhi hasil akhir.', 1),
(10, 2, 'Penyiapan Lahan', 'Paragraf 1. Penyiapan lahan yang baik adalah kunci sukses budidaya jagung. Paragraf 2. Pastikan lahan subur dan bebas gulma. Paragraf 3. Gunakan pupuk organik untuk meningkatkan kesuburan.', 2),
(11, 2, 'Penanaman', 'Paragraf 1. Penanaman jagung harus dilakukan dengan teknik yang benar. Paragraf 2. Jarak tanam harus diatur dengan tepat. Paragraf 3. Gunakan alat tanam modern untuk efisiensi.', 3),
(12, 2, 'Pemeliharaan', 'Paragraf 1. Pemeliharaan tanaman jagung meliputi penyiraman dan pemupukan. Paragraf 2. Gunakan pestisida alami untuk menghindari hama. Paragraf 3. Periksa kondisi tanaman secara berkala.', 4),
(13, 2, 'Pengendalian Hama', 'Paragraf 1. Pengendalian hama penting untuk menjaga kesehatan tanaman jagung. Paragraf 2. Gunakan metode biologis untuk mengendalikan hama. Paragraf 3. Hindari penggunaan pestisida kimia berlebihan.', 5),
(14, 2, 'Panen', 'Paragraf 1. Panen jagung dilakukan saat biji jagung sudah matang. Paragraf 2. Gunakan alat panen modern untuk efisiensi. Paragraf 3. Pastikan jagung tidak rusak selama proses panen.', 6),
(15, 2, 'Pasca Panen', 'Paragraf 1. Penanganan pasca panen meliputi pengeringan dan penyimpanan. Paragraf 2. Gunakan tempat penyimpanan yang bersih dan kering. Paragraf 3. Proses pengeringan yang baik akan meningkatkan kualitas jagung.', 7),
(16, 2, 'Pemasaran', 'Paragraf 1. Pemasaran jagung harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 8),
(17, 3, 'Pengelolaan Tanah', 'Paragraf 1. Pengelolaan tanah adalah aspek penting dalam manajemen lahan padi. Paragraf 2. Pastikan tanah selalu subur dan terjaga kelembapannya. Paragraf 3. Gunakan pupuk alami untuk menjaga kesuburan.', 1),
(18, 3, 'Pemantauan Kesuburan', 'Paragraf 1. Kesuburan tanah harus selalu dipantau. Paragraf 2. Gunakan alat ukur kesuburan tanah yang modern. Paragraf 3. Tambahkan pupuk sesuai kebutuhan.', 2),
(19, 3, 'Pengelolaan Air', 'Paragraf 1. Air adalah faktor penting dalam budidaya padi. Paragraf 2. Pastikan pengelolaan air dilakukan dengan baik. Paragraf 3. Gunakan metode irigasi yang tepat.', 3),
(20, 3, 'Pencegahan Erosi', 'Paragraf 1. Erosi tanah dapat merusak lahan pertanian. Paragraf 2. Gunakan teknik konservasi tanah untuk mencegah erosi. Paragraf 3. Buat terasering pada lahan miring.', 4),
(21, 3, 'Pengendalian Hama dan Penyakit', 'Paragraf 1. Hama dan penyakit dapat merusak tanaman padi. Paragraf 2. Gunakan pestisida alami untuk pengendalian. Paragraf 3. Periksa tanaman secara rutin.', 5),
(22, 3, 'Optimalisasi Panen', 'Paragraf 1. Optimalisasi panen adalah tujuan akhir dari manajemen lahan. Paragraf 2. Pastikan semua proses dari awal hingga panen berjalan baik. Paragraf 3. Gunakan alat panen modern untuk efisiensi.', 6),
(23, 4, 'Pemilihan Varietas', 'Paragraf 1. Memilih varietas gandum yang tepat adalah langkah awal. Paragraf 2. Varietas unggul akan memberikan hasil panen yang baik. Paragraf 3. Konsultasikan dengan ahli untuk memilih varietas.', 1),
(24, 4, 'Penyiapan Lahan', 'Paragraf 1. Lahan untuk budidaya gandum harus dipersiapkan dengan baik. Paragraf 2. Pastikan tanah gembur dan subur. Paragraf 3. Gunakan pupuk organik untuk meningkatkan kesuburan.', 2),
(25, 4, 'Penanaman', 'Paragraf 1. Penanaman gandum harus dilakukan dengan teknik yang benar. Paragraf 2. Jarak tanam harus diatur dengan baik. Paragraf 3. Gunakan alat tanam yang sesuai.', 3),
(26, 4, 'Pemeliharaan', 'Paragraf 1. Pemeliharaan tanaman gandum meliputi penyiraman dan pemupukan. Paragraf 2. Gunakan pestisida alami untuk menghindari hama. Paragraf 3. Periksa kondisi tanaman secara berkala.', 4),
(27, 4, 'Pengendalian Hama', 'Paragraf 1. Pengendalian hama penting untuk menjaga kesehatan tanaman gandum. Paragraf 2. Gunakan metode biologis untuk mengendalikan hama. Paragraf 3. Hindari penggunaan pestisida kimia berlebihan.', 5),
(28, 4, 'Panen', 'Paragraf 1. Panen gandum dilakukan saat biji gandum sudah matang. Paragraf 2. Gunakan alat panen modern untuk efisiensi. Paragraf 3. Pastikan gandum tidak rusak selama proses panen.', 6),
(29, 4, 'Pasca Panen', 'Paragraf 1. Penanganan pasca panen meliputi pengeringan dan penyimpanan. Paragraf 2. Gunakan tempat penyimpanan yang bersih dan kering. Paragraf 3. Proses pengeringan yang baik akan meningkatkan kualitas gandum.', 7),
(30, 5, 'Persiapan Panen', 'Paragraf 1. Persiapan panen adalah tahap penting dalam budidaya padi. Paragraf 2. Pastikan semua peralatan siap digunakan. Paragraf 3. Koordinasikan dengan tim panen.', 1),
(31, 5, 'Metode Panen', 'Paragraf 1. Metode panen yang tepat akan meningkatkan efisiensi. Paragraf 2. Gunakan mesin panen modern. Paragraf 3. Latih tenaga kerja untuk menggunakan mesin.', 2),
(32, 5, 'Penanganan Pasca Panen', 'Paragraf 1. Penanganan pasca panen harus dilakukan dengan hati-hati. Paragraf 2. Gunakan alat pengering untuk mengurangi kadar air. Paragraf 3. Simpan padi di tempat yang kering dan bersih.', 3),
(33, 5, 'Penyimpanan', 'Paragraf 1. Penyimpanan padi harus memperhatikan kondisi lingkungan. Paragraf 2. Pastikan gudang penyimpanan bersih dan bebas hama. Paragraf 3. Gunakan teknologi penyimpanan yang modern.', 4),
(34, 5, 'Distribusi', 'Paragraf 1. Distribusi padi harus dilakukan dengan cepat dan efisien. Paragraf 2. Koordinasikan dengan distributor lokal. Paragraf 3. Pastikan padi sampai ke pasar dalam kondisi baik.', 5),
(35, 6, 'Pemilihan Bibit Organik', 'Paragraf 1. Memilih bibit sayuran organik yang berkualitas adalah langkah awal. Paragraf 2. Bibit organik harus bebas dari bahan kimia. Paragraf 3. Konsultasikan dengan ahli untuk memilih bibit.', 1),
(36, 6, 'Penyiapan Lahan Organik', 'Paragraf 1. Lahan untuk pertanian organik harus dipersiapkan dengan baik. Paragraf 2. Pastikan tanah gembur dan subur tanpa bahan kimia. Paragraf 3. Gunakan pupuk organik untuk meningkatkan kesuburan.', 2),
(37, 6, 'Penanaman Organik', 'Paragraf 1. Penanaman sayuran organik harus dilakukan dengan teknik yang benar. Paragraf 2. Jarak tanam harus diatur dengan baik. Paragraf 3. Gunakan alat tanam yang sesuai.', 3),
(38, 6, 'Pemeliharaan Organik', 'Paragraf 1. Pemeliharaan tanaman sayuran organik meliputi penyiraman dan pemupukan. Paragraf 2. Gunakan pestisida alami untuk menghindari hama. Paragraf 3. Periksa kondisi tanaman secara berkala.', 4),
(39, 6, 'Pengendalian Hama Organik', 'Paragraf 1. Pengendalian hama penting untuk menjaga kesehatan tanaman sayuran organik. Paragraf 2. Gunakan metode biologis untuk mengendalikan hama. Paragraf 3. Hindari penggunaan pestisida kimia berlebihan.', 5),
(40, 6, 'Panen Organik', 'Paragraf 1. Panen sayuran organik dilakukan saat tanaman sudah matang. Paragraf 2. Gunakan alat panen modern untuk efisiensi. Paragraf 3. Pastikan sayuran tidak rusak selama proses panen.', 6),
(41, 6, 'Pasca Panen Organik', 'Paragraf 1. Penanganan pasca panen meliputi pengeringan dan penyimpanan. Paragraf 2. Gunakan tempat penyimpanan yang bersih dan kering. Paragraf 3. Proses pengeringan yang baik akan meningkatkan kualitas sayuran organik.', 7),
(42, 6, 'Pemasaran Organik', 'Paragraf 1. Pemasaran sayuran organik harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 8),
(43, 6, 'Teknik Pemasaran Online', 'Paragraf 1. Pemasaran online penting dalam pertanian modern. Paragraf 2. Buat website atau toko online untuk menjual produk. Paragraf 3. Manfaatkan media sosial untuk promosi.', 9),
(44, 6, 'Sertifikasi Organik', 'Paragraf 1. Sertifikasi organik penting untuk memberikan kepercayaan kepada konsumen. Paragraf 2. Ikuti prosedur sertifikasi yang berlaku. Paragraf 3. Sertifikasi organik akan meningkatkan nilai jual produk.', 10),
(45, 7, 'Pengumpulan Limbah', 'Paragraf 1. Pengumpulan limbah adalah langkah pertama dalam membuat pupuk organik. Paragraf 2. Pastikan limbah yang dikumpulkan bebas dari bahan kimia. Paragraf 3. Gunakan limbah pertanian dan rumah tangga.', 1),
(46, 7, 'Pengolahan Limbah', 'Paragraf 1. Limbah yang sudah dikumpulkan harus diolah dengan baik. Paragraf 2. Gunakan metode kompos untuk mengolah limbah. Paragraf 3. Pastikan proses pengolahan dilakukan dengan benar.', 2),
(47, 7, 'Pembuatan Pupuk', 'Paragraf 1. Pembuatan pupuk organik memerlukan teknik khusus. Paragraf 2. Campur limbah dengan bahan organik lain. Paragraf 3. Fermentasi limbah untuk menghasilkan pupuk berkualitas.', 3),
(48, 7, 'Penggunaan Pupuk', 'Paragraf 1. Pupuk organik dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan pupuk sesuai kebutuhan tanaman. Paragraf 3. Gunakan pupuk secara rutin untuk hasil maksimal.', 4),
(49, 7, 'Manfaat Pupuk Organik', 'Paragraf 1. Pupuk organik memiliki banyak manfaat untuk tanah dan tanaman. Paragraf 2. Meningkatkan kesuburan tanah tanpa bahan kimia. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(50, 8, 'Persiapan Greenhouse', 'Paragraf 1. Greenhouse harus dipersiapkan dengan baik sebelum digunakan. Paragraf 2. Pastikan kondisi lingkungan dalam greenhouse sesuai. Paragraf 3. Gunakan bahan yang ramah lingkungan.', 1),
(51, 8, 'Pemilihan Bibit', 'Paragraf 1. Memilih bibit sayuran organik yang berkualitas adalah langkah awal. Paragraf 2. Bibit organik harus bebas dari bahan kimia. Paragraf 3. Konsultasikan dengan ahli untuk memilih bibit.', 2),
(52, 8, 'Penanaman di Greenhouse', 'Paragraf 1. Penanaman sayuran organik di greenhouse harus dilakukan dengan teknik yang benar. Paragraf 2. Jarak tanam harus diatur dengan baik. Paragraf 3. Gunakan alat tanam yang sesuai.', 3),
(53, 8, 'Pemeliharaan di Greenhouse', 'Paragraf 1. Pemeliharaan tanaman sayuran organik di greenhouse meliputi penyiraman dan pemupukan. Paragraf 2. Gunakan pestisida alami untuk menghindari hama. Paragraf 3. Periksa kondisi tanaman secara berkala.', 4),
(54, 8, 'Pengendalian Hama di Greenhouse', 'Paragraf 1. Pengendalian hama penting untuk menjaga kesehatan tanaman sayuran organik di greenhouse. Paragraf 2. Gunakan metode biologis untuk mengendalikan hama. Paragraf 3. Hindari penggunaan pestisida kimia berlebihan.', 5),
(55, 8, 'Panen di Greenhouse', 'Paragraf 1. Panen sayuran organik di greenhouse dilakukan saat tanaman sudah matang. Paragraf 2. Gunakan alat panen modern untuk efisiensi. Paragraf 3. Pastikan sayuran tidak rusak selama proses panen.', 6),
(56, 9, 'Pengenalan Teknologi Kompos', 'Paragraf 1. Teknologi kompos organik adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan kualitas kompos. Paragraf 3. Kompos organik adalah alternatif ramah lingkungan.', 1),
(57, 9, 'Pengumpulan Bahan Kompos', 'Paragraf 1. Bahan kompos harus dikumpulkan dengan baik. Paragraf 2. Gunakan limbah organik dari pertanian dan rumah tangga. Paragraf 3. Pastikan bahan kompos bebas dari bahan kimia.', 2),
(58, 9, 'Proses Pembuatan Kompos', 'Paragraf 1. Proses pembuatan kompos meliputi pengolahan bahan organik. Paragraf 2. Fermentasi bahan organik untuk menghasilkan kompos berkualitas. Paragraf 3. Gunakan teknologi modern untuk mempercepat proses.', 3),
(59, 9, 'Penggunaan Kompos', 'Paragraf 1. Kompos organik dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan kompos sesuai kebutuhan tanaman. Paragraf 3. Gunakan kompos secara rutin untuk hasil maksimal.', 4),
(60, 10, 'Pengenalan Irigasi Organik', 'Paragraf 1. Irigasi organik adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan irigasi organik dapat meningkatkan efisiensi air. Paragraf 3. Irigasi organik adalah alternatif ramah lingkungan.', 1),
(61, 10, 'Sistem Irigasi Organik', 'Paragraf 1. Sistem irigasi organik harus dirancang dengan baik. Paragraf 2. Gunakan bahan yang ramah lingkungan. Paragraf 3. Pastikan sistem irigasi efisien dan efektif.', 2),
(62, 10, 'Penggunaan Irigasi Organik', 'Paragraf 1. Irigasi organik dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan irigasi sesuai kebutuhan tanaman. Paragraf 3. Gunakan irigasi secara rutin untuk hasil maksimal.', 3),
(63, 10, 'Pemeliharaan Sistem Irigasi', 'Paragraf 1. Sistem irigasi organik harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(64, 10, 'Keuntungan Irigasi Organik', 'Paragraf 1. Irigasi organik memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(65, 11, 'Pengenalan Teknologi Pengairan', 'Paragraf 1. Teknologi pengairan modern adalah inovasi dalam pertanian. Paragraf 2. Teknologi ini dapat meningkatkan efisiensi air. Paragraf 3. Teknologi pengairan modern adalah solusi untuk masalah pengairan.', 1),
(66, 11, 'Sistem Pengairan Modern', 'Paragraf 1. Sistem pengairan modern harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem pengairan. Paragraf 3. Pastikan sistem pengairan efisien dan efektif.', 2),
(67, 11, 'Penggunaan Teknologi Pengairan', 'Paragraf 1. Teknologi pengairan modern dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan teknologi sesuai kebutuhan tanaman. Paragraf 3. Gunakan teknologi secara rutin untuk hasil maksimal.', 3),
(68, 11, 'Pemeliharaan Sistem Pengairan', 'Paragraf 1. Sistem pengairan modern harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(69, 11, 'Keuntungan Teknologi Pengairan', 'Paragraf 1. Teknologi pengairan modern memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(70, 12, 'Pengenalan Mesin Pemisah Gabah', 'Paragraf 1. Mesin pemisah gabah adalah alat penting dalam proses panen. Paragraf 2. Mesin ini dapat meningkatkan efisiensi produksi. Paragraf 3. Menggunakan mesin pemisah gabah adalah solusi untuk masalah pemisahan gabah.', 1),
(71, 12, 'Cara Kerja Mesin Pemisah Gabah', 'Paragraf 1. Mesin pemisah gabah bekerja dengan cara memisahkan gabah dari jerami. Paragraf 2. Mesin ini menggunakan teknologi modern. Paragraf 3. Mesin pemisah gabah dapat meningkatkan kualitas hasil panen.', 2),
(72, 12, 'Penggunaan Mesin Pemisah Gabah', 'Paragraf 1. Mesin pemisah gabah dapat digunakan untuk berbagai jenis gabah. Paragraf 2. Aplikasikan mesin sesuai kebutuhan. Paragraf 3. Gunakan mesin secara rutin untuk hasil maksimal.', 3),
(73, 12, 'Pemeliharaan Mesin Pemisah Gabah', 'Paragraf 1. Mesin pemisah gabah harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada mesin. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan mesin berfungsi dengan baik.', 4),
(74, 13, 'Pengenalan Teknologi Pemanenan', 'Paragraf 1. Teknologi pemanenan modern adalah inovasi dalam pertanian. Paragraf 2. Teknologi ini dapat meningkatkan efisiensi panen. Paragraf 3. Teknologi pemanenan modern adalah solusi untuk masalah panen.', 1),
(75, 13, 'Sistem Pemanenan Modern', 'Paragraf 1. Sistem pemanenan modern harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem pemanenan. Paragraf 3. Pastikan sistem pemanenan efisien dan efektif.', 2),
(76, 13, 'Penggunaan Teknologi Pemanenan', 'Paragraf 1. Teknologi pemanenan modern dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan teknologi sesuai kebutuhan tanaman. Paragraf 3. Gunakan teknologi secara rutin untuk hasil maksimal.', 3),
(77, 13, 'Pemeliharaan Sistem Pemanenan', 'Paragraf 1. Sistem pemanenan modern harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(78, 13, 'Keuntungan Teknologi Pemanenan', 'Paragraf 1. Teknologi pemanenan modern memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi panen. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(79, 14, 'Pengenalan Alat Pertanian Otomatis', 'Paragraf 1. Alat pertanian otomatis adalah inovasi dalam pertanian. Paragraf 2. Alat ini dapat meningkatkan efisiensi kerja. Paragraf 3. Alat pertanian otomatis adalah solusi untuk masalah pertanian.', 1),
(80, 14, 'Sistem Alat Pertanian Otomatis', 'Paragraf 1. Sistem alat pertanian otomatis harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem alat pertanian. Paragraf 3. Pastikan sistem alat pertanian efisien dan efektif.', 2),
(81, 14, 'Penggunaan Alat Pertanian Otomatis', 'Paragraf 1. Alat pertanian otomatis dapat digunakan untuk berbagai jenis tanaman. Paragraf 2. Aplikasikan alat sesuai kebutuhan tanaman. Paragraf 3. Gunakan alat secara rutin untuk hasil maksimal.', 3),
(82, 14, 'Pemeliharaan Alat Pertanian Otomatis', 'Paragraf 1. Alat pertanian otomatis harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada alat. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan alat berfungsi dengan baik.', 4),
(83, 14, 'Keuntungan Alat Pertanian Otomatis', 'Paragraf 1. Alat pertanian otomatis memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi kerja. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(84, 15, 'Pengenalan Sistem Hidroponik', 'Paragraf 1. Sistem hidroponik adalah teknik bercocok tanam tanpa tanah. Paragraf 2. Menggunakan air dan nutrisi untuk pertumbuhan tanaman. Paragraf 3. Sistem hidroponik canggih adalah solusi untuk pertanian modern.', 1),
(85, 15, 'Jenis-Jenis Sistem Hidroponik', 'Paragraf 1. Ada berbagai jenis sistem hidroponik. Paragraf 2. Setiap jenis memiliki kelebihan dan kekurangan. Paragraf 3. Pilih sistem yang sesuai dengan kebutuhan tanaman.', 2),
(86, 15, 'Persiapan Sistem Hidroponik', 'Paragraf 1. Persiapan sistem hidroponik harus dilakukan dengan baik. Paragraf 2. Pastikan semua komponen terpasang dengan benar. Paragraf 3. Gunakan bahan yang berkualitas.', 3),
(87, 15, 'Penanaman dengan Hidroponik', 'Paragraf 1. Penanaman dengan sistem hidroponik memerlukan teknik khusus. Paragraf 2. Pastikan tanaman mendapatkan nutrisi yang cukup. Paragraf 3. Gunakan alat ukur untuk memantau kondisi tanaman.', 4),
(88, 15, 'Pemeliharaan Sistem Hidroponik', 'Paragraf 1. Sistem hidroponik harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 5),
(89, 15, 'Keuntungan Sistem Hidroponik', 'Paragraf 1. Sistem hidroponik memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air dan nutrisi. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 6),
(90, 15, 'Penggunaan Teknologi dalam Hidroponik', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem hidroponik. Paragraf 2. Gunakan sensor untuk memantau kondisi tanaman. Paragraf 3. Gunakan sistem otomatis untuk mengatur nutrisi dan air.', 7),
(91, 15, 'Pasca Panen dengan Hidroponik', 'Paragraf 1. Penanganan pasca panen dalam hidroponik harus dilakukan dengan hati-hati. Paragraf 2. Gunakan alat pengering untuk mengurangi kadar air. Paragraf 3. Simpan hasil panen di tempat yang kering dan bersih.', 8),
(92, 15, 'Pemasaran Produk Hidroponik', 'Paragraf 1. Pemasaran produk hidroponik harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 9),
(93, 16, 'Pengenalan Pengolahan Buah Tropis', 'Paragraf 1. Pengolahan buah tropis adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan nilai jual buah. Paragraf 3. Pengolahan buah tropis adalah solusi untuk masalah pasca panen.', 1),
(94, 16, 'Teknik Pengolahan Buah Tropis', 'Paragraf 1. Teknik pengolahan buah tropis harus dilakukan dengan benar. Paragraf 2. Pastikan buah dalam kondisi baik sebelum diolah. Paragraf 3. Gunakan alat yang sesuai untuk pengolahan.', 2),
(95, 16, 'Penggunaan Teknologi dalam Pengolahan', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi pengolahan buah tropis. Paragraf 2. Gunakan mesin modern untuk pengolahan. Paragraf 3. Pastikan teknologi yang digunakan sesuai dengan standar.', 3),
(96, 16, 'Pemeliharaan Alat Pengolahan', 'Paragraf 1. Alat pengolahan buah tropis harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada alat. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan alat berfungsi dengan baik.', 4),
(97, 16, 'Keuntungan Pengolahan Buah Tropis', 'Paragraf 1. Pengolahan buah tropis memiliki banyak keuntungan. Paragraf 2. Meningkatkan nilai jual buah. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(98, 16, 'Pemasaran Produk Buah Tropis', 'Paragraf 1. Pemasaran produk buah tropis harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 6),
(99, 17, 'Pengenalan Pengolahan Hasil Panen Kopi', 'Paragraf 1. Pengolahan hasil panen kopi adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan nilai jual kopi. Paragraf 3. Pengolahan kopi adalah solusi untuk masalah pasca panen.', 1),
(100, 17, 'Teknik Pengolahan Hasil Panen Kopi', 'Paragraf 1. Teknik pengolahan hasil panen kopi harus dilakukan dengan benar. Paragraf 2. Pastikan biji kopi dalam kondisi baik sebelum diolah. Paragraf 3. Gunakan alat yang sesuai untuk pengolahan.', 2),
(101, 17, 'Penggunaan Teknologi dalam Pengolahan Kopi', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi pengolahan kopi. Paragraf 2. Gunakan mesin modern untuk pengolahan. Paragraf 3. Pastikan teknologi yang digunakan sesuai dengan standar.', 3),
(102, 17, 'Pemeliharaan Alat Pengolahan Kopi', 'Paragraf 1. Alat pengolahan kopi harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada alat. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan alat berfungsi dengan baik.', 4),
(103, 17, 'Keuntungan Pengolahan Kopi', 'Paragraf 1. Pengolahan kopi memiliki banyak keuntungan. Paragraf 2. Meningkatkan nilai jual kopi. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(104, 17, 'Pemasaran Produk Kopi', 'Paragraf 1. Pemasaran produk kopi harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 6),
(105, 18, 'Pengenalan Pengolahan Sayuran Pasca Panen', 'Paragraf 1. Pengolahan sayuran pasca panen adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan nilai jual sayuran. Paragraf 3. Pengolahan sayuran adalah solusi untuk masalah pasca panen.', 1),
(106, 18, 'Teknik Pengolahan Sayuran Pasca Panen', 'Paragraf 1. Teknik pengolahan sayuran pasca panen harus dilakukan dengan benar. Paragraf 2. Pastikan sayuran dalam kondisi baik sebelum diolah. Paragraf 3. Gunakan alat yang sesuai untuk pengolahan.', 2),
(107, 18, 'Penggunaan Teknologi dalam Pengolahan Sayuran', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi pengolahan sayuran. Paragraf 2. Gunakan mesin modern untuk pengolahan. Paragraf 3. Pastikan teknologi yang digunakan sesuai dengan standar.', 3),
(108, 18, 'Pemeliharaan Alat Pengolahan Sayuran', 'Paragraf 1. Alat pengolahan sayuran harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada alat. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan alat berfungsi dengan baik.', 4),
(109, 18, 'Keuntungan Pengolahan Sayuran', 'Paragraf 1. Pengolahan sayuran memiliki banyak keuntungan. Paragraf 2. Meningkatkan nilai jual sayuran. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(110, 18, 'Pemasaran Produk Sayuran', 'Paragraf 1. Pemasaran produk sayuran harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 6),
(111, 19, 'Pengenalan Teknik Pengawetan', 'Paragraf 1. Teknik pengawetan hasil panen adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan umur simpan hasil panen. Paragraf 3. Teknik pengawetan adalah solusi untuk masalah pasca panen.', 1),
(112, 19, 'Jenis-Jenis Teknik Pengawetan', 'Paragraf 1. Ada berbagai jenis teknik pengawetan hasil panen. Paragraf 2. Setiap jenis memiliki kelebihan dan kekurangan. Paragraf 3. Pilih teknik yang sesuai dengan kebutuhan hasil panen.', 2),
(113, 19, 'Proses Pengawetan Hasil Panen', 'Paragraf 1. Proses pengawetan hasil panen harus dilakukan dengan benar. Paragraf 2. Pastikan hasil panen dalam kondisi baik sebelum diawetkan. Paragraf 3. Gunakan alat yang sesuai untuk pengawetan.', 3),
(114, 19, 'Penggunaan Teknologi dalam Pengawetan', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi pengawetan hasil panen. Paragraf 2. Gunakan mesin modern untuk pengawetan. Paragraf 3. Pastikan teknologi yang digunakan sesuai dengan standar.', 4),
(115, 19, 'Keuntungan Teknik Pengawetan', 'Paragraf 1. Teknik pengawetan hasil panen memiliki banyak keuntungan. Paragraf 2. Meningkatkan umur simpan hasil panen. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(116, 20, 'Pengenalan Pengolahan Biji Kakao', 'Paragraf 1. Pengolahan biji kakao adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan nilai jual biji kakao. Paragraf 3. Pengolahan biji kakao adalah solusi untuk masalah pasca panen.', 1),
(117, 20, 'Teknik Pengolahan Biji Kakao', 'Paragraf 1. Teknik pengolahan biji kakao harus dilakukan dengan benar. Paragraf 2. Pastikan biji kakao dalam kondisi baik sebelum diolah. Paragraf 3. Gunakan alat yang sesuai untuk pengolahan.', 2),
(118, 20, 'Penggunaan Teknologi dalam Pengolahan Biji Kakao', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi pengolahan biji kakao. Paragraf 2. Gunakan mesin modern untuk pengolahan. Paragraf 3. Pastikan teknologi yang digunakan sesuai dengan standar.', 3),
(119, 20, 'Pemeliharaan Alat Pengolahan Biji Kakao', 'Paragraf 1. Alat pengolahan biji kakao harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kerusakan pada alat. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan alat berfungsi dengan baik.', 4),
(120, 20, 'Keuntungan Pengolahan Biji Kakao', 'Paragraf 1. Pengolahan biji kakao memiliki banyak keuntungan. Paragraf 2. Meningkatkan nilai jual biji kakao. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(121, 20, 'Pemasaran Produk Biji Kakao', 'Paragraf 1. Pemasaran produk biji kakao harus dilakukan dengan strategi yang baik. Paragraf 2. Gunakan media sosial untuk promosi. Paragraf 3. Kerjasama dengan distributor lokal.', 6),
(122, 20, 'Sertifikasi Produk Biji Kakao', 'Paragraf 1. Sertifikasi produk biji kakao penting untuk memberikan kepercayaan kepada konsumen. Paragraf 2. Ikuti prosedur sertifikasi yang berlaku. Paragraf 3. Sertifikasi produk biji kakao akan meningkatkan nilai jual.', 7),
(123, 20, 'Pengembangan Produk Olahan Biji Kakao', 'Paragraf 1. Pengembangan produk olahan biji kakao adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan nilai jual produk olahan. Paragraf 3. Pengembangan produk olahan biji kakao adalah solusi untuk masalah pasca panen.', 8),
(124, 20, 'Teknik Pengolahan Produk Olahan Biji Kakao', 'Paragraf 1. Teknik pengolahan produk olahan biji kakao harus dilakukan dengan benar. Paragraf 2. Pastikan produk olahan dalam kondisi baik sebelum diolah. Paragraf 3. Gunakan alat yang sesuai untuk pengolahan.', 9),
(125, 21, 'Pengenalan Manajemen Irigasi', 'Paragraf 1. Manajemen irigasi adalah teknik penting dalam pertanian. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi penggunaan air. Paragraf 3. Manajemen irigasi adalah solusi untuk masalah irigasi.', 1),
(126, 21, 'Sistem Irigasi Sawah', 'Paragraf 1. Sistem irigasi sawah harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem irigasi. Paragraf 3. Pastikan sistem irigasi efisien dan efektif.', 2),
(127, 21, 'Penggunaan Teknologi dalam Irigasi', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem irigasi. Paragraf 2. Gunakan sensor untuk memantau kondisi air. Paragraf 3. Gunakan sistem otomatis untuk mengatur irigasi.', 3),
(128, 21, 'Pemeliharaan Sistem Irigasi', 'Paragraf 1. Sistem irigasi harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(129, 21, 'Keuntungan Manajemen Irigasi', 'Paragraf 1. Manajemen irigasi memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(130, 21, 'Penggunaan Air dalam Irigasi', 'Paragraf 1. Penggunaan air dalam irigasi harus dilakukan dengan efisien. Paragraf 2. Pastikan tanaman mendapatkan air yang cukup. Paragraf 3. Gunakan teknologi untuk mengoptimalkan penggunaan air.', 6),
(131, 21, 'Pengelolaan Air di Sawah', 'Paragraf 1. Pengelolaan air di sawah harus dilakukan dengan baik. Paragraf 2. Pastikan air selalu tersedia untuk tanaman. Paragraf 3. Gunakan sistem irigasi yang efisien.', 7),
(132, 21, 'Sertifikasi Irigasi Sawah', 'Paragraf 1. Sertifikasi irigasi sawah penting untuk memberikan kepercayaan kepada konsumen. Paragraf 2. Ikuti prosedur sertifikasi yang berlaku. Paragraf 3. Sertifikasi irigasi sawah akan meningkatkan nilai jual produk.', 8),
(133, 21, 'Pengembangan Sistem Irigasi Sawah', 'Paragraf 1. Pengembangan sistem irigasi sawah adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi sistem irigasi. Paragraf 3. Pengembangan sistem irigasi sawah adalah solusi untuk masalah irigasi.', 9),
(134, 22, 'Pengenalan Optimalisasi Penggunaan Air', 'Paragraf 1. Optimalisasi penggunaan air adalah teknik penting dalam pertanian. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi penggunaan air. Paragraf 3. Optimalisasi penggunaan air adalah solusi untuk masalah air.', 1),
(135, 22, 'Sistem Optimalisasi Penggunaan Air', 'Paragraf 1. Sistem optimalisasi penggunaan air harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem optimalisasi. Paragraf 3. Pastikan sistem optimalisasi efisien dan efektif.', 2),
(136, 22, 'Penggunaan Teknologi dalam Optimalisasi Air', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem optimalisasi air. Paragraf 2. Gunakan sensor untuk memantau kondisi air. Paragraf 3. Gunakan sistem otomatis untuk mengatur optimalisasi air.', 3),
(137, 22, 'Pemeliharaan Sistem Optimalisasi Air', 'Paragraf 1. Sistem optimalisasi air harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(138, 22, 'Keuntungan Optimalisasi Penggunaan Air', 'Paragraf 1. Optimalisasi penggunaan air memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(139, 22, 'Penggunaan Air dalam Pertanian', 'Paragraf 1. Penggunaan air dalam pertanian harus dilakukan dengan efisien. Paragraf 2. Pastikan tanaman mendapatkan air yang cukup. Paragraf 3. Gunakan teknologi untuk mengoptimalkan penggunaan air.', 6),
(140, 23, 'Pengenalan Teknik Irigasi Tetes', 'Paragraf 1. Teknik irigasi tetes adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi penggunaan air. Paragraf 3. Teknik irigasi tetes adalah solusi untuk masalah irigasi.', 1),
(141, 23, 'Sistem Irigasi Tetes', 'Paragraf 1. Sistem irigasi tetes harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem irigasi. Paragraf 3. Pastikan sistem irigasi efisien dan efektif.', 2),
(142, 23, 'Penggunaan Teknologi dalam Irigasi Tetes', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem irigasi tetes. Paragraf 2. Gunakan sensor untuk memantau kondisi air. Paragraf 3. Gunakan sistem otomatis untuk mengatur irigasi.', 3),
(143, 23, 'Pemeliharaan Sistem Irigasi Tetes', 'Paragraf 1. Sistem irigasi tetes harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(144, 23, 'Keuntungan Teknik Irigasi Tetes', 'Paragraf 1. Teknik irigasi tetes memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(145, 23, 'Penggunaan Air dalam Irigasi Tetes', 'Paragraf 1. Penggunaan air dalam irigasi tetes harus dilakukan dengan efisien. Paragraf 2. Pastikan tanaman mendapatkan air yang cukup. Paragraf 3. Gunakan teknologi untuk mengoptimalkan penggunaan air.', 6),
(146, 24, 'Pengenalan Pengelolaan Irigasi Tersier', 'Paragraf 1. Pengelolaan irigasi tersier adalah teknik penting dalam pertanian. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi penggunaan air. Paragraf 3. Pengelolaan irigasi tersier adalah solusi untuk masalah irigasi.', 1),
(147, 24, 'Sistem Pengelolaan Irigasi Tersier', 'Paragraf 1. Sistem pengelolaan irigasi tersier harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem pengelolaan. Paragraf 3. Pastikan sistem pengelolaan efisien dan efektif.', 2),
(148, 24, 'Penggunaan Teknologi dalam Pengelolaan Irigasi', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem pengelolaan irigasi tersier. Paragraf 2. Gunakan sensor untuk memantau kondisi air. Paragraf 3. Gunakan sistem otomatis untuk mengatur pengelolaan irigasi.', 3),
(149, 24, 'Pemeliharaan Sistem Pengelolaan Irigasi', 'Paragraf 1. Sistem pengelolaan irigasi tersier harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(150, 24, 'Keuntungan Pengelolaan Irigasi Tersier', 'Paragraf 1. Pengelolaan irigasi tersier memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(151, 25, 'Pengenalan Sistem Irigasi Berbasis Teknologi', 'Paragraf 1. Sistem irigasi berbasis teknologi adalah teknik penting dalam pertanian modern. Paragraf 2. Menggunakan teknologi ini dapat meningkatkan efisiensi penggunaan air. Paragraf 3. Sistem irigasi berbasis teknologi adalah solusi untuk masalah irigasi.', 1),
(152, 25, 'Sistem Irigasi Berbasis Teknologi', 'Paragraf 1. Sistem irigasi berbasis teknologi harus dirancang dengan baik. Paragraf 2. Gunakan teknologi terbaru dalam sistem irigasi. Paragraf 3. Pastikan sistem irigasi efisien dan efektif.', 2),
(153, 25, 'Penggunaan Teknologi dalam Irigasi', 'Paragraf 1. Penggunaan teknologi dapat meningkatkan efisiensi sistem irigasi. Paragraf 2. Gunakan sensor untuk memantau kondisi air. Paragraf 3. Gunakan sistem otomatis untuk mengatur irigasi.', 3),
(154, 25, 'Pemeliharaan Sistem Irigasi', 'Paragraf 1. Sistem irigasi berbasis teknologi harus dipelihara dengan baik. Paragraf 2. Pastikan tidak ada kebocoran pada sistem. Paragraf 3. Lakukan pemeliharaan rutin untuk memastikan sistem berfungsi dengan baik.', 4),
(155, 25, 'Keuntungan Sistem Irigasi Berbasis Teknologi', 'Paragraf 1. Sistem irigasi berbasis teknologi memiliki banyak keuntungan. Paragraf 2. Meningkatkan efisiensi penggunaan air. Paragraf 3. Ramah lingkungan dan berkelanjutan.', 5),
(156, 25, 'Penggunaan Air dalam Irigasi Berbasis Teknologi', 'Paragraf 1. Penggunaan air dalam irigasi berbasis teknologi harus dilakukan dengan efisien. Paragraf 2. Pastikan tanaman mendapatkan air yang cukup. Paragraf 3. Gunakan teknologi untuk mengoptimalkan penggunaan air.', 6),
(157, 25, 'Sertifikasi Sistem Irigasi Berbasis Teknologi', 'Paragraf 1. Sertifikasi sistem irigasi berbasis teknologi penting untuk memberikan kepercayaan kepada konsumen. Paragraf 2. Ikuti prosedur sertifikasi yang berlaku. Paragraf 3. Sertifikasi sistem irigasi berbasis teknologi akan meningkatkan nilai jual produk.', 7),
(158, 26, 'Pengenalan Kewirausahaan Pertanian', 'Paragraf 1. Kewirausahaan pertanian adalah bidang yang menarik dan menantang. Paragraf 2. Menggunakan pengetahuan dan keterampilan dalam bidang pertanian dapat membuka peluang usaha. Paragraf 3. Kewirausahaan pertanian dasar melibatkan pemahaman tentang pasar dan kebutuhan konsumen.', 1),
(159, 26, 'Dasar-Dasar Kewirausahaan Pertanian', 'Paragraf 1. Dasar-dasar kewirausahaan pertanian meliputi perencanaan, pelaksanaan, dan evaluasi usaha. Paragraf 2. Penting untuk memahami manajemen keuangan dan sumber daya manusia. Paragraf 3. Mengembangkan produk yang inovatif dan berkualitas adalah kunci sukses dalam kewirausahaan pertanian.', 2),
(160, 26, 'Strategi Pemasaran Produk Pertanian', 'Paragraf 1. Strategi pemasaran produk pertanian melibatkan penetapan harga, promosi, dan distribusi. Paragraf 2. Memahami kebutuhan dan preferensi konsumen sangat penting. Paragraf 3. Menggunakan media sosial dan platform online dapat meningkatkan jangkauan pasar.', 3),
(161, 26, 'Pengembangan Produk Pertanian', 'Paragraf 1. Pengembangan produk pertanian melibatkan penelitian dan inovasi. Paragraf 2. Menggunakan teknologi modern dapat meningkatkan kualitas produk. Paragraf 3. Mengikuti tren pasar dan kebutuhan konsumen dapat membantu dalam pengembangan produk.', 4),
(162, 26, 'Manajemen Keuangan Usaha Pertanian', 'Paragraf 1. Manajemen keuangan usaha pertanian melibatkan perencanaan anggaran, pengelolaan kas, dan pencatatan transaksi. Paragraf 2. Memahami laporan keuangan sangat penting untuk pengambilan keputusan. Paragraf 3. Menggunakan perangkat lunak akuntansi dapat membantu dalam manajemen keuangan.', 5),
(163, 26, 'Studi Kelayakan Usaha Pertanian', 'Paragraf 1. Studi kelayakan usaha pertanian melibatkan analisis pasar, teknis, keuangan, dan lingkungan. Paragraf 2. Memahami potensi risiko dan peluang sangat penting. Paragraf 3. Studi kelayakan membantu dalam perencanaan dan pengambilan keputusan yang tepat.', 6),
(164, 26, 'Pengelolaan Risiko dalam Usaha Pertanian', 'Paragraf 1. Pengelolaan risiko melibatkan identifikasi, analisis, dan mitigasi risiko. Paragraf 2. Menggunakan asuransi pertanian dapat membantu dalam mengelola risiko. Paragraf 3. Diversifikasi usaha pertanian dapat mengurangi risiko usaha.', 7),
(165, 26, 'Pengembangan Jaringan dan Kemitraan', 'Paragraf 1. Pengembangan jaringan dan kemitraan melibatkan kerjasama dengan petani lain, pemasok, dan distributor. Paragraf 2. Memahami kebutuhan dan harapan mitra sangat penting. Paragraf 3. Kemitraan yang kuat dapat membantu dalam pengembangan usaha pertanian.', 8),
(166, 26, 'Penggunaan Teknologi dalam Kewirausahaan Pertanian', 'Paragraf 1. Penggunaan teknologi modern dapat meningkatkan efisiensi dan produktivitas usaha pertanian. Paragraf 2. Menggunakan aplikasi pertanian dan perangkat lunak manajemen usaha dapat membantu dalam pengelolaan usaha. Paragraf 3. Mengikuti perkembangan teknologi dan inovasi dapat memberikan keuntungan kompetitif.', 9),
(167, 26, 'Etika dan Tanggung Jawab Sosial dalam Kewirausahaan Pertanian', 'Paragraf 1. Etika dan tanggung jawab sosial sangat penting dalam kewirausahaan pertanian. Paragraf 2. Menggunakan praktik pertanian yang berkelanjutan dan ramah lingkungan dapat memberikan dampak positif. Paragraf 3. Memahami dan memenuhi tanggung jawab sosial kepada komunitas dan lingkungan adalah bagian dari kewirausahaan yang baik.', 10),
(168, 27, 'Pengenalan Pemasaran Produk Pertanian', 'Paragraf 1. Pemasaran produk pertanian melibatkan berbagai kegiatan untuk memperkenalkan dan menjual produk kepada konsumen. Paragraf 2. Strategi pemasaran yang efektif dapat meningkatkan penjualan dan keuntungan. Paragraf 3. Memahami pasar dan kebutuhan konsumen sangat penting dalam pemasaran produk pertanian.', 1),
(169, 27, 'Analisis Pasar Pertanian', 'Paragraf 1. Analisis pasar pertanian melibatkan penelitian tentang tren pasar, kebutuhan konsumen, dan persaingan. Paragraf 2. Menggunakan data dan informasi pasar dapat membantu dalam pengambilan keputusan pemasaran. Paragraf 3. Memahami faktor-faktor yang mempengaruhi permintaan dan penawaran produk pertanian sangat penting.', 2),
(170, 27, 'Penetapan Harga Produk Pertanian', 'Paragraf 1. Penetapan harga produk pertanian melibatkan pertimbangan biaya produksi, nilai pasar, dan strategi penetapan harga. Paragraf 2. Menggunakan metode penetapan harga yang tepat dapat meningkatkan daya saing produk. Paragraf 3. Memahami sensitivitas harga konsumen dan elastisitas permintaan sangat penting.', 3),
(171, 27, 'Promosi Produk Pertanian', 'Paragraf 1. Promosi produk pertanian melibatkan berbagai kegiatan untuk menarik perhatian konsumen. Paragraf 2. Menggunakan media sosial, iklan, dan promosi penjualan dapat meningkatkan kesadaran merek. Paragraf 3. Strategi promosi yang efektif dapat meningkatkan penjualan dan loyalitas konsumen.', 4),
(172, 27, 'Distribusi Produk Pertanian', 'Paragraf 1. Distribusi produk pertanian melibatkan pengelolaan saluran distribusi untuk memastikan produk sampai ke konsumen dengan efisien. Paragraf 2. Menggunakan saluran distribusi yang tepat dapat mengurangi biaya dan meningkatkan kepuasan konsumen. Paragraf 3. Memahami kebutuhan logistik dan manajemen rantai pasokan sangat penting.', 5),
(173, 27, 'Pengembangan Pasar Produk Pertanian', 'Paragraf 1. Pengembangan pasar melibatkan mencari peluang pasar baru dan memperluas pangsa pasar. Paragraf 2. Menggunakan strategi diversifikasi produk dan penetrasi pasar dapat meningkatkan pertumbuhan usaha. Paragraf 3. Memahami kebutuhan pasar dan mengembangkan produk yang sesuai sangat penting.', 6),
(174, 27, 'Pemasaran Digital untuk Produk Pertanian', 'Paragraf 1. Pemasaran digital melibatkan penggunaan teknologi dan internet untuk mempromosikan produk pertanian. Paragraf 2. Menggunakan media sosial, situs web, dan aplikasi dapat meningkatkan jangkauan pasar. Paragraf 3. Strategi pemasaran digital yang efektif dapat meningkatkan penjualan dan interaksi dengan konsumen.', 7),
(175, 27, 'Pemasaran Langsung untuk Produk Pertanian', 'Paragraf 1. Pemasaran langsung melibatkan penjualan produk pertanian langsung kepada konsumen tanpa perantara. Paragraf 2. Menggunakan pasar tani, toko pertanian, dan penjualan langsung dapat meningkatkan keuntungan. Paragraf 3. Memahami kebutuhan dan preferensi konsumen sangat penting dalam pemasaran langsung.', 8),
(176, 27, 'Branding Produk Pertanian', 'Paragraf 1. Branding melibatkan pengembangan identitas dan citra produk pertanian. Paragraf 2. Menggunakan strategi branding yang efektif dapat meningkatkan kesadaran merek dan loyalitas konsumen. Paragraf 3. Memahami nilai merek dan mengkomunikasikan keunikan produk sangat penting.', 9),
(177, 27, 'Pemasaran Internasional Produk Pertanian', 'Paragraf 1. Pemasaran internasional melibatkan ekspor dan penjualan produk pertanian ke pasar global. Paragraf 2. Menggunakan strategi pemasaran internasional dapat meningkatkan pangsa pasar dan keuntungan. Paragraf 3. Memahami regulasi dan standar internasional sangat penting dalam pemasaran internasional.', 10),
(178, 28, 'Pengenalan Manajemen Keuangan Pertanian', 'Paragraf 1. Manajemen keuangan pertanian melibatkan pengelolaan sumber daya keuangan untuk mencapai tujuan usaha. Paragraf 2. Menggunakan prinsip-prinsip manajemen keuangan yang baik dapat meningkatkan efisiensi dan profitabilitas. Paragraf 3. Memahami aspek keuangan pertanian sangat penting dalam manajemen keuangan.', 1),
(179, 28, 'Perencanaan Keuangan Usaha Pertanian', 'Paragraf 1. Perencanaan keuangan melibatkan penetapan tujuan keuangan dan strategi untuk mencapainya. Paragraf 2. Menggunakan anggaran dan proyeksi keuangan dapat membantu dalam perencanaan keuangan. Paragraf 3. Memahami risiko dan peluang keuangan sangat penting dalam perencanaan keuangan.', 2),
(180, 28, 'Pengelolaan Kas Usaha Pertanian', 'Paragraf 1. Pengelolaan kas melibatkan pengendalian arus kas masuk dan keluar. Paragraf 2. Menggunakan sistem pengelolaan kas yang baik dapat meningkatkan likuiditas dan solvabilitas usaha. Paragraf 3. Memahami kebutuhan kas dan mengelola saldo kas dengan baik sangat penting.', 3),
(181, 28, 'Penggunaan Kredit dalam Usaha Pertanian', 'Paragraf 1. Penggunaan kredit melibatkan peminjaman dana untuk memenuhi kebutuhan modal usaha. Paragraf 2. Menggunakan kredit dengan bijak dapat meningkatkan pertumbuhan usaha. Paragraf 3. Memahami persyaratan dan risiko kredit sangat penting dalam penggunaan kredit.', 4),
(182, 28, 'Pengelolaan Aset Usaha Pertanian', 'Paragraf 1. Pengelolaan aset melibatkan pengelolaan dan pemeliharaan aset tetap dan bergerak. Paragraf 2. Menggunakan aset dengan efisien dapat meningkatkan produktivitas dan keuntungan. Paragraf 3. Memahami nilai aset dan melakukan investasi yang bijak sangat penting.', 5),
(183, 28, 'Analisis Laporan Keuangan Usaha Pertanian', 'Paragraf 1. Analisis laporan keuangan melibatkan penilaian kinerja keuangan usaha. Paragraf 2. Menggunakan rasio keuangan dan indikator kinerja dapat membantu dalam analisis laporan keuangan. Paragraf 3. Memahami hasil analisis dan mengambil tindakan yang tepat sangat penting.', 6),
(184, 29, 'Pengenalan Studi Kelayakan Usaha Pertanian', 'Paragraf 1. Studi kelayakan usaha pertanian melibatkan analisis menyeluruh untuk menilai kelayakan usaha. Paragraf 2. Menggunakan metode dan teknik analisis yang tepat dapat memberikan gambaran yang jelas tentang potensi usaha. Paragraf 3. Studi kelayakan membantu dalam pengambilan keputusan yang tepat.', 1),
(185, 29, 'Analisis Pasar dalam Studi Kelayakan', 'Paragraf 1. Analisis pasar melibatkan penelitian tentang permintaan, penawaran, dan persaingan. Paragraf 2. Menggunakan data dan informasi pasar dapat membantu dalam memahami kondisi pasar. Paragraf 3. Memahami kebutuhan dan preferensi konsumen sangat penting dalam analisis pasar.', 2),
(186, 29, 'Analisis Teknis dalam Studi Kelayakan', 'Paragraf 1. Analisis teknis melibatkan penilaian tentang aspek teknis usaha seperti lokasi, teknologi, dan sumber daya. Paragraf 2. Menggunakan teknologi yang tepat dapat meningkatkan efisiensi dan produktivitas usaha. Paragraf 3. Memahami aspek teknis yang relevan sangat penting dalam analisis teknis.', 3),
(187, 29, 'Analisis Keuangan dalam Studi Kelayakan', 'Paragraf 1. Analisis keuangan melibatkan penilaian tentang aspek keuangan usaha seperti investasi, pendapatan, dan biaya. Paragraf 2. Menggunakan proyeksi keuangan dan analisis biaya-manfaat dapat membantu dalam memahami kelayakan keuangan. Paragraf 3. Memahami aspek keuangan yang relevan sangat penting dalam analisis keuangan.', 4),
(188, 29, 'Analisis Risiko dalam Studi Kelayakan', 'Paragraf 1. Analisis risiko melibatkan identifikasi, analisis, dan mitigasi risiko yang mungkin terjadi. Paragraf 2. Menggunakan metode manajemen risiko dapat membantu dalam mengelola risiko. Paragraf 3. Memahami potensi risiko dan cara mengatasinya sangat penting dalam analisis risiko.', 5),
(189, 29, 'Pengambilan Keputusan Berdasarkan Studi Kelayakan', 'Paragraf 1. Pengambilan keputusan melibatkan evaluasi hasil studi kelayakan untuk menentukan apakah usaha layak dilanjutkan. Paragraf 2. Menggunakan hasil analisis dan rekomendasi dapat membantu dalam pengambilan keputusan. Paragraf 3. Memahami implikasi keputusan sangat penting dalam pengambilan keputusan.', 6),
(190, 29, 'Pelaksanaan Studi Kelayakan', 'Paragraf 1. Pelaksanaan studi kelayakan melibatkan tahap perencanaan, pelaksanaan, dan evaluasi. Paragraf 2. Menggunakan tim yang kompeten dan metode yang tepat dapat memastikan keberhasilan studi kelayakan. Paragraf 3. Memahami tahapan dan proses studi kelayakan sangat penting dalam pelaksanaan studi kelayakan.', 7),
(191, 29, 'Laporan Studi Kelayakan', 'Paragraf 1. Laporan studi kelayakan adalah dokumen yang menyajikan hasil analisis dan rekomendasi. Paragraf 2. Menggunakan format dan struktur laporan yang baik dapat memudahkan pemahaman. Paragraf 3. Memahami cara menyusun laporan yang jelas dan lengkap sangat penting dalam penyusunan laporan studi kelayakan.', 8),
(192, 30, 'Pengenalan Pengembangan Produk Pertanian Inovatif', 'Paragraf 1. Pengembangan produk pertanian inovatif melibatkan penciptaan produk baru yang memenuhi kebutuhan pasar. Paragraf 2. Menggunakan teknologi dan inovasi dapat meningkatkan nilai tambah produk. Paragraf 3. Pengembangan produk pertanian inovatif adalah solusi untuk memenuhi kebutuhan konsumen.', 1);
INSERT INTO `modul` (`id_modul`, `id_kelas`, `nama_modul`, `isi_modul`, `urutan_modul`) VALUES
(193, 30, 'Penelitian dan Pengembangan Produk Pertanian', 'Paragraf 1. Penelitian dan pengembangan melibatkan eksperimen dan pengujian untuk menciptakan produk baru. Paragraf 2. Menggunakan metode ilmiah dapat membantu dalam pengembangan produk yang efektif. Paragraf 3. Memahami kebutuhan pasar dan tren inovasi sangat penting dalam penelitian dan pengembangan.', 2),
(194, 30, 'Penggunaan Teknologi dalam Pengembangan Produk Pertanian', 'Paragraf 1. Penggunaan teknologi modern dapat meningkatkan efisiensi dan kualitas produk pertanian. Paragraf 2. Menggunakan aplikasi pertanian dan perangkat lunak manajemen usaha dapat membantu dalam pengembangan produk. Paragraf 3. Mengikuti perkembangan teknologi dan inovasi dapat memberikan keuntungan kompetitif.', 3),
(195, 30, 'Proses Pengembangan Produk Pertanian', 'Paragraf 1. Proses pengembangan produk melibatkan tahap perencanaan, pengembangan, dan peluncuran. Paragraf 2. Menggunakan metode pengembangan produk yang sistematis dapat memastikan keberhasilan. Paragraf 3. Memahami tahapan dan proses pengembangan produk sangat penting dalam pengembangan produk.', 4),
(196, 30, 'Pengujian dan Evaluasi Produk Pertanian', 'Paragraf 1. Pengujian dan evaluasi melibatkan penilaian terhadap kualitas dan kinerja produk. Paragraf 2. Menggunakan metode pengujian yang tepat dapat memastikan produk memenuhi standar. Paragraf 3. Memahami hasil pengujian dan melakukan perbaikan yang diperlukan sangat penting dalam pengembangan produk.', 5);

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

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `jumlah_bintang` enum('1','2','3','4','5') NOT NULL,
  `isi_ulasan` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(999) NOT NULL,
  `email` varchar(999) NOT NULL,
  `password` varchar(999) NOT NULL,
  `provinsi` varchar(999) NOT NULL,
  `kota` varchar(999) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `provinsi`, `kota`, `tanggal_lahir`) VALUES
(1, 'Ahmad Santoso', 'ahmad.santoso@example.com', 'AhmadS123', 'Jawa Barat', 'Bandung', '1990-01-15'),
(2, 'Rina Sari', 'rina.sari@example.com', 'RinaS@ri85', 'Jawa Tengah', 'Semarang', '1985-05-20'),
(3, 'Budi Wirawan', 'budi.wirawan@example.com', 'BudiW!r92', 'Jakarta', 'Jakarta Pusat', '1992-12-03'),
(4, 'Siti Aminah', 'siti.aminah@example.com', 'SitiA88*', 'Jawa Timur', 'Surabaya', '1988-07-10'),
(5, 'Indra Saputra', 'indra.saputra@example.com', 'IndraS95#', 'Bali', 'Denpasar', '1995-09-25'),
(6, 'Ayu Lestari', 'ayu.lestari@example.com', 'AyuLest@ri93', 'Sumatera Utara', 'Medan', '1993-11-30'),
(7, 'Rizky Ramadhan', 'rizky.ramadhan@example.com', 'RizkyR91$', 'Sulawesi Selatan', 'Makassar', '1991-03-22'),
(8, 'Desi Kartika', 'desi.kartika@example.com', 'DesiK!87', 'Yogyakarta', 'Yogyakarta', '1987-08-14'),
(9, 'Joko Prasetyo', 'joko.prasetyo@example.com', 'JokoP@94', 'Jawa Tengah', 'Solo', '1994-02-17'),
(10, 'Fitriani', 'fitriani@example.com', 'Fitriani96$', 'Kalimantan Timur', 'Samarinda', '1996-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `user_kelas`
--

CREATE TABLE `user_kelas` (
  `id_user_kelas` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_kelas`
--
ALTER TABLE `kategori_kelas`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_tanaman`
--
ALTER TABLE `kategori_tanaman`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `kategori` (`id_kategori`);

--
-- Indexes for table `kelas_proggress`
--
ALTER TABLE `kelas_proggress`
  ADD PRIMARY KEY (`id_proggress`),
  ADD KEY `dari_kelas` (`id_user_kelas`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`),
  ADD KEY `memiliki_kelas` (`id_kelas`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id_tanaman`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD KEY `dari_user` (`id_user`),
  ADD KEY `untuk_kelas` (`id_kelas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_kelas`
--
ALTER TABLE `user_kelas`
  ADD PRIMARY KEY (`id_user_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kelas_proggress`
--
ALTER TABLE `kelas_proggress`
  MODIFY `id_proggress` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_kelas`
--
ALTER TABLE `user_kelas`
  MODIFY `id_user_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_kelas` (`id_kategori`);

--
-- Constraints for table `kelas_proggress`
--
ALTER TABLE `kelas_proggress`
  ADD CONSTRAINT `dari_kelas` FOREIGN KEY (`id_user_kelas`) REFERENCES `user_kelas` (`id_user_kelas`);

--
-- Constraints for table `modul`
--
ALTER TABLE `modul`
  ADD CONSTRAINT `memiliki_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_tanaman` (`id_kategori`);

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `dari_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `untuk_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
