-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2019 pada 16.14
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itinerary_wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id`, `id_wisata`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, 219, '1563112581_Food-Junction-Grand-Pakuwon.jpg', 'Food Junction Surabaya', '2019-07-14 06:56:21', '2019-07-14 06:56:21'),
(5, 178, '1563171245_11-tugu-pahlawan.jpg', 'Tugu Pahlawan', '2019-07-14 23:14:05', '2019-07-14 23:14:05'),
(7, 11, '1563458982_pantai ngagelan.jpg', 'Pantai Ngagelan', '2019-07-18 07:09:42', '2019-07-18 07:09:42'),
(8, 2, '1563459018_Wisata-Hits-Bukit-Geger-Bangkalan.png', 'Bukit Geger', '2019-07-18 07:10:18', '2019-07-18 07:10:18'),
(9, 4, '1563459051_teluk hijau.jpg', 'Pantai Teluk Hijau', '2019-07-18 07:10:51', '2019-07-18 07:10:51'),
(10, 5, '1563459084_Rajekwesi.jpeg', 'Pantai Rajekwesi', '2019-07-18 07:11:24', '2019-07-18 07:11:24'),
(11, 6, '1563459173_wp-image-1336242731jpg.jpg', 'Pantai Mustika Pancer', '2019-07-18 07:12:53', '2019-07-18 07:12:53'),
(12, 7, '1563459197_pantai_lampon.JPG', 'Pantai Lampon', '2019-07-18 07:13:17', '2019-07-18 07:13:17'),
(13, 8, '1563459222_Pantai-Pulau-Merah-Banyuwangi_800x450.jpg', 'Pantai Pulau Merah', '2019-07-18 07:13:42', '2019-07-18 07:13:42'),
(14, 9, '1563459253_Alas-Purwo.jpg', 'Alas Purwi National Park Office', '2019-07-18 07:14:13', '2019-07-18 07:14:13'),
(15, 10, '1563459285_Pantai Plengkung Atau G Land.jpg', 'Pantai Plengkung', '2019-07-18 07:14:45', '2019-07-18 07:14:45'),
(16, 10, '1563459303_Big-Wave-Surfing-Sensasi-Berselancar-Ombak-Besar_features-3.jpg', 'Pantai Plengkung', '2019-07-18 07:15:03', '2019-07-18 07:15:03'),
(17, 12, '1563460666_pantai pancur.jpg', 'Pantai Pancur', '2019-07-18 07:37:46', '2019-07-18 07:37:46'),
(18, 12, '1563460683_pantai-pancur-banyuwangi_3_photo_by__pantaipancurbanyuwangi.jpg', 'Pantai Pancur', '2019-07-18 07:38:03', '2019-07-18 07:38:03'),
(19, 13, '1563460855_hqdefault.jpg', 'Kawah Ijen', '2019-07-18 07:40:55', '2019-07-18 07:40:55'),
(20, 13, '1563460878_ijen.png', 'Kawah Ijen', '2019-07-18 07:41:18', '2019-07-18 07:41:18'),
(21, 14, '1563460921_goa istana alas purwo.jpg', 'Goa Istana Alas Purwo', '2019-07-18 07:42:01', '2019-07-18 07:42:01'),
(22, 15, '1563461409_pulau_santen.png', 'Pulau Santen', '2019-07-18 07:50:09', '2019-07-18 07:50:09'),
(23, 15, '1563461426_pulau santen.jpg', 'Pulau Santen', '2019-07-18 07:50:26', '2019-07-18 07:50:26'),
(24, 16, '1563461506_panta tambak rejo.jpg', 'Pantai Tambak Rejo', '2019-07-18 07:51:46', '2019-07-18 07:51:46'),
(25, 17, '1563461566_pantaiserang.jpg', 'Pantai Serang', '2019-07-18 07:52:46', '2019-07-18 07:52:46'),
(26, 18, '1563461602_Pantai-Jolosutro-Blitar.png', 'Pantai Jolosutro Blitar', '2019-07-18 07:53:22', '2019-07-18 07:53:22'),
(27, 19, '1563461625_Selendang-Putri-Goa-Embultuk.jpg', 'Goa Umbul Tuk', '2019-07-18 07:53:45', '2019-07-18 07:53:45'),
(28, 20, '1563461640_goa-jedog-2.jpg', 'Goa Jedog Plosorejo', '2019-07-18 07:54:00', '2019-07-18 07:54:00'),
(29, 21, '1563461656_kayangan api.jpg', 'Wisata Kayangan Api', '2019-07-18 07:54:16', '2019-07-18 07:54:16'),
(30, 21, '1563461669_pengunjung-kayangan-api-melonjak_m_221672-640x421.jpeg', 'Wisata Kayangan Api', '2019-07-18 07:54:29', '2019-07-18 07:54:29'),
(31, 22, '1563461720_tirtawana dander.jpg', 'Tirtawana Dander', '2019-07-18 07:55:20', '2019-07-18 07:55:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `total_perjalanan` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `time_start` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id_history`, `total_perjalanan`, `id_user`, `time_start`) VALUES
(1, '120', 1, '2000-01-01 00:00:00'),
(2, '120', 1, '2000-01-01 00:00:00'),
(3, '130', 1, '2000-01-01 00:00:00'),
(4, '174', 1, '2019-06-21 02:54:00'),
(5, '174', 1, '2019-06-21 03:54:00'),
(6, '174', 1, '2019-06-21 02:54:00'),
(7, '234', 1, '2019-06-21 03:54:00'),
(8, '234', 1, '2019-06-21 04:54:00'),
(9, '234', 1, '2019-06-21 04:54:00'),
(10, '234', 1, '2019-06-21 04:54:00'),
(11, '234', 1, '2019-06-21 04:54:00'),
(12, '234', 1, '2019-06-21 04:54:00'),
(13, '174', 1, '2019-06-21 03:54:00'),
(14, '294', 1, '2019-06-21 05:54:00'),
(15, '234', 1, '2019-06-21 04:54:00'),
(16, '294', 1, '2019-06-21 04:54:00'),
(17, '234', 1, '2019-06-21 04:54:00'),
(18, '234', 1, '2019-06-21 04:54:00'),
(19, '234', 1, '2019-06-21 04:54:00'),
(20, '234', 1, '2019-06-21 04:54:00'),
(21, '294', 1, '2019-06-21 05:54:00'),
(22, '315', 1, '2019-06-22 06:15:00'),
(23, '302', 1, '2019-06-23 06:02:00'),
(24, '754', 1, '2019-06-23 13:34:00'),
(25, '97', 1, '2019-06-25 02:37:00'),
(26, '274', 1, '2019-06-25 05:34:00'),
(27, '166', 1, '2019-06-20 03:46:00'),
(28, '166', 1, '2019-06-12 03:46:00'),
(29, '166', 1, '2019-01-02 02:46:00'),
(30, '225', 1, '2019-06-20 04:45:00'),
(31, '237', 1, '2019-06-25 04:57:00'),
(32, '237', 1, '2019-06-25 03:57:00'),
(33, '157', 1, '2019-06-26 03:37:00'),
(34, '157', 1, '2019-06-26 03:37:00'),
(35, '157', 1, '2019-06-26 03:37:00'),
(36, '97', 1, '2019-06-26 02:37:00'),
(37, '97', 1, '2019-06-26 01:37:00'),
(38, '340', 1, '2019-06-26 06:40:00'),
(39, '226', 1, '2019-06-26 05:46:00'),
(40, '157', 1, '2019-06-26 03:37:00'),
(41, '151', 1, '2019-01-02 03:31:00'),
(42, '153', 1, '2019-06-27 03:33:00'),
(43, '1024', 1, '2019-06-27 18:04:00'),
(44, '359', 1, '2019-06-27 06:59:00'),
(45, '279', 1, '2019-06-28 06:39:00'),
(46, '870', 1, '2019-06-28 16:30:00'),
(47, '671', 1, '2019-06-28 12:11:00'),
(48, '356', 1, '2019-06-28 07:55:00'),
(49, '583', 1, '2019-05-30 11:46:00'),
(50, '1370', 1, '2019-06-28 22:50:00'),
(51, '1123', 1, '2019-06-28 19:43:00'),
(52, '1395', 1, '2019-06-29 00:15:00'),
(53, '210', 1, '2019-06-20 03:30:00'),
(54, '284', 1, '2019-07-03 05:44:00'),
(55, '211', 1, '2019-07-02 04:31:00'),
(56, '155', 1, '2019-07-03 03:35:00'),
(57, '280', 1, '2019-07-11 05:40:00'),
(58, '2367', 1, '2020-01-02 15:26:00'),
(59, '349', 1, '2019-07-04 06:49:00'),
(60, '1335', 1, '2019-07-05 00:15:00'),
(61, '1038', 1, '2019-07-10 19:18:00'),
(62, '384', 1, '2019-07-04 07:24:00'),
(63, '348', 1, '2019-07-31 06:48:00'),
(64, '295', 1, '2019-07-04 05:55:00'),
(65, '310', 1, '2019-07-05 06:10:00'),
(66, '729', 1, '2019-07-04 13:09:00'),
(67, '137', 1, '2019-07-12 03:17:00'),
(68, '138', 1, '2019-07-02 02:18:00'),
(69, '203', 1, '2019-01-01 04:23:00'),
(70, '263', 1, '2019-01-01 04:27:00'),
(71, '324', 2, '2019-03-03 06:24:00'),
(72, '323', 2, '2019-02-02 05:24:00'),
(73, '203', 2, '2019-01-01 03:24:00'),
(74, '325', 2, '2019-01-01 07:25:00'),
(75, '263', 2, '2019-07-05 05:23:00'),
(76, '214', 2, '2019-07-05 04:34:00'),
(77, '928', 2, '2019-01-01 16:29:00'),
(78, '174', 2, '2019-01-03 03:54:00'),
(79, '206', 2, '2019-01-01 05:26:00'),
(80, '206', 2, '2019-02-03 03:26:00'),
(81, '114', 2, '2019-07-05 14:54:00'),
(82, '578', 3, '2019-07-05 10:38:00'),
(83, '446', 3, '2019-07-05 15:26:00'),
(84, '413', 3, '2019-07-05 14:53:00'),
(85, '281', 3, '2019-07-05 05:41:00'),
(86, '171', 3, '2019-07-05 03:51:00'),
(87, '111', 3, '2019-07-05 02:51:00'),
(88, '155', 3, '2019-07-05 03:35:00'),
(89, '312', 3, '2019-07-05 06:12:00'),
(90, '85', 3, '2019-07-06 11:25:00'),
(91, '93', 3, '2019-07-06 02:33:00'),
(92, '635', 1, '2019-07-10 09:35:00'),
(93, '350', 1, '2019-07-10 15:50:00'),
(94, '113', 1, '2019-07-18 11:53:00'),
(95, '155', 1, '2019-07-18 12:35:00'),
(96, '245', 1, '2019-07-09 05:05:00'),
(97, '164', 1, '2019-07-10 03:44:00'),
(98, '118', 1, '2019-07-11 03:58:00'),
(99, '135', 1, '2019-07-12 04:15:00'),
(100, '95', 1, '2019-07-10 03:35:00'),
(101, '167', 1, '2019-07-10 03:47:00'),
(102, '214', 1, '2019-07-10 04:34:00'),
(103, '167', 2, '2019-07-12 02:46:00'),
(104, '212', 2, '2019-07-12 13:32:00'),
(105, '109', 2, '2019-07-12 12:48:00'),
(106, '260', 2, '2019-07-11 14:20:00'),
(107, '270', 2, '2019-07-11 14:30:00'),
(108, '281', 1, '2019-07-12 14:41:00'),
(109, '269', 1, '2019-07-12 14:29:00'),
(110, '107', 2, '2019-07-12 02:47:00'),
(111, '115', 2, '2019-07-12 11:55:00'),
(112, '164', 2, '2019-07-12 12:44:00'),
(113, '99', 1, '2019-07-13 11:39:00'),
(114, '141', 1, '2019-07-14 10:21:00'),
(115, '160', 1, '2019-07-15 09:00:00'),
(116, '129', 1, '2019-07-18 12:00:00'),
(117, '115', 1, '2019-07-14 01:00:00'),
(118, '954', 1, '2019-07-21 02:00:00'),
(119, '972', 1, '2019-07-21 02:00:00'),
(120, '161', 1, '2019-07-13 06:00:00'),
(121, '161', 1, '2019-07-20 05:00:00'),
(122, '101', 1, '2019-07-12 09:00:00'),
(123, '155', 2, '2019-07-20 02:00:00'),
(124, '225', 2, '2019-07-14 01:00:00'),
(125, '161', 2, '2019-07-13 01:00:00'),
(126, '108', 2, '2019-07-14 01:00:00'),
(127, '182', 2, '2019-01-02 00:00:00'),
(128, '162', 2, '2019-07-13 01:00:00'),
(129, '155', 2, '2019-07-07 01:00:00'),
(130, '175', 2, '2019-07-14 01:00:00'),
(131, '99', 2, '2019-07-13 02:00:00'),
(132, '177', 2, '2019-01-02 00:00:00'),
(133, '109', 2, '2019-01-02 00:00:00'),
(134, '109', 2, '2019-07-13 01:00:00'),
(135, '161', 2, '2019-07-13 01:00:00'),
(136, '169', 1, '2019-07-14 01:00:00'),
(137, '118', 1, '2019-07-13 01:00:00'),
(138, '470', 1, '2019-07-15 01:59:00'),
(139, '427', 1, '2019-07-16 10:00:00'),
(140, '438', 1, '2019-07-15 08:00:00'),
(141, '385', 1, '2019-07-15 08:00:00'),
(142, '363', 1, '2019-07-15 08:00:00'),
(143, '275', 1, '2019-07-16 10:00:00'),
(144, '387', 1, '2019-07-17 10:00:00'),
(145, '853', 1, '2019-07-17 10:00:00'),
(146, '650', 1, '2019-07-16 18:34:00'),
(147, '493', 1, '2019-07-16 18:35:00'),
(148, '225', 1, '2019-07-16 18:45:00'),
(149, '591', 1, '2019-07-16 18:47:00'),
(150, '425', 1, '2019-07-16 18:49:00'),
(151, '591', 1, '2019-07-16 18:55:00'),
(152, '157', 1, '2019-07-16 18:56:00'),
(153, '157', 1, '2019-07-16 18:58:00'),
(154, '1695', 1, '2019-07-16 19:00:00'),
(155, '225', 1, '2019-07-16 20:12:00'),
(156, '225', 1, '2019-07-16 20:13:00'),
(157, '225', 1, '2019-07-16 20:15:00'),
(158, '157', 1, '2019-07-16 20:16:00'),
(159, '2068', 1, '2019-07-16 20:19:00'),
(160, '711', 1, '2019-07-16 21:58:00'),
(161, '1443', 1, '2019-07-16 21:59:00'),
(162, '737', 1, '2019-07-16 22:05:00'),
(163, '224', 1, '2019-07-16 22:33:00'),
(164, '353', 1, '2019-07-16 22:41:00'),
(165, '225', 1, '2019-07-17 01:26:00'),
(166, '225', 1, '2019-07-17 01:26:00'),
(167, '225', 1, '2019-07-18 10:00:00'),
(168, '222', 1, '2019-07-17 08:12:00'),
(169, '225', 1, '2019-07-17 14:10:00'),
(170, '222', 1, '2019-07-17 14:11:00'),
(171, '222', 1, '2019-07-17 14:13:00'),
(172, '225', 1, '2019-07-17 14:14:00'),
(173, '225', 1, '2019-07-17 14:20:00'),
(174, '225', 1, '2019-07-17 14:33:00'),
(175, '225', 1, '2019-07-17 14:41:00'),
(176, '591', 1, '2019-07-17 14:42:00'),
(177, '486', 1, '2019-07-17 14:58:00'),
(178, '6740', 1, '2019-07-17 18:35:00'),
(179, '5126', 1, '2019-07-17 19:52:00'),
(180, '290', 1, '2019-07-18 07:54:00'),
(181, '287', 1, '2019-07-18 08:01:00'),
(182, '252', 1, '2019-07-18 08:01:00'),
(183, '252', 1, '2019-07-18 08:01:00'),
(184, '273', 1, '2019-07-18 08:01:00'),
(185, '375', 1, '2019-07-18 08:01:00'),
(186, '643', 1, '2019-07-19 10:00:00'),
(187, '1023', 1, '2019-07-18 10:30:00'),
(188, '666', 1, '2019-07-18 10:49:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `id_jenis_wisata` int(11) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_wisata`
--

INSERT INTO `jenis_wisata` (`id_jenis_wisata`, `nama_jenis`) VALUES
(1, 'Etnik (Etnhic Tourism)'),
(2, 'Budaya (Culture Tourism)'),
(3, 'Rekreasi (Recreation Tourism)'),
(4, 'Alam (Eco Tourism)'),
(5, 'Kota (City Tourism)'),
(6, 'Rersort City'),
(7, 'Agro (Agro Tourism / Rural Tourism / Farm Tourism)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Kabupaten Bangkalan'),
(2, 'Kabupaten Banyuwangi'),
(3, 'Kabupaten Blitar'),
(4, 'Kabupaten Bojonegoro'),
(5, 'Kabupaten Bondowoso'),
(6, 'Kabupaten Gresik'),
(7, 'Kabupaten Jember'),
(8, 'Kabupaten Jombang'),
(9, 'Kabupaten Kediri'),
(10, 'Kabupaten Lamongan'),
(11, 'Kabupaten Lumajang'),
(12, 'Kabupaten Madiun'),
(13, 'Kabupaten Magetan'),
(14, 'Kabupaten Malang '),
(15, 'Kabupaten Mojokerto'),
(16, 'Kabupaten Nganjuk'),
(17, 'Kabupaten Ngawi'),
(18, 'Kabupaten Pacitan'),
(19, 'Kabupaten Pamekasan'),
(20, 'Kabupaten Pasuruan'),
(21, 'Kabupaten Ponorogo'),
(22, 'Kabupaten Probolinggo'),
(23, 'Kabupaten Sampang'),
(24, 'Kabupaten Sidoarjo'),
(25, 'Kabupaten Situbondo'),
(26, 'Kabupaten Sumenep'),
(27, 'Kabupaten Trenggalek'),
(28, 'Kabupaten Tuban'),
(29, 'Kabupaten Tulungagung'),
(30, 'Kota Batu'),
(31, 'Kota Blitar'),
(32, 'Kota Kediri'),
(33, 'Kota Madiun'),
(34, 'Kota Malang'),
(35, 'Kota Mojokerto'),
(36, 'Kota Pasuruan'),
(37, 'Kota Probolinggo'),
(38, 'Kota Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2019_05_24_062959_create_datawisatas_table', 1),
(26, '2019_06_27_130703_create_admins_table', 1),
(27, '2019_06_27_134035_create_users_table', 1),
(28, '2019_06_27_135442_create_model_users_table', 2),
(29, '2019_07_14_121752_create_gambars_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'zuniarahmai@gmail.com', '$2y$10$aQZo4b1cXFXK/0QrA7EPT.aH0n6/mzwouxTM9AtIycA/EyuLsdmyi', 'Zunia', 'hObIZLiuxYVos4SAOwfuBewFgkuWoFY2Up9EdfaoY5ZohuxJCKw0xNKOwe2c', '2019-06-27 09:21:13', '2019-06-27 09:21:13'),
(2, 'nadia.ningtias20@gmail.com', '$2y$10$sCQyg4LLiDsaCgW1tTgJTO9jVbbO4XgrO4Y.H7BMpLWUXlKau9G9S', 'madian', 'ue2LUPKoliwbgnQtEZecTgXSzk1ILkHfFrHll0GVhzWWn7IWksSc6xf0LOJT', '2019-06-29 05:27:03', '2019-06-29 05:27:03'),
(3, 'zuniar.zr@gmail.com', '$2y$10$z3IRj/v47EG189/XgM8Ky.5YOshauKVOMMlUFPlXTmPT4s/xSdY6G', 'nia', 'UxVdO6VXfjXtmudVqN0TJeRvUu6GmlbOkCFD2WkGL33pGyripr5NIiJN9WGj', '2019-07-05 01:23:17', '2019-07-05 01:23:17'),
(4, 'hab@gmail.com', '$2y$10$vKEi9deDN8wQSV0Rh8I33O1.r8hipwA1p6BUqofSVzceWFouiVP7.', 'habibatul jalilah', 'NMo3vyCHAPJ7Dv7BO0CVuQw2RUyB8nX0ngnHHuDVzAdKDWetWmfBz4IeplMg', '2019-07-16 06:26:52', '2019-07-16 06:26:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_tempuh`
--

CREATE TABLE `waktu_tempuh` (
  `id_waktu_wisata` int(11) NOT NULL,
  `id_history` int(11) NOT NULL,
  `start_wisata` varchar(100) NOT NULL,
  `end_wisata` varchar(100) NOT NULL,
  `durasi` varchar(100) NOT NULL,
  `stay_wisata` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waktu_tempuh`
--

INSERT INTO `waktu_tempuh` (`id_waktu_wisata`, `id_history`, `start_wisata`, `end_wisata`, `durasi`, `stay_wisata`) VALUES
(59, 38, '-7.274042799999999, 112.79862270000001', 'Plaza Surabaya', '21', '60'),
(60, 38, 'Plaza Surabaya', '-7.2634205, 112.73815200000001', '7', '238'),
(61, 38, '-7.2634205, 112.73815200000001', 'Kota Surabaya', '14', NULL),
(62, 39, '-7.274042799999999, 112.79862270000001', '-7.2634205, 112.73815200000001', '23', '120'),
(63, 39, '-7.2634205, 112.73815200000001', '-7.2462417, 112.7356327', '11', '60'),
(64, 39, '-7.2462417, 112.7356327', 'Kota Surabaya', '12', NULL),
(65, 40, '-7.274042799999999, 112.79862270000001', '-7.2634205, 112.73815200000001', '23', '120'),
(66, 40, '-7.2634205, 112.73815200000001', 'Kota Surabaya', '14', NULL),
(67, 41, '-7.274042799999999, 112.79862270000001', 'Kenjeran Park', '9', '119'),
(68, 41, 'Kenjeran Park', 'Kota Surabaya', '23', NULL),
(69, 42, '-7.2764869999999995, 112.79494590000002', 'Kenjeran Park', '11', '119'),
(70, 42, 'Kenjeran Park', 'Kota Surabaya', '23', NULL),
(71, 43, '-7.274042799999999, 112.79862270000001', '-7.2253727, 112.78587540000001', '21', '60'),
(72, 43, '-7.2253727, 112.78587540000001', 'Taman 10 Nopember', '23', '120'),
(73, 43, 'Taman 10 Nopember', 'Plaza Surabaya', '7', '180'),
(74, 43, 'Plaza Surabaya', '-7.2634205, 112.73815200000001', '34', '240'),
(75, 43, '-7.2634205, 112.73815200000001', '-7.2510678, 112.65984389999994', '35', '300'),
(76, 43, '-7.2510678, 112.65984389999994', 'Kota Surabaya', '4', NULL),
(77, 44, '-7.2766459, 112.79450429999997', 'Pantai Siring Kemuning', '116', '180'),
(78, 44, 'Pantai Siring Kemuning', 'Kabupaten Bangkalan', '63', NULL),
(79, 45, '-7.274042799999999, 112.79862270000001', 'Pantai Siring Kemuning', '114', '60'),
(80, 45, 'Pantai Siring Kemuning', 'Kota Surabaya', '105', NULL),
(81, 46, '-7.274042799999999, 112.79862270000001', 'Taman Wisata Alam Kawah Ijen', '385', '60'),
(82, 46, 'Taman Wisata Alam Kawah Ijen', 'Kota Surabaya', '425', NULL),
(83, 47, '-7.274042799999999, 112.79862270000001', '-8.4318316, 112.68428399999993', '249', '60'),
(84, 47, '-8.4318316, 112.68428399999993', 'Kabupaten Tuban', '362', NULL),
(85, 48, '-7.274042799999999, 112.79862270000001', 'Pantai Siring Kemuning', '114', '179'),
(86, 48, 'Pantai Siring Kemuning', 'Kabupaten Bangkalan', '63', NULL),
(87, 47, '-7.274042799999999, 112.79862270000001', '-8.4318316, 112.684284', '23', '60'),
(88, 47, '-7.274042799999999, 112.79862270000001', '-8.4318316, 112.684284', '23', '60'),
(89, 49, 'Kabupaten Bangkalan', 'Pantai Sendang Biru', '311', '60'),
(90, 49, 'Pantai Sendang Biru', 'Kota Pasuruan', '212', NULL),
(91, 50, '-7.274042799999999, 112.79862270000001', 'Puncak B-29 Argosari', '209', '60'),
(92, 50, 'Puncak B-29 Argosari', 'Pantai Bantol', '361', '120'),
(93, 50, 'Pantai Bantol', 'Air Terjun Tirtosari Sarangan', '297', '120'),
(94, 50, 'Air Terjun Tirtosari Sarangan', 'Kota Surabaya', '203', NULL),
(95, 51, '-7.274042799999999, 112.79862270000001', 'Telaga Ngipik', '62', '60'),
(96, 51, 'Telaga Ngipik', 'Taman Nasional Meru Betiri/ Pantai Sukamade', '492', '120'),
(97, 51, 'Taman Nasional Meru Betiri/ Pantai Sukamade', 'Kota Probolinggo', '389', NULL),
(98, 52, '-7.274042799999999, 112.79862270000001', 'Agrowisata Kebun Belimbing Ngringinrejo', '481', '120'),
(99, 52, 'Agrowisata Kebun Belimbing Ngringinrejo', 'Taman Nasional Meru Betiri/ Pantai Sukamade', '620', '60'),
(100, 52, 'Taman Nasional Meru Betiri/ Pantai Sukamade', 'Kabupaten Nganjuk', '114', NULL),
(101, 53, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '120'),
(102, 53, 'Bukit Geger', 'Kabupaten Bangkalan', '12', NULL),
(103, 54, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '23', '60'),
(104, 54, 'Tunjungan Plaza Surabaya', 'Food Junction Grand Pakuwon', '33', '120'),
(105, 54, 'Food Junction Grand Pakuwon', 'Geocode', '48', NULL),
(106, 55, '-7.274042799999999, 112.79862270000001', 'Food Junction Grand Pakuwon', '49', '120'),
(107, 55, 'Food Junction Grand Pakuwon', 'Geocode', '42', NULL),
(108, 56, '-7.274042799999999, 112.79862270000001', 'Taman Apsari', '22', '120'),
(109, 56, 'Taman Apsari', 'Geocode', '13', NULL),
(110, 57, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '23', '60'),
(111, 57, 'Tunjungan Plaza Surabaya', 'Food Junction Grand Pakuwon', '34', '120'),
(112, 57, 'Food Junction Grand Pakuwon', 'Geocode', '43', NULL),
(113, 58, '-7.274042799999999, 112.79862270000001', 'Wisata Pantai Teluk Hijau', '459', '1438'),
(114, 58, 'Wisata Pantai Teluk Hijau', 'Geocode', '470', NULL),
(115, 59, '-7.274042799999999, 112.79862270000001', 'Taman Suroboyo', '21', '60'),
(116, 59, 'Taman Suroboyo', 'Food Junction Grand Pakuwon', '50', '175'),
(117, 59, 'Food Junction Grand Pakuwon', 'Geocode', '43', NULL),
(118, 60, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '453', '120'),
(119, 60, 'Bukit Geger', 'Wisata Pantai Rajekwesi', '516', '179'),
(120, 60, 'Wisata Pantai Rajekwesi', 'Geocode', '67', NULL),
(121, 61, '-7.274042799999999, 112.79862270000001', 'Pantai Pancur', '432', '179'),
(122, 61, 'Pantai Pancur', 'Geocode', '427', NULL),
(123, 62, '-7.274042799999999, 112.79862270000001', 'Taman Suroboyo', '28', '120'),
(124, 62, 'Taman Suroboyo', 'Taman Apsari', '38', '60'),
(125, 62, 'Taman Apsari', 'Wisata Mangrove Gunung Anyar', '31', '90'),
(126, 62, 'Wisata Mangrove Gunung Anyar', 'Add', '17', NULL),
(127, 64, '-7.274042799999999, 112.79862270000001', 'Taman Suroboyo', '22', '60'),
(128, 64, 'Taman Suroboyo', 'Taman Apsari', '6', '90'),
(129, 64, 'Taman Apsari', 'Taman Balai Kota Surabaya', '30', '70'),
(130, 64, 'Taman Balai Kota Surabaya', 'Alamat', '17', NULL),
(131, 65, '-7.2574719, 112.75208829999997', 'Monumen Kapal Selam', '5', '60'),
(132, 65, 'Monumen Kapal Selam', 'Taman Bungkul', '9', '60'),
(133, 65, 'Taman Bungkul', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '17', '60'),
(134, 65, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Pantai Kenjeran Lama', '24', '60'),
(135, 65, 'Pantai Kenjeran Lama', 'Alamat', '15', NULL),
(136, 66, '-7.274042799999999, 112.79862270000001', 'Goa Luweng Jaran', '332', '60'),
(137, 66, 'Goa Luweng Jaran', 'Alamat', '337', NULL),
(138, 67, 'Kabupaten Bangkalan', 'Bukit Geger', '12', '60'),
(139, 67, 'Bukit Geger', 'Alamat', '65', NULL),
(140, 68, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '60'),
(141, 68, 'Bukit Geger', 'Alamat', '65', NULL),
(142, 69, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '60'),
(143, 69, 'Bukit Geger', 'Alamat', '65', NULL),
(144, 70, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '120'),
(145, 70, 'Bukit Geger', 'Alamat', '65', NULL),
(146, 71, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '181'),
(147, 71, 'Bukit Geger', 'Alamat', '65', NULL),
(148, 72, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '180'),
(149, 72, 'Bukit Geger', 'Alamat', '65', NULL),
(150, 73, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '60'),
(151, 73, 'Bukit Geger', 'Alamat', '65', NULL),
(152, 74, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '182'),
(153, 74, 'Bukit Geger', 'Alamat', '65', NULL),
(154, 75, '-7.274042799999999, 112.79862270000001', 'Bukit Geger', '78', '120'),
(155, 75, 'Bukit Geger', 'Alamat', '65', NULL),
(156, 76, '-7.274042799999999, 112.79862270000001', 'Food Junction Grand Pakuwon', '49', '120'),
(157, 76, 'Food Junction Grand Pakuwon', 'Alamat', '45', NULL),
(158, 77, '-7.274042799999999, 112.79862270000001', 'Goa Istana Alas Purwo', '431', '60'),
(159, 77, 'Goa Istana Alas Purwo', 'Alamat', '437', NULL),
(160, 78, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '23', '120'),
(161, 78, 'Tunjungan Plaza Surabaya', 'Alamat', '31', NULL),
(162, 79, '-7.2765088, 112.79466460000003', 'Bukit Geger', '81', '60'),
(163, 79, 'Bukit Geger', 'Alamat', '65', NULL),
(164, 80, '-7.2765088, 112.79466460000003', 'Bukit Geger', '81', '60'),
(165, 80, 'Bukit Geger', 'Alamat', '65', NULL),
(166, 81, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '23', '60'),
(167, 81, 'Tunjungan Plaza Surabaya', 'Alamat', '31', NULL),
(168, 82, '-7.276425599999999, 112.79478489999997', 'Plaza Surabaya', '49', '60'),
(169, 82, 'Plaza Surabaya', 'Taman 10 Nopember', '35', '180'),
(170, 82, 'Taman 10 Nopember', 'Food Junction Grand Pakuwon', '8', '240'),
(171, 82, 'Food Junction Grand Pakuwon', 'Alamat', '6', NULL),
(172, 83, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '86', '120'),
(173, 84, '-7.274042799999999, 112.79862270000001', 'Tunjungan Plaza Surabaya', '86', '120'),
(174, 84, 'Tunjungan Plaza Surabaya', 'Taman Bungkul', '53', '60'),
(175, 85, '-7.274042799999999, 112.79862270000001', 'Taman 10 Nopember', '23', '60'),
(176, 85, 'Taman 10 Nopember', 'Food Junction Grand Pakuwon', '33', '120'),
(177, 85, 'Food Junction Grand Pakuwon', 'Alamat', '45', NULL),
(178, 86, '-7.274042799999999, 112.79862270000001', 'Taman Apsari', '22', '120'),
(179, 86, 'Taman Apsari', 'Alamat', '29', NULL),
(180, 87, '-7.274042799999999, 112.79862270000001', 'Taman Apsari', '22', '60'),
(181, 87, 'Taman Apsari', 'Alamat', '29', NULL),
(182, 88, '-7.2766551, 112.79470760000004', 'Food Junction Grand Pakuwon', '49', '60'),
(183, 88, 'Food Junction Grand Pakuwon', 'Alamat', '46', NULL),
(184, 89, '-7.274042799999999, 112.79862270000001', 'Kelenteng Sanggar Agung Kenjeran (Hong San Tang)', '16', '60'),
(185, 89, 'Kelenteng Sanggar Agung Kenjeran (Hong San Tang)', 'Tunjungan Plaza Surabaya', '30', '180'),
(186, 89, 'Tunjungan Plaza Surabaya', 'Alamat', '26', NULL),
(187, 90, '-7.274042799999999, 112.79862270000001', 'Alamat', '25', '60'),
(188, 91, '-7.274042799999999, 112.79862270000001', 'Pantai Kenjeran Lama', '14', '60'),
(189, 91, 'Pantai Kenjeran Lama', 'Alamat', '19', NULL),
(190, 92, '-7.276641899999999, 112.79467799999998', 'Kenjeran Park', '11', '600'),
(191, 92, 'Kenjeran Park', 'Alamat', '24', NULL),
(192, 93, '-7.291346799999999, 112.73982180000007', 'Plaza Surabaya', '12', '60'),
(193, 93, 'Plaza Surabaya', 'Tunjungan Plaza Surabaya', '7', '120'),
(194, 93, 'Tunjungan Plaza Surabaya', 'Trans Studio Mini Rungkut Surabaya', '34', '90'),
(195, 93, 'Trans Studio Mini Rungkut Surabaya', 'Alamat', '27', NULL),
(196, 94, '-7.2823728, 112.79489719999992', 'Kenjeran Park', '53', '60'),
(197, 95, '-7.2823728, 112.79489719999992', 'Kenjeran Park', '53', '60'),
(198, 95, 'Kenjeran Park', 'Alamat', '95', '60'),
(199, 96, '-7.2766326, 112.79464159999998', 'Bukit Geger', '81', '60'),
(200, 96, 'Bukit Geger', 'Alamat', '104', NULL),
(201, 98, '-7.2823728, 112.79489719999992', 'Pantai Kenjeran Lama', '27', '60'),
(202, 98, 'Pantai Kenjeran Lama', 'Alamat', '31', NULL),
(203, 99, '-7.276623099999999, 112.7946316', 'Taman Flora Bratang', '34', '60'),
(204, 99, 'Taman Flora Bratang', 'Alamat', '41', NULL),
(205, 100, '-7.276632299999998, 112.79464410000003', 'Kenjeran Park', '11', '60'),
(206, 100, 'Kenjeran Park', 'Alamat', '24', NULL),
(207, 101, '-7.2766269999999995, 112.79460510000001', 'Taman Air Mancur Menari Kenjeran', '17', '118'),
(208, 101, 'Taman Air Mancur Menari Kenjeran', 'Alamat', '32', NULL),
(209, 102, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '120'),
(210, 102, 'Bukit Geger', 'Alamat', '81', NULL),
(211, 103, '-7.2766386999999995, 112.79464559999997', 'Pantai Kenjeran Lama', '16', '120'),
(212, 103, 'Pantai Kenjeran Lama', 'Alamat', '31', NULL),
(213, 104, '-7.2766269999999995, 112.79458239999997', 'Taman Air Mancur Menari Kenjeran', '48', '60'),
(214, 104, 'Taman Air Mancur Menari Kenjeran', 'Food Junction Grand Pakuwon', '50', '30'),
(215, 104, 'Food Junction Grand Pakuwon', 'Alamat', '24', NULL),
(216, 105, '-7.2766318, 112.7946283', 'Suroboyo Carnival park', '33', '60'),
(217, 105, 'Suroboyo Carnival park', 'Alamat', '16', NULL),
(218, 106, '-7.276633599999999, 112.7946349', 'Food Junction Grand Pakuwon', '200', '60'),
(219, 107, '-7.276633599999999, 112.7946349', 'Food Junction Grand Pakuwon', '200', '60'),
(220, 107, 'Food Junction Grand Pakuwon', 'Alamat', '210', '60'),
(221, 108, '-7.2765125, 112.79490110000006', 'Taman Air Mancur Menari Kenjeran', '17', '60'),
(222, 108, 'Taman Air Mancur Menari Kenjeran', 'Food Junction Grand Pakuwon', '51', '120'),
(223, 108, 'Food Junction Grand Pakuwon', 'Alamat', '33', NULL),
(224, 109, '-7.2765819, 112.79484630000002', 'Tunjungan Plaza Surabaya', '23', '60'),
(225, 109, 'Tunjungan Plaza Surabaya', 'Food Junction Grand Pakuwon', '33', '120'),
(226, 109, 'Food Junction Grand Pakuwon', 'Alamat', '33', NULL),
(227, 110, '-7.2766398, 112.79464269999994', 'Pantai Kenjeran Lama', '16', '60'),
(228, 110, 'Pantai Kenjeran Lama', 'Alamat', '31', NULL),
(229, 111, '-7.276629, 112.79460429999995', 'Taman Bungkul', '25', '60'),
(230, 111, 'Taman Bungkul', 'Alamat', '30', NULL),
(231, 112, '-7.2766324, 112.79461179999998', 'Taman Bungkul', '104', '60'),
(232, 113, '-7.2766332, 112.794669', 'Pantai Kenjeran Lama', '16', '60'),
(233, 113, 'Pantai Kenjeran Lama', 'Alamat', '23', NULL),
(234, 114, '-7.276633899999999, 112.79468279999992', 'Food Junction Grand Pakuwon', '48', '60'),
(235, 114, 'Food Junction Grand Pakuwon', 'Alamat', '33', NULL),
(236, 115, '-7.2766244, 112.7946968', 'Tunjungan Plaza Surabaya', '23', '120'),
(237, 115, 'Tunjungan Plaza Surabaya', 'Alamat', '17', NULL),
(238, 116, '-7.276632200000001, 112.79469229999995', 'Pantai Kenjeran Lama', '16', '90'),
(239, 116, 'Pantai Kenjeran Lama', 'Alamat', '23', NULL),
(240, 117, '-7.276629, 112.79466300000001', 'Taman Bungkul', '25', '60'),
(241, 117, 'Taman Bungkul', 'Alamat', '30', NULL),
(242, 118, '-7.2766313999999985, 112.79468670000006', 'Pantai Pulau Merah', '424', '120'),
(243, 118, 'Pantai Pulau Merah', 'Alamat', '410', NULL),
(244, 119, '-7.2766459, 112.79466690000004', 'Pantai Pulau Merah', '424', '120'),
(245, 119, 'Pantai Pulau Merah', 'Alamat', '428', NULL),
(246, 120, '-7.2766363, 112.7947001', 'Taman Air Mancur Menari Kenjeran', '17', '120'),
(247, 120, 'Taman Air Mancur Menari Kenjeran', 'Alamat', '24', NULL),
(248, 121, '-7.2766373999999985, 112.794668', 'Taman Air Mancur Menari Kenjeran', '17', '120'),
(249, 121, 'Taman Air Mancur Menari Kenjeran', 'Alamat', '24', NULL),
(250, 122, '-7.276633400000001, 112.79468010000005', 'Taman Air Mancur Menari Kenjeran', '17', '60'),
(251, 122, 'Taman Air Mancur Menari Kenjeran', 'Alamat', '24', NULL),
(252, 123, '-7.276644200000001, 112.79465159999995', 'Kenjeran Park', '11', '120'),
(253, 123, 'Kenjeran Park', 'Alamat', '24', NULL),
(254, 125, '-7.2766324, 112.79464359999997', 'Taman Air Mancur Menari Kenjeran', '17', '120'),
(255, 125, 'Taman Air Mancur Menari Kenjeran', '', '24', NULL),
(256, 126, 'Kota Surabaya', 'Taman Air Mancur Menari Kenjeran', '24', '60'),
(257, 126, 'Taman Air Mancur Menari Kenjeran', 'Pantai Mustika Pancer', '24', NULL),
(258, 127, '-7.2766313999999985, 112.79465819999996', 'Taman Bungkul', '25', '127'),
(259, 127, 'Taman Bungkul', 'Pantai Mustika Pancer', '30', NULL),
(260, 129, '-7.2766554, 112.79467380000006', 'Kenjeran Park', '11', '120'),
(261, 129, 'Kenjeran Park', '', '24', NULL),
(262, 130, '-7.2766408, 112.7946829', 'Taman Bungkul', '25', '120'),
(263, 130, 'Taman Bungkul', 'Pantai Mustika Pancer', '30', NULL),
(264, 131, '-7.2766437999999996, 112.79465099999993', 'Pantai Kenjeran Lama', '16', '60'),
(265, 131, 'Pantai Kenjeran Lama', 'Pantai Mustika Pancer', '23', NULL),
(266, 134, '-7.276634499999999, 112.79468169999996', 'Taman Air Mancur Menari Kenjeran', '17', '60'),
(267, 134, 'Taman Air Mancur Menari Kenjeran', 'Pantai Mustika Pancer', '32', NULL),
(268, 135, '-7.2766429, 112.79468139999994', 'Taman Air Mancur Menari Kenjeran', '17', '120'),
(269, 135, 'Taman Air Mancur Menari Kenjeran', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '24', NULL),
(270, 136, '-7.276648100000001, 112.79466509999997', 'Taman Air Mancur Menari Kenjeran', '17', '120'),
(271, 136, 'Taman Air Mancur Menari Kenjeran', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '32', NULL),
(272, 137, '-7.2823728, 112.79489719999992', 'Pantai Kenjeran Lama', '27', '60'),
(273, 137, 'Pantai Kenjeran Lama', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '31', NULL),
(274, 138, '-7.2766594, 112.79465099999993', 'Ciputra World Surabaya', '30', '60'),
(275, 138, 'Ciputra World Surabaya', 'Tanjung Perak', '30', '120'),
(276, 138, 'Tanjung Perak', 'Food Junction Grand Pakuwon', '26', '180'),
(277, 138, 'Food Junction Grand Pakuwon', 'Jl. Randu No.25, RT.008/RW.06, Sidotopo Wetan, Kec. Kenjeran, Kota SBY, Jawa Timur 60128, Indonesia', '24', NULL),
(278, 139, '-7.2763193, 112.7947332', 'Kenjeran Park', '18', '60'),
(279, 139, 'Kenjeran Park', 'Jembatan Suroboyo', '8', '120'),
(280, 139, 'Jembatan Suroboyo', 'Masjid Muhammad Cheng Hoo', '25', '180'),
(281, 140, '-7.276465399999999, 112.79493359999992', 'Plaza Surabaya', '78', '60'),
(282, 141, '-7.276465399999999, 112.79493359999992', 'Plaza Surabaya', '78', '60'),
(283, 141, 'Plaza Surabaya', 'Taman Apsari', '25', '120'),
(284, 142, '-7.276465399999999, 112.79493359999992', 'Plaza Surabaya', '78', '60'),
(285, 142, 'Plaza Surabaya', 'Taman Apsari', '25', '120'),
(286, 142, 'Taman Apsari', 'Tunjungan Plaza Surabaya', '3', '180'),
(287, 143, '-7.2823728, 112.79489719999992', 'Kenjeran Park', '32', '60'),
(288, 143, 'Kenjeran Park', 'Masjid Muhammad Cheng Hoo', '14', '60'),
(289, 143, 'Masjid Muhammad Cheng Hoo', 'Taman Flora Bratang', '25', '60'),
(290, 143, 'Taman Flora Bratang', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '24', NULL),
(291, 144, '-7.2766554, 112.79497400000002', 'Kebun Binatang Surabaya', '27', '60'),
(292, 144, 'Kebun Binatang Surabaya', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '18', '60'),
(293, 144, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Bukit Geger', '78', '60'),
(294, 144, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(295, 145, '-7.276762300000001, 112.7949423', 'Kebun Binatang Surabaya', '81', '60'),
(296, 145, 'Kebun Binatang Surabaya', 'Bukit Geger', '85', '60'),
(297, 145, 'Bukit Geger', 'Pantai Wediawu', '239', '60'),
(298, 145, 'Pantai Wediawu', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '268', NULL),
(299, 146, '-7.2766756, 112.79465749999997', 'Agrowisata Bhakti Alam', '108', '60'),
(300, 146, 'Agrowisata Bhakti Alam', 'Agrowisata Salak Wedi', '234', '60'),
(301, 146, 'Agrowisata Salak Wedi', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '188', NULL),
(302, 147, '-7.276673499999999, 112.79465789999995', 'Tunjungan Plaza Surabaya', '23', '60'),
(303, 147, 'Tunjungan Plaza Surabaya', 'Agrowisata Salak Wedi', '162', '60'),
(304, 147, 'Agrowisata Salak Wedi', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '188', NULL),
(305, 148, '-7.2766736, 112.79467109999996', 'Bukit Geger', '81', '60'),
(306, 148, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(307, 149, 'Kabupaten Banyuwangi', 'Bukit Geger', '447', '60'),
(308, 149, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(309, 150, 'Kabupaten Blitar', 'Bukit Geger', '281', '60'),
(310, 150, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(311, 151, 'Kabupaten Banyuwangi', 'Bukit Geger', '447', '60'),
(312, 151, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(313, 152, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '60'),
(314, 152, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(315, 153, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '60'),
(316, 153, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(317, 154, '-7.276642199999999, 112.79467739999996', 'Bukit Geger', '81', '60'),
(318, 154, 'Bukit Geger', 'Goa Luweng Jaran', '463', '60'),
(319, 154, 'Goa Luweng Jaran', 'Alas Purwo National Park Office', '656', '60'),
(320, 154, 'Alas Purwo National Park Office', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '315', NULL),
(321, 155, '-7.276668, 112.7946627', 'Bukit Geger', '81', '60'),
(322, 155, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(323, 156, '-7.2766537, 112.79466130000003', 'Bukit Geger', '81', '60'),
(324, 156, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(325, 157, '-7.276657799999999, 112.79467369999998', 'Bukit Geger', '81', '60'),
(326, 157, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(327, 158, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '60'),
(328, 158, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(329, 159, '-7.276658599999999, 112.79464970000004', 'Jembatan Suroboyo', '18', '60'),
(330, 159, 'Jembatan Suroboyo', 'Ciputra World Surabaya', '74', '60'),
(331, 159, 'Ciputra World Surabaya', 'Agrowisata Bhakti Alam', '87', '60'),
(332, 159, 'Agrowisata Bhakti Alam', 'Bukit Geger', '251', '60'),
(333, 159, 'Bukit Geger', 'Air Terjun Dolo', '180', '60'),
(334, 159, 'Air Terjun Dolo', 'Air terjun Widodaren Ngebel', '367', '60'),
(335, 159, 'Air terjun Widodaren Ngebel', 'Agrowisata Rembangan / Dragon Fruit Agro Gardens Rembangan', '246', '60'),
(336, 159, 'Agrowisata Rembangan / Dragon Fruit Agro Gardens Rembangan', 'Alas Purwo National Park Office', '184', '60'),
(337, 159, 'Alas Purwo National Park Office', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '181', NULL),
(338, 160, 'Kabupaten Bangkalan', 'Bukit Geger', '13', '60'),
(339, 160, 'Bukit Geger', 'Food Junction Grand Pakuwon', '100', '60'),
(340, 160, 'Food Junction Grand Pakuwon', 'Air Terjun Tirtosari Sarangan', '209', '60'),
(341, 160, 'Air Terjun Tirtosari Sarangan', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '209', NULL),
(342, 161, '-7.2823728, 112.79489719999992', 'Bukit Geger', '88', '60'),
(343, 161, 'Bukit Geger', 'Air terjun Widodaren Ngebel', '463', '60'),
(344, 161, 'Air terjun Widodaren Ngebel', 'Alas Purwo National Park Office', '526', '60'),
(345, 161, 'Alas Purwo National Park Office', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '186', NULL),
(346, 162, '-7.2823728, 112.79489719999992', 'Ciputra Waterpark', '557', '60'),
(347, 163, '-7.276595, 112.79385750000006', 'Bukit Geger', '80', '60'),
(348, 163, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(349, 164, 'Kabupaten Madiun', 'Bukit Geger', '209', '60'),
(350, 164, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(351, 165, '-7.2765966, 112.79475580000008', 'Bukit Geger', '81', '60'),
(352, 165, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(353, 166, '-7.2765967, 112.79475430000002', 'Bukit Geger', '81', '60'),
(354, 166, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(355, 167, '-7.2765964, 112.79475060000004', 'Bukit Geger', '81', '60'),
(356, 167, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(357, 168, '-7.2823728, 112.79489719999992', 'Bukit Geger', '88', '60'),
(358, 168, 'Bukit Geger', 'Jl. Bubutan, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174, Indonesia', '74', NULL),
(359, 169, '-7.2767436000000005, 112.79494590000002', 'Bukit Geger', '81', '60'),
(360, 169, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(361, 170, '-7.2766488, 112.7949635', 'Bukit Geger', '81', '60'),
(362, 170, 'Bukit Geger', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '81', NULL),
(363, 171, '-7.2766687, 112.79496659999995', 'Bukit Geger', '81', '60'),
(364, 171, 'Bukit Geger', 'Taman Bungkul, Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', '81', NULL),
(365, 172, '-7.276685099999999, 112.79496530000006', 'Bukit Geger', '81', '60'),
(366, 172, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(367, 173, '-7.2767325000000005, 112.79494769999997', 'Bukit Geger', '81', '60'),
(368, 173, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(369, 174, '-7.2767135, 112.79495759999998', 'Bukit Geger', '81', '60'),
(370, 174, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(371, 175, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Bukit Geger', '81', '60'),
(372, 175, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(373, 176, 'Banyuwangi, Kec. Banyuwangi, Kabupaten Banyuwangi, Jawa Timur, Indonesia', 'Bukit Geger', '447', '60'),
(374, 176, 'Bukit Geger', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '84', NULL),
(375, 177, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Bukit Geger', '81', '60'),
(376, 177, 'Bukit Geger', 'Api Tak Kunjung Padam Pamekasan', '124', '60'),
(377, 177, 'Api Tak Kunjung Padam Pamekasan', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '161', NULL),
(378, 178, 'Unnamed Road, Mulyorejo, Kec. Mulyorejo, Kota SBY, Jawa Timur 60115, Indonesia', 'Jembatan Merah', '27', '60'),
(379, 178, 'Jembatan Merah', 'Jembatan Suramadu', '4912', '60'),
(380, 178, 'Jembatan Suramadu', 'Goa Wanawisata Sigologolo', '182', '60'),
(381, 178, 'Goa Wanawisata Sigologolo', 'Gunung Kelud', '236', '60'),
(382, 178, 'Gunung Kelud', 'Goa Lowo Sampung Ponorogo', '124', '60'),
(383, 178, 'Goa Lowo Sampung Ponorogo', 'Gunung Lamongan', '195', '60'),
(384, 178, 'Gunung Lamongan', 'Hutan Bambu Lumajang', '143', '60'),
(385, 178, 'Hutan Bambu Lumajang', 'Gn. Pananjakan', '239', '60'),
(386, 178, 'Gn. Pananjakan', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '202', NULL),
(387, 179, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Jembatan Merah', '32', '60'),
(388, 179, 'Jembatan Merah', 'Jembatan Suramadu', '4912', '60'),
(389, 179, 'Jembatan Suramadu', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '62', NULL),
(390, 180, 'Jl. Randu No.25, Sidotopo Wetan, Kec. Kenjeran, Kota SBY, Jawa Timur 60128, Indonesia', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '23', '60'),
(391, 180, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Taman Bungkul', '26', '60'),
(392, 180, 'Taman Bungkul', 'Food Junction Grand Pakuwon', '31', '60'),
(393, 180, 'Food Junction Grand Pakuwon', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '30', NULL),
(394, 181, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Taman Bungkul', '107', '60'),
(395, 182, 'Jl. Cimanuk No.20, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', 'Taman Bungkul', '107', '60'),
(396, 182, 'Taman Bungkul', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '72', '60'),
(397, 183, 'Jl. Cimanuk No.20, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241, Indonesia', 'Taman Bungkul', '107', '60'),
(398, 183, 'Taman Bungkul', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '72', '60'),
(399, 183, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Food Junction Grand Pakuwon', '72', '60'),
(400, 184, 'Jl. Tembaan Blok D No.58, Bubutan, Kec. Bubutan, Kota SBY, Jawa Timur 60174, Indonesia', 'Taman Bungkul', '107', '60'),
(401, 184, 'Taman Bungkul', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '72', '60'),
(402, 184, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Food Junction Grand Pakuwon', '72', '60'),
(403, 184, 'Food Junction Grand Pakuwon', 'Jl. Randu No.25, RT.008/RW.06, Sidotopo Wetan, Kec. Kenjeran, Kota SBY, Jawa Timur 60128, Indonesia', '93', '60'),
(404, 185, 'Unnamed Road, Banjar Sugihan, Kec. Tandes, Kota SBY, Jawa Timur 60185, Indonesia', 'Taman Bungkul', '107', '60'),
(405, 185, 'Taman Bungkul', 'Tugu Pahlawan dan Museum Sepuluh Nopember', '72', '60'),
(406, 185, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Food Junction Grand Pakuwon', '72', '60'),
(407, 185, 'Food Junction Grand Pakuwon', 'Jl. Randu No.25, RT.008/RW.06, Sidotopo Wetan, Kec. Kenjeran, Kota SBY, Jawa Timur 60128, Indonesia', '93', '60'),
(408, 186, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Kebun Raya Purwodadi', '79', '90'),
(409, 186, 'Kebun Raya Purwodadi', 'Goa Lowo Sampung Ponorogo', '217', '60'),
(410, 186, 'Goa Lowo Sampung Ponorogo', 'Kampus ITS, Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '197', NULL),
(411, 187, 'Surabaya, Kota SBY, Jawa Timur, Indonesia', 'Air Terjun Coban Rondo', '155', '60'),
(412, 187, 'Air Terjun Coban Rondo', 'Air Terjun Coban Pelangi', '133', '60'),
(413, 187, 'Air Terjun Coban Pelangi', 'Pantai Sendang Biru', '27', '60'),
(414, 187, 'Pantai Sendang Biru', 'Pantai Ngudel', '81', '60'),
(415, 187, 'Pantai Ngudel', 'Pantai Ngliyep', '178', '60'),
(416, 187, 'Pantai Ngliyep', 'Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', '149', NULL),
(417, 188, 'Jl. Politeknik ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60117, Indonesia', 'Pantai Kenjeran Lama', '17', '60'),
(418, 188, 'Pantai Kenjeran Lama', 'Jembatan Suroboyo', '15', '60'),
(419, 188, 'Jembatan Suroboyo', 'Kebun Bibit Wonorejo', '24', '60'),
(420, 188, 'Kebun Bibit Wonorejo', 'Trans Studio Mini Rungkut Surabaya', '37', '60'),
(421, 188, 'Trans Studio Mini Rungkut Surabaya', 'Suroboyo Carnival park', '33', '60'),
(422, 188, 'Suroboyo Carnival park', 'Tunjungan Plaza Surabaya', '13', '60'),
(423, 188, 'Tunjungan Plaza Surabaya', 'Jembatan Merah', '24', '60'),
(424, 188, 'Jembatan Merah', 'Food Junction Grand Pakuwon', '2', '60'),
(425, 188, 'Food Junction Grand Pakuwon', 'Jl. Randu No.25, RT.008/RW.06, Sidotopo Wetan, Kec. Kenjeran, Kota SBY, Jawa Timur 60128, Indonesia', '21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_jenis_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) NOT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `fasilitas` varchar(500) DEFAULT NULL,
  `alamat` varchar(500) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `jam_buka` time NOT NULL,
  `jam_tutup` time NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `id_kota`, `id_jenis_wisata`, `nama_wisata`, `keterangan`, `fasilitas`, `alamat`, `harga`, `jam_buka`, `jam_tutup`, `latitude`, `longitude`) VALUES
(2, 1, 4, 'Bukit Geger', 'LOKASI/ TEMPAT/ JARAK : Ds. Geger Kec. Geger + 40 km utara kota\nKETINGGIAN & KISARAN TEMPERATUR : 150 m dpl / + 28 oC\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Bukit yang merupakan legenda terjadinya Pulau Madura (Raden Segara, Putri\nKuning dan Kyai Poleng)\nPENGELOLA : Pemkab. Bangkalan\nAKSESBILITAS : Jalan Beraspal', '', '', '', '00:00:00', '00:00:00', -7.024415, 112.932411),
(4, 2, 4, 'Wisata Pantai Teluk Hijau', 'LOKASI/ TEMPAT/ JARAK : Desa Sarongan Kec. Pesanggaran Jarak+83 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-1200 meter /22-30Â°C\nFASILITAS YANG TERSEDIA : Wisata Pantai, Fasilitas Bermain Peristirahatan/Perkemahan\nDESKRIPSI/ KEUNIKAN : Kawasan  pantai yang terjal namun Indah pemandangan pantai Laut selatan dengan ombak yang menderu biru yang dipandu udara segar pagunungan\nPENGELOLA : Taman Nasional Meru Betiri\nAKSESBILITAS : Jalan Makadam ', '', '', '', '00:00:00', '00:00:00', -8.56344, 113.924054),
(5, 2, 4, 'Wisata Pantai Rajekwesi', 'LOKASI/ TEMPAT/ JARAK : Desa Sarongan Kec. Pesanggaran Jarak +83 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-1200 meter / 22-30Â°C  \nFASILITAS YANG TERSEDIA : Wisata Pantai, Fasilitas Bermain, Peristirahatan/Perkemahan, Musholla\nDESKRIPSI/ KEUNIKAN : Kawasan pantai yang indah, terjal namun Indah dengan pemandangan pantai Laut selatan serta Kapal Peniggalan tentara Jepang pada Perang dinia ke II dan penduduk yang ramah dan bersahabat\nPENGELOLA : Taman Nasional Meru Betiri\nAKSESBILITAS : Jalan', '', '', '', '00:00:00', '00:00:00', -8.558374, 113.937449),
(6, 2, 4, 'Pantai Mustika Pancer', 'LOKASI/ TEMPAT/ JARAK : Desa Pancer Kec. Pesanggaran Jarak + 74Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-1200 meter / 22-30Â°C\nFASILITAS YANG TERSEDIA : Wisata  Pantai,  Fasilitas  Bermain,  Peristirahatan/Perkemahan,  Musholla, Upacara Petik Laut, Tempat Pelelangan ikan\nDESKRIPSI/ KEUNIKAN : Kawasan Pantai yang Indah Berlatar belakang pegunungan dengan tebing terjal dan indah, kebanyakan Penduduknya adalah nelayan dan berbagai macam ikan laut dijual disana, utamanya di pagi hari\nPENGELOLA', '', '', '', '00:00:00', '00:00:00', -8.590477, 114.001624),
(7, 2, 4, 'Pantai Lampon Pesanggaran Banyuwangi', 'LOKASI/ TEMPAT/ JARAK : Ds Pesanggaran Kec. Pesanggaran Jarak +74Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-1200 meter / 22-30Â°C\nFASILITAS YANG TERSEDIA : Wisata  Pantai,  Fasilitas  Bermain,  Peristirahatan/Perkemahan,  Musholla, Upacara Petik Laut, Tempat Pelelangan ikan\nDESKRIPSI/ KEUNIKAN : Selain Pemandangan pantainya yang indah dan berombak tinggi disana juga terdapat markas TNI-AL,juga ada Goa yang sangat menarik yang berada disebuah bukit yang dulunya digunakan tempat Pengintaian M', '', '', '', '00:00:00', '00:00:00', -8.618722, 114.087372),
(8, 2, 4, 'Pantai Pulau Merah', 'LOKASI/ TEMPAT/ JARAK : Desa Pancer Kec. Pesanggaran Jarak +72 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-1200 meter / 22-30Â°C\nFASILITAS YANG TERSEDIA : Wisata Pantai, Fasilitas Bermain, Peristirahatan/Perkemahan, Musholla, Pura persembahyangan Umat Hindu dalam Upacara Mekiyis\nDESKRIPSI/ KEUNIKAN : Pulau  merah  adalah  sebuah bukit kecil tengah pantai dengan hamparan pasir putih sepanjang 3 km. Pulau merah juga memiliki ombak yang bagus untuk surfing dan ketika laut surut dapat ditempuh d', '', '', '', '00:00:00', '00:00:00', -8.599809, 114.028848),
(9, 2, 4, 'Alas Purwo National Park Office', 'LOKASI/ TEMPAT/ JARAK : Desa Kendalrejo Kec. Tegaldlimo Jarak + 76 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-322 meter / 26-30Â°C\nFASILITAS YANG TERSEDIA : Tempat perkemahan, Menara pandang, Penginapan, Shelter\nDESKRIPSI/ KEUNIKAN : Kawasan  hutan  tropis  yang memiliki keanekaragaman flora-fauna  serta  goa-goa  alamnya yang yang di dalamnya terdapat padang penggembalaan banteng sadenan. \nPENGELOLA : Taman Nasional Alas Purwo\nAKSESBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -8.233779, 114.35208),
(10, 2, 4, 'Pantai Plengkung ', 'LOKASI/ TEMPAT/ JARAK : Desa Kendalrejo Kec. Tegaldlimo Jarak + 76 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-322 meter / 26-30Â°C\nFASILITAS YANG TERSEDIA : Tempat perkemahan, Menara pandang, Penginapan, Shelter\nDESKRIPSI/ KEUNIKAN : Pantai Plengkung biasanya dipakai tempat kompetisi Surfing Internasional\nPENGELOLA : Taman Nasional Alas Purwo\nAKSESBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -8.725326, 114.362398),
(11, 2, 4, 'Pantai Ngagelan (Konservasi Penyu)', 'LOKASI/ TEMPAT/ JARAK : Desa Kendalrejo Kec. Tegaldlimo Jarak + 76 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-322 meter / 26-30Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Areal penangkaran, Penginapan, Shelter\nDESKRIPSI/ KEUNIKAN : Adanya penangkaran penyu dimana para wisatawan akan disuguhi penetasan\ndan penangkaran 5 (lima ) jenis penyu langka\nPENGELOLA : Taman Nasional Alas Purwo\nAKSESBILITAS : Jalan aspal dan makadam', '', '', '', '00:00:00', '00:00:00', -8.612255, 114.315775),
(12, 2, 4, 'Pantai Pancur', 'LOKASI/ TEMPAT/ JARAK : Ds Kendalrejo Kec. Tegaldlimo Jarak + 74 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-322 meter / 26-30Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Penginapan, Kolam Tawar dekat pantai\nDESKRIPSI/ KEUNIKAN : Pancur adalah sebuah tempat dimana air mancur kecil alami mengucur dekat pantai yang konon dipercaya sebagai pengobatan alternatif dan agar awet muda\nPENGELOLA : Taman Nasional Alas Purwo\nAKSESBILITAS : Jalan aspal dan makadam', '', '', '', '00:00:00', '00:00:00', -8.66794, 114.372982),
(13, 2, 4, 'Taman Wisata Alam Kawah Ijen', 'LOKASI/ TEMPAT/ JARAK : Desa Tamansari, Kec. Glagah + 60 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 1400-2800 meter / 5-18Â°C\nFASILITAS YANG TERSEDIA : Area perkemahan, Pondok wisata, Parkir\nDESKRIPSI/ KEUNIKAN : Panorama keindahan alam dipuncak gunung berapi aktif. Kegiatan penambangan belerang dari dalam kaldera\nPENGELOLA : Taman Nasional Baluran\nAKSESBILITAS : Jalan aspal dan setapak', '', '', '', '00:00:00', '00:00:00', -8.059173, 114.23854),
(14, 2, 4, 'Goa Istana Alas Purwo', 'LOKASI/ TEMPAT/ JARAK : Ds Kendalrejo Kec. Tegaldlimo Jarak + 77 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-322 meter / 26-30Â°C\nFASILITAS YANG TERSEDIA : Goa alami, Sendang Srengenge, Pertapaan/ Meditasi, Pondok peristirahatan, Hutan Inti\nDESKRIPSI/ KEUNIKAN : Lingkup Goa Istana yang sangat indah dan asri dilengkapai Stalagtit dan Stalagmit biasanya ramai dikunjungi pada hari-hari keagamaan Umat Hoindu. Selain Goa Istana masih terdapat Goa Pdepokan dan Goa Putri dari sekian banyak goa-goa ', '', '', '', '00:00:00', '00:00:00', -8.666264, 114.384521),
(15, 2, 4, 'Pulau Santen Beach', 'LOKASI/ TEMPAT/ JARAK : Kel. Karangrejo Kec. Banyuwangi Jarak + 2 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 0-5 meter / 29-34Â°C\nFASILITAS YANG TERSEDIA : Panorama pantai, Kamar mandi umum, Tanaman Mangrove, Pasar Ikan dadakan, Segoro Anakan, Fasilitas bermain, Tempat sandar perahu\nDESKRIPSI/ KEUNIKAN : Pantai Pulau Santen sangat ramai dikunjungi masyarakat pada hari Minggu dengan panorama pantai yang luas dan sejuk yang dilengkapi tanaman Bakau dan nelayan tradisional.\nPENGELOLA : LKMD Kelu', '', '', '', '00:00:00', '00:00:00', -8.216325, 114.385506),
(16, 3, 4, 'Pantai Tambak Rejo', 'LOKASI/ TEMPAT : Ds. Tambak Rejo Kec. Wonotirto Di tempuh dari Kota 40 km ke arah Selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 1 m - 2800 m dpl / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Pesanggrahan, gazebo, Tempat parkir, Toilet, Kios Jual Ikan Segar dan Warung Mamin\nDESKRIPSI/ KEUNIKAN : Banyak nelayan mencari ikan di laut , keindahan  panorama Pasir Putih dan taman Laut\nPENGELOLA : Disporbudpar Kab. Blitar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.31535, 112.143572),
(17, 3, 4, 'Pantai Serang', 'LOKASI/ TEMPAT : Ds.  Serang  Kec.  Panggungrejo ditempuh dari Kota 45 km kei arah selatan \nKETINGGIAN/ KISARAN TEMPERATUR : 1 m - 2800 m dpl / 22 â€“ 320 C \nFASILITAS YANG TERSEDIA : Gazebo, Tempat parkir, Toilet, Kios Jual Ikan Segar dan Warung Mamin \nDESKRIPSI/ KEUNIKAN : Banyak Nelayan mencari Ikan  di Laut\nPENGELOLA : Disporbudpar Kab. Blitar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.330214, 112.221914),
(18, 3, 4, 'Pantai Jolosutro', 'LOKASI/ TEMPAT : Ds. Wringinrejo Kec. Wates ditempuh dari Kota 45 Km kei arah Selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 1 m - 2800 m dpl / 22 â€“ 320 C \nFASILITAS YANG TERSEDIA : Tempat Penginapan, Gazebo, Parkir, dan Warung Mamin\nDESKRIPSI/ KEUNIKAN : Banyak Nelayan mencari Ikan di Laut\nPENGELOLA : Disporbudpar Kab. Blitar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.331784, 112.329836),
(19, 3, 4, 'Goa Umbul Tuk', 'LOKASI/ TEMPAT : Ds.Kepuh Kec. Bakung Kab.Blitar 40 km dari pusat Kota\nKETINGGIAN/ KISARAN TEMPERATUR : 1 m - 2800 m dpl / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, Toilet\nDESKRIPSI/ KEUNIKAN : Gua yang masih alami\nPENGELOLA : Disporbudpar Kab. Blitar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4\n', '', '', '', '00:00:00', '00:00:00', -8.297835, 112.102972),
(20, 3, 4, 'Goa Jedog Plosorejo', 'LOKASI/ TEMPAT : Kab. Blitar 30 km dariKota Blitar\nKETINGGIAN/ KISARAN TEMPERATUR : 1 m - 2800 m dpl / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, Toilet\nDESKRIPSI/ KEUNIKAN : Tempat khusus bagi peminat penulusuran Goa\nPENGELOLA : Disporbudpar Kab. Blitar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.168187, 112.164849),
(21, 4, 4, 'Wisata Kayangan Api', 'LOKASI/ TEMPAT : Ds. Sendangharjo Ngasem jarak dari kota 21 Km arah barat daya\nKETINGGIAN/ KISARAN TEMPERATUR : 25 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat  parkir,  toilet,  PKL, penginapan, restoran\nDESKRIPSI/ KEUNIKAN : Kayangan api adalah sumber api  alam  terbesar  di  Asia, mengandung kerajaan  mojopahit pembuatan\nKaryo Kusuma dipercaya membuat keris pamungkas untuk mengembalikan tahta Kerajaan Mojopahit dari tangan perombak\nPENGELOLA : Perhutani, Dinas Kebudayaan dan Pariw', '', '', '', '00:00:00', '00:00:00', -7.2589, 111.790541),
(22, 4, 6, 'Tirtawana Dander', 'LOKASI/ TEMPAT : Ds. Dander Kec. Dander, jarak tempuh 13 Km ke arah selatan kota\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Pesanggrahan, aula, warung penginapan, sarana Outbond, kolam   renang,   golf   dan perkemahan\nDESKRIPSI/ KEUNIKAN : Berada pada kawasan hutan jati  yang  indah  dan  sejuk cocok untuk wisata keluarga\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan beraspal (kondis agak rusak)', '', '', '', '00:00:00', '00:00:00', -7.249783, 111.841041),
(23, 4, 6, 'Waduk Pacal', 'LOKASI/ TEMPAT : Ds. Kedungsumber Kec.Temayang 35 Km arah selatan Kota\nKETINGGIAN/ KISARAN TEMPERATUR : Ketinggian + 40 m diatas permukaan laut\nFASILITAS YANG TERSEDIA : Waduk air, dermaga, perahu, sepeda air, arena pancing dan tempat parkir\nDESKRIPSI/ KEUNIKAN : Dibangun tahun 1933 pada zaman Kolonial Belanda dengan luas 3.878 ha dan kedalaman 25 M\nPENGELOLA : Dinas Kebudayaan dan Pariwisata Kab.Bojonegoro\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.365187, 111.87046),
(24, 4, 4, 'Wisata Alam Watu Jago', 'LOKASI/ TEMPAT : Ds. Watujago Kec. Ngratan\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, toilet, PKL, sarana outbond, pesanggrahan\nDESKRIPSI/ KEUNIKAN : Berada pada kawasan hutan jati yang indah dan sejuk cocok untuk wisata keluarga\nPENGELOLA : Dinas Kebudayaan dan Pariwisata Kab.Bojonegoro\nAKSEBILITAS : Jalan belum beraspal/ makadam\n', '', '', '', '00:00:00', '00:00:00', -7.317048, 111.521666),
(25, 4, 7, 'Agrowisata Salak Wedi', 'LOKASI/ TEMPAT : Ds. Wedi dan desa Tanjungharjo Kec. Kapas lokasinya Â± 3 Km arah Timur kota Bojonegoro\nKETINGGIAN/ KISARAN TEMPERATUR : Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, warung Makanan dan minuman\nDESKRIPSI/ KEUNIKAN : Buah salak yang manis dan segar banyak di setiap kebun atau pekarangan  penduduk  kedua  desa tersebut\nPENGELOLA : Masyarakat Desa Wedi dan Tanjungharjo\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.194431, 111.884245),
(26, 4, 7, 'Agrowisata Kebun Belimbing Ngringinrejo', 'LOKASI/ TEMPAT : Ds. Ringinrejo Kec. Kalitidu jarak dari kota 10 Km\nKETINGGIAN/ KISARAN TEMPERATUR : 9 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Tempat parkir, warung Makanan dan minuman belimbing yang manis dan segar ada di setiap kebun penduduk desa Ringinrejo\nPENGELOLA : Masyarakat aspal, dapat ditempuh\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -7.127519, 111.825667),
(27, 5, 4, 'Kawah Ijen', 'LOKASI/ TEMPAT/ JARAK : Kec. Sempol Jarak 75  Km dari Ibu Kota Bondowoso   \nKETINGGIAN & KISARAN TEMPERATUR : 2.600 m dpl 18-20Â°C musim dingin, 18-20  Â°C  musim panas \nFASILITAS YANG TERSEDIA : Penginapan di pos Kalipahit, Hotel Belawan        \nDESKRIPSI/ KEUNIKAN : Merupakan obyek wisata alam yang berupa Kawah Gunung Berapi dengan bau belerangnya. Disini kita bisa melihat matahari terbit yang indah\nPENGELOLA : BKSDA       \nAKSESBILITAS : Jalan aspal/ makadam', '', '', '', '00:00:00', '00:00:00', -8.058223, 114.243288),
(28, 5, 3, 'Panorama Wisata Arak-Arak Bondowoso', 'LOKASI/ TEMPAT/ JARAK : Kec. Wringin Jarak 17 Km dari Ibu Kota Bondowoso\nKETINGGIAN & KISARAN TEMPERATUR : 345 m dpl / 25-28 Â°C\nFASILITAS YANG TERSEDIA : Kamar ganti, Mushola, Gasebo\nDESKRIPSI/ KEUNIKAN : Indahnya panorama alam dengan pemandangan laut kesegaran udaranya menarik untuk dikunjungi\nPENGELOLA : Disparbudpora Kab. Bondowoso\nAKSESBILITAS : Mudah dijangkau dengan segala jenis kendaraan\n', '', '', '', '00:00:00', '00:00:00', -7.791239, 113.742965),
(29, 5, 4, 'Air Terjun & Air Panas Blawan', 'LOKASI/ TEMPAT/ JARAK : Kec. Sempol Jarak 74 Km dari Ibu Kota Bondowoso\nKETINGGIAN & KISARAN TEMPERATUR : 1.750 m dpl / 18-23 Â°C  \nFASILITAS YANG TERSEDIA : Shelter, Mushola, Hotel  \nDESKRIPSI/ KEUNIKAN : Diyakini kadar belerang pada air panas tersebut berkasiat untuk menyembuhkan berbagai penyakit dengan pemandangan yang indah\nPENGELOLA : Disparbudpora Kab. Bondowoso\nAKSESBILITAS : Mudah dijangkau dengan segala jenis kendaraan\n\n', '', '', '', '00:00:00', '00:00:00', -7.984355, 114.175765),
(30, 5, 4, 'Pemandian Alam Tasnan', 'LOKASI/ TEMPAT/ JARAK : Kec. Grujugan Jarak 7 Km dari Ibu Kota Bondowoso\nKETINGGIAN & KISARAN TEMPERATUR : 300 m dpl / 25-28 Â°C\nFASILITAS YANG TERSEDIA : Kamar ganti, Mainan anak, Mushola \nDESKRIPSI/ KEUNIKAN : Sumber mata air murni yang terletak di tengah hutan alam \nPENGELOLA : Disparbudpora Kab. Bondowoso \nAKSESBILITAS : Mudah dijangkau dengan segala jenis kendaraan\n\n', '', '', '', '00:00:00', '00:00:00', -7.980867, 113.803447),
(31, 5, 4, 'Air Terjun Tancak Kembar', 'LOKASI/ TEMPAT/ JARAK : Desa Andongsari Kec. Pakem -+ 18 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 2.000 dpl / 17-20 Â°C\nFASILITAS YANG TERSEDIA : Mushola   \nDESKRIPSI/ KEUNIKAN : Dengan panorama yang indah wisatawan dapat menyaksikan pusat penelitian kopi dan kakao   \nPENGELOLA : Disparbudpora Kab. Bondowoso\nAKSESBILITAS : Jalan aspal   \n', '', '', '', '00:00:00', '00:00:00', -7.933642, 113.696036),
(32, 5, 4, 'Pendakian Gunung Raung', 'LOKASI/ TEMPAT/ JARAK : Kec. Wringin + 58 Km dari Kota Bondowoso\nKETINGGIAN & KISARAN TEMPERATUR : 3.600 dpl / 08-20 Â°C\nFASILITAS YANG TERSEDIA : Ball Room, Hotel/ Bas Camp\nDESKRIPSI/ KEUNIKAN : Merupakan lokasi unrtuk pendakian Gunung Raung\nPENGELOLA : Disparbudpora Kab. Bondowoso\nAKSESBILITAS : Jalan aspal', '', '', '', '00:00:00', '00:00:00', -8.123538, 114.045404),
(33, 5, 4, 'Air Terjun Polo Agung', 'LOKASI/ TEMPAT/ JARAK : Desa Sukorejo Kec. Sumberwringin + 40 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 1.200 m dpl / 20-25 Â°C\nFASILITAS YANG TERSEDIA : Shelter\nDESKRIPSI/ KEUNIKAN : Air terjun yang terletak di perkebunan masyarakat yang memiliki keindahan alami dan pemandangan yang indah\nPENGELOLA : Disbudpar Kab. Bondowoso\nAKSESBILITAS : Jalan aspal dan setapak\n', '', '', '', '00:00:00', '00:00:00', -7.955057, 114.026696),
(34, 6, 4, 'Wisata Pasir Putih Pantai Delegan', 'LOKASI/ TEMPAT/ JARAK : Ds./ Kel. Dalegan, Kec. Panceng Jarak dari kota + 30 km ke arah barat\nKETINGGIAN & KISARAN TEMPERATUR : 0 M / +34oC\nFASILITAS YANG TERSEDIA : Tempat parkir, Mushola/ toilet, Kios souvenir, Warung makanan, Persewaan pelampung\nDESKRIPSI/ KEUNIKAN : Pantai berpasir putih,   Banyak terdapat biota laut, Menikmati Sunset (matahari terbenam), Tempat wisata pantai, lomba perahu, berenang dan meman-cing, Setiap tahun diadakan sedekah bumi\nPENGELOLA : Desa\nAKSESBILITAS : Jalan Aspa', '', '', '', '00:00:00', '00:00:00', -6.891644, 112.466673),
(35, 6, 4, 'Wisata Bukit Surowiti', 'LOKASI/ TEMPAT/ JARAK : Ds. Surowiti Kec. Panceng, Jarak dari kota + 40 km \nKETINGGIAN & KISARAN TEMPERATUR : 0 M / +34oC \nFASILITAS YANG TERSEDIA : Tempat parkir, MCK \nDESKRIPSI/ KEUNIKAN : Terdapat berbagai macam obyek  wisata  yg  menarik & terdapat petilasan Sunan Kalijaga, Makam Empu Supo, makam Raden Bagus Mataram, Goa Langseh, G Macan, G Lumbung, selain juga digunakan outbound, olah raga wall climbing yg cukup menantang unt panjat tebing.\nPENGELOLA : Desa\nAKSESBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -6.93267, 112.450914),
(36, 6, 4, 'Telaga Ngipik', 'LOKASI/ TEMPAT/ JARAK : Terletak di kawasan Industri Gresik, jarak dari kota + 1,5 Km ke arah barat\nKETINGGIAN & KISARAN TEMPERATUR : 0 M / +34oC\nFASILITAS YANG TERSEDIA : Parkir, Cafetaria, Panggung hiburan\nDESKRIPSI/ KEUNIKAN : Telaga ini mempunyai panorama yang indah yang telah dikembangkan\nmenjadi wisata air dengan menaiki perahu, pemancingan\nPENGELOLA : PT. Semen Gresik\nAKSESBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.156464, 112.634008),
(37, 6, 4, 'Danau Kastoba ( P. Bawean )', 'LOKASI/ TEMPAT/ JARAK : Ds. Paromaan Kec. Tambak, di puncak ketinggian & berada  di  tengah-tengah Pulau Putri Bawean  \nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C    \nFASILITAS YANG TERSEDIA : Parkir     \nDESKRIPSI/ KEUNIKAN : Wisata danau degan panorama danau, flora dan fauna langkah, aneka serangga yang takkan mungkin sama jenisnya dengan serangga di pelosok negeri, sehingga lkasi ini mempunyai daya tank luar biasa dan sulit dibandingkan dengan obyek wisata lainnya.\nPENGELOLA : Pemerintah', '', '', '', '00:00:00', '00:00:00', -5.771758, 112.672557),
(38, 6, 4, 'Pantai Mayagkara ( P. Bawean )', 'LOKASI/ TEMPAT/ JARAK : Ds.  Kepuh  Teluh,  Kec. Tambak, -+ 500 m dari jl. Sukapura      \nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C \nFASILITAS YANG TERSEDIA : Parkir, MCK     \nDESKRIPSI/ KEUNIKAN : Keindahan dan nuansa pantai ini sangat indahdengan panorama laut biru setara dengan pantai Pataya di Bangkok Thailand (menurut peneliti dari orang Belanda ). Selain itu pantai ini mempunyai histori tinggi karena istri Sunan Giri Siti Zaenab menjadi orang pertama mendarat dan menemukan pantai ini', '', '', '', '00:00:00', '00:00:00', -5.73582, 112.718256),
(39, 6, 4, 'Pantai Selayar Bawean', 'LOKASI/ TEMPAT/ JARAK : Terletak disebelah utara pulau Selayar Bawean\nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Parkir  ,  MCK,  Pesanggrahan untuk istirahat\nDESKRIPSI/ KEUNIKAN : Indahnya panorama panjang jalan dgn keindahan alam yg dihiasi aneka  tumbuhan  &  semak-semak serta pohon nyiur\nPENGELOLA  : Pemerintahan Desa / warga setempat\nAKSESBILITAS  : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -5.854792, 112.684968),
(40, 6, 4, 'Pantai Pasir Putih Bawean', 'LOKASI/ TEMPAT/ JARAK : Ds.  Sukaoneng,  Kec.  Tambak berjarak + 200 m dari jalan raya\nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Parkir, MCK, Warung PKL\nDESKRIPSI/ KEUNIKAN  : Memiliki keindahan alami pada tepi   pantai, berwarna putih, pantai ini londisinya landai kemungkinan berjalan santai menikmati pemandangan sekitar yg masih alami\nPENGELOLA  : Pemerintahan Desa / warga setempat\nAKSESBILITAS  : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -5.749254, 112.615815),
(41, 6, 4, 'Pemandian Air Panas Sangkapura', 'LOKASI/ TEMPAT/ JARAK : Ds. Sawah Mulya, Kec Sangkapura, jarak dari kota Bawean 200 m dr jalan raya \nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Parkir,  Tempat  mandi  umum, Tempat berendam\nDESKRIPSI/ KEUNIKAN  : Air panas Kebundayan merupakan sumber air panas alam berkadar belerang yang berguna terapi kebugaran dan dapat menyembuhkan berbagai penyakit\nPENGELOLA  : Masyarakat desa\nAKSESBILITAS  : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -5.842717, 112.662141),
(42, 6, 4, 'Pulau Noko Selayar', 'LOKASI/ TEMPAT/ JARAK : Ke  Pulau  Noko  dijangkau dengan perahu menit dari P. Bawean\nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Perahu motor, Speed boot, Parkir\nDESKRIPSI/ KEUNIKAN : Pulau ini luasnya + 6.000 m2 dikelilingi oleh tanaman laut/ bunga karang dan ikan hias aneka warna dengan pesona keindahan alam bawah laut yang tiada taranya\nPENGELOLA : Pemerintahan Desa / warga\nAKSESBILITAS : Laut', '', '', '', '00:00:00', '00:00:00', -5.868933, 112.70536),
(43, 6, 6, 'TPA Pulau Gili', 'LOKASI/ TEMPAT/ JARAK : Ke P. Gili ditempuh dengan Speed boot atau perahu motor dari P. Bawean\nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Perah motor, Speed boot, Parkir\nDESKRIPSI/ KEUNIKAN : Pulau ini merupakan bagian dari P. Bawean yg  luasnya + 50.000 m2, mempunyai sumber air tawar jernih dengan kandungan mineral tinggi yg konon dpt menjadikan awet muda bila mengkonsumsi setiap hari.\nPENGELOLA : Pemerintahan Desa / warga\nAKSESBILITAS : Laut ', '', '', '', '00:00:00', '00:00:00', -5.802415, 112.771376),
(44, 6, 4, 'Air Terjun \"Laccar\"', 'LOKASI/ TEMPAT/ JARAK : Ds. Teluk + 15 km dari kota Sukapura\nKETINGGIAN & KISARAN TEMPERATUR : 12 M / +34o C\nFASILITAS YANG TERSEDIA : Parkir, Warung, MCK\nDESKRIPSI/ KEUNIKAN : Panorama pemandangan yang indah serta dtumbuhi indah\nPENGELOLA : Desa\nAKSESBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -5.806767, 112.693037),
(45, 7, 4, 'Pantai Paseban', 'LOKASI/ TEMPAT/ JARAK : Desa Paseban Kec. Kencong + 50 Km arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 500 m dpl25-32 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Pantai  ini  memiliki  pasir  yang  putih,  panoramanya  indah  dan  dapat menyaksikan matahari terbit dan terbenam\nPENGELOLA : Desa Paseban\nAKSESBILITAS : Jalan aspal, Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.328144, 113.337046),
(46, 7, 4, 'Pantai Puger', 'LOKASI/ TEMPAT/ JARAK : Desa Puger Kulon Kec. Puger + 40 Km arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 500 m dpl/20-28 Â°C\nFASILITAS YANG TERSEDIA : Mushola, Toilet, Gudang Es\nDESKRIPSI/ KEUNIKAN : Merupakan pantai tempat pelelangan ikan terbesar di Kab. Jember\nPENGELOLA : Desa Puger Kulon\nAKSESBILITAS : Jalan aspal, Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.378243, 113.47693),
(47, 7, 4, 'Taman Nasional Merubetiri/ Bandealit', 'LOKASI/ TEMPAT/ JARAK : Desa Andongrejo Kec. Tempurejo  +  60  Km  arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 500 m dpl/ 18-20 Â°C \nFASILITAS YANG TERSEDIA : Guest House, Warung \nDESKRIPSI/ KEUNIKAN : Merupakan tempat wisata dengan keanekaragaman flora dan fauna dari hutan tropis dan menyaksikan penyu bertelur di malam hari.  \nPENGELOLA : Balai  Taman  Nasional  Meru Betiri Telp. (0331) 335535\nAKSESBILITAS : Jalan makadam/berbatu dan kendaraan menggunakan double gardan', '', '', '', '00:00:00', '00:00:00', -8.465181, 113.700043),
(48, 7, 7, 'Agrowisata Teh Gunung Gambir', 'LOKASI/ TEMPAT/ JARAK : Desa Gelang Kec. Sumber Baru + 60 Km arah barat dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 1.200 m dpl / 18-20 Â°C  \nFASILITAS YANG TERSEDIA : Joging Trek, Lapangan Tenis, Kolam Renang, Penginapan\nDESKRIPSI/ KEUNIKAN : Merupakan tempat budidaya teh dan pabrik pengolahan teh satu-satunya di Jember yang berpanorama indah dengan permukaan yang berbukit-bukit.\nPENGELOLA : PTPN XII Telp. (0331) 486865 Fax. (0331) 442008\nAKSESBILITAS : Jalan makadam/ berbatu dan kend', '', '', '', '00:00:00', '00:00:00', -8.015901, 113.441303),
(49, 7, 4, 'Pantai Papuma', 'LOKASI/ TEMPAT/ JARAK : Desa Lojejer Kec. Wuluhan + 45 Km arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 900 m dpl / 25-32 Â°C\nFASILITAS YANG TERSEDIA : Tempat parker, Taman bermain, MCK, Mushola\nDESKRIPSI/ KEUNIKAN : Merupakan tempat wisata pantai dengan panorama alam dengan gugusan\nbatu karang ditengah laut serta pasir putih sepanjang pantai.\nPENGELOLA : Perum Perhutani Jawa Timur\nAKSESBILITAS : Jalan aspal, Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.429938, 113.553632),
(50, 7, 4, 'Pantai Watu Ulo', 'LOKASI/ TEMPAT/ JARAK : Desa Sumberejo Kec. Ambulu + 40 Km arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 500 m dpl / 25-32 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Taman bermain, MCK, Mushola, Telepon Umum, Warung\nDESKRIPSI/ KEUNIKAN : Pantai dengan panorama alam pasir putih dan batu ular yang memanjang dari\npesisir pantai hingga masuk ke laut\nPENGELOLA : Dispenda Jember\nAKSESBILITAS : Jalan aspal, Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.425089, 113.561838),
(51, 7, 7, 'Agrowisata Rembangan / Dragon Fruit Agro Gardens Rembangan', 'LOKASI/ TEMPAT/ JARAK : Desa Kemuning Lor Kec. Arjasa + 600 m dpl arah utara dari Ibu Kota Jember \nKETINGGIAN & KISARAN TEMPERATUR : 1.250 m dpl / 28-25 Â°C \nFASILITAS YANG TERSEDIA : Kolam Renang, Hotel, Restoran, Camping Ground, Mushola, Lapangan tenis, Aula \nDESKRIPSI/ KEUNIKAN : Merupakan agrowisata  buah naga merah, lahan holtikultura dan kebun kopi robusta ditunjang dengan panorama  alam  pegunungan  dan  bangunan  peninggalan  Belanda  yang dibangun tahun 1937 oleh Mr. Hofside.\nPENGELOLA :', '', '', '', '00:00:00', '00:00:00', -8.080145, 113.68977),
(52, 7, 4, 'Pantai Payangan', 'LOKASI/ TEMPAT/ JARAK : Desa Sumberejo Kec. Ambulu + 35 Km arah selatan dari Ibu Kota Jember\nKETINGGIAN & KISARAN TEMPERATUR : 500 m dpl / 25-32 Â°C  \nFASILITAS YANG TERSEDIA : Tempat parkir, Taman bermain, MCK, Mushola, Telepon Umum, Warung\nDESKRIPSI/ KEUNIKAN : Pantai ini memiliki deretan perbukitan yang di atasnya terdapat makam kuno, konon merupakan orang kuat yang pertama kali tinggal di kawasan ini.\nPENGELOLA : Dispenda Jember\nAKSESBILITAS : Jalan aspal, Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.436165, 113.581353),
(53, 8, 4, 'Air Terjun Tretes Wonosalam', 'LOKASI/ TEMPAT : Dsn.Tretes, Galengdowo Wonosalam Jarak dari Kab.40 Km kearah Timur-Selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 1.250  M  dpl  Suhu 250C  \nFASILITAS YANG TERSEDIA : Penginapan, Tempat parkir, MCK, Musholla \nDESKRIPSI/ KEUNIKAN : Ketinggian  air  terjun  100  M, lokasi yang asri karena berada di area hutan pegunungan\nPENGELOLA : PERHUTANI \nAKSEBILITAS : Jalan  Beraspal,  Roda  2,  4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.774767, 112.400883),
(54, 8, 1, 'Pemandian Sumber Boto ', 'LOKASI/ TEMPAT : Ds. Grobogan Kec. Mojowarno jarak dari kab. Â± 25 Km ke arah Timur - Selatan  \nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Wisma Singgah, Bumi Perkemahan, MCK, kolam renang, tempat bermain, tempat parkir \nDESKRIPSI/ KEUNIKAN : Air Pemandian langsung dari Sumber air alam hutan sehingga memiliki kualitas kesegaran yang berbeda\nPENGELOLA : PERHUTANI  \nAKSEBILITAS : Jalan Beraspal, Roda 2, 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.629325, 112.344592),
(55, 8, 1, 'Pemandian \"Sumber Penganten\"', 'LOKASI/ TEMPAT : Desa Sumbermulyo Jogoroto dari 10 Km kearah selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Industri rumahan peralatan rt\nDESKRIPSI/ KEUNIKAN : Sumber air yang dipercaya bisa membuat orang muda dan mendapat berkah bagi yang mandi di sumber tersebut dan airnya tidak pernah kering.\nPENGELOLA : Pemerintah Desa Sumbermulyo\nAKSEBILITAS : Jalan desa', '', '', '', '00:00:00', '00:00:00', -7.62931, 112.344431),
(56, 8, 6, 'Kedung Cinet', 'LOKASI/ TEMPAT : Kec. Plandaan jarak dari kota Â± 21 Km ke arah timur-selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 20-25oC\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, jembatan gantung penghubung jalan desa\nDESKRIPSI/ KEUNIKAN : Kedung eksotik diantara bebatuan cadas yang memiliki aliran air sangat jernih\nPENGELOLA : PERHUTANI Dan PEMKAB Jombang\nAKSEBILITAS : Jalan desa', '', '', '', '00:00:00', '00:00:00', -7.43665, 112.134076),
(57, 8, 4, 'Goa Wanawisata Sigologolo', 'LOKASI/ TEMPAT : Ds.Sranten, Kec.Wonosalam jarak dari kota Â± 21 Km ke arah timur-selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C  \nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Warung makan dan minum\nDESKRIPSI/ KEUNIKAN : Goa di area pegunungan yang banyak dihuni burung walet, dan wisata petualangan bagi yang gemar panjat tebing atau napak tilas\nPENGELOLA : PERHUTANI Dan PEMKAB Jombang\nAKSEBILITAS : Jalan Beraspal, Roda 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.673788, 112.409962),
(58, 8, 1, 'Sendang Made', 'LOKASI/ TEMPAT : Ds.  Made,  Kec.Kudu  jarak dari kabupaten Â± 20 Km ke arah Timur-utara \nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat ibadah, tempat parkir, MCK \nDESKRIPSI/ KEUNIKAN : Kolam peninggalan para sesepuh Kerajaan Airlangga sampai sekarang dipakai para seniman  melakukan ritual kum-kum (mandi) untuk mewisuda sinden\nPENGELOLA : PEMKAB Jombang Dan BP3 Trowulan\nAKSEBILITAS : Jalan Beraspal, Roda 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.40265, 112.312434),
(59, 8, 4, 'Wisata Goa Jepang', 'LOKASI/ TEMPAT : Kec. Wonosalam jarak dari kota Â± 21 Km ke arah timur-selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Warung makan dan minum\nDESKRIPSI/ KEUNIKAN : Berupa ceruk yang merupakan bekas persembunyian dan penyimpanan senjata tentara jepang\nPENGELOLA : PERHUTANI  \nAKSEBILITAS : Jalan Beraspal, Roda 2, 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.627589, 112.378148),
(60, 8, 2, 'Wisata Religi Gunung Pucangan', 'LOKASI/ TEMPAT : Ds. Cupak Kec. Ngusikan jarak dari kabupaten Â± 25 Km ke arah utara\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Warung makan dan minum\nDESKRIPSI/ KEUNIKAN : Lokasi pemandangan alam pegunungan yang alami dan dijual oleh-oleh buatan dari lereng gunung desa Keboan dan Ngampel berupa keripik pisang dan kerupuk ladu  \nPENGELOLA : PEMKAB Jombang  \nAKSEBILITAS : Jalan Beraspal, Roda 2, 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -7.388056, 112.301216),
(61, 8, 4, 'Air Terjun Anjasmoro Sumbersalak', 'LOKASI/ TEMPAT : Ds. Pengajaran Kec. Wonosalam jarak dari kota Â± 21 Km ke arah timur-selatan\nKETINGGIAN/ KISARAN TEMPERATUR : 20 M dpl / Suhu 25 â€“ 39 Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, gardu pandang, Warung makan dan minum\nDESKRIPSI/ KEUNIKAN : Air terjun di lokasi yang asri karena berada di area hutan pegunungan\nPENGELOLA : PERHUTANI  \nAKSEBILITAS : Jalan Beraspal, Roda 4, Angkutan umum', '', '', '', '00:00:00', '00:00:00', -8.16466, 113.897837),
(62, 9, 4, 'Gunung Kelud', 'LOKASI/ TEMPAT : Ds. Sugih Waras Kec. Ngancar + 40 Km dari arah timur monumen Simpang Lima Gumuk   \nKETINGGIAN/ KISARAN TEMPERATUR : G.  Kelud  +  1731  M  di  atas permukaan laut 300C   \nFASILITAS YANG TERSEDIA : AnakKelud, Terowongan, Gardu Pandan, Air Panas, Flying Tebing, Mysterious Road, Panjat Tebing, Pos  Vulkaologi,  Shuttle  Bus, Home Stay, Mini Theater, Rest  Area, Prosesing Gula Merah tradisional\nDESKRIPSI/ KEUNIKAN : Munculnya anak gunung kelud dgn ketinggian + 250 m dgn diameter + 4', '', '', '', '00:00:00', '00:00:00', -7.934654, 112.313921),
(63, 9, 4, 'Air Terjun Dolo', 'LOKASI/ TEMPAT : Dsn. Besuki Ds. Jugo Kec. Mojo + 30 Km dari arah Monumen Simpang Lima Gumul.\nKETINGGIAN/ KISARAN TEMPERATUR : Ketiggian 1750 m atas permukaan laut, 18-240C\nFASILITAS YANG TERSEDIA : Dolo  ketinggian  air  terjun  100  m, Irenggolo ketinggian air terjun 50 m, Kolam renang, Wana wisata hutan pinus, Rest area, Hotel\nDESKRIPSI/ KEUNIKAN : Air terjun Dolo mempunyai tinggi 100 m dan debit air yg cukup besar sepanjang musim dgn aliran air terjun 3 trap, berada di tengah hutan yg masih ', '', '', '', '00:00:00', '00:00:00', -7.870035, 111.83531),
(64, 9, 7, 'Wisata Agro Sepawon', 'LOKASI/ TEMPAT : Ds.  Sepawon  Kec.  Ngancar, Kepung, Puncu + 20 Km dr arah timur Monumen Simpang Lima Gumul    \nKETINGGIAN/ KISARAN TEMPERATUR : 400 â€“ 700 m di atas permukaan laut. 20 â€“ 260 C  \nFASILITAS YANG TERSEDIA : Perkebunan Kopi, Perkeb Kakao Prosesing kakao, Perkebunan Cengkeh, Pabrik Pengolahan kopi, Sarana OutBound, Penginapan, Lapangan Tennis, Perkebunan peninggalan jaman\nDESKRIPSI/ KEUNIKAN : Belanda dgn luas 3950 Ha terletak di lereng G. Kelud, bisa melihat secara langsung proses p', '', '', '', '00:00:00', '00:00:00', -7.900616, 112.225997),
(65, 9, 1, 'Pemandian Corah', 'LOKASI/ TEMPAT : Jl. Kandangan, jarak dari kota + 45 km\nKETINGGIAN/ KISARAN TEMPERATUR : Ketinggian 400 â€“ 700 m di atas permukaan laut. 20 â€“ 260C\nFASILITAS YANG TERSEDIA : Kolam renang anak \nDESKRIPSI/ KEUNIKAN : Pemandian dengan sumber air yang berasal dari alam\nPENGELOLA : Pemerintah Desa Brumbun Desa Kranji Kec.Paciran\nAKSEBILITAS : Kendaraan roda 2, roda 4, Bus dan Angkutan Umum', '', '', '', '00:00:00', '00:00:00', -7.776487, 112.201003),
(66, 9, 4, 'Wisata Sumber Ubalan', 'LOKASI/ TEMPAT : Ds Jarak Kec. Poso klaten, jarak dari kota + 15 km   \nKETINGGIAN/ KISARAN TEMPERATUR : Ketinggian 400 â€“ 700 m di atas permukaan laut. 20 â€“ 26oC \nFASILITAS YANG TERSEDIA : Kolam renang anak & dewasa, Kolam  perahu  &  sepeda  air, Taman bermain anak, camping ground, wahana wisata Kolam pancing, kebun binatang kecil  \nDESKRIPSI/ KEUNIKAN : Terdapat hutan lindung dengan jenis pohon hutan, yang merreservasi kandungan air tanah. Digunakan sebagai sumber air kolam renang dan perkemaha', '', '', '', '00:00:00', '00:00:00', -7.882489, 112.149598),
(67, 9, 4, 'Wisata Alam Sumber podang (kampung Madu)', 'LOKASI/ TEMPAT : Ds Joho Kec. Semen, jarak dari kota + 15 km\nKETINGGIAN/ KISARAN TEMPERATUR : 400 â€“ 700 m di atas permukaan laut. 20 â€“ 260C   \nFASILITAS YANG TERSEDIA : Wana Wisata   \nDESKRIPSI/ KEUNIKAN : Wana  wisata  dengan  koleksi tetumbuhan khas an tidak ditemukan didaerah lain. \nPENGELOLA : DISBUDPAR Kab. Kediri \nAKSEBILITAS : Kendaraan roda 2, roda 4, Bus dan Angkutan Umum', '', '', '', '00:00:00', '00:00:00', -7.82545, 111.888899),
(68, 10, 4, 'Waduk Gondang', 'LOKASI/ TEMPAT : Ds. Gondang Lor dan desa Deket Agung Kec. Sugio, jarak tempuh dari kota Lamongan 25 km ke arah barat. \nKETINGGIAN/ KISARAN TEMPERATUR : -+ 40 m diatas permukaan laut Suhu 300C \nFASILITAS YANG TERSEDIA : Sepeda air, Perahu, Mainan anak-anak, Taman satwa, Mushola, Pendopo, Gazebo, Tempat parkir toilet/MC, Bumi perkemahan, Sarana pemancingan\nDESKRIPSI/ KEUNIKAN : Tempat irigasi bagi persawahan masyarakat dan pertambakan, Naik perahu sambil memancing sembari menikmati pemandangan al', '', '', '', '00:00:00', '00:00:00', -7.208102, 112.268333),
(69, 10, 3, 'Goa Maharani / Maharani Zoo & Cave', 'LOKASI/ TEMPAT : Ds. Paciran Kec.Paciran, jarak tempuh dari kota Lamongan 50 Km\nKETINGGIAN/ KISARAN TEMPERATUR : Goa yang berada pada kedalaman 25 M dari permukaan tanah Suhu 30C\nFASILITAS YANG TERSEDIA : MCK, Mushola, kios  Souvenir, Tempat parkir\nDESKRIPSI/ KEUNIKAN : Salah satu keajaiban alam yang ditemukan pada tanggal 6 Agustus 1992 dengan rongga Goa seluas 2.500 M2 dan menurut ahli pergoaan internasional bahwa stalaktit dan stalakmit masih hidup dan terus tumbuh di Goa Maharani menyerupai ', '', '', '', '00:00:00', '00:00:00', -6.867486, 112.362201),
(70, 10, 3, 'Tanjung Kodok', 'LOKASI/ TEMPAT : Ds.Paciran Kec.Paciran jarak ditempuh dari kota Lamongan 44 Km\nKETINGGIAN/ KISARAN TEMPERATUR : Ketinggian + 25 M diatas permukaan laut, suhu 30* C\nFASILITAS YANG TERSEDIA : MCK, Mushola, kios Souvenir dan tempat parkir yang luas\nDESKRIPSI/ KEUNIKAN : Tanjung Kodok merupakan pantai yang indah dengan bentuk batu yang\nberanekaragam, pada Hari Raya Ketupat banyak beberapa atraksi\nPENGELOLA : DISBUDPAR Kab. Lamongan\nAKSEBILITAS : Jalan aspal, ditempuh Kendaraan umum dan pribadi', '', '', '', '00:00:00', '00:00:00', -6.866277, 112.357848),
(71, 10, 1, 'Pemandian Air Panas Brumbung', 'LOKASI/ TEMPAT : Dusun Brumbun Desa Kranji Kec. Paciran Kabupaten Lamongan\nKETINGGIAN/ KISARAN TEMPERATUR : Ketinggian + 30 M diatas permukaan laut, suhu 30*C\nFASILITAS YANG TERSEDIA : MCK, Mushola, warung mamin dan tempat parkir\nDESKRIPSI/ KEUNIKAN : Pemandian alam yang airnya mengandung belerang sehingga terasa hangat\ndan bisa menyembuhkan penyakit\nPENGELOLA : Pemerintah Desa Dusun Brumbun Desa Kranji Kec.Paciran\nAKSEBILITAS : Jalan desa', '', '', '', '00:00:00', '00:00:00', -6.901489, 112.384738),
(72, 11, 7, 'Kebun Teh Kertowono', 'LOKASI/ TEMPAT/ JARAK : Desa Gucialit Kec. Gucialit + 20 Km arah utara dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : L 6-12Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Mushola\nDESKRIPSI/ KEUNIKAN : Merupakan sebuah perkebunan teh yang luas peninggalan dari Kolonial\nBelanda yang berhawa sejuk berada dilereng perbukitan\nPENGELOLA : PTPN 17 Kertowono\nAKSESBILITAS : Jalan aspa, lmakadam. Transportasi roda dua dan roda empat', '', '', '', '00:00:00', '00:00:00', -8.022793, 113.131884),
(73, 11, 1, 'Pemandian Alam Selokambang', 'LOKASI/ TEMPAT/ JARAK : Desa Purwosono Kec. Sumbersuko + 6 Km arah barat dari Ibu Kota Lumajang \nKETINGGIAN & KISARAN TEMPERATUR : DPL 24-30Â°C    \nFASILITAS YANG TERSEDIA : Tempat Parkir, Ruang Pertemuan, Kolam renang, Sepeda Air, Mushola, Lapangan Tenis, Gasebo, Kolam Pancing Ikan\nDESKRIPSI/ KEUNIKAN : Pemandian Alam dengan sumber mata air yang merata, dingin dan alami.\nMasyarakat yakin dengan rutin mandi di pemandian ini dapat menyembuhkan stroke, darah tinggi,patah tulang, sakit pinggang dan ', '', '', '', '00:00:00', '00:00:00', -8.140389, 113.172968),
(74, 11, 4, 'Hutan Bambu Lumajang', 'LOKASI/ TEMPAT/ JARAK : Desa Sumbermujur Candipuro + 26 Km arah barat dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : 10-18Â°C\nFASILITAS YANG TERSEDIA : Tempat Parkir, MCK\nDESKRIPSI/ KEUNIKAN : Hutan Bambu yang tertata rapi dengan luas + 8 ha dan memiliki panorama serta dihuni yang jinak dan kalong (kelelawar buah)\nPENGELOLA : Pemerintah Desa Sumbermujur\nAKSESBILITAS : Jalan beraspal dapat ditempuh dengan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.137174, 113.013577),
(75, 11, 4, 'Goa Tetes', 'LOKASI/ TEMPAT/ JARAK : Desa Sidomulyo Kec. Pronojiwo + 55 Km selatan dari Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : 300 DPL / 10-18Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Mushola, Kamar mandi/ MCK\nDESKRIPSI/ KEUNIKAN : Wisata goa yang mempunyai tetesan air dan terdapat stalagtit serta stalagmit yang sangat indah walau lokasinya turun kebawah tapi diminati kawula muda-mudi.  \nPENGELOLA : Masyarakat desa dan kantor Parsenibud Lumajang\nAKSESBILITAS : Jalan beraspal dapat ditempuh dengan ', '', '', '', '00:00:00', '00:00:00', -8.23167, 112.918001),
(76, 11, 4, 'Gunung Semeru Puncak Mahameru', 'LOKASI/ TEMPAT/ JARAK : Desa Ranupane Kec. Senduro + 50 Km dari Ibu Kota Lumajang \nKETINGGIAN & KISARAN TEMPERATUR : Pondok pendakian  \nDESKRIPSI/ KEUNIKAN : Merupakan gunung tertinggi di pulau Jawa dengan ketinggian 3.676 meter dari  permukaan laut, dan di Kawasan taman Nasional Bromo tengger semeru (TNBTS) \nPENGELOLA : Taman Nasional Bromo Tengger Semeru (TNBTS)\nAKSESBILITAS : Jalan aspal dan setapak', '', '', '', '00:00:00', '00:00:00', -8.106485, 112.922365),
(77, 11, 4, 'Gunung Lamongan', 'LOKASI/ TEMPAT/ JARAK : Desa Papringan Kec. Klakah + 32 Km dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : 1668 mdpl 10-15Â°C\nDESKRIPSI/ KEUNIKAN : Merupakan gunung api kecil diantara dua gunung raksasa dan mempunyai kawah yang sangat indah\nPENGELOLA : BMG (Badan Meteorologi dan Geofisika)\nAKSESBILITAS : Jalan setapak', '', '', '', '00:00:00', '00:00:00', -7.965944, 113.333033),
(78, 11, 4, 'Puncak B-29 Argosari', 'LOKASI/ TEMPAT/ JARAK : Desa Argosari Kec. Senduro + 40 Km dari Ibu Kota Lumajang  \nKETINGGIAN & KISARAN TEMPERATUR : 2900 mdpl / 0-5Â°C   \nDESKRIPSI/ KEUNIKAN : Merupakan puncak tertinggi   di kawasan lautan pasir bromo, pemandangan yang indah dan udara dingin sebagai tempat untuk melihat pemandangan  gunung  Bromo  dari  Kab.  Lumajang  ditambah  hamparan tanaman khas dataran tinggi berupa bawang pre, kubis, kentang dan wortel.\nPENGELOLA : Desa Argosari   \nAKSESBILITAS : Jalas beraspal dan maka', '', '', '', '00:00:00', '00:00:00', -7.958594, 112.994951),
(79, 11, 4, 'Pantai Bambang', 'LOKASI/ TEMPAT/ JARAK : Desa Bago Kec. Pasirian\nKETINGGIAN & KISARAN TEMPERATUR : DPL / 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Deburan ombak pantai selatan yang besar dan hembusan udara sejuk menambah keindahan pantai selatan\nPENGELOLA : Desa Bago/kantor Persenibud/Perhutani\nAKSESBILITAS : Jalan beraspal ditempuh dgn kendaraan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.290311, 113.110926),
(80, 11, 4, 'Pantai Watu Pecak', 'LOKASI/ TEMPAT/ JARAK : Desa Selok Awar-Awar Kec. Pasirian + 18 Km arah selatan dari Ibu Kota\nLumajang\nKETINGGIAN & KISARAN TEMPERATUR : DPL 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Pantai ini oleh umat hindu digunakan upacara Melasti Suci\nPENGELOLA : Desa Selok Awar-Awar\nAKSESBILITAS : Jalan Aspal dan jalan setapak', '', '', '', '00:00:00', '00:00:00', -8.285432, 113.146378),
(81, 11, 4, 'Pantai Dampar', 'LOKASI/ TEMPAT/ JARAK : Desa Bades Kec. Pasirian + 28 Km arah selatan dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : DPL 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Merupakan tempat bersandarnya perahu pencari ikan serta dikelilingi oleh\nrawa-rawa yang mempesona.\nPENGELOLA : Desa Bades/ LSM\nAKSESBILITAS : Jalan beraspal dan dapat ditempuh dengan kendaraan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.289116, 113.072601),
(82, 11, 4, 'Pantai Watu Gedek', 'LOKASI/ TEMPAT/ JARAK : Desa bulurejo Kec. Tempusari + 40 Km arah selatan dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : DPL 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Pantai yang mempunyai pemandangan alam bebatuan dan ombak laut yang indah.\nPENGELOLA : Desa/ Perum Perhutani\nAKSESBILITAS : Jalan beraspal', '', '', '', '00:00:00', '00:00:00', -8.30897, 113.017607),
(83, 11, 4, 'Pantai Mbah Drajid Wotgalih', 'LOKASI/ TEMPAT/ JARAK : Desa Wot galih Kec. Yosowilangun + 28 Km arah timur Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : DPL 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK\nDESKRIPSI/ KEUNIKAN : Deburan  ombak  pantai  selatan  yang besar dan hembusan udara yang sejuk menambah  keindahan  pantai  selatan wotgalih.\nPENGELOLA : Desa Wotgalih/Kantor Persenibud\nAKSESBILITAS : Jalan beraspal ditempuh kendaraan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.293963, 113.274736),
(84, 11, 4, 'Ranau Bedali', 'LOKASI/ TEMPAT/ JARAK : Desa Ranubedali Kec. Ranuyoso + 27 Km arah utara dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : PL / 20-30Â°C\nFASILITAS YANG TERSEDIA : Tempat  parkir,  Warung  makan,  Gardu pandang, Kolam renang\nDESKRIPSI/ KEUNIKAN : Merupakan sebuah telaga yang menjorok kedalam dan mempunyai pemandangan alam yang indah ada sumber mata air untuk PDAM yang dikonsumsi masyarakat\nPENGELOLA : Kantor Parsenibud Kab. Lumajang\nAKSESBILITAS : Jalan beraspal ditempuh kendaraan roda 2 da', '', '', '', '00:00:00', '00:00:00', -7.950118, 113.271346),
(85, 11, 4, 'Ranu Klakah', 'LOKASI/ TEMPAT/ JARAK : Desa Tegalrandu Kec. Klakah + 20 Km arah utara dari Ibu Kota Lumajang \nKETINGGIAN & KISARAN TEMPERATUR : PL 23-32Â°C \nFASILITAS YANG TERSEDIA : Tempat parkir, Ruang pertemuan, Hotel, MCK, Taman bermain, Gasebo, Dermaga perahu,  Kerambah  ikan  mujaer,  Jalan melingkar di ranu\nDESKRIPSI/ KEUNIKAN : Merupakan telaga yang mempunyai pemandangan alam yang indah dengan latar belakang Gunung Lamongan yang berada disebelah utara Lumajang. Dibangun oleh pegawai PJ KA Belanda untuk ', '', '', '', '00:00:00', '00:00:00', -7.984515, 113.271667),
(86, 11, 4, 'Ranau Pakis', 'LOKASI/ TEMPAT/ JARAK : Deswa Ranupakis Kec. Klakah\nKETINGGIAN & KISARAN TEMPERATUR : 27 DPL / 23-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Warung Makan, Tempat penjualan ikan\nDESKRIPSI/ KEUNIKAN : Merupakan telaga yang mempunyai pemandangan alam yang indah dan dimanfaatkan untuk keramba ikan\nPENGELOLA : Kantor Parsenibud Kab. Lumajang\nAKSESBILITAS : Jalan beraspal ditempuh kendaraan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -7.996588, 113.269401),
(87, 11, 4, 'Ranu Lading', 'LOKASI/ TEMPAT/ JARAK : Desa Sumber Weringin Kec. Klakah + 25 Km dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR : 27 DPL 23-32Â°C\nFASILITAS YANG TERSEDIA : Rumah Loji peninggalan belanda sebagai tempat peristirahatan\nDESKRIPSI/ KEUNIKAN : Merupakan telaga yang mempunyai pemandangan alam yang indah\nPENGELOLA : Desa\nAKSESBILITAS : Jalan beraspal dan makadam ,kendaraan roda 2 dan 4', '', '', '', '00:00:00', '00:00:00', -8.007954, 113.312735),
(88, 11, 4, 'Ranu kumbolo', 'LOKASI/ TEMPAT/ JARAK : Desa Ranupane Kec. Senduro + 48 Km arah barat dari Ibu Kota Lumajang\nKETINGGIAN & KISARAN TEMPERATUR :  0-5Â°C\nFASILITAS YANG TERSEDIA : Pondok pendaki, Porter, Guide, Home Stay\nDESKRIPSI/ KEUNIKAN : Desa  Ranupane  berada  disebelah timur lautan pasir gunung Bromo yang sebagian besar suku tengger dengan mata pencaharian bertani sayur-mayur dan memiliki tiga telaga/ ranu.\nPENGELOLA : Desa Ranu Pani/TNBTS\nAKSESBILITAS : Jalan Setapak, Aspal, ditempuh Roda 2 atau Roda 4', '', '', '', '00:00:00', '00:00:00', -8.04929, 112.920766),
(89, 11, 1, 'Pemandian Tirtowono', 'LOKASI/ TEMPAT/ JARAK : Ds. Jarit Kec. Candipuro+ 21 Km arah barat dari\nKETINGGIAN & KISARAN TEMPERATUR : 15 DPL 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat Parkir, MCK\nDESKRIPSI/ KEUNIKAN : Pemandian alam ini sangat sejuk dan dikelilingi oleh hutan pinus dengan panorama yang menarik\nPENGELOLA : Perum Perhutani\nAKSESBILITAS : Jalan Beraspal ditempuh kendaraan roda 2 atau 4', '', '', '', '00:00:00', '00:00:00', -8.203701, 113.103677),
(90, 11, 1, 'Pemandian Alam Sememu', 'LOKASI/ TEMPAT/ JARAK : Desa Sememu Kec. Pasirian + 21 Km dari Ibu Kota\nKETINGGIAN & KISARAN TEMPERATUR : 17 dpl 24-32Â°C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Tempat ganti pakaian, Taman untuk bersantai\nDESKRIPSI/ KEUNIKAN : Pemandian ini memiliki sumber mata air yang sangat jernih dan higienis\nPENGELOLA : Desa\nAKSESBILITAS : Jalan Beraspal', '', '', '', '00:00:00', '00:00:00', -8.171356, 113.128979),
(91, 11, 1, 'Air Suci Watu Klosot', 'LOKASI/ TEMPAT/ JARAK : Ds. Jambe Kumbu Kec. Senduro + 24 Km dari Ibu Kota\nKETINGGIAN & KISARAN TEMPERATUR : 300 DPL 12-20Â°C\nFASILITAS YANG TERSEDIA : Belum tersedia\nDESKRIPSI/ KEUNIKAN : Obyek wisata air yang memancar dari batu besar, lokasi ini tempat rekreasi sekaligus merupakan tempat pengambilan air suci umat Hindu Dharma dalam urutan upacara Ritual Memendak Tirtha\nPENGELOLA : Kantor Parsenibud Kab. Lumajang\nAKSESBILITAS : Jalan aspal', '', '', '', '00:00:00', '00:00:00', -8.110495, 112.992667),
(92, 11, 4, 'Air Terjun Tumpak Sewu Lumajang', 'LOKASI/ TEMPAT/ JARAK : Desa Sidomulyo Kec. Pronojiwo\nKETINGGIAN & KISARAN TEMPERATUR : 6-12Â°C\nFASILITAS YANG TERSEDIA : Kios, MCK, Penginapan, Tempat parkir\nDESKRIPSI/ KEUNIKAN : Air Terjun yang mengalir dari dinding tebing yang tingginya 120 Meter.\nPENGELOLA : Pemerintah Desa Sidomulyo\nAKSESBILITAS : Jalan beraspal', '', '', '', '00:00:00', '00:00:00', -8.227187, 112.919927),
(93, 12, 4, 'Air Terjun Slampir', 'LOKASI/ TEMPAT : Desa Kare Kec. Kare 22 Km arah timur Kota Madiun\nKETINGGIAN/ KISARAN TEMPERATUR  : 1.300 M dpl / 190 - 240 C\nFASILITAS YANG TERSEDIA : Penginapan, area perkebunan kopi\nDESKRIPSI/ KEUNIKAN : Terdapat 2 buah Air Terjun dalam satu lokasi, ada tetesan air yang konon\ndipercaya memiliki kasiat untuk penyembuhan penyakit\nPENGELOLA : Perhutani PTP Nusantara XI\nAKSEBILITAS : Kendaraan umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.732466, 111.696925),
(94, 12, 7, 'Wana Wisata Grape', 'LOKASI/ TEMPAT : Desa Kare Kec. Kare 17 Km arah timur Kota Madiun\nKETINGGIAN/ KISARAN TEMPERATUR  : 1.200 dpl / 200 - 250 C\nFASILITAS YANG TERSEDIA : Camping  Ground,  Mainan  anak, Persemaian pohon jati\nDESKRIPSI/ KEUNIKAN : Merupakan hutan pendidikan terdapat proses persemaian dan penanaman pohon jati\nPENGELOLA : Perhutani\nAKSEBILITAS : Kendaraan umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.699354, 111.641767);
INSERT INTO `wisata` (`id_wisata`, `id_kota`, `id_jenis_wisata`, `nama_wisata`, `keterangan`, `fasilitas`, `alamat`, `harga`, `jam_buka`, `jam_tutup`, `latitude`, `longitude`) VALUES
(95, 13, 6, 'Telaga Sarangan', 'LOKASI/ TEMPAT : Kel. Sarangan Kec. Plaosan 16  Km  arah  barat  Kota Magetan\nKETINGGIAN/ KISARAN TEMPERATUR : 2500 M DPL / 18 - 25 C\nFASILITAS YANG TERSEDIA : Hotel, Pedagang Tempat Anak, Speed Boat, Berkuda, dan Pemancingan\nDESKRIPSI/ KEUNIKAN : Telaga dengan luas sekitar 30 hektar dan kedalaman 28 meter\nPENGELOLA : Pemkab Magetan\nAKSEBILITAS : Kendaraan Aspal', '', '', '', '00:00:00', '00:00:00', -7.676987, 111.217746),
(96, 13, 4, 'Telaga Wahyu', 'LOKASI/ TEMPAT : Desa Dadi Kec. Plaosan 14  Km  arah  barat  Kota Magetan   \nKETINGGIAN/ KISARAN TEMPERATUR : 2200 M DPL / 180 - 250 C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Gardu Pandang, Tempat Mancing\nDESKRIPSI/ KEUNIKAN : Telaga dengan air yang tenang dapat dipergunakan sebagai fasilitas memancing \nPENGELOLA : Pemkab Magetan  \nAKSEBILITAS : Kendaraan umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.675385, 111.236752),
(97, 13, 4, 'Air Terjun Tirtosari Sarangan', 'LOKASI/ TEMPAT : Desa Ngancar Kec. Plaosan, 18 Km arah barat daya Kota Magetan \nKETINGGIAN/ KISARAN TEMPERATUR : 2600 M DPL / 18 - 25 C  \nFASILITAS YANG TERSEDIA : Tempat Parkir, Berkuda, Kios Makanan \nDESKRIPSI/ KEUNIKAN : Menurut Kepercayaan masyarakat bila mandi di Air Terjun Tirtosari dapat menjadi cantik dan awet muda \nPENGELOLA : Pemkab Magetan\nAKSEBILITAS : Kendaraan umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.677354, 111.202168),
(98, 13, 4, 'Air Terjun Pundak Kiwo (jarakan & watu ondo)', 'LOKASI/ TEMPAT : Desa Ngancar Kec. Plaosan, 16 Km arah barat daya Magetan \nKETINGGIAN/ KISARAN TEMPERATUR : 2600 M DPL / 18 - 25 C  \nFASILITAS YANG TERSEDIA : Tempat Parkir,  Berkuda Kios Makanan \nDESKRIPSI/ KEUNIKAN : Bila mandi dibawah aliran air terjun dipercaya dapat awet muda \nPENGELOLA : Pemkab Magetan \nAKSEBILITAS : Kendaraan  umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.687959, 111.211995),
(99, 13, 6, 'Pintu Masuk Cemoro Sewu', 'LOKASI/ TEMPAT : Desa Cemoro Sewu Kec. Plaosan, 25 Km arah barat Kota Magetan\nKETINGGIAN/ KISARAN TEMPERATUR : 2700 M DPL / 180 - 250 C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Kios Makanan\nDESKRIPSI/ KEUNIKAN : Sebagai Pintu Utama para wisatawan untuk munuju Puncak Lawu\nPENGELOLA : Perhutani\nAKSEBILITAS : Jalan Beaspal', '', '', '', '00:00:00', '00:00:00', -7.664324, 111.191885),
(100, 13, 3, 'Mojosemi Forest Park', 'LOKASI/ TEMPAT : Kel. Sarangan Kec. Plaosan 17 Km arah barat Kota Magetan\nKETINGGIAN/ KISARAN TEMPERATUR : 2500 M DPL / 180 - 250 C\nFASILITAS YANG TERSEDIA : Rumah Makan, Pedagang Cinderamata, Tempat Bermain Anak-Anak\nDESKRIPSI/ KEUNIKAN : Mojosemi Forest Park, merupakan salah satu area outbond pilihan bagi para\npelajar maupun wisatawan yang datang\nPENGELOLA : Pemkab Magetan\nAKSEBILITAS : Kendaraan umum Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.664264, 111.21714),
(101, 14, 4, 'Pantai Ngliyep', 'LOKASI/ TEMPAT : Kec. Donomulyo Ds. Kedungsalam -+ 62 km sebelah seatan Kota Malang atau\n sekitar -+ 2,5 jam perjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : 380 C \nFASILITAS YANG TERSEDIA : Penginapan, Pesanggrahan, Kedai Souvenir, Warung dan RM Sederhana serta\n Gardu Pandang\nDESKRIPSI/ KEUNIKAN : Di Obyek Wisata ini setaip satu tahun sekali diselenggarakan upacara adat\n tradisional Labuhan Mulud (Labuhan dalam bulan Mulud kalender Jawa).\nPENGELOLA : PD JASA YASA\nAKSEBILITAS : Jalan beraspal', '', '', '', '00:00:00', '00:00:00', -8.381624, 112.422414),
(102, 14, 4, 'Pantai Sendang Biru', 'LOKASI/ TEMPAT : Ds.Tambakrejo Kec. Sumbermanjing Wetan Kabupaten Malang ( + 70 km arah\r\n selatan dari Kota Malang)\r\nKETINGGIAN/ KISARAN TEMPERATUR : 380 C    \r\nFASILITAS YANG TERSEDIA : Penginapan/Pesanggarahan,  Gardu  Pandang  dan,  Perahu  Wisata  untuk\r\n menuju pulau Sempu  \r\nDESKRIPSI/ KEUNIKAN : Indah dan Menarik memilki bebas dari deburan ombak laut lepas (Samudera\r\n Indonesia) karena letak pantainya terlindung cagar alam pulau sempu (+\r\n 300Meter dari Pantai)  \r\nPENGELOLA : Perhutani    \r\nAKSEBI', NULL, 'Pantai Wisata sendang biru, Malang, Jawa Timur 65176', '0', '00:00:00', '00:00:00', -8.431832, 112.684284),
(103, 14, 4, 'Air Terjun Coban Rondo', 'LOKASI/ TEMPAT : Ds. Pandesari Kec. Pujon, 26 km\n barat Kota Malang\nKETINGGIAN/ KISARAN TEMPERATUR : 800 dpl / 240 C\nFASILITAS YANG TERSEDIA : Camping Ground, Pemancingan,\n Out Bound, Bermain dengan Gajah-\n Gajah yg pintar, Panorama air terjun\n yang indah, warung sederhana dan\n Tempat parkir\nDESKRIPSI/ KEUNIKAN : Pantai yang masih alami memiliki\n gugusan karang yang sangat cocok\n untuk area memancing\nPENGELOLA : Pemda \nAKSEBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.884989, 112.47513),
(104, 14, 4, 'Pantai Pasir Panjang', 'LOKASI/ TEMPAT : Ds. Kedungsalam Kec. Donomulyo sebelah selatan Kota Malang jarak tempuh\n+ 2,5 jam perjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : 38Â°C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Loket, Depot, Mushola, MCK\nDESKRIPSI/ KEUNIKAN : -\nPENGELOLA : Perum Perhutani KPH Malang\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4', '', '', '', '00:00:00', '00:00:00', -8.381231, 112.418287),
(105, 14, 4, 'Pantai Modangan', 'LOKASI/ TEMPAT : Kec. Donomulyo, Ds. Purwodadi + 66 km dari Kota Malang atau sekitar sekitar\n+ 3 jam perjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : -\nFASILITAS YANG TERSEDIA : Tempar Parkir, Loket, Petilasan Gardu Pandang, dll\nDESKRIPSI/ KEUNIKAN : -\nPENGELOLA : Perhutani\nAKSEBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -8.348863, 112.356901),
(106, 14, 4, 'Pantai Jonggringsaloko', 'LOKASI/ TEMPAT : Kec. Donomulyo, Ds. Mentaraman sebelah selatan 8 Kota Malang, sekitar 3\njam perjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : 380 C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Penginapan, Camping Ground, MCK, Musholla\nDESKRIPSI/ KEUNIKAN : -\nPENGELOLA : Perum Perhutani KPH Malang\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4', '', '', '', '00:00:00', '00:00:00', -8.379557, 112.393913),
(107, 14, 4, 'Pantai Kondang Merak', 'LOKASI/ TEMPAT : Kec. Bantur, Ds. Sumberbening sebelah\nselatan Kota Malang, sekitar 3 jam\nperjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : 380 C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Loket, Loket Cottage\nTradisional\nPENGELOLA : Perum Perhutani KPH Malang\nAKSEBILITAS : Jalan beraspal', '', '', '', '00:00:00', '00:00:00', -8.397786, 112.518935),
(108, 14, 4, 'Pantai Wonogoro', 'LOKASI/ TEMPAT : Kec. Gedangan, Ds. Tumpak rejo sebelah\nselatan Kota Malang, sekitar 3 jam per jalanan 25 km dari Kec. Gedangan 15\nkm dari kec. Bantur\nKETINGGIAN/ KISARAN TEMPERATUR : 0 â€“ 250 Dpl / 28 - 30 0 C\nFASILITAS YANG TERSEDIA : Penginapan/Pesanggarahan,  Gardu  Pandang  dan,  Perahu  Wisata  untuk\nmenuju pulau Sempu\nDESKRIPSI/ KEUNIKAN : Alami\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4', '', '', '', '00:00:00', '00:00:00', -8.405424, 112.564098),
(109, 14, 4, 'Pantai Bajul Mati', 'LOKASI/ TEMPAT : Kec. Gedangan, Ds. Gajahrejo sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : -\nFASILITAS YANG TERSEDIA : Tempat parkir\nDESKRIPSI/ KEUNIKAN : Pantai yang masih alami memiliki gugusan karang yang sangat cocok untuk\narea memancing\nPENGELOLA : Perum Perhutani KPH Malang\nAKSEBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -8.431382, 112.633611),
(110, 14, 4, 'Pantai Gua Cina', 'LOKASI/ TEMPAT : Kec. Sumbermanjing wetan, sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan\nFASILITAS YANG TERSEDIA : Tempat Parkir\nPENGELOLA : Perum Perhutani KPH Malang\nAKSEBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -8.447114, 112.649266),
(111, 14, 4, 'Pantai Sendiki', 'LOKASI/ TEMPAT : Kec. Sumbermanjing wetan, sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan', '', '', '', '00:00:00', '00:00:00', -8.416808, 112.723749),
(112, 14, 4, 'Pantai Tambaksari', 'LOKASI/ TEMPAT : Kec. Sumbermanjing Wetan, sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan', '', '', '', '00:00:00', '00:00:00', -8.06755, 112.792364),
(113, 14, 4, 'Pantai Linggaksono', 'LOKASI/ TEMPAT : Kec. Tirtoyudo, Ds. Purwodadi sebelah selatan Kota Malang, sekitar + 70 Km,\n3 jam perjalanan\nFASILITAS YANG TERSEDIA : Parkir, Penginapan, Camping Ground, MCK, Musholla', '', '', '', '00:00:00', '00:00:00', -8.372367, 112.836742),
(114, 14, 4, 'Pantai Wediawu', 'LOKASI/ TEMPAT : Kec. Tirtoyudo, Ds. Purwodadi sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan\nFASILITAS YANG TERSEDIA : Tempat Parkir, Penginapan, Camping Ground, MCK, Musholla, dll', '', '', '', '00:00:00', '00:00:00', -8.376203, 112.844291),
(115, 14, 4, 'Pantai Sipelot', 'LOKASI/ TEMPAT : Kec. Tirtoyudo, Ds. Pujiharjo sebelah selatan kota Malang, sekitar + 70 Km, 3\njam perjalanan', '', '', '', '00:00:00', '00:00:00', -8.380613, 112.897042),
(116, 14, 4, 'Pantai Licin', 'LOKASI/ TEMPAT : Kec. Ampelgading Ds. Lebakharjo\nKETINGGIAN/ KISARAN TEMPERATUR : -\nFASILITAS YANG TERSEDIA : Parkir, Penginapan, Camping Ground, MCK, Musholla, dll\nDESKRIPSI/ KEUNIKAN : Upacara Adat Larung Sesaji', '', '', '', '00:00:00', '00:00:00', -8.363498, 112.94459),
(117, 14, 4, 'Pantai Regent', 'LOKASI/ TEMPAT : Ds. Srigonco, Kec. Bantur 68 km arah selatan\nPENGELOLA : Perum Perhutani KPH Malang', '', '', '', '00:00:00', '00:00:00', -8.403421, 112.543016),
(118, 14, 4, 'Air Terjun Coban Pelangi', 'LOKASI/ TEMPAT : Kec. Poncokusumo Desa Gubug Klakah 33 km dari Kota\nKETINGGIAN/ KISARAN TEMPERATUR : 260 C\nFASILITAS YANG TERSEDIA : Tempat Parkir, Loket, Toilet, Penginapan\nPENGELOLA : Perum Perhutani KPH Malang', '', '', '', '00:00:00', '00:00:00', -8.011496, 112.86316),
(119, 14, 4, 'Air Terjun Coban Glotak', 'LOKASI/ TEMPAT : Ds. Dalisodo, Kec. Wagir, 13 km Barat Kota Malang\nKETINGGIAN/ KISARAN TEMPERATUR : -\nFASILITAS YANG TERSEDIA : Parkir, Depot, Loket View baik, udara sejuk\nPENGELOLA : Perum Perhutani KPH Malang', '', '', '', '00:00:00', '00:00:00', -7.982106, 112.518978),
(120, 14, 1, 'Pemandian Metro', 'LOKASI/ TEMPAT : Luas + 2 hektar Kec. Kepanjen, 18 km arah selatan Malang\nFASILITAS YANG TERSEDIA : Tempat Parkir, Loket, Kolam renang, Ruang ganti, Depot/Restoran\nDESKRIPSI/ KEUNIKAN : Acara Ritual\nPENGELOLA : PD JASA YASA', '', '', '', '00:00:00', '00:00:00', -8.126869, 112.559562),
(121, 14, 1, 'Pemandian Dewi Sri', 'LOKASI/ TEMPAT : Kec. Pujon Jl. Raya Pujon 31 km arah barat kota Malang + 1 jam perjalanan\nFASILITAS YANG TERSEDIA : Parkir, Loket, Kolam Renang, Ruang ganti, Depot/Restoran\nDESKRIPSI/ KEUNIKAN : Acara Ritual Ruwahan\nPENGELOLA : PD JASA YASA\nAKSEBILITAS : Jalan Aspal', '', '', '', '00:00:00', '00:00:00', -7.839705, 112.447819),
(122, 14, 1, 'Pemandian \"Sanggar\"', 'LOKASI/ TEMPAT : Kec. Lawang + 30 menit perjalanan kota Malang\nFASILITAS YANG TERSEDIA : Tempat Parkir, Loket, Kolam Renang, Ruang ganti, Depot/Restoran', '', '', '', '00:00:00', '00:00:00', -7.843053, 112.696714),
(123, 14, 4, 'Pantai Nglurung', 'LOKASI/ TEMPAT : Kec.Donomulyo, Ds. Menteraman sebelah selatan Kota Malang, sekitar 3 jam\nperjalanank', '', '', '', '00:00:00', '00:00:00', -8.377466, 112.406057),
(124, 14, 4, 'Pantai Kondang Bandung', 'LOKASI/ TEMPAT : Kec. Donomulyo, Ds. Purwodadi + 66 dari Kota Malang atau sekitar + 3 jam\nperjalanan\nKETINGGIAN/ KISARAN TEMPERATUR : 0 â€“ 250 Dpl / 28 - 30 0 C\nFASILITAS YANG TERSEDIA : Parkir, Penginapan, Camping Ground, MCK, Musholla\nDESKRIPSI/ KEUNIKAN : Desa setempat', '', '', '', '00:00:00', '00:00:00', -8.372209, 112.386569),
(125, 14, 4, 'Pantai Bantol', 'LOKASI/ TEMPAT : Kec. Donomulyo Ds. Banjarejo sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan', '', '', '', '00:00:00', '00:00:00', -8.395156, 112.449934),
(126, 14, 4, 'Pantai Kondang Merak', 'LOKASI/ TEMPAT : Kec. Donomulyo, Ds. Tulungrejo sebeah selaan Kota Malang', '', '', '', '00:00:00', '00:00:00', -8.397788, 112.520029),
(127, 14, 4, 'Pantai Ngudel', 'LOKASI/ TEMPAT : Kec. Gedangan, Ds. Gajahrejo sebelah selatan Kota Malang, sekitar 3 jam\nperjalanan\nPENGELOLA : Perum Perhutani KPH Malang', '', '', '', '00:00:00', '00:00:00', -8.415949, 112.582561),
(128, 17, 7, 'Perkebunan Teh Jamus', 'LOKASI/ TEMPAT : Desa Girikerto Kec. Sine 7 Km\n arahak timur dari Kota Ngawi\nKETINGGIAN/ KISARAN TEMPERATUR : 63 M Dpl / 200 - 350 C \nFASILITAS YANG TERSEDIA : Tempat Peristirahatan,  Kolam\n Renang Anak â€“Anak, Camping\n Ground  \nDESKRIPSI/ KEUNIKAN : Pemandangan dengan\n panorama  alam  pegunungan\n yang sejuk   dan memiliki\n hamparan kebun teh \nPENGELOLA : PT. Candi Loka \nAKSEBILITAS : Jalan beraspal ', '', '', '', '00:00:00', '00:00:00', -7.131562, 111.181871),
(129, 17, 4, 'Air Terjun Srambang', 'LOKASI/ TEMPAT : Desa Girimulyo Kec. Jogoroto\n 27 Km arah selatan dari Kota\n Ngawi  \nKETINGGIAN/ KISARAN TEMPERATUR : 1800 M Dpl / 250 C \nFASILITAS YANG TERSEDIA : Bumi Perkemahan \nDESKRIPSI/ KEUNIKAN : Terdapat Batu untuk\n menentukan waktu sholat dan\n merupakan tempat ziarah yang\n dikeramatkan oleh masyarakat/\n pengunjung  \nPENGELOLA : Perum Perhutani \nAKSEBILITAS : Jalan Beraspal  \n', '', '', '', '00:00:00', '00:00:00', -7.568819, 111.226039),
(130, 18, 4, 'Pantai Teleng Ria', 'LOKASI/ TEMPAT : Kel. Sidoharjo Kec. Pacitan   \n Jarak dari Ibu Kota 3 Km Ke   \n arah selatan      \nKETINGGIAN/ KISARAN TEMPERATUR : + 0 - 7 M / 27-310 C    \nFASILITAS YANG TERSEDIA : Penginapan, Parkir, Rumah   \n makan, Toko Souveni,   \n MCK, TPR      \nDESKRIPSI/ KEUNIKAN : Sea Vieu Cafe, Kids planet,   \n    \n kolam renang anak dan dewasa out bond, arena surfing ( DTW Unggulan )\nPENGELOLA : PT. El Jhon Tirta Emas Wisata\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4\n', '', '', '', '00:00:00', '00:00:00', -8.221195, 111.0767884),
(131, 18, 4, 'Pantai Srau', 'LOKASI/ TEMPAT : Desa Candi Kec. Pringkuku   \n Jarak dari Ibu Kota 25 Km   \n Ke arah selatan     \nKETINGGIAN/ KISARAN TEMPERATUR : + 7- 25M / 27-310 C    \nFASILITAS YANG TERSEDIA : Panggung  hiburan,   \n Parkir, Kios, MCK, Gardu   \n pandang, Mushola, TPR   \nDESKRIPSI/ KEUNIKAN : Panorama yang sangat   \n indah dan terdapat arena   \n pancing samodra, ( DTW   \n Unggulan )      \nPENGELOLA : Pemkab      \nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4\n', '', '', '', '00:00:00', '00:00:00', -8.250268, 110.9926729),
(132, 18, 4, 'Pantai Klayar', 'LOKASI/ TEMPAT : Desa Sendang Kec. Donorojo \n Jarak dari Kota 45 Km Ke arah \n Barat       \nKETINGGIAN/ KISARAN TEMPERATUR : + 25-500 M / 27-310 C   \nFASILITAS YANG TERSEDIA : Parkir, Kios Sovenir, MCK, \n Musholla, Rest room, TPR   \nDESKRIPSI/ KEUNIKAN : Pasir putih, seruling laut sesekali \n bersiul  di  antara  celah  batu \n karang. ( DTW Unggulan )   \n    \nPENGELOLA : Pemkab      \nAKSEBILITAS : Kendaraan umum Jalan Aspal\n', '', '', '', '00:00:00', '00:00:00', -8.224439, 110.945986),
(133, 18, 4, 'Goa Gong', 'LOKASI/ TEMPAT : Desa Bomo Kec. Punung Jarak\n dari Kota 35 Km Ke arah Barat\nKETINGGIAN/ KISARAN TEMPERATUR : + 100-500 M / 27-310 C  \nFASILITAS YANG TERSEDIA : Parkir, Kios Sovenir, MCK,\n Musholla, Rest room, TPR  \nDESKRIPSI/ KEUNIKAN : Sea Vieu Cafe, Kids planet, kolam\n renang anak dan dewasa out bond,\n arena surfing ( DTW Unggulan )\nPENGELOLA : Pemkab     \nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda\n 2 dan 4     \n', '', '', '', '00:00:00', '00:00:00', -8.164919, 110.977932),
(134, 18, 4, 'Goa Tabuhan', 'LOKASI/ TEMPAT : Desa Wareng  Kec. Punung Jarak dari Kota  \n 32 Km ke arah Barat    \nKETINGGIAN/ KISARAN TEMPERATUR : + 25-500 M / 27-31 0 C    \nFASILITAS YANG TERSEDIA : Parkir, Kios Sovenir, MCK, Musholla, Rest  \n room, TPR    \nDESKRIPSI/ KEUNIKAN : Stalatit dan stalagmitnya dapat di tabuh  \n selayaknya seni musik gamelan ( DTW  \n   \n Unggulan )    \nPENGELOLA : Pemkab     \nAKSEBILITAS : Jalan Aspal dapat ditempuh \n Roda 2 dan 4    \n', '', '', '', '00:00:00', '00:00:00', -8.125949, 110.980959),
(135, 18, 4, 'PANTAI TAMAN HADIWARNO', 'LOKASI/ TEMPAT : Desa Hadiwarno Kec.\n Ngadirojo Jarak dari Ibu Kota\n Km    \nKETINGGIAN/ KISARAN TEMPERATUR : + 25-500 M / 27-310 C   \nFASILITAS YANG TERSEDIA : Parkir, Kios PKL, TPR   \nDESKRIPSI/ KEUNIKAN : Pantai yang indah dan alami\nPENGELOLA : Pemkab    \nAKSEBILITAS : Jalan Aspal dapat ditempuh\n Roda 2 dan 4   \n', '', '', '', '00:00:00', '00:00:00', -8.257285, 111.302017),
(136, 18, 6, 'Pelabuhan Perikanan Pantai Tamperan', 'LOKASI/ TEMPAT : -     \nKETINGGIAN/ KISARAN TEMPERATUR : + 7- 25M / 27-310 C    \nFASILITAS YANG TERSEDIA : Parkir, Kios PKL, MCK    \nDESKRIPSI/ KEUNIKAN : Pantai yang indah dan mempesona dengan aneka tanaman laut dan ikan hias\nPENGELOLA : Pemkab     \nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4 \n', '', '', '', '00:00:00', '00:00:00', -8.221879, 111.065208),
(137, 18, 4, 'Goa Luweng Jaran', 'LOKASI/ TEMPAT : Desa Jublang Kec. Pringkuku  \nKETINGGIAN/ KISARAN TEMPERATUR : + 7- 25M / 27-310 C    \nFASILITAS YANG TERSEDIA : Parkir, MCK, Warung    \nDESKRIPSI/ KEUNIKAN : Luweng  terpanjang  di  dunia  yang  \n mempunyai 3 Ha. Dengan menggunakan  \n peralatan khusus dan lengkap disertai  \n master  oksigen  kita  dapat  menuruni  \n   \n luweng dengan kedalaman + m kita berada ruangan batu, 30 m, selanjutnya\n kita berada pada goa yang sangat luas serta sungai bawah tanah dan omamen\n batu bagai p', '', '', '', '00:00:00', '00:00:00', -8.217736, 111.003874),
(138, 18, 4, 'Watukarung', 'LOKASI/ TEMPAT : Desa Watu Karung Kec. Pringkuku, berjarak 30 Km dari Pusat Kota\nKETINGGIAN/ KISARAN TEMPERATUR : + 7- 25M / 27-310 C    \nFASILITAS YANG TERSEDIA : Parkir, Kios PKL, MCK    \nDESKRIPSI/ KEUNIKAN : Pantai yang menjadi surga bagi para surfer, serta keindahan alam yang luar\n biasa. Andalan pantai ini yaitu siluet batukarang yang membentuk wajah\n seorang putri dan dinamakan Putri Samudra. \nPENGELOLA : Pemkab     \nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4 \n', '', '', '', '00:00:00', '00:00:00', -8.226139, 110.959459),
(139, 19, 6, 'Api Tak Kunjung Padam Pamekasan', 'LOKASI/ TEMPAT/ JARAK : Desa Larangan  Tokol Kec. \n Tlanakan  Â±  5  Km  dari  Kota \n Pamekasan yang dapat \n ditempuh Â± 15 menit  \nKETINGGIAN & KISARAN TEMPERATUR : 0 - 100m dpl / 29-32oC  \nFASILITAS YANG TERSEDIA : Tempat Parkir, MCK, Warung \n Makan, toko-toko souvenir \nDESKRIPSI/ KEUNIKAN : Obyek ini memiliki dayatarik \n baru dengan mengandalkan \n    \n keajaiban alam berupa Api Abadi atau Api Alam, dimana api ini berasal dari\n dalam tanah apabila di gali akan muncul api dengan sendirinya. Atrak', '', '', '', '00:00:00', '00:00:00', -7.204963, 113.45883),
(140, 19, 4, 'Pantai Jumiang', 'LOKASI/ TEMPAT/ JARAK : Desa Tanjung Kecamatan Pademawu, kurang lebih 12 Km arah tenggara dari\n Kota Pamekasan. Luas obyek Â± 5 Ha. \nKETINGGIAN & KISARAN TEMPERATUR :  0 - 100m dpl / 29-32oC \nFASILITAS YANG TERSEDIA : Tempat Parkir, Menara Pandang, Gazebo/shelter ?\nDESKRIPSI/ KEUNIKAN : Jika hendak berlibur ditempat yang tenang, pantai satu ini pantas untuk\n di kunjungi. Pantai yang berpasirkan putih dengan deburan ombak yang\n menggelitik telinga dan melihat kearah Timur mata seakan dimanjakan\n d', '', '', '', '00:00:00', '00:00:00', -7.233528, 113.549274),
(141, 19, 4, 'Wisata Pantai Talang Siring Pamekasan', 'LOKASI/ TEMPAT/ JARAK : Desa Montok Kecamatan   \n Larangan, berjarak Â±14 Km arah   \n Timur dari  Kota Pamekasan,   \n letaknya berdekatan dengan jalan   \n lintas trans Pamekasan Sumenep   \n dengan waktu tempuh 15 menit.   \n Luas lokasi obyek sekitar 2 Ha   \nKETINGGIAN & KISARAN TEMPERATUR : 0 - 100m dpl / 29-32oC   \n    \nFASILITAS YANG TERSEDIA : Tempat Parkir, MCK, Gazebo/shelter, Warung Makan ?\nDESKRIPSI/ KEUNIKAN : Yang bisa dinikmati dari obyek ini yaitu pemandangan hutan mangrove disisi\n seb', '', '', '', '00:00:00', '00:00:00', -7.138242, 113.587365),
(142, 19, 2, 'Wisata Religi Batu Ampar Bujuk Kesambi', 'LOKASI/ TEMPAT/ JARAK : Desa Pangbatok Kecamatan Proppo (15 Km dari kota)\nKETINGGIAN & KISARAN TEMPERATUR : 0 - 100m dpl / 29-32oC\nFASILITAS YANG TERSEDIA : Tempat Parkir, MCK, Warung Makan, Toko souvenir, Penginapan, Mushola\nDESKRIPSI/ KEUNIKAN : Istilah Batu Ampar bersala dari bahasa Madura yang artinya Bato dan\n Ampar, Bato yaitu batu sedangkan Ampar artinya berserakan tetapi teratur\n ibarat permadani yang dihampar, batu-batuan yang meluas dan merata.\n Beberapa kesan menyatakan kekeramatan pu', '', '', '', '00:00:00', '00:00:00', -7.058321, 112.838566),
(143, 20, 7, 'Agrowisata Bhakti Alam', 'LOKASI/ TEMPAT/ JARAK : Desa. Ngembal Jarak   \n 38   Km dari Kota   \n Pasuruan    \nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl    \nFASILITAS YANG TERSEDIA : Home setay,  Tempat   \n parkir,  Wartel,   \n Mushola     \nDESKRIPSI/ KEUNIKAN : Durian  Ngembal   \n Centres Market Tour,   \n Petik Durian, Petik   \n Jeruk  dan Cross   \n Country Track    \n     \n     \nPENGELOLA : Dinas Pertanian dan Tanaman Pangan Jatim\nAKSESBILITAS : Jalan aspal    \n', '', '', '', '00:00:00', '00:00:00', -7.817358, 112.805428),
(144, 20, 7, 'MUSHROOM AGRO PRIMA (CENTRAL PEMBIBITAN BUDIDAYA JAMUR)', 'LOKASI/ TEMPAT/ JARAK : Desa Tlogosari Kec.\n Tutur Jarak 34 km\n dari Kota  \nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl \nFASILITAS YANG TERSEDIA : Tempat parkir,\n Warung,   Mushola,\n Home Stay  \nDESKRIPSI/ KEUNIKAN : Merupakan  Desa\n Wisata dengan Kebun\n Bunga dan tempat\n penjualan bunga\n potong   \nPENGELOLA : Dinas Pertanian \nAKSESBILITAS : Jalan aspal  \n', '', '', '', '00:00:00', '00:00:00', -7.644038, 112.881729),
(145, 20, 3, 'Wisata Bukit Flora \"Outbound & Education\"', 'LOKASI/ TEMPAT/ JARAK : Desa Ngembal Kec. Tutur Jarak 30 km dari Kota\nKETINGGIAN & KISARAN : 186-1.161 m dpl\nTEMPERATUR FASILITAS YANG : Tempat parkir, Restoran\n\nTERSEDIA DESKRIPSI/ KEUNIKAN : Show Room Bunga Hias dan Area Outbond Anak-anak\nPENGELOLA : Swasta\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.86515, 112.804462),
(146, 20, 3, 'Kebun Raya Purwodadi', 'LOKASI/ TEMPAT/ JARAK : Desa Purwodadi Kec. Purwodadi + 20 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Rumah makan\nDESKRIPSI/ KEUNIKAN : Tempat study dan penelitian dengan menikmati barbagai jenis tanaman langka denngan suasana nyaman dan sejuk\nPENGELOLA : Perhutani\nAKSESBILITAS : Jalan aspal', '', '', '', '00:00:00', '00:00:00', -7.797779, 112.73467),
(147, 20, 4, 'Pantai Pasir Panjang', 'LOKASI/ TEMPAT/ JARAK : Desa Semedusari Kec.Lekok Jarak 25 Km Dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 2-8 m dpl\nFASILITAS YANG TERSEDIA : Tempat Parkir, Warung\nDESKRIPSI/ KEUNIKAN : Suasana Pantai yang Alami dengan Panorama yang Indah tempat bersandarnya perahu rakyat\nPENGELOLA : Masyarakat', '', '', '', '00:00:00', '00:00:00', -7.648909, 113.027053),
(148, 20, 4, 'Air Terjun Kakek Bodo', 'LOKASI/ TEMPAT/ JARAK : Desa Prigen Kec. Prigen Jarak 40 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA : Rumah Makan, Hotel, Gazebo, Kolam Renang, Jogging\n Track, Camping Ground\nDESKRIPSI/ KEUNIKAN : Tempat rekreasi dengan menikmati pemandangan\n alam hutan pinus, air terjun dan makam keramat\n Kakek Bodo\nPENGELOLA : Perhutani\n', '', '', '', '00:00:00', '00:00:00', -7.6973, 112.625792),
(149, 20, 1, 'Pemandian Alam Banyu Biru Pasuruan', 'LOKASI/ TEMPAT/ JARAK : Desa Sumberejo Kec. Winongan Jarak\n 20 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 18 m dpl 28-32Â°C\nFASILITAS YANG TERSEDIA : Tempat parkir, Warung, MCK, Kolam\n Renang, Tempat Bermain Anak\nDESKRIPSI/ KEUNIKAN : Tempat rekreasi dengan kolam alam\n dan buatan yang berasal dari sumber air\n dan Ikan-ikan yang dianggap keramat\nPENGELOLA : Disbudpar Kab. Pasuruan\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.74852, 112.966082),
(150, 20, 4, 'Danau Ranu Grati', 'LOKASI/ TEMPAT/ JARAK : Desa Sumberdawe Sari Kec. Grati + 15 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 6-91 m dpl\nFASILITAS YANG TERSEDIA :  Tempat parkir, Warung, MCK, Sepeda air dan perahu, Gardu Pandang\nDESKRIPSI/ KEUNIKAN : Pemandangan Danau Ranu Grati\nPENGELOLA : Disbudpar Kab. Pasuruan\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.72824, 112.999499),
(151, 20, 4, 'Mata Air Umbulan', 'LOKASI/ TEMPAT/ JARAK : Kec. Winongan 20 km dari kota Pasuruan\nKETINGGIAN & KISARAN TEMPERATUR : 18 m dpl 28-32Â°C\nFASILITAS YANG TERSEDIA :  Kolam Renang, Tempat Parkir, Warung, Mosholla\nDESKRIPSI/ KEUNIKAN : Tempat Rekreasi berupa Pemandian dengan sumber Air yang jernih dan dingin\nPENGELOLA : Desa\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.759722, 112.925412),
(152, 20, 4, 'Air Terjun Putuk Truno Prigen', 'LOKASI/ TEMPAT/ JARAK : Kel.Prigen Kec.Prigen 37 km dari kota Pasuruan\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA :  Gazebo, Tempat Parkir, Tempat Bermain\nDESKRIPSI/ KEUNIKAN : Air Terjun yang berada di area wana wisata dengan udara segar pegunungan\n Welirang\nPENGELOLA : Perhutani\n', '', '', '', '00:00:00', '00:00:00', -7.687964, 112.63251),
(153, 20, 4, 'Air Terjun Coban Baung', 'LOKASI/ TEMPAT/ JARAK : Desa Purwodadi Kec. Purwodadi Jarak 28 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\n \nFASILITAS YANG TERSEDIA : Tempat parkir, Warung, Camping Ground\nDESKRIPSI/ KEUNIKAN : Merupakan daya tarik wisata yang ramai\n dikunjungi karena tepat berada di belakang\n Kebun Raya Purwodadi\nPENGELOLA : Perhutani\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.803392, 112.743693),
(154, 20, 4, 'Air Terjun Coban Jolo', 'LOKASI/ TEMPAT/ JARAK : Desa Cowek Kec. Purwodadi Jarak 28 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA : Tempat parkir, Warung, Camping Ground\nDESKRIPSI/ KEUNIKAN : Air terjun dengan pemandian alam yang berada di tengah hutan yang sering\ndipakai untuk kemah\nPENGELOLA : Perhutani\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.803392, 112.728372),
(155, 20, 4, 'Air Terjun Rambut Moyo', 'LOKASI/ TEMPAT/ JARAK : Desa Palangsari Kec. Puspo Jarak 28 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA :  Tempat parkir, Warung, Camping Ground\nDESKRIPSI/ KEUNIKAN : Tempat rekreasi keluarga yang menawarkan pemandangan alam yang indah\ndengan air terjun sebagai obyek wisatannya\nPENGELOLA : Perhutani\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.866519, 112.858381),
(156, 20, 4, 'Air Terjun Coban Waru', 'LOKASI/ TEMPAT/ JARAK : Kec. Tutur Jarak 35 Km dari Kota Pasuruan\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA :  Tempat bermain\nDESKRIPSI/ KEUNIKAN : Di lokasi wisata ini selain menikmati air terjun juga dapat menikmati segarnya\nudara pegunungan\nPENGELOLA : Perhutani\nAKSESBILITAS : Jalan aspal\n', '', '', '', '00:00:00', '00:00:00', -7.909197, 112.826507),
(157, 20, 4, 'Gn. Pananjakan', 'LOKASI/ TEMPAT/ JARAK : Desa Wonokitri Kec. Tosari Jarak 50 Km dari Kota\nKETINGGIAN & KISARAN TEMPERATUR : 186-1.161 m dpl\nFASILITAS YANG TERSEDIA : Hotel, Home Stay, Rumah Makan, Gardu Pandang\nDESKRIPSI/ KEUNIKAN : Dari puncak Penanjanjakan ini kita dapat menikmati hamparan kebun sayur-\nmayur dan matahari terbit yang sangat indah\nPENGELOLA : Perhutani\n', '', '', '', '00:00:00', '00:00:00', -7.908333, 112.939579),
(158, 21, 4, 'Telaga Ngebel', 'LOKASI/ TEMPAT : Ds. Ngebel Kec. Ngebel jarak dari Kota 24 km ke arah timur laut\nKETINGGIAN/ KISARAN TEMPERATUR : + 734 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Penginapan, Perahu, Warung Nila & Gurami, Parkir\nDESKRIPSI/ KEUNIKAN : Memiliki keunikan sebagai pembangkit listrik tenaga air (PLTA) dan berfungsi\nsebagai tempat larung sesaji\nPENGELOLA : Disporbudpar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n\n', '', '', '', '00:00:00', '00:00:00', -7.797192, 111.623556),
(159, 21, 4, 'Air Terjun Pletuk', 'LOKASI/ TEMPAT : Ds. Juruk Kec. Sooko jarak dari\n Kota 30 km \nKETINGGIAN/ KISARAN TEMPERATUR : + 450 M / 22 â€“ 320 C \nFASILITAS YANG TERSEDIA : Parkir, MCk, Warung \nDESKRIPSI/ KEUNIKAN : Air   Terjun   yang   indah   dan\n lingkungan yang alami udaranya\n sejuk  cocok  untuk berwisata\n bersama keluarga \nPENGELOLA : Desa setempat \nAKSEBILITAS : Jalan beraspal (kondis agak rusak)\n', '', '', '', '00:00:00', '00:00:00', -7.889791, 111.684229),
(160, 21, 4, 'Gua Maria Fatima Sendang Waluyo Jatiningsih', 'LOKASI/ TEMPAT : Ds. Klepu Kec. Sooko jarak dari\nKota 30 km ke arah Tenggara\nKETINGGIAN/ KISARAN TEMPERATUR : + 400 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, Tempat Sovenir\nDESKRIPSI/ KEUNIKAN : Tempat beribadah umat Kristen\ndan terdapat Patung Bunda Maria\nPENGELOLA : Yayasan Romo Paroki Gereja\nKatolik St. vincentius Dan Pemkab\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda\n2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.93724, 111.662548),
(161, 21, 4, 'Air Terjun Toyomarto', 'LOKASI/ TEMPAT : Ds. Gondowido Kec. Ngebel jarak dari Kota 27\n km\nKETINGGIAN/ KISARAN TEMPERATUR :  + 800 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk, Warung\nDESKRIPSI/ KEUNIKAN : Air Terjun yang indah dan lingkungan yang\n alami udaranya sejuk cocok untuk berwisata\n bersama keluarga\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan belum beraspal/ makadam\n', '', '', '', '00:00:00', '00:00:00', -7.798383, 111.656511),
(162, 21, 4, 'Air terjun Widodaren Ngebel', 'LOKASI/ TEMPAT : Ds. Bulu Lor Kec. Jambon jarak dari Kota 10 km\nKETINGGIAN/ KISARAN TEMPERATUR : + 450 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk, k. Mandi, Tempat Istirahat\nDESKRIPSI/ KEUNIKAN : Air Terjun yang indah dan lingkungan yang alami udaranya sejuk cocok untuk\n berwisata bersama keluarga\nPENGELOLA : Disporbudpar\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.818993, 111.636893),
(163, 21, 1, 'Pemandian Air Panas Tirta Husada', 'LOKASI/ TEMPAT : Ds. Talun Kec. Ngebel jarak dari Kota\n 24 km\nKETINGGIAN/ KISARAN TEMPERATUR : + 734 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Air Terjun yang indah dan lingkungan\n yang alami udaranya sejuk cocok\n untuk berwisata bersama keluarga\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2\n dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.816918, 111.633539),
(164, 21, 4, 'Goa Lowo Sampung Ponorogo', 'LOKASI/ TEMPAT : Ds. Bulu Kec. Jembon jarak dari Kota 10 km\nKETINGGIAN/ KISARAN TEMPERATUR : + 400 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Goa yang masih alami dan suasana di lingkungan sejuk\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.813958, 111.369459),
(165, 21, 4, 'Gn. Bayangkaki', 'LOKASI/ TEMPAT : DsTeman Kec. Sawo jarak dari Kota 17 km\nKETINGGIAN/ KISARAN TEMPERATUR : -+ 800 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Pesona alam yang indah dengan lingkungan yang alami\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.946944, 111.593189),
(166, 21, 4, 'Air Terjun Klenteng', 'LOKASI/ TEMPAT : DsTumpuk Kec. Sawo jarak dari Kota 16 km\nKETINGGIAN/ KISARAN TEMPERATUR : -+ 450 M / 22 â€“ 320 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Air terjun yang indah dan mempesona dengan lingkungan yang alami\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2 dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.946938, 111.531903),
(167, 21, 4, 'Mata Air Beji', 'LOKASI/ TEMPAT : DsBedingin Kec. Sambit jarak dari Kota 16 km\nKETINGGIAN/ KISARAN TEMPERATUR : -+ 734 M / 27 â€“ 350 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Pesona alam yang indah dan lingkungan yang alami\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -7.971208, 111.389326),
(168, 21, 4, 'Gn. Pringitan', 'LOKASI/ TEMPAT : Ds. Wates Kec. Slahung jarak dari Kota 17 km\nKETINGGIAN/ KISARAN TEMPERATUR : -+ 800 M / 27 â€“ 350 C\nFASILITAS YANG TERSEDIA : Parkir, MCk\nDESKRIPSI/ KEUNIKAN : Pesona alam yang indah dan lingkungan yang alami\nPENGELOLA : Desa setempat\nAKSEBILITAS : Jalan Aspal dapat ditempuh Roda 2, dan 4\n', '', '', '', '00:00:00', '00:00:00', -8.017222, 111.381801),
(169, 22, 4, 'Gn. Bromo', 'LOKASI/ TEMPAT/ JARAK : Desa Ngadisari Kec. Sukapura + 48 Km arah selatan dari Kota Probolinggo\nKETINGGIAN & KISARAN TEMPERATUR : 2.392 m dpl 7-18 Â°C\nFASILITAS YANG TERSEDIA : Hotel, Home Stay, Restoran, Toko Cinderamata, Tempat parkir, Camping Area,\n\nAngkutan Wisata Jeep, Angkutan Wisata Kuda, ATM, BNI, Toilet Umum, TIC, TNBTS\nDESKRIPSI/ KEUNIKAN : Sunrise Bromo, Padang Savana, Lautan Pasir, Pasir Berbisik, Desa Wisata\nSeruni, Masyarakat Tengger, Syuting Sinetron\nPENGELOLA : DISBUDPAR Kab. Prob', '', '', '', '00:00:00', '00:00:00', -7.942493, 112.944257),
(170, 22, 4, 'Air Terjun Madakaripura', 'LOKASI/ TEMPAT/ JARAK : Madakaripura Desa  Ngadiredjo \n   \n Kec.  Lumbang + 33 Km dari Kota \n Probolinggoc.   \nKETINGGIAN & KISARAN TEMPERATUR : 620 m dpl 24Â°C   \nFASILITAS YANG TERSEDIA : Gazebo,  Tempat  parkir, Toko \n Cinderamata, Tempat ganti \n pakaian, Warung, Mushola, Toilet \n Umum, MPU, Ojek  \nDESKRIPSI/ KEUNIKAN : Air terjun yang indah, Air Suci Tirta \n  \n Sewana, Peringatan 1 Syuro dan Kesenian Tayub, Syuting Sinetron\nPENGELOLA : DISBUDPAR Kab. Probolinggo dan PERHUTANI\nAKSESBILITAS Jal', '', '', '', '00:00:00', '00:00:00', -7.854093, 113.005969),
(171, 22, 4, 'Wisata Pantai Bentar', 'LOKASI/ TEMPAT/ JARAK : Desa Curah Sawo Kec. Gending + 5 Km dari Kota Probolinggo dan 2 Km dari\nKecamatan\nKETINGGIAN & KISARAN TEMPERATUR : 5 m dpl 31Â°C\nFASILITAS YANG TERSEDIA : Arena  mainan  anak-anak,  Toko  Cinderamata,  Tempat  Parkir,  Panggung\n\nterbuka, Kolam Renang, Telepon Umum , Kios dan Pujasera, Mushola, TIC, Bus, Perahu, MPU, Ojek\nDESKRIPSI/ KEUNIKAN : Pemandangan laut, Arena permaianan anak, Kebun Binatang Mini, Sunset,\n\nPulau Pasir, Petik Laut, Orkes Dangdut, Event Tahun Baru dan', '', '', '', '00:00:00', '00:00:00', -7.779588, 113.274499),
(172, 22, 4, 'Danau Taman Hidup', 'LOKASI/ TEMPAT/ JARAK : Desa Bremi Kec. Krucil\nKETINGGIAN & KISARAN TEMPERATUR : 2.089 m dpl 18 Â°C\nFASILITAS YANG TERSEDIA : Pemandangan Alam Pegunungan, Danau Rengganis,\nDESKRIPSI/ KEUNIKAN : Kebun Kopi, Kabut yang tiba-tiba datang\nAKSESBILITAS : Jalan Desa, Jalan Setapak\n', '', '', '', '00:00:00', '00:00:00', -7.977833, 113.531311),
(173, 22, 4, 'Ranu Segaran', 'LOKASI/ TEMPAT/ JARAK : Desa Segaran Kec.Tiris\nKETINGGIAN & KISARAN TEMPERATUR : 1.756 m dpl 27 Â°C\nFASILITAS YANG TERSEDIA : Perahu kecil, Tempat parkir,\n Kios\n Ranu  dengan  Panorama\n Alamnya yang indah\nDESKRIPSI/ KEUNIKAN : PERHUTANI Probolinggo\nAKSESBILITAS : Jalan Desa, Jalan Setapak\n', '', '', '', '00:00:00', '00:00:00', -7.951658, 113.393917),
(174, 22, 6, 'Sumber Air Ronggo Jalu', 'LOKASI/ TEMPAT/ JARAK : Desa Banjarsawah Kec.Tegalsiwalan 15 Km \n arah Selatan dari Kota,5 Km ke Timur \nKETINGGIAN & KISARAN TEMPERATUR : 10 m dpl 31 Â°C \nFASILITAS YANG TERSEDIA : Kolam Renang, Kamar ganti, Sepeda air, \n Toilet umum, Gazebo, Tempat parkir \nDESKRIPSI/ KEUNIKAN : Pemandangan  alam,  Pemandian  alam, \n  \n Kolam Renang anak,Sumber Air yang segar\nPENGELOLA : DISBUDPAR Kab. Probolinggo\nAKSESBILITAS : Jalan aspal, Jalan Desa, Angkutan Pedesaan & Ojek\n', '', '', '', '00:00:00', '00:00:00', -7.850563, 113.242657),
(175, 22, 4, 'Gili Ketapang', 'LOKASI/ TEMPAT/ JARAK : Desa Gili Ketapang Kec.Sumberasih 5 Mil dari Pel.Tanjung Tembaga, 7 Mil Dari\n Kec. Sumberasih\nKETINGGIAN & KISARAN TEMPERATUR : 3 m dpl 32 Â°C\nFASILITAS YANG TERSEDIA : Dermaga, Pasar ikan, Masjid, Warung\n\nDESKRIPSI/ KEUNIKAN : Pulau kecil dengan hamparan pasir yang menge-lilingi dan pemandangan bawah laut yang masih alami, juga Wisata Religi, Gua Kucing dan Pasar Ikan\n\nPENGELOLA : DISBUDPAR Kab. Probolinggo\nAKSESBILITAS : Dermaga, Jalan Desa, Perahu, Kapal', '', '', '', '00:00:00', '00:00:00', -7.678681, 113.243179),
(176, 22, 4, 'Pantai Tambak Sari', 'LOKASI/ TEMPAT/ JARAK : Desa Suko Kerto Kec. Pajarakan Kira-kira 20 Km dari kota\nKETINGGIAN & KISARAN TEMPERATUR : 5 m dpl 31 Â°C\nFASILITAS YANG TERSEDIA : Tempat Parkir\nDESKRIPSI/ KEUNIKAN : Pemandangan Alam Pantai dengan hamparan pasirnya yang hitam dan\n hutanmangrove (bakau) yang hijau yang merupakan tempat bersarang burung\n laut\nPENGELOLA : DISBUDPAR Kab. Probolinggo\nAKSESBILITAS : Jalan aspal, Jalan Setapak, Angkutan Pedesaan, Ojek dan Bus\n', '', '', '', '00:00:00', '00:00:00', -7.751328, 113.369827),
(177, 22, 6, 'Sumber Jokotole Omben', 'LOKASI/ TEMPAT/ JARAK : Kec. Omben + 15 km arah tenggara\nKETINGGIAN & KISARAN TEMPERATUR : 30 m dpl / 25 oC\nFASILITAS YANG TERSEDIA : Tempat parkir, MCK, Gasebo, Warung makan\nDESKRIPSI/ KEUNIKAN : Merupakan kolam pemandian yang teduh karena banyak dikeliling oleh\n pohon â€“ pohon besar dan lebat\nPENGELOLA : DISBUDPARPORA Sampang\nAKSESBILITAS : Jalan Beraspal\n', '', '', '', '00:00:00', '00:00:00', -7.703655, 113.476317),
(178, 38, 5, 'Tugu Pahlawan dan Museum Sepuluh Nopember', 'Monumen Pahlawan adalah monumen di Surabaya, Indonesia. Ini adalah simbol utama kota, yang didedikasikan untuk orang-orang yang meninggal selama Pertempuran Surabaya pada 10 November 1945. Museum 10 November terletak di bawah monumen. Monumen ini setinggi 41,15 meter dan berbentuk lingga.', NULL, 'Jl. Bubutan, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174', '0', '08:00:00', '15:00:00', -7.246242, 112.735633),
(179, 38, 3, 'Kebun Binatang Surabaya', 'Kebun Binatang Surabaya, juga dikenal sebagai Bonbin, adalah kebun binatang seluas 15 hektar yang terletak di kota Surabaya di Jawa Timur, Indonesia.', NULL, 'Jl. Setail No.1, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', '25000', '08:00:00', '16:00:00', -7.295945, 112.734432),
(180, 38, 5, 'Monumen Kapal Selam', 'Museum di dalam kapal selam perang Rusia yang dinonaktifkan dengan wisata & taman yang berdekatan dengan kafe.', NULL, 'Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60277', '10000', '08:00:00', '21:00:00', -7.265438, 112.748113),
(182, 38, 3, 'Suroboyo Carnival park', 'Taman hiburan bergaya karnaval yang menawarkan wahana untuk anak-anak & dewasa, plus kios makanan & suvenir.', NULL, 'Jl. Ahmad Yani No.333, Dukuh Menanggal, Kec. Gayungan, Kota SBY, Jawa Timur 60234', '80000', '15:00:00', '23:00:00', -7.344432, 112.731269),
(183, 38, 3, 'Taman Bungkul', 'Ruang hijau yang sibuk dan populer dengan taman skating, peralatan bermain, pohon rindang & penjual makanan.', NULL, 'Jl. Taman Bungkul, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', '0', '00:00:00', '00:00:00', -7.291347, 112.737633),
(184, 38, 3, 'Ciputra Waterpark', 'Ciputra Waterpark adalah waterpark yang berlokasi di Surabaya. Ini adalah salah satu waterpark terbesar di Asia Tenggara. Terletak di bagian barat Surabaya.', NULL, 'Kawasan Waterpark Boulevard Citraland, Made, Kec. Sambikerep, Kota SBY, Jawa Timur 60219', '80000', '13:00:00', '19:00:00', -7.284594, 112.630173),
(185, 38, 5, 'Surabaya North Quay', 'Dek atap gedung pencakar langit menawarkan pemandangan pelabuhan, laut & kapal pesiar yang dramatis.', NULL, 'Perak Utara, Kec. Pabean Cantian, Kota SBY, Jawa Timur 60165', '5000', '11:00:00', '20:00:00', -7.196837, 112.730253),
(186, 38, 1, 'Hutan bambu Keputih', NULL, NULL, 'Jl. Raya Marina Asri, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', '0', '06:00:00', '17:00:00', -7.294093, 112.800188),
(187, 38, 5, 'Jl. Raya Marina Asri, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', 'House of Sampoerna adalah museum tembakau dan markas besar Sampoerna yang berlokasi di Surabaya. Gaya arsitektur bangunan utama dipengaruhi oleh gaya kolonial Belanda dibangun pada tahun 1862 dan sekarang menjadi situs bersejarah yang dilestarikan', NULL, 'Taman Sampoerna No.6, Krembangan Utara, Kec. Pabean Cantian, Kota SBY, Jawa Timur 60163', '0', '09:00:00', '18:00:00', -7.230817, 112.732046),
(188, 38, 2, 'Kelenteng Sanggar Agung Kenjeran (Hong San Tang)', 'Kuil Sanggar Agung atau Hong San Tang adalah kuil Cina di Surabaya yang didedikasikan untuk dewa-dewa Cina dan ikon agama Asia lainnya. Itu terletak di dalam taman hiburan Pantai Ria dan menjadi tujuan wisata, meskipun awalnya merupakan tempat ibadah bagi pengikut Tridharma.', NULL, 'Jl. Sukolilo No. 100, Kota SBY, Jawa Timur 60122', '0', '00:00:00', '00:00:00', -7.247232, 112.800069),
(189, 38, 2, 'Masjid Nasional Al - Akbar Surabaya', 'Masjid Al-Akbar, juga dikenal sebagai Masjid Agung Surabaya, adalah masjid nasional yang berlokasi di Surabaya, Jawa Timur. Ini adalah masjid terbesar kedua di Indonesia setelah Masjid Istiqlal di Jakarta dalam hal kapasitas maksimum. Lokasi masjid berada di samping Jalan Raya Surabaya-Porong.', NULL, 'Jl. Masjid Al-Akbar Utara No.1, Pagesangan, Kec. Jambangan, Kota SBY, Jawa Timur 60274', '0', '00:00:00', '00:00:00', -7.336548, 112.713068),
(190, 38, 5, 'Monumen Jalesveva Jayamahe', 'Monumen Jalesveva Jayamahe atau dapat secara lokal disebut sebagai Monjaya adalah patung seorang perwira Angkatan Laut Indonesia yang mengenakan Busana Seremonial, lengkap dengan pedangnya, menatap jauh ke laut seolah-olah dia siap untuk menantang gelombang laut dan badai.', NULL, 'Jl. Masjid Al-Akbar Utara No.1, Pagesangan, Kec. Jambangan, Kota SBY, Jawa Timur 60274', '0', '07:00:00', '15:00:00', -7.195475, 112.737332),
(191, 38, 1, 'Masjid Sunan Ampel', 'Masjid Ampel adalah masjid kuno yang terletak di kecamatan Ampel, kabupaten Semampir, Surabaya, Jawa Timur. Masjid tertua di Jawa Timur dibangun pada 1421 M oleh Sunan Ampel di mana kompleks makamnya berada di daerah tersebut.', NULL, 'Jl. Petukangan I, Ampel, Kec. Semampir, Kota SBY, Jawa Timur 60151', '0', '00:00:00', '00:00:00', -7.230279, 112.739787),
(192, 38, 3, 'Kenjeran Park', NULL, NULL, 'Jl. Pantai Ria Kenjeran, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122', '25000', '00:00:00', '00:00:00', -7.252004, 112.795743),
(193, 38, 5, 'Jembatan Merah', NULL, NULL, 'Jl. Kembang Jepun No.192, Nyamplungan, Kec. Pabean Cantian, Kota SBY, Jawa Timur 60161', '0', '00:00:00', '00:00:00', -7.235601, 112.735976),
(194, 38, 2, 'Masjid Muhammad Cheng Hoo', NULL, NULL, 'Jl. Gading No.2, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '0', '00:00:00', '00:00:00', -7.252277, 112.744673),
(195, 38, 5, 'Monumen Bambu Runcing', 'Monumen tengara dengan pilar menyerupai tombak bambu, dikelilingi oleh air mancur & hamparan bunga.', NULL, 'Jl. Panglima Sudirman, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271', '0', '00:00:00', '00:00:00', -7.267776, 112.742201),
(196, 38, 3, 'Pantai Kenjeran Lama', NULL, NULL, 'Jl. Raya Pantai Lama No.12, Kenjeran, Kec. Bulak, Kota SBY, Jawa Timur 60123', '10000', '07:00:00', '18:00:00', -7.238058, 112.793419),
(197, 38, 3, 'Taman Flora Bratang', 'Taman ramah keluarga dengan pepohonan & hewan termasuk rusa, plus taman bermain & warung makan.', NULL, 'Jl. Raya Manyar No.80A, Baratajaya, Kec. Gubeng, Kota SBY, Jawa Timur 60284', '0', '08:00:00', '17:00:00', -7.238053, 112.725567),
(198, 38, 5, 'Jembatan Suroboyo', 'Jembatan Suroboyo atau yang biasa dikenal dengan Jembatan Kenjeran adalah jembatan lengkung yang melintasi wilayah pesisir Surabaya Timur di Pantai Kenjeran, Kecamatan Kenjeran, Surabaya, Jawa Timur, Indonesia. Jembatan ini memiliki panjang 800 meter dengan lebar 18 meter dan tinggi 12 meter yang dipegang dengan 150 pasak.', NULL, 'Jl. Raya Pantai Lama, Kenjeran, Kec. Bulak, Kota SBY, Jawa Timur 60123', '0', '00:00:00', '00:00:00', -7.237072, 112.794763),
(199, 38, 5, 'Patung Sura dan Baya', NULL, NULL, 'Jl. Diponegoro No.1-B, Darmo, Kec. Wonokromo, Kota SBY, Jawa Timur 60241', '0', '00:00:00', '00:00:00', -7.296019, 112.736492),
(200, 38, 2, 'Gereja Katolik Kelahiran Santa Perawan Maria', 'Gereja Kelahiran Bunda Maria, juga dikenal sebagai Gereja Kepanjen, adalah gereja Katolik Roma di Surabaya, Jawa Timur, Indonesia. Selesai pada tahun 1899, ini adalah gereja Katolik Roma tertua di Surabaya dan di antara gereja-gereja tertua di Surabaya.', NULL, 'Jl. Kepanjen No.4-6, Krembangan Sel., Kec. Krembangan, Kota SBY, Jawa Timur 60175', '0', '00:00:00', '00:00:00', -7.242076, 112.734627),
(201, 38, 4, 'Wisata Mangrove Wonorejo', NULL, NULL, 'Jl. Wonorejo Timur No.1, Wonorejo, Kec. Rungkut, Kota SBY, Jawa Timur 60296', '0', '08:00:00', '16:00:00', -7.308128, 112.819617),
(202, 38, 5, 'Taman Air Mancur Menari Kenjeran', NULL, NULL, 'Kenjeran, Kec. Bulak, Kota SBY, Jawa Timur 60123', '0', '19:00:00', '20:00:00', -7.235693, 112.793335),
(203, 38, 5, 'Tanjung Perak', 'Pelabuhan Tanjung Perak adalah pelabuhan laut tersibuk kedua di Indonesia, berlokasi di Surabaya, Jawa Timur. Ini adalah pelabuhan utama untuk bagian timur pulau Jawa. Port diakses dari Utara melalui Selat Madura, saluran sepanjang 25 mil, lebar 100 meter, dan kedalaman 9,5 m antara Jawa Timur dan Pulau Madura', NULL, 'Perak Bar., Kec. Krembangan, Kota SBY, Jawa Timur', '0', '00:00:00', '00:00:00', -7.221949, 112.71462),
(204, 38, 3, 'Kebun Bibit Wonorejo', NULL, NULL, 'RK, Jl. Raya Kendalsari No.70, Wonorejo, Rungkut, Surabaya City, East Java 60297', '0', '08:00:00', '17:00:00', -7.312366, 112.786713),
(205, 38, 5, 'Taman Pelangi', NULL, NULL, 'Jl. Ahmad Yani No.138, Gayungan, Kec. Gayungan, Kota SBY, Jawa Timur 60235', '0', '00:00:00', '00:00:00', -7.327564, 112.729018),
(206, 38, 1, 'Surabaya Museum (Gedung Siola)', NULL, NULL, 'Jl. Tunjungan No.1, Genteng, Kec. Genteng, Kota SBY, Jawa Timur 60275', '0', '09:00:00', '21:00:00', -7.256318, 112.735437),
(207, 38, 4, 'Wisata Mangrove Gunung Anyar', NULL, NULL, 'Jalan Medokan Sawah Timur Segoro Tambak Sedati, Medokan Ayu, Kec. Rungkut, Kabupaten Sidoarjo, Jawa Timur 60295', '0', '10:00:00', '17:00:00', -7.330802, 112.813436),
(208, 38, 4, 'Taman Harmoni Keputih', NULL, NULL, 'Jl. Keputih Tegal Timur II No.249, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', '0', '06:00:00', '18:00:00', -7.295221, 112.801372),
(209, 38, 3, 'Taman Prestasi Surabaya', 'Taman tepi sungai yang menampilkan taman bermain, lapangan tenis, ruang piknik & taman dalam suasana tropis.', NULL, 'Jl. Ketabang Kali No.6, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '0', '06:00:00', '19:00:00', -7.261472, 112.740657),
(210, 38, 3, 'Taman Balai Kota Surabaya', NULL, NULL, 'Jl. Walikota Mustajab No.59, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272', '0', '08:00:00', '17:00:00', -7.261472, 112.734091),
(211, 38, 4, 'Wisata Pantai Kenjeran Lama', NULL, NULL, 'Jl. Raya Pantai Lama No.12, Kenjeran, Kec. Bulak, Kota SBY, Jawa Timur 60123', '0', '07:00:00', '18:00:00', -7.238058, 112.793419),
(212, 38, 3, 'Waterpark Kenjeran', NULL, NULL, 'Jl. Pantai Ria Kenjeran, Sukolilo Baru, Kec. Bulak, Kota SBY, Jawa Timur 60122', '25000', '08:00:00', '17:00:00', -7.247796, 112.797635),
(213, 38, 3, 'Trans Studio Mini Rungkut Surabaya', NULL, NULL, 'Transmart Rungkut Surabaya, Jl. Tenggilis Mejoyo No.25, Kali Rungkut, Kec. Rungkut, Kota SBY, Jawa Timur 60293', '0', '08:00:00', '22:00:00', -7.32083, 112.767998),
(214, 38, 5, 'Ciputra World Surabaya', NULL, NULL, 'Jl. Mayjen Sungkono No.89, Gn. Sari, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60224', '0', '10:00:00', '10:00:00', -7.293147, 112.71752),
(215, 38, 5, 'Plaza Surabaya', NULL, NULL, 'Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur', '0', '10:00:00', '22:00:00', -7.264877, 112.746356),
(216, 38, 3, 'Taman Suroboyo', NULL, NULL, 'Jl. Pantai Kenjeran, Kedung Cowek, Kec. Bulak, Kota SBY, Jawa Timur 60125', '0', '00:00:00', '00:00:00', -7.225373, 112.785875),
(217, 38, 3, 'Taman 10 Nopember', NULL, NULL, 'Depan, Jl. Mundu No.35, Tambaksari, Kec. Tambaksari, Kota SBY, Jawa Timur 60136', '0', '00:00:00', '00:00:00', -7.251471, 112.751721),
(218, 38, 3, 'Taman Apsari', NULL, NULL, 'Jl. Taman Apsari No.63, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271', '0', '00:00:00', '00:00:00', -7.263716, 112.740635),
(219, 38, 3, 'Food Junction Grand Pakuwon', NULL, NULL, 'Jl. Grand Banjar Boulevard, Banjar Sugihan, Kec. Tandes, Kota SBY, Jawa Timur 60184', '0', '11:00:00', '22:00:00', -7.251068, 112.659844),
(220, 38, 5, 'Tunjungan Plaza Surabaya', 'Glitzy CBD mega mall with cinemas, department stores & fashion brands centered around 2 main atria.', NULL, 'Jl. Jenderal Basuki Rachmat, Kedungdoro, Kec. Tegalsari, Kota SBY, Jawa Timur 60261', '0', '10:00:00', '22:00:00', -7.26342, 112.738152);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`id_jenis_wisata`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `waktu_tempuh`
--
ALTER TABLE `waktu_tempuh`
  ADD PRIMARY KEY (`id_waktu_wisata`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT untuk tabel `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  MODIFY `id_jenis_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `waktu_tempuh`
--
ALTER TABLE `waktu_tempuh`
  MODIFY `id_waktu_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
