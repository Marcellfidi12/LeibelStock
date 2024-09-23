-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Sep 2024 pada 03.52
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockleibel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `departement`
--

CREATE TABLE `departement` (
  `id_departemen` int(2) NOT NULL,
  `nama_departement` varchar(10) NOT NULL,
  `kode` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `departement`
--

INSERT INTO `departement` (`id_departemen`, `nama_departement`, `kode`) VALUES
(1, 'MIS', 166),
(2, 'WH', 160),
(3, 'DIS', 144),
(6, 'MTC', 152),
(7, 'MKT', 155);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `contents` text NOT NULL,
  `admin` varchar(20) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_keluar`
--

CREATE TABLE `sbrg_keluar` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `penerima` varchar(35) NOT NULL,
  `keterangan` text NOT NULL,
  `departement` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sbrg_masuk`
--

CREATE TABLE `sbrg_masuk` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sbrg_masuk`
--

INSERT INTO `sbrg_masuk` (`id`, `idx`, `tgl`, `jumlah`, `keterangan`) VALUES
(27, 322, '2024-09-20', 1, ''),
(26, 286, '2024-09-19', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slogin`
--

INSERT INTO `slogin` (`id`, `username`, `password`, `nickname`, `role`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'stock');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sstock_brg`
--

CREATE TABLE `sstock_brg` (
  `idx` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `merk` varchar(40) NOT NULL,
  `stock` int(12) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `lokasi` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sstock_brg`
--

INSERT INTO `sstock_brg` (`idx`, `nama`, `jenis`, `merk`, `stock`, `satuan`, `tgl`, `lokasi`) VALUES
(280, 'mouse logitech', 'mouse cable', 'logitech', 2, 'Unit', '2024-09-19', 'Rak 3'),
(279, 'router board rb-450', 'router board', 'mikrotik', 1, 'Unit', '2024-09-19', 'Rak 3'),
(278, 'paper guide lq-2190', '', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(281, 'epson ribbon cartridge LX-310', 'pita printer', 'epson', 2, 'Unit', '2024-09-19', 'Rak 3'),
(282, 'power supply ', 'power supply jaring', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(283, 'VGA switch', 'VGA switch', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(284, 'VGA cable', 'VGA cable', 'NETLINE', 1, 'Pcs', '2024-09-19', 'Rak 3'),
(285, 'CABLE usb-2.0 to-parallel', 'cable config', '', 1, 'Pcs', '2024-09-19', 'Rak 3'),
(286, 'cable HDMI', 'cable monitor', '', 5, 'Pcs', '2024-09-19', 'Rak 3'),
(287, 'cable sata', 'cable computer', '', 2, 'Pcs', '2024-09-19', 'Rak 3'),
(288, 'modem', 'modem telkomsel', 'telkomsel', 1, 'Unit', '2024-09-19', 'Rak 3'),
(289, 'VGA splitter', 'VGA  splitter', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(290, 'Drum printer laser jet p-1102', 'Drum printer', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(291, 'wifi adapter', 'adapter', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(292, 'cable poe cctv', 'cable poe', '', 4, 'Pcs', '2024-09-19', 'Rak 3'),
(293, 'sandisk memori card 128gb', 'sandiks memori card', '', 2, 'Pcs', '2024-09-19', 'Rak 3'),
(294, 'VGA card on board', 'VGA card', '', 1, 'Pcs', '2024-09-19', 'Rak 3'),
(295, 'traktor LX-310', 'traktor', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(296, 'roller platen LX-310', 'roller platen', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(297, 'RAM DDR 4 8GB', 'RAM DDR', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(298, 'cable gagang telfon', 'kabel gagang telfon', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(299, 'duradus', '', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(300, 'head printer LX-310', 'head printer', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(301, 'gear mekanic LX-310', 'gear mekanic', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(302, 'bracket cctv ezviz', 'bracket cctv', '', 2, 'Unit', '2024-09-19', 'Rak 3'),
(303, 'adaptor monitor 19v 0,84 A', 'adaptor monitor', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(304, 'USB extender 10 m', 'USB ', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(305, 'lan card', 'lan card', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(306, 'wifi wireless router', 'wifi wireless', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(307, 'roset box telfon', 'roset box', '', 3, 'Unit', '2024-09-19', 'Laci'),
(308, 'papper guide LX-310', 'papper guide', '', 1, 'Unit', '2024-09-19', 'Rak 3'),
(309, 'RAM DDR 4 4GB', 'RAM DDR', '', 2, 'Unit', '2024-09-19', 'Laci'),
(310, 'ribbon mask LQ-2190', 'ribbon mask', '', 2, 'Pcs', '2024-09-19', 'Laci'),
(311, 'ribbon mask LX-310', 'ribbon mask', '', 2, 'Pcs', '2024-09-19', 'Laci'),
(326, 'USB C TO VGA/HDMI', 'converter', 'NETLINE', 1, 'Pcs', '2024-09-19', 'Laci'),
(313, 'power supply 450 w', 'power supply', '', 1, 'Unit', '2024-09-19', 'Rak 6'),
(314, 'HDMI to VGA', 'kabel converter', '', 3, 'Unit', '2024-09-19', 'Laci'),
(315, 'epson ribbon cartridge L-42190', 'pita printer', 'epson', 2, 'Unit', '2024-09-19', 'Rak 7'),
(316, 'pita printer LQ-2190', 'pita printer', '', 4, 'Pcs', '2024-09-19', 'Rak 7'),
(317, 'pita printer LX-310', 'pita printer', '', 9, 'Pcs', '2024-09-19', 'Rak 7'),
(318, 'ups', 'ups', 'prollink', 2, 'Unit', '2024-09-19', 'Rak 6'),
(319, 'terminal listrik 4 hole', 'terminal listrik', '', 3, 'Unit', '2024-09-19', 'Rak 2'),
(320, 'terminal listrik 5 hole', 'terminal listrik', '', 2, 'Unit', '2024-09-19', 'Rak 2'),
(321, 'terminal listrik 3 hole', 'terminal listrik', '', 1, 'Unit', '2024-09-19', 'Rak 2'),
(322, 'terminal T listrik', 'terminal T listrik', '', 2, 'Unit', '2024-09-19', 'Rak 2'),
(323, 'Cable Duck 25x25', 'Cable Duck', '', 5, 'Unit', '2024-09-19', 'R. Server Depan'),
(324, 'Aki', 'Aki', '', 4, 'Unit', '2024-09-19', 'Rak 6'),
(327, 'adaptor cctv 12v 3a', 'adaptor cctv', '', 1, 'Unit', '2024-09-19', 'Rak 7');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sstock_brg`
--
ALTER TABLE `sstock_brg`
  ADD PRIMARY KEY (`idx`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `departement`
--
ALTER TABLE `departement`
  MODIFY `id_departemen` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `sbrg_keluar`
--
ALTER TABLE `sbrg_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sbrg_masuk`
--
ALTER TABLE `sbrg_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sstock_brg`
--
ALTER TABLE `sstock_brg`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
