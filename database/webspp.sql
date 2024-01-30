-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2024 pada 09.04
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webspp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `user_admin` varchar(50) NOT NULL,
  `pass_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(123, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `angkatan`
--

CREATE TABLE `angkatan` (
  `id_angkatan` int(11) NOT NULL,
  `nama_angkatan` varchar(50) NOT NULL,
  `biaya` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `angkatan`
--

INSERT INTO `angkatan` (`id_angkatan`, `nama_angkatan`, `biaya`) VALUES
(1, '2023/2024', '25000'),
(2028, '2020/2021', '30000'),
(2029, '2021/2022', '50000'),
(2030, '2022/2023', '10000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'TKJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(2, 'X TKJ 2'),
(3, 'X TKJ 1'),
(9, 'X TKJ 3'),
(11, 'XI TKJ 1'),
(12, 'XI TKJ 3'),
(13, 'XI TKJ 2'),
(14, 'XII TKJ 1'),
(15, 'XII TKJ 2'),
(16, 'XII TKJ 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idspp` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jatuhtempo` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `nobayar` varchar(50) DEFAULT NULL,
  `tglbayar` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idspp`, `id_siswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `id_admin`) VALUES
(217, 22, '2024-01-30', 'Januari  2024', NULL, NULL, '25000', NULL, 0),
(218, 22, '2024-03-01', 'Maret  2024', NULL, NULL, '25000', NULL, 0),
(219, 22, '2024-03-30', 'Maret  2024', NULL, NULL, '25000', NULL, 0),
(220, 22, '2024-04-30', 'April  2024', NULL, NULL, '25000', NULL, 0),
(221, 22, '2024-05-30', 'Mei  2024', NULL, NULL, '25000', NULL, 0),
(222, 22, '2024-06-30', 'Juni  2024', NULL, NULL, '25000', NULL, 0),
(223, 22, '2024-07-30', 'Juli  2024', NULL, NULL, '25000', NULL, 0),
(224, 22, '2024-08-30', 'Agustus  2024', NULL, NULL, '25000', NULL, 0),
(225, 22, '2024-09-30', 'September  2024', NULL, NULL, '25000', NULL, 0),
(226, 22, '2024-10-30', 'Oktober  2024', NULL, NULL, '25000', NULL, 0),
(227, 22, '2024-11-30', 'November  2024', NULL, NULL, '25000', NULL, 0),
(228, 22, '2024-12-30', 'Desember  2024', NULL, NULL, '25000', NULL, 0),
(229, 22, '2025-01-30', 'Januari  2025', NULL, NULL, '25000', NULL, 0),
(230, 22, '2025-03-02', 'Maret  2025', NULL, NULL, '25000', NULL, 0),
(231, 22, '2025-03-30', 'Maret  2025', NULL, NULL, '25000', NULL, 0),
(232, 22, '2025-04-30', 'April  2025', NULL, NULL, '25000', NULL, 0),
(233, 22, '2025-05-30', 'Mei  2025', NULL, NULL, '25000', NULL, 0),
(234, 22, '2025-06-30', 'Juni  2025', NULL, NULL, '25000', NULL, 0),
(235, 22, '2025-07-30', 'Juli  2025', NULL, NULL, '25000', NULL, 0),
(236, 22, '2025-08-30', 'Agustus  2025', NULL, NULL, '25000', NULL, 0),
(237, 22, '2025-09-30', 'September  2025', NULL, NULL, '25000', NULL, 0),
(238, 22, '2025-10-30', 'Oktober  2025', NULL, NULL, '25000', NULL, 0),
(239, 22, '2025-11-30', 'November  2025', NULL, NULL, '25000', NULL, 0),
(240, 22, '2025-12-30', 'Desember  2025', NULL, NULL, '25000', NULL, 0),
(241, 22, '2026-01-30', 'Januari  2026', NULL, NULL, '25000', NULL, 0),
(242, 22, '2026-03-02', 'Maret  2026', NULL, NULL, '25000', NULL, 0),
(243, 22, '2026-03-30', 'Maret  2026', NULL, NULL, '25000', NULL, 0),
(244, 22, '2026-04-30', 'April  2026', NULL, NULL, '25000', NULL, 0),
(245, 22, '2026-05-30', 'Mei  2026', NULL, NULL, '25000', NULL, 0),
(246, 22, '2026-06-30', 'Juni  2026', NULL, NULL, '25000', NULL, 0),
(247, 22, '2026-07-30', 'Juli  2026', NULL, NULL, '25000', NULL, 0),
(248, 22, '2026-08-30', 'Agustus  2026', NULL, NULL, '25000', NULL, 0),
(249, 22, '2026-09-30', 'September  2026', NULL, NULL, '25000', NULL, 0),
(250, 22, '2026-10-30', 'Oktober  2026', NULL, NULL, '25000', NULL, 0),
(251, 22, '2026-11-30', 'November  2026', NULL, NULL, '25000', NULL, 0),
(252, 22, '2026-12-30', 'Desember  2026', NULL, NULL, '25000', NULL, 0),
(253, 23, '2024-01-30', 'Januari  2024', NULL, NULL, '25000', NULL, 0),
(254, 23, '2024-03-01', 'Maret  2024', NULL, NULL, '25000', NULL, 0),
(255, 23, '2024-03-30', 'Maret  2024', NULL, NULL, '25000', NULL, 0),
(256, 23, '2024-04-30', 'April  2024', NULL, NULL, '25000', NULL, 0),
(257, 23, '2024-05-30', 'Mei  2024', NULL, NULL, '25000', NULL, 0),
(258, 23, '2024-06-30', 'Juni  2024', NULL, NULL, '25000', NULL, 0),
(259, 23, '2024-07-30', 'Juli  2024', NULL, NULL, '25000', NULL, 0),
(260, 23, '2024-08-30', 'Agustus  2024', NULL, NULL, '25000', NULL, 0),
(261, 23, '2024-09-30', 'September  2024', NULL, NULL, '25000', NULL, 0),
(262, 23, '2024-10-30', 'Oktober  2024', NULL, NULL, '25000', NULL, 0),
(263, 23, '2024-11-30', 'November  2024', NULL, NULL, '25000', NULL, 0),
(264, 23, '2024-12-30', 'Desember  2024', NULL, NULL, '25000', NULL, 0),
(265, 23, '2025-01-30', 'Januari  2025', NULL, NULL, '25000', NULL, 0),
(266, 23, '2025-03-02', 'Maret  2025', NULL, NULL, '25000', NULL, 0),
(267, 23, '2025-03-30', 'Maret  2025', NULL, NULL, '25000', NULL, 0),
(268, 23, '2025-04-30', 'April  2025', NULL, NULL, '25000', NULL, 0),
(269, 23, '2025-05-30', 'Mei  2025', NULL, NULL, '25000', NULL, 0),
(270, 23, '2025-06-30', 'Juni  2025', NULL, NULL, '25000', NULL, 0),
(271, 23, '2025-07-30', 'Juli  2025', NULL, NULL, '25000', NULL, 0),
(272, 23, '2025-08-30', 'Agustus  2025', NULL, NULL, '25000', NULL, 0),
(273, 23, '2025-09-30', 'September  2025', NULL, NULL, '25000', NULL, 0),
(274, 23, '2025-10-30', 'Oktober  2025', NULL, NULL, '25000', NULL, 0),
(275, 23, '2025-11-30', 'November  2025', NULL, NULL, '25000', NULL, 0),
(276, 23, '2025-12-30', 'Desember  2025', NULL, NULL, '25000', NULL, 0),
(277, 23, '2026-01-30', 'Januari  2026', NULL, NULL, '25000', NULL, 0),
(278, 23, '2026-03-02', 'Maret  2026', NULL, NULL, '25000', NULL, 0),
(279, 23, '2026-03-30', 'Maret  2026', NULL, NULL, '25000', NULL, 0),
(280, 23, '2026-04-30', 'April  2026', NULL, NULL, '25000', NULL, 0),
(281, 23, '2026-05-30', 'Mei  2026', NULL, NULL, '25000', NULL, 0),
(282, 23, '2026-06-30', 'Juni  2026', NULL, NULL, '25000', NULL, 0),
(283, 23, '2026-07-30', 'Juli  2026', NULL, NULL, '25000', NULL, 0),
(284, 23, '2026-08-30', 'Agustus  2026', NULL, NULL, '25000', NULL, 0),
(285, 23, '2026-09-30', 'September  2026', NULL, NULL, '25000', NULL, 0),
(286, 23, '2026-10-30', 'Oktober  2026', NULL, NULL, '25000', NULL, 0),
(287, 23, '2026-11-30', 'November  2026', NULL, NULL, '25000', NULL, 0),
(288, 23, '2026-12-30', 'Desember  2026', NULL, NULL, '25000', NULL, 0),
(289, 24, '2024-01-30', 'Januari  2024', '300120240903370337', '2024-01-30', '30000', 'LUNAS', 123),
(290, 24, '2024-03-01', 'Maret  2024', '300120240903390339', '2024-01-30', '30000', 'LUNAS', 123),
(291, 24, '2024-03-30', 'Maret  2024', '300120240903410341', '2024-01-30', '30000', 'LUNAS', 123),
(292, 24, '2024-04-30', 'April  2024', NULL, NULL, '30000', NULL, 0),
(293, 24, '2024-05-30', 'Mei  2024', NULL, NULL, '30000', NULL, 0),
(294, 24, '2024-06-30', 'Juni  2024', NULL, NULL, '30000', NULL, 0),
(295, 24, '2024-07-30', 'Juli  2024', NULL, NULL, '30000', NULL, 0),
(296, 24, '2024-08-30', 'Agustus  2024', NULL, NULL, '30000', NULL, 0),
(297, 24, '2024-09-30', 'September  2024', NULL, NULL, '30000', NULL, 0),
(298, 24, '2024-10-30', 'Oktober  2024', NULL, NULL, '30000', NULL, 0),
(299, 24, '2024-11-30', 'November  2024', NULL, NULL, '30000', NULL, 0),
(300, 24, '2024-12-30', 'Desember  2024', NULL, NULL, '30000', NULL, 0),
(301, 24, '2025-01-30', 'Januari  2025', NULL, NULL, '30000', NULL, 0),
(302, 24, '2025-03-02', 'Maret  2025', NULL, NULL, '30000', NULL, 0),
(303, 24, '2025-03-30', 'Maret  2025', NULL, NULL, '30000', NULL, 0),
(304, 24, '2025-04-30', 'April  2025', NULL, NULL, '30000', NULL, 0),
(305, 24, '2025-05-30', 'Mei  2025', NULL, NULL, '30000', NULL, 0),
(306, 24, '2025-06-30', 'Juni  2025', NULL, NULL, '30000', NULL, 0),
(307, 24, '2025-07-30', 'Juli  2025', NULL, NULL, '30000', NULL, 0),
(308, 24, '2025-08-30', 'Agustus  2025', NULL, NULL, '30000', NULL, 0),
(309, 24, '2025-09-30', 'September  2025', NULL, NULL, '30000', NULL, 0),
(310, 24, '2025-10-30', 'Oktober  2025', NULL, NULL, '30000', NULL, 0),
(311, 24, '2025-11-30', 'November  2025', NULL, NULL, '30000', NULL, 0),
(312, 24, '2025-12-30', 'Desember  2025', NULL, NULL, '30000', NULL, 0),
(313, 24, '2026-01-30', 'Januari  2026', NULL, NULL, '30000', NULL, 0),
(314, 24, '2026-03-02', 'Maret  2026', NULL, NULL, '30000', NULL, 0),
(315, 24, '2026-03-30', 'Maret  2026', NULL, NULL, '30000', NULL, 0),
(316, 24, '2026-04-30', 'April  2026', NULL, NULL, '30000', NULL, 0),
(317, 24, '2026-05-30', 'Mei  2026', NULL, NULL, '30000', NULL, 0),
(318, 24, '2026-06-30', 'Juni  2026', NULL, NULL, '30000', NULL, 0),
(319, 24, '2026-07-30', 'Juli  2026', NULL, NULL, '30000', NULL, 0),
(320, 24, '2026-08-30', 'Agustus  2026', NULL, NULL, '30000', NULL, 0),
(321, 24, '2026-09-30', 'September  2026', NULL, NULL, '30000', NULL, 0),
(322, 24, '2026-10-30', 'Oktober  2026', NULL, NULL, '30000', NULL, 0),
(323, 24, '2026-11-30', 'November  2026', NULL, NULL, '30000', NULL, 0),
(324, 24, '2026-12-30', 'Desember  2026', NULL, NULL, '30000', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_angkatan` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nama`, `id_angkatan`, `id_jurusan`, `id_kelas`, `alamat`) VALUES
(24, '30012024090321', 'Budi', 2028, 1, 3, 'jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  ADD PRIMARY KEY (`id_angkatan`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idspp`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `angkatan`
--
ALTER TABLE `angkatan`
  MODIFY `id_angkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2031;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idspp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
