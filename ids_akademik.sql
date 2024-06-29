-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2018 pada 14.27
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ids_akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Guru`
--

CREATE TABLE `Guru` (
  `NIP` varchar(50) NOT NULL,
  `Nama_Guru` varchar(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `JK` enum('L','P') NOT NULL,
  `No_Telp` varchar(50) NOT NULL,
  `Alamat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `Guru`
--

INSERT INTO `Guru` (`NIP`, `Nama_Guru`, `Tanggal_Lahir`, `JK`, `No_Telp`, `Alamat`) VALUES
('12162201', 'Sri Haryati', '1978-04-12', 'P', '08328009812', 'Jakarta'),
('12162202', 'Rosiana', '1980-01-23', 'P', '0218766456778', 'Bekasi'),
('12162203', 'Irwan', '1977-11-09', 'L', '08567884566738', 'Cikarang'),
('12162204', 'Wahyu', '1980-11-14', 'L', '02156674837298', 'Cikarang'),
('12162205', 'Hatimah', '1988-11-15', 'P', '021888877736612', 'Jakarta'),
('12162206', 'Sriwahyuni', '1980-06-17', 'P', '0213455662778', 'Jakarta'),
('12162207', 'Bima', '1981-02-11', 'L', '0856774883920', 'Cikarang'),
('12162208', 'Susi Susanti', '1980-10-15', 'P', '084567783299209', 'Cibitung'),
('12162209', 'Rahmat', '1980-04-18', 'L', '02187745567889', 'Cibitung'),
('12162210', 'Wahyuni', '1979-10-23', '', '0845536728897', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `Id_Jadwal` int(11) NOT NULL,
  `Kode_matapelajaran_Jadwal` varchar(50) NOT NULL,
  `NIP_Jadwal` varchar(50) NOT NULL,
  `Kode_Ruangan_Jadwal` varchar(50) NOT NULL,
  `Kode_Jurusan_Jadwal` varchar(50) NOT NULL,
  `Hari` varchar(50) NOT NULL,
  `Jam` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`Id_Jadwal`, `Kode_matapelajaran_Jadwal`, `NIP_Jadwal`, `Kode_Ruangan_Jadwal`, `Kode_Jurusan_Jadwal`, `Hari`, `Jam`) VALUES
(17, 'MPWD02', '12162201', 'KLWD1', 'AKAWD', 'Senin', '07:15-08:15'),
(18, 'MPWD03', '12162202', 'KLWD2', 'ELKWD', 'Kamis', '07:17-08:15'),
(19, 'MPWD04', '12162203', 'KLWD1', 'TBGWD', 'Selasa', '07:15-08:15'),
(20, 'MPWD01', '12162204', 'KLWD3', 'TKJWD', 'Jumat', '07:15-08:15'),
(21, 'MPWD05', '12162206', 'KLWD2', 'OTMWD', 'Rabu', '07:15-08:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `Kode_Jurusan` varchar(50) NOT NULL,
  `Nama_Jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`Kode_Jurusan`, `Nama_Jurusan`) VALUES
('AKAWD', 'Akuntasi Perkatoran'),
('ELKWD', 'Teknik Elektronika'),
('OTMWD', 'Teknik Otomotif'),
('TBGWD', 'Teknik Bangunan'),
('TKJWD', 'Teknik Komputer Dan Jaringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `NISN` varchar(50) NOT NULL,
  `Nama_siswa` varchar(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `JK` enum('L','P') NOT NULL,
  `No_Telp` varchar(50) NOT NULL,
  `Alamat` varchar(150) NOT NULL,
  `kode_jurusan_Siswa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`NISN`, `Nama_siswa`, `Tanggal_Lahir`, `JK`, `No_Telp`, `Alamat`, `kode_jurusan_Siswa`) VALUES
('12161101', 'wik wik wik', '1999-09-08', 'L', '0899765352', 'Bekasi', 'AKAWD'),
('12161102', 'thomas', '1996-07-11', 'L', '02165376287', 'Cikarang', 'ELKWD'),
('12161103', 'akbar', '1999-12-08', 'L', '0987653782', 'Cibitung', 'OTMWD'),
('12161104', 'susanti', '1996-01-23', 'P', '08328009812', 'jakarta', 'TKJWD'),
('12161105', 'anjani', '1996-04-09', 'P', '0218766456778', 'Jakarta', 'TBGWD');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `Kode_matapelajaran` varchar(50) NOT NULL,
  `Nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matapelajaran`
--

INSERT INTO `matapelajaran` (`Kode_matapelajaran`, `Nama_matapelajaran`) VALUES
('MPWD01', 'Teknik Komputer'),
('MPWD02', 'Bahasa Indonesia'),
('MPWD03', 'Mate-Matika'),
('MPWD04', 'Fisika'),
('MPWD05', 'Praktek'),
('MPWD06', 'Kewarganegaraan'),
('MPWD07', 'Bahasa Inggeris'),
('MPWD08', 'Teknik Otomotif'),
('MPWD09', 'Olahraga'),
('MPWD10', 'Kewirausahaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `Id_Nilai` int(11) NOT NULL,
  `NISN_Nilai` varchar(50) NOT NULL,
  `Kode_matapelajaran_Nilai` varchar(50) NOT NULL,
  `Nilai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`Id_Nilai`, `NISN_Nilai`, `Kode_matapelajaran_Nilai`, `Nilai`) VALUES
(10, '12161102', 'MPWD02', 'A'),
(12, '12161101', 'MPWD02', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `Kode_Ruangan` varchar(50) NOT NULL,
  `Nama_Ruangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`Kode_Ruangan`, `Nama_Ruangan`) VALUES
