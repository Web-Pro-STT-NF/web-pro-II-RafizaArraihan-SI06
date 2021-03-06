-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2022 pada 21.08
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `tmp_lahir` varchar(255) DEFAULT NULL,
  `pendidikan_akhir` varchar(50) NOT NULL,
  `prodi_kode` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`, `gender`, `tgl_lahir`, `tmp_lahir`, `pendidikan_akhir`, `prodi_kode`) VALUES
('0212', 'Latifah Zahra', 'P', '1994-02-21', 'Jakarta', 'S2', 'TI'),
('0912', 'David Roger', 'L', '1986-02-28', 'Solo', 'S1', 'BD'),
('20111', 'Budi Santoso', 'L', '1997-04-23', 'Banyuwangi', 'D3', 'BD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `ipk` double DEFAULT NULL,
  `prodi_kode` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `ipk`, `prodi_kode`) VALUES
('01021001', 'Naurah Husna', 'P', 'Jakarta', '2003-03-08', 3.85, 'TI'),
('02021020', 'Ahmad Afif', 'L', 'Depok', '2004-01-20', 3.2, 'TI'),
('03021021', 'Furqon Zaki', 'L', 'Bogor', '2003-08-01', 3.67, 'BD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `kode` varchar(2) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kaprodi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kode`, `nama`, `kaprodi`) VALUES
('BD', 'Teknik Informasi', 'David Panji'),
('SI', 'Teknik Informasi', 'Misna Asqia'),
('TI', 'Teknik Informasi', 'Tifani Nabarian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `role`, `created_at`, `last_login`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@gmail.com', 'ADMIN', '2022-06-10 13:27:30', '2022-06-10 13:27:30'),
(2, 'siswa', '4a575a11bc9612f62849186c26a70017', 'siswa@gmail.com', 'SISWA', '2022-06-11 12:31:09', '2022-06-11 12:31:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD KEY `prodi_kode` (`prodi_kode`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `prodi_kode` (`prodi_kode`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
