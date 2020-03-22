-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Mar 2020 pada 14.25
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appem_descamr`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(35) CHARACTER SET latin1 NOT NULL,
  `username` varchar(25) CHARACTER SET latin1 NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 NOT NULL,
  `telp` varchar(13) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('001', '', 'desca', 'deska4673', '08123456789'),
('002', 'rizal', 'Rizal', 'deska4673', '089636603078'),
('3203010712020006', 'deso', 'zelda', 'deska4673', '09876543569');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) CHARACTER SET latin1 NOT NULL,
  `isi_laporan` text CHARACTER SET latin1 NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` enum('0','proses','selesai','') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '0000-00-00', '001', 'saya akan ditempatkan dimana?', '', '0'),
(2, '0000-00-00', '001', 'saya akan ditempatkan dimana?', '', '0'),
(3, '0000-00-00', '001', 'saya akan ditempatkan dimana?', '', '0'),
(4, '0000-00-00', '002', 'aku teh siapa?', '', '0'),
(5, '2020-03-18', '002', 'saya adalah siapa?', '', '0'),
(6, '2020-03-18', '002', 'fasdfasdf', '', '0'),
(7, '2020-03-19', '001', 'kenapa saya dikeluarkan karena sesuatu?', '', '0'),
(8, '2020-03-19', '001', 'kenapa saya dikeluarkan karena sesuatu?', '', '0'),
(9, '2020-03-19', '001', 'kenapa saya dikeluarkan karena sesuatu?', 'bintang2.jpg', '0'),
(10, '2020-03-19', '001', 'kenapa saya dikeluarkan karena sesuatu?', 'bintang2.jpg', '0'),
(11, '2020-03-19', '001', 'kenapa saya dikeluarkan karena sesuatu?', 'bintang2.jpg', '0'),
(12, '2020-03-19', '001', 'hasemelhhh', 'European_Gaming_League_Logo.png', '0'),
(13, '2020-03-19', '001', 'hasemelhhh', 'European_Gaming_League_Logo.png', '0'),
(14, '2020-03-19', '002', 'hahahahah', 'maxresdefault.jpg', '0'),
(15, '2020-03-19', '002', 'hahahahah', 'maxresdefault.jpg', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) CHARACTER SET latin1 NOT NULL,
  `username` varchar(25) CHARACTER SET latin1 NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 NOT NULL,
  `telp` varchar(13) CHARACTER SET latin1 NOT NULL,
  `level` enum('admin','petugas','','') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text CHARACTER SET latin1 NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