('KLWD1', 'WD01'),
('KLWD2', 'WD02'),
('KLWD3', 'WD03'),
('KLWD4', 'WD04'),
('KLWD5', 'WD05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id_User` int(11) NOT NULL,
  `Id_Usergroup_User` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Foto` varchar(150) NOT NULL DEFAULT 'WD.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id_User`, `Id_Usergroup_User`, `Username`, `Password`, `Foto`) VALUES
(1, 1, 'admin', '$2y$10$V7zDd2Fz3QBmWFz3UnZBM.vjDK.AOTTjIdssUY8rhcBjEEJrxY7ma', 'ids.jpg'),
(27, 2, '12162201', '$2y$10$j3f.6QtxZ8EVo/PdQSUdSuAqKIKFLuaK00WUZ0Q4F6WlV7Df2juWa', 'WD.jpg'),
(28, 2, '12162203', '$2y$10$BawGzMEEwmf2FmkhgCH80O47gEzWS2sa0Mks3bY14bf2NWqZCoG.y', 'WD.jpg'),
(29, 2, '12162202', '$2y$10$0J9ResEQiiaWuIRo5cmaGeCJYaxUZQQfaAhLqVh0jFgyUJ7ZL5fWC', 'WD.jpg'),
(30, 2, '12162206', '$2y$10$ZZF7Zh.l2gkToOAHJZmeeuv2tUnHZLZFi7agHsxyWwn8KC0NUFxB2', 'WD.jpg'),
(31, 2, '12162204', '$2y$10$Ef6NTmjc9Zg84jJee9NjO.0eW9ZCx.DrrzDaZJQPvmcUuqGUZCHDC', 'WD.jpg'),
(32, 3, '12161101', '$2y$10$WfVZydEnyWEUEVW2j9qBXewJCgJrmdBgEposhuqvfuhBCA7zWR8s.', 'WD.jpg'),
(33, 3, '12161102', '$2y$10$kAvu.CvaQyn6C6RAeGcG5.fQ4l6Z1M7XHf77kudASEPd/2ac1nz4G', 'WD.jpg'),
(34, 3, '12161103', '$2y$10$mG.tJPvauBawAsojy0BUoeRVAFBBDzI6hKCAB1o5ic1iuLdo2qBii', 'WD.jpg'),
(35, 3, '12161104', '$2y$10$tuvdY4M3IzXRqSeaYfs.s.LgElNZ7YC6hfNfmUxCPhuJB9LaBWkYG', 'WD.jpg'),
(36, 3, '12161105', '$2y$10$k1wqSPFuq3/vAq5bKIi.wu3XF6gWOV6IGj/5DoL5Nte/fUosUhXQ6', 'WD.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usergroup`
--

CREATE TABLE `usergroup` (
  `Id_Usergroup` int(11) NOT NULL,
  `Nama_Usergroup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `usergroup`
--

INSERT INTO `usergroup` (`Id_Usergroup`, `Nama_Usergroup`) VALUES
(1, 'Administrator'),
(2, 'Guru'),
(3, 'Siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Guru`
--
ALTER TABLE `Guru`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Id_Jadwal`),
  ADD KEY `FK_jadwal_Guru` (`NIP_Jadwal`),
  ADD KEY `FK_jadwal_ruangan` (`Kode_Ruangan_Jadwal`),
  ADD KEY `FK_jadwal_matapelajaran` (`Kode_matapelajaran_Jadwal`),
  ADD KEY `FK_jadwal_jurusan` (`Kode_Jurusan_Jadwal`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`Kode_Jurusan`) USING BTREE;

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NISN`),
  ADD KEY `FK_siswa_jurusan` (`kode_jurusan_Siswa`);

--
-- Indeks untuk tabel `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`Kode_matapelajaran`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`Id_Nilai`),
  ADD KEY `FK_nilai_siswa` (`NISN_Nilai`),
  ADD KEY `FK_nilai_matapelajaran` (`Kode_matapelajaran_Nilai`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`Kode_Ruangan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_User`),
  ADD KEY `FK_user_usergroup` (`Id_Usergroup_User`);

--
-- Indeks untuk tabel `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`Id_Usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `Id_Jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `Id_Nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `Id_Usergroup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_jadwal_Guru` FOREIGN KEY (`NIP_Jadwal`) REFERENCES `Guru` (`NIP`),
  ADD CONSTRAINT `FK_jadwal_jurusan` FOREIGN KEY (`Kode_Jurusan_Jadwal`) REFERENCES `jurusan` (`Kode_Jurusan`),
  ADD CONSTRAINT `FK_jadwal_matapelajaran` FOREIGN KEY (`Kode_matapelajaran_Jadwal`) REFERENCES `matapelajaran` (`Kode_matapelajaran`),
  ADD CONSTRAINT `FK_jadwal_ruangan` FOREIGN KEY (`Kode_Ruangan_Jadwal`) REFERENCES `ruangan` (`Kode_Ruangan`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK_siswa_jurusan` FOREIGN KEY (`kode_jurusan_Siswa`) REFERENCES `jurusan` (`Kode_Jurusan`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `FK_nilai_siswa` FOREIGN KEY (`NISN_Nilai`) REFERENCES `siswa` (`NISN`),
  ADD CONSTRAINT `FK_nilai_matapelajaran` FOREIGN KEY (`Kode_matapelajaran_Nilai`) REFERENCES `matapelajaran` (`Kode_matapelajaran`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_usergroup` FOREIGN KEY (`Id_Usergroup_User`) REFERENCES `usergroup` (`Id_Usergroup`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
