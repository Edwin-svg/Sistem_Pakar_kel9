-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2023 pada 13.27
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_aturan`
--

CREATE TABLE `basis_aturan` (
  `id_gejala` varchar(10) DEFAULT NULL,
  `pertanyaan` varchar(300) DEFAULT NULL,
  `fakta_ya` varchar(150) DEFAULT NULL,
  `fakta_tidak` varchar(150) DEFAULT NULL,
  `ngejala_akut` double NOT NULL,
  `ngejala_kronis` double NOT NULL,
  `ngejala_periodik` double NOT NULL,
  `rute` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id_penyakit` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `basis_aturan`
--

INSERT INTO `basis_aturan` (`id_gejala`, `pertanyaan`, `fakta_ya`, `fakta_tidak`, `ngejala_akut`, `ngejala_kronis`, `ngejala_periodik`, `rute`, `status`, `id_penyakit`) VALUES
('g1', 'Apakah tarikan rem dalam?', 'Tarikan rem dalam', 'Tarikan rem normal', 0.15, 0.83, 0.15, 'g2', '', 0),
('g2', 'Apakah terdengar bunyi gesekan pada area sekitar ban?', 'Tedengar bunyi gesekan di arean sekitar ban', 'Tidak terdengar bunyi gesekan di arean sekitar ban', 0.1, 0.83, 0.25, 'g3', '', 0),
('g3', 'Apakah tercium bau terbakar atau hangus di area sekitar ban?', 'Tercium bau terbakar atau hangus di area sekitar ban', 'Tidak tercium bau terbakar atau hangus di area sekitar ban', 0.1, 0.78, 0.12, 'g4', '', 0),
('g4', 'Apakah mesin motor mati secara tiba-tiba?', 'Mesin motor mati secara tiba-tiba', 'Mesin motor normal dan tidak mati secara tiba-tiba', 0.75, 0.1, 0.1, 'g5', '', 0),
('g5', 'Apakah timbul asap pada kenalpot?', 'Timbul asap pada kenalpot', 'Tidak timbul asap pada kenalpot', 0.83, 0.1, 0.1, 'g6', '', 0),
('g6', 'Apakah tarikan motor terasa berat?', 'Tarikan motor terasa berat', 'Tarikan motor normal dan tidak terasa berat', 0.75, 0.1, 0.1, 'g7', '', 0),
('g7', 'Apakah mesin motor cepat panas?', 'Mesin motor cepat panas tidak seperti biasanya', 'Mesin motor normal dan tidak cepat panas', 0.75, 0.15, 0.1, 'g8', '', 0),
('g8', 'Apakah mesin motor mati secara tiba-tiba dan tidak dapat dinyalakan?', 'Mesin motor mati secara tiba-tiba dan tidak dapat dinyalakan', 'Mesin motor tidak mati dan masih dapat di nyalakan dengan normal', 0.6, 0.1, 0.1, 'g9', '', 0),
('g9', 'Apakah oli shockbreaker bocor?', 'Oli shockbreaker bocor', 'Oli shockbreaker tidak bocor', 0.1, 0.1, 0.83, 'g10', '', 0),
('g10', 'Apakah terdengar suara hentakan dari suspensi?', 'Terdengar suara hentakan dari suspensi', 'Tidak terdengar suara hentakan dari suspensi', 0.5, 0.5, 0.83, 'g11', '', 0),
('g11', 'Apakah kekuatan pantulan motor terasa tidak normal?', 'Kekuatan pantulan motor terasa tidak normal', 'Kekuatan pantulan motor normal', 0.5, 0.5, 0.79, 'final', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_gejala`
--

CREATE TABLE `daftar_gejala` (
  `id_gejala` varchar(10) DEFAULT NULL,
  `gejala` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `daftar_gejala`
--

INSERT INTO `daftar_gejala` (`id_gejala`, `gejala`) VALUES
('g1', 'Tarikan yang dalam'),
('g2', 'Ada bunyi gesekan'),
('g3', 'Tercium bau terbakar di area sekitar ban'),
('g4', 'Mesin akan mati secara tiba-tiba'),
('g5', 'Timbul asap pada kenalpot'),
('g6', 'Tarikan motor terasa berat'),
('g7', 'Mesin motor cepat panas'),
('g8', 'Mesin motor tiba-tiba mati dan tidak dapat di nyalakan'),
('g9', 'Oli shockbreaker bocor'),
('g10', 'Terdengar suara hentakan dari suspensi'),
('g11', 'Kekuatan pantulan tidak normal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_penyakit`
--

CREATE TABLE `daftar_penyakit` (
  `id_penyakit` varchar(10) DEFAULT NULL,
  `nama_penyakit` varchar(50) DEFAULT NULL,
  `npenyakit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `daftar_penyakit`
--

INSERT INTO `daftar_penyakit` (`id_penyakit`, `nama_penyakit`, `npenyakit`) VALUES
('p2', 'Kampas rem habis', 0.3),
('p1', 'Kehabisan Oli', 0.3),
('p3', 'Shock depan dan belakang rusak', 0.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_solusi`
--

CREATE TABLE `daftar_solusi` (
  `id_solusi` varchar(10) DEFAULT NULL,
  `solusi` varchar(300) DEFAULT NULL,
  `id_penyakit` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `daftar_solusi`
--

INSERT INTO `daftar_solusi` (`id_solusi`, `solusi`, `id_penyakit`) VALUES
(NULL, NULL, ''),
('s0', 'Motor Anda Tidak RUSAK:)', 'p0'),
('s2', 'Mengganti oli di bengkel. Biasanya tarif mengganti oli Rp.25.000 - Rp.92.000 tergantung jenis motor', 'p1'),
('s3', 'Mengganti shockbreaker di bengkel. Biasanya tarif mengganti shockbreaker cukup mahal, mulai dari Rp.160.000 sampai jutaan', 'p3'),
('s1', 'Mengganti kampas rem di bengkel, Biasanya tarif mengganti kampas rem adalah Rp.25.000-Rp.115.000 tergantung jenis motor', 'p2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
