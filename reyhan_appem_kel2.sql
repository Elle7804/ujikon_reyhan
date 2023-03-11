-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2023 pada 04.50
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reyhan_appem_kel2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `level` enum('masyarakat') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`, `level`) VALUES
('3110202506278542', 'Alan Arta Kusumah', 'alan', '654321', '0838542789563', 'masyarakat'),
('3277020401551154', 'Eka Septiawan', 'eka', '12345678', '089854612784', 'masyarakat'),
('3277025062014457', 'Maulana Abdul Kahfi', 'elle', '1234', '089612546254', 'masyarakat'),
('3277025062014552', 'Aldi Muharram', 'aldi', '1234', '085204568125', 'masyarakat'),
('3451478956254578', 'Purnama', 'pur', '54321', '089602546578', 'masyarakat'),
('3511065485124895', 'Azmi', 'azmi', '654321', '081345674584', 'masyarakat'),
('3564741258965457', 'Hendi M Hasan', 'hendi', '123456', '089564578456', 'masyarakat'),
('3722030506040002', 'Rizki Maulana', 'reyhan', '02205062004', '089603981296', 'masyarakat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('Belum Di Proses','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(1, '2023-02-26', '3722030506040002', 'Di Kp Legok Veteran RT 03 RW 06 Kel. Cipageran, Kec. Cimahi Utara Jawa Barat. Terdapat jalan yang rusak dan saya meminta bantuan agar segera di perbaik, supaya tidak memakan korban ', 'Jalan Berlubang1.jpg', 'selesai'),
(2, '2023-02-26', '3277025062014552', 'Terjadi banjir di puri 7 cimahi jawabarat', 'th.jfif', 'selesai'),
(4, '2023-02-27', '3110202506278542', 'Terjadi Banjir di bunisari rt1 rw 11 ', 'images (12).jpeg', 'selesai'),
(5, '2023-02-27', '3110202506278542', 'Ada jalan berlubang di jl gadobangkong RT5 RW6 Sehingga mengganggu pengguna jalan\r\n', 'images (1).jpeg', 'selesai'),
(6, '2023-02-27', '3110202506278542', 'terdapat pohon tumbang di bunisari gado bangkong RT4 RW6', 'images (1).jpeg', ''),
(7, '2023-02-27', '3110202506278542', 'Terdapat banyak sampah menumpuk di Gadobangkong Bunisari RT7 RW8 Sehingga menggnggu masyarakat sekitar', 'images (1).jpeg', 'selesai'),
(8, '2023-02-27', '3722030506040002', 'terjadi banjir hingga 2 meter di dekat gedung vidya chandra ', 'images (2).jpeg', 'proses'),
(9, '2023-02-27', '3722030506040002', 'Banyak sekali sampah hingga menumpuk di ci teureup, sehingga mengganggu pernapasan pengendara yang melintas', 'images (2).jpeg', 'selesai'),
(10, '2023-02-27', '3277020401551154', 'Pohon tumbang di Anggaraja RT06 RW03', 'images (5).jpeg', ''),
(11, '2023-02-27', '3722030506040002', 'Ada pohon roboh di JL Anggraja RT7 RW8', 'tangkal.jfif', 'proses'),
(14, '2023-03-02', '3277025062014457', 'Anj\r\n', '2023-01-24 (7).png', ''),
(15, '2023-03-02', '3277025062014457', 'p', '', ''),
(16, '2023-03-02', '3277025062014457', 'Alhamdulillah', '', ''),
(17, '2023-03-02', '3277025062014457', 'Bismillah', '', 'Belum Di Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(16) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(8, 'Reyhan Rizki Maullana', 'admin', '02205062004', '089603981296', 'admin'),
(9, 'Alfin Hamdani', 'petugas', '02205062004', '089872003549', 'petugas'),
(11, 'Ardi Septian Nugraha', 'ardi', '123456', '083154458458', 'petugas'),
(12, 'Defrian', 'deff', '654321', '083845686584', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(8, 1, '2023-02-26', 'Terimakasih atas laporan anda, Kami secepatnya akan memperbaikinya', 8),
(9, 9, '2023-02-27', 'Terimakasih telah membuat laporan ini, dengan ini kita akan segera menindak lanjutiny dan memberikan masyarakat edukasi lingkungan kesehatan', 8),
(11, 4, '2023-02-27', 'Terimakasih Sudah Me;laporkan Kepada Admin, Kami akan segera menanggulangi terjadiny banjir, dan mengdukasi masyarakat tentang oentingnya  ', 8),
(12, 5, '2023-03-06', 'terimakasih atas laporan anda, kami akan segera ke tkp', 8),
(13, 7, '2023-03-06', 'Terimakasih atas laporan yang telah dibuat, kami akan segera membersihkannya', 8);

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
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
