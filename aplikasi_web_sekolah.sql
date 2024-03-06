-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 09:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi web sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `kd_agama` varchar(20) NOT NULL,
  `nama_agama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bagi kelas`
--

CREATE TABLE `bagi kelas` (
  `kelas` varchar(20) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `NIS` int(20) NOT NULL,
  `Nomor_presensi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `NIP` varchar(15) NOT NULL,
  `Nama` text NOT NULL,
  `Tempat_lahir` text NOT NULL,
  `Tanggal_lahir` varchar(20) NOT NULL,
  `Agama` text NOT NULL,
  `Status_perkawinan` text NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Nama_perguruantinggi` varchar(20) NOT NULL,
  `Ijazah` varchar(20) NOT NULL,
  `Lulus` varchar(15) NOT NULL,
  `Golongan` varchar(10) NOT NULL,
  `Keterangan` varchar(20) NOT NULL,
  `Jenis_kelamin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `kelas` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `Kd_kelas` varchar(20) NOT NULL,
  `Nama_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kd_mapel` int(20) NOT NULL,
  `nama_mapel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `Tahun` varchar(20) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `NIS` varchar(20) NOT NULL,
  `Semester` varchar(5) NOT NULL,
  `Nilai_b_Indonesia` int(3) NOT NULL,
  `Nilai_Matematika` int(3) NOT NULL,
  `Nilai_Agama` int(3) NOT NULL,
  `Nilai_IPA` int(3) NOT NULL,
  `Nilai_PKN` int(3) NOT NULL,
  `Nilai_IPS` int(3) NOT NULL,
  `Nilai_SBK` int(3) NOT NULL,
  `Nilai_Penjaskes` int(3) NOT NULL,
  `Nilai_b_Inggris` int(3) NOT NULL,
  `Nilai_Mulok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `NIS` text NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `ayah` text NOT NULL,
  `ibu` text NOT NULL,
  `pekerjaan_ayah` text NOT NULL,
  `pekerjaan_ibu` text NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tahun ajaran`
--

CREATE TABLE `tahun ajaran` (
  `ID_tahunajaran` int(20) NOT NULL,
  `Tahun` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
