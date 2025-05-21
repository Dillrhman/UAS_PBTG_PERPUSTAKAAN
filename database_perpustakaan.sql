-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 21 Bulan Mei 2025 pada 15.10
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `ttl` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nim`, `nama`, `ttl`, `jenis_kelamin`, `alamat`) VALUES
('220001', 'Andi Saputra', '2002-03-15', 'L', 'Jl. Merdeka No. 10'),
('220002', 'Rina Marlina', '2003-05-22', 'P', 'Jl. Melati No. 5'),
('220003', 'Budi Santoso', '2001-11-02', 'L', 'Jl. Kenanga No. 7'),
('220004', 'Siti Aminah', '2002-07-09', 'P', 'Jl. Mawar No. 12'),
('220005', 'Dedi Kurniawan', '2003-01-30', 'L', 'Jl. Anggrek No. 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `kode_buku` varchar(50) NOT NULL,
  `nama_buku` varchar(150) DEFAULT NULL,
  `nama_pengarang` varchar(100) DEFAULT NULL,
  `penerbit` varchar(40) DEFAULT NULL,
  `tahun_terbit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`kode_buku`, `nama_buku`, `nama_pengarang`, `penerbit`, `tahun_terbit`) VALUES
('BK002', 'Basis Data Lanjut', 'Sinta Marlina', 'Gramedia', '2020'),
('BK003', 'Struktur Data', 'Budi Santosa', 'Andi Publisher', '2022'),
('BK004', 'Desain UI/UX', 'Rina Arlina', 'Informatika', '2021'),
('BK005', 'Jaringan Komputer', 'Dedi Nugraha', 'Salemba Empat', '2019'),
('BK006', 'Algoritma Dasar', 'Agus Salim', 'Deepublish', '2020'),
('BK007', 'Kalkulus', 'Siti Aminah', 'Erlangga', '2021'),
('BK008', 'Sistem Operasi', 'Fajar Maulana', 'Gramedia', '2022'),
('BK009', 'Etika Profesi', 'Lina Kartika', 'Salemba Empat', '2018'),
('BK010', 'Kecerdasan Buatan', 'Nurul Aini', 'Andi Publisher', '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Jenis Kelamin` varchar(255) NOT NULL,
  `Golongan` varchar(255) NOT NULL,
  `Jabatan` varchar(255) NOT NULL,
  `Absen` varchar(255) NOT NULL,
  `Jumlah Absen` varchar(255) NOT NULL,
  `Biaya Transport` varchar(255) NOT NULL,
  `Tunjangan` varchar(255) NOT NULL,
  `Gaji` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`NIK`, `Nama`, `Jenis Kelamin`, `Golongan`, `Jabatan`, `Absen`, `Jumlah Absen`, `Biaya Transport`, `Tunjangan`, `Gaji`) VALUES
('1001', 'Andi Pratama', 'L', 'IIIA', 'Staff', '2025-05-01', '20', '500000', '1000000', '4500000'),
('1002', 'Siti Rahma', 'P', 'IIIB', 'Supervisor', '2025-05-01', '22', '600000', '1500000', '5500000'),
('1003', 'Budi Santoso', 'L', 'IIIC', 'Manager', '2025-05-01', '18', '750000', '2000000', '7000000'),
('1004', 'Rina Amelia', 'P', 'IIIA', 'Staff', '2025-05-01', '21', '500000', '1000000', '4700000'),
('1005', 'Dedi Kurniawan', 'L', 'IIIB', 'Supervisor', '2025-05-01', '19', '600000', '1500000', '5300000'),
('1006', 'Maya Sari', 'P', 'IIIC', 'Manager', '2025-05-01', '20', '750000', '2000000', '7100000'),
('1007', 'Agus Haryanto', 'L', 'IIIA', 'Staff', '2025-05-01', '22', '500000', '1000000', '4600000'),
('1008', 'Lina Kartika', 'P', 'IIIB', 'Supervisor', '2025-05-01', '20', '600000', '1500000', '5400000'),
('1009', 'Fajar Nugroho', 'L', 'IIIC', 'Manager', '2025-05-01', '21', '750000', '2000000', '7200000'),
('1010', 'Nurul Aini', 'P', 'IIIA', 'Staff', '2025-05-01', '23', '500000', '1000000', '4800000'),
('1011', 'Haikal Simanjuntak', 'Laki-laki', 'Staff', 'IIIB', '2025-05-02', '10', '4500000', '1000000', '2300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `konfirmasi_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`nama`, `username`, `password`, `konfirmasi_password`) VALUES
('Iqbal', 'admin', 'adminsatu', 'adminsatu'),
('Budi', 'Admin2', 'admindua', 'admindua'),
('Joko', 'Admin3', 'admintiga', 'admintiga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjam`
--

CREATE TABLE `peminjam` (
  `nim` varchar(100) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kode_buku` varchar(100) DEFAULT NULL,
  `nama_buku` varchar(255) DEFAULT NULL,
  `tanggal_peminjaman` varchar(100) DEFAULT NULL,
  `tanggal_pengembalian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `NIM` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Kelas` varchar(255) NOT NULL,
  `Kode Buku` varchar(255) NOT NULL,
  `Nama Buku` varchar(255) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Tanggal Pinjam` varchar(255) NOT NULL,
  `Tanggal Kembali` varchar(255) NOT NULL,
  `Lama Pinjam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`NIM`, `Nama`, `Kelas`, `Kode Buku`, `Nama Buku`, `Penerbit`, `Tanggal Pinjam`, `Tanggal Kembali`, `Lama Pinjam`) VALUES
('220101', 'Andi Saputra', 'TI-1A', 'BK001', 'Pemrograman Java', 'Erlangga', '2025-05-01', '2025-05-08', '7'),
('220102', 'Rina Marlina', 'TI-1B', 'BK002', 'Basis Data Lanjut', 'Gramedia', '2025-05-03', '2025-05-10', '7'),
('220103', 'Budi Santoso', 'TI-1A', 'BK003', 'Struktur Data', 'Andi Publisher', '2025-05-04', '2025-05-09', '5'),
('220104', 'Siti Aminah', 'TI-1C', 'BK004', 'Desain UI/UX', 'Informatika', '2025-05-02', '2025-05-07', '5'),
('220105', 'Dedi Kurniawan', 'TI-1B', 'BK005', 'Jaringan Komputer', 'Salemba Empat', '2025-05-05', '2025-05-12', '7'),
('220106', 'Lina Kartika', 'TI-1C', 'BK006', 'Algoritma Dasar', 'Deepublish', '2025-05-06', '2025-05-13', '7'),
('220107', 'Agus Haryanto', 'TI-1A', 'BK007', 'Kalkulus', 'Erlangga', '2025-05-07', '2025-05-14', '7'),
('220108', 'Nurul Aini', 'TI-1B', 'BK008', 'Sistem Operasi', 'Gramedia', '2025-05-08', '2025-05-15', '7'),
('220109', 'Fajar Nugroho', 'TI-1C', 'BK009', 'Etika Profesi', 'Salemba Empat', '2025-05-09', '2025-05-12', '3'),
('220110', 'Maya Sari', 'TI-1A', 'BK010', 'Kecerdasan Buatan', 'Andi Publisher', '2025-05-10', '2025-05-17', '7');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
