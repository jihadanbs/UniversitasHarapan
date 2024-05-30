-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Jul 2023 pada 10.04
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Her-Registrasi/Pembayaran SPP Tetap', '2023-08-11 17:00:00', 'Mahasiswa Wajib Membayar SPP Tetap, Yang Telah di Tentukan Sebagaimana Mestinya.\r\n', '2023-08-12', '2023-08-24', 'AMIKOM Yogyakarta', '00.00 - 23.59 WIB', 'Dapat di Lakukan Secara Online Maupun Offline', 'Jihadan Beckhianosyuhada'),
(3, 'Ujian Akhir Semester', '2023-07-17 07:00:00', 'Berakhirnya semester genap tahun pelajaran 2022 - 2023, ditandai dengan ujian akhir semester', '2023-07-17', '2023-07-28', 'AMIKOM Yogyakarta', '07.30 - 16.00 WIB', 'Setiap Mahasiswa Diwajibkan Untuk Berpenampilan Rapih ', 'Jihadan Beckhianosyuhada'),
(4, 'Libur Perkuliahan\r\n', '2023-07-30 17:00:00', 'Libur Perkuliahan Semester Genap Tahun Ajaran 2022 - 2023', '2023-07-31', '2023-09-02', '-', '-', 'Bebas', 'Jihadan Beckhianosyuhada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Suasana Dalam Kelas', '2023-07-17 05:47:01', 10, 'admin', 3, '461b984b7b560ca1eb54f8c097cc22bc.jpeg'),
(6, 'Gedung Utama', '2023-07-17 05:56:17', 10, 'admin', 3, '151b208827292d21027e11a1f1f20294.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'Cara Menginstalasi Codeigniter', 'Instalasi Codeigniter', '2023-07-16 08:57:28', 'Reissa Giana Azaria (21.12.1878)', 0, '0efdcaaaf2700c068449096d9023458e.pdf'),
(14, 'Cara Menggunakan Tempate AdminLTE', 'Template AdminLTE', '2023-07-16 09:05:12', 'Nurivana Anggraini Putri (21.12.1894)', 0, '7df55065f035d78d119aef6464c59635.pdf'),
(15, '7 Tips Menaikkan Followers Instagram', 'Tips and Tricks Grow Up Instagram', '2023-07-16 09:29:26', 'Lisia Zahwa Alifa (21.12.1879)', 0, '4f76d06e0fe80eec325fabebef943751.pdf'),
(16, 'Rekomendasi Pantai di Gunung Kidul', 'Pantai di Gunung Kidul', '2023-07-16 09:50:45', 'Chintia Devi Agita (21.12.1908)', 0, 'e68ce2eeae32b5dfc9c83fbb160f82b0.pdf'),
(17, 'Rekomendasi Makanan di Jogja', 'Rekomendasi makanan jogja', '2023-07-16 09:57:36', 'Aurelia Silvianabilla (21.12.1876)', 0, 'f5f8b04a9140f5bdee2eb94945826c1d.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(19, 'Pembelajaran Materi Teknik Industri', '2023-07-17 05:47:43', '393a745757a36ebc1ce8dbc1cdecfac4.jpeg', 5, 10, 'admin'),
(20, 'Foto Bersama Satu Kelas', '2023-07-17 05:49:56', '90b6711f8175604e423b84cde99fad24.jpg', 5, 10, 'admin'),
(21, 'Proses Pembelajaran Analisis', '2023-07-17 05:50:43', '3069efcdbf4c3a2cd5e0520939b8f1d6.jpg', 5, 10, 'admin'),
(22, 'Gedung  Tampak Belakang', '2023-07-17 05:57:04', '5fb77949dcb33a840cc82367fcc46157.jpg', 6, 10, 'admin'),
(23, 'Tampak Gedung Utama', '2023-07-17 05:57:33', '03a2f6ce228a029a8fdbe4adda1a9bf3.jpg', 6, 10, 'admin'),
(24, 'Tampak Gedung Dari Jalan', '2023-07-17 05:58:17', 'dd2f1619bfda7dac85b3052bbaa97eb8.jpg', 6, 10, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(2, 'SI069', 'Lia Ayu Ivanjelita, M.Kom', 'P', 'Yogyakarta', '25 September 1989', 'Statistika - Teori', NULL, '2017-01-26 13:38:54'),
(3, 'SI013', 'Netci Hesvindrati, SE, M.Kom', 'P', 'Yogyakarta', '25 September 1989', 'Bahasa Inggris II', NULL, '2017-01-26 13:41:20'),
(4, 'SI150', 'Nuri Cahyono, M.Kom', 'L', 'Yogyakarta', '25 September 1989', 'Pemasaran Digital', NULL, '2017-01-26 13:42:08'),
(5, 'SI097', 'Mei P Kurniawan, M.Kom', 'L', 'Yogyakarta', '27 September 1993', 'Character & Team Work Building', NULL, '2017-01-26 13:42:48'),
(6, 'SI032', 'Niken Larasati, S.Kom, M.Eng', 'P', 'Yogyakarta', '25 September 1993', 'Jaringan Komputer', NULL, '2017-01-26 13:43:46'),
(8, 'SI079', 'Petra Surya Mega Wijaya, M.Si', 'L', 'Yogyakarta', '27 September 1994', 'Pendidikan Kewarganegaraan', NULL, '2017-01-27 04:28:23'),
(9, 'SI148', 'Ika Nur Fajri, M.Kom', 'L', 'Yogyakarta', '24 September 1980', 'Digital Business', NULL, '2023-06-30 15:14:50'),
(10, 'SI151', 'Ria Andriani, M.Kom', 'P', 'Bali', '24 September 1979', 'Komunikasi dan Negosiasi', NULL, '2023-06-30 15:16:42'),
(11, 'SI069', 'Alfie Nur Rahmi, M.Kom', 'P', 'Yogyakarta', '24 September 1979', 'Statistika - Praktikum', NULL, '2023-06-30 15:17:53'),
(12, 'SI68', 'Bety Wulandari, M.Kom', 'P', 'Yogyakarta', '24 September 1980', 'Analisis dan Perancangan Sistem Informasi', NULL, '2023-07-16 08:09:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(10, 'Jihadan Beckhianosyuhada', 'jihadanbs11@gmail.com', '088215178312', 'Website yang menarik', '2023-07-16 17:45:59', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas 21SI01'),
(2, 'Kelas 21SI02'),
(3, 'Kelas 21SI03'),
(4, 'Kelas 21SI04'),
(5, 'Kelas 21SI05'),
(6, 'Kelas 21SI06'),
(7, 'Kelas 21TI01'),
(8, 'Kelas 21TI02'),
(9, 'Kelas 21TI03'),
(10, 'Kelas 21TI04'),
(11, 'Kelas 21TI05'),
(12, 'Kelas 21TI06'),
(13, 'Kelas 21TI07'),
(14, 'Kelas 21BCIS01'),
(15, 'Kelas 21BCIS02'),
(16, 'Kelas 21BCIS03'),
(17, 'Kelas 21BCIS04'),
(18, 'Kelas 21BCIS05'),
(19, 'Kelas 21BCIS06'),
(20, 'Kelas 21BCIS07'),
(21, 'Kelas Transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'Jihadan Beckhianosyuhada', 'jihadanb@gmail.com', 'Menarik Sekali', '2023-06-30 18:26:38', '1', 25, 0),
(8, 'jihadanbs', 'jihadanbs11@gmail.com', ' apa ini', '2023-07-16 16:14:15', '1', 28, 0),
(9, 'Jihadan Beckhianosyuhada', 'jihadanbeckhianosyuhada@students.amikom.ac.id', ' Semangat Guysss', '2023-07-16 16:22:26', '1', 24, 0),
(10, 'admin', '', 'Sukses yaaa', '2023-07-16 16:23:02', '1', 24, 9),
(11, 'Rangga Aldi Rikardo', 'ranggaaldy@gmail.com', ' Anjayyyy Keren Min', '2023-07-16 16:47:30', '1', 22, 0),
(12, 'admin', '', 'Iya Dong UH Gitu Lohhh Heheh', '2023-07-16 16:48:04', '1', 22, 11),
(13, 'Umar', 'Umar11@gmail.com', ' Jadi Tertarik Nih Masuk UH', '2023-07-16 17:01:15', '1', 22, 0),
(14, 'admin', '', 'Wajib Dong..', '2023-07-16 17:02:30', '1', 22, 13),
(15, 'Khalif Darmasatria', 'khalif@gmail.com', ' Informasi Seperti Ini Sangat Menarik Untuk Saya', '2023-07-16 18:23:11', '1', 29, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(10, 'admin', 'semangat hidup', 'L', 'admin1', 'admin123', 'admin aja', 'admin@gmail.com', '088215178312', 'adminganteng1', 'adminganteng1', 'adminganteng1', 'adminganteng1', 1, '1', '2023-07-16 08:04:09', '200237b52d23bb230f87c1976549c35b.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(3, 'Pengumuman Pelaksanaan Ujian Akhir Semester 2023/2034', 'Dilaksanakan Ujian Akhir Semester Ganjil Th Ajaran 2023/2024 Tanggal 17 Juli 2023 - 29 Juli 2023\r\n', '2023-07-16 17:00:00', 'admin'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Ganjil Tahun Ajaran 2023-2024', 'Setelah libur semester genap tahun ajaran 2022-2023, proses belajar mengajar di semester ganjil tahun ajaran 2023-2024 mulai aktif kembali tanggal 4 September 2023.', '2023-09-04 00:00:00', 'admin'),
(5, 'Pelaksanaan HimMaSi', 'Kegiatan Organisasi Mahasiswa Sistem Informasi', '2023-07-16 08:38:22', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-01-29 00:57:59', '127.0.0.1', 'Firefox'),
(932, '2023-06-23 14:59:10', '::1', 'Chrome'),
(933, '2023-06-24 05:41:53', '::1', 'Chrome'),
(934, '2023-06-28 06:09:19', '::1', 'Chrome'),
(935, '2023-06-28 14:06:02', '127.0.0.1', 'Firefox'),
(936, '2023-06-28 17:00:03', '::1', 'Chrome'),
(937, '2023-06-30 14:32:43', '::1', 'Chrome'),
(938, '2023-06-30 17:39:11', '::1', 'Chrome'),
(939, '2023-07-07 15:44:32', '::1', 'Chrome'),
(940, '2023-07-09 05:00:23', '::1', 'Chrome'),
(941, '2023-07-11 13:16:41', '::1', 'Chrome'),
(942, '2023-07-11 17:03:39', '::1', 'Chrome'),
(943, '2023-07-16 07:40:56', '::1', 'Chrome'),
(944, '2023-07-16 17:00:07', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(2, '21.12.1882', 'Rangga Aldi Rikardo', 'L', 1, '7457f825a03c5a84b631e578b534fc80.png'),
(4, '21.12.1860', 'I Wayan Aditya Prayana Putra', 'L', 1, '60b6371ff12bcefc77de8ab6881d7e9f.png'),
(5, '21.12.1866', 'Christian G Orno', 'L', 1, 'f9cf1240bf68bb1cd3d6581e1e9cc4e1.png'),
(6, '21.12.1878', 'Reissa Giana Azaria', 'P', 1, '8b0175db9e8993f534ceb2d096071f78.png'),
(7, '21.12.1894', 'Nurivana Anggraini Putri', 'P', 1, 'fd8a224ff243385834b1ab237a07320c.png'),
(8, '21.12.1879', 'Lisia Zahwa Alifa', 'P', 1, '0472d1132602b15f8a6066e0170fc34b.png'),
(9, '21.12.1908', 'Chintia Devi Agita', 'P', 1, 'b0f4844068dcd33c80d2cc2a9fe019f0.png'),
(10, '21.12.1876', 'Aurelia Silvianabilla', 'P', 1, '1f21d6e184636766880f7cbaad48f8a6.png'),
(11, '21.12.1880', 'Basrian Burhan Utomo', 'L', 1, 'bd4fe5db7554b21089ca53506eb9b5fd.png'),
(13, '21.12.1862', 'Jihadan Beckhianosyuhada', 'L', 1, 'ba9fc400446a1a93d96af519c38496c5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Manfaat Literasi Bagi Mahasiswa', '<p>Literasi merupakan kata yang sangat akrab di telinga kita akhir-akhir ini. Hampir setiap forum dan diskusi selalu terselip kata literasi. Kata literasi menjadi salah satu kata yang identik dengan kesan terpelajar. Bahkan literasi menjadi salah satu parameter penilaian terhadap mahasiswa dan sistem belajar yang diberikan oleh dosen&nbsp;di kelas.&nbsp;</p>\r\n\r\n<p>Saat ini, kemampuan literasi sangat diperlukan guna menyaring informasi secara akurat. Mengingat sekarang banyak masyarakat terutama&nbsp;<em>netizen</em>&nbsp;kerap menelan mentah-mentah informasi yang didapatkan tanpa mencari tahu kebenaran dan keakuratan dari informasi tersebut. Terkadang menimbulkan polarisasi di tengah masyarakat, bahkan mengarah pada perpecahan. &nbsp;Maka pemahaman literasi harus diberikan sejak dini baik melalui pendidikan formal maupaun informal agar pemahaman tersebut dapat ekpresikan menjadi kecakapan yang bermanfaat.</p>\r\n\r\n<p>Literasi tentu memiliki manfaat yang sangat banyak, terutama di tengah gempuran informasi di era digital seperti saat ini. Berikut beberapa manfaat literasi yang dapat di peroleh sebagai berikut:</p>\r\n\r\n<p>1) Memperkaya perbendaharaan kata &ldquo;kosa kata&rdquo;&nbsp;</p>\r\n\r\n<p>2) Mengoptimalkan kinerja otak karena sering digunakan untuk kegiatan membaca dan menulis</p>\r\n\r\n<p>3) Memperluas wawasan dan memperoleh informasi baru&nbsp;</p>\r\n\r\n<p>4) Kemampuan interpersonal seseorang akan semakin baik</p>\r\n\r\n<p>5) Mengasah kemampuan dalam menangkap dan memahami informasi dari bacaan</p>\r\n\r\n<p>6) Meningkatkan kemampuan verbal seseorang</p>\r\n\r\n<p>7) Meningkatkan kepekaan terhadap informasi yang ada di platform media terutama digital</p>\r\n\r\n<p>8) Melatih diri untuk bisa menulis dan merangkai kata dengan baik.</p>\r\n\r\n<p>#UHNumber1</p>\r\n', '2023-07-14 09:24:42', 1, 'Pendidikan', 32, '0a927c6d34dc5560b72f053313f14638.jpg', 10, 'admin', 0, 'manfaat-literasi-bagi-mahasiswa'),
(22, 'Prestasi Membanggakan dari Mahasiswa Universitas Harapan', '<p>Tim pencak silat UH&nbsp;kembali ikuti ajang tingkat nasional, Pekalongan Pencak Silat Open Championship. Tidak tanggung-tanggung tim pencak silat UHB langsung memborong gelar juara pada turnamen yang dilakukan pada 5-6 Februari 2023.</p>\r\n\r\n<p>Perolehan juara yang diraih oleh Tim pencak silat UH&nbsp;adalah ;</p>\r\n\r\n<ul>\r\n	<li>Juara 2 tanding kelas B putri</li>\r\n</ul>\r\n\r\n<p>Diraih oleh Lisia Zahwa Alifa&nbsp;(mahasiswa S1&nbsp;Sistem Informasi)</p>\r\n\r\n<ul>\r\n	<li>Juara 2 tanding kelas A&nbsp;putri</li>\r\n</ul>\r\n\r\n<p>Diraih oleh Raissa Giana Azaria&nbsp;(mahasiswa S1 Sistem Informasi)</p>\r\n\r\n<ul>\r\n	<li>Juara 2 tanding kelas F putri</li>\r\n</ul>\r\n\r\n<p>Diraih Oleh Chintia Devi Agita&nbsp;(mahasiswa S1&nbsp;Sistem Informasi)</p>\r\n\r\n<ul>\r\n	<li>Juara 3 tanding kelas E putri</li>\r\n</ul>\r\n\r\n<p>Diraih oleh Aurelia Silvianabila&nbsp;(mahasiswa S1 Sistem Informasi)</p>\r\n\r\n<ul>\r\n	<li>Juara 3 tanding kelas C putri</li>\r\n</ul>\r\n\r\n<p>Diraih oleh Nurivana Anggraini Putri&nbsp;(mahasiswa S1&nbsp;Sistem Informasi)</p>\r\n\r\n<p>Perolehan ini tidak dapat diraih dengan mudah mengingat para atlet yang berstatus mahasiswa dan harus menyeimbangkan dengan kuliahnya. UH&nbsp;tidak membatasi minat dan bakat serta kreativitas dari mahasiswa, dan selalu mendukung&nbsp; agar mahasiswa mampu meraih yang terbaik.</p>\r\n\r\n<p>Selamat kepada para atlet yang telah meraih juara, semoga mampu mempertahankan atau bahkan menambah Kembali prestasinya. #UHJuara</p>\r\n', '2023-07-12 09:38:21', 6, 'Prestasi', 15, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 10, 'admin', 0, 'prestasi-membanggakan-dari-mahasiswa-universitas-harapan'),
(24, 'Pelaksanaan Ujian Akhir Semester Ganjil Harpa', '<p>Diinformasikan kepada seluruh mahasiswa Universitas Harapan, berikut mekanisme pelaksanaan UAS Ganjil 2023/2024 :</p>\r\n\r\n<ol>\r\n	<li>Soal dapat di download melalui dashboard <a href=\"https://auth.amikom.ac.id/mhs\">https://auth.harpa.ac.id/mhs</a> tanggal 17 Juli 2023 pukul 08.00 WIB secara serentak.</li>\r\n	<li>Perhatikan nama dosen yang tertera di dashboard saat mendownload soal. Jika ada perbedaan, maka silahkan konfirmasikan ke prodi.</li>\r\n	<li>Jika soal tidak dapat di download, silahkan konfirmasikan ke Hotline Pusat Harpa.</li>\r\n	<li>Batas akhir upload lembar jawab adalah sesuai jadwal pelaksanaan ujian di bawah ini :</li>\r\n</ol>\r\n\r\n<p><a href=\"https://blogarch.amikom.ac.id/2022/0124/20220124030918.pdf\" target=\"_blank\">JADWAL UJIAN AKHIR SEMESTER GANJIL 2023 / 202</a>4</p>\r\n\r\n<ol>\r\n	<li>Format file lembar jawab yang diupload yang diijinkan sesuai ketentuan adalah word, excel atau Pdf dengan batas maksimal ukuran file adalah 1MB.</li>\r\n	<li>Jika bentuk / ukuran file diluar ketentuan, maka mahasiswa diijinkan untuk upload di google drive, atau media lainnya (sesuai instruksi soal) . dan yang di upload cukup link nya disertai identitas diri dalam file word / pdf. Terkait hal ini bisa dikomunikasikan dengan dosen pengampu supaya tidak terjadi kesalahan.</li>\r\n	<li>Jika lembar jawab berhasil diupload, maka status kehadiran ujian akan berubah menjadi Hadir. dan sebaliknya.</li>\r\n	<li>Jika status lembar jawab ada tanda silang merah, berarti dosen belum mengoreksi lembar jawab tersebut.</li>\r\n	<li>Jika status lembar jawab ada tanda centang hijau, maka dosen telah mengoreksi lembar jawab tersebut.</li>\r\n	<li>Karena rentang waktu upload jawaban cukup lama, maka tidak ada lagi alasan tidak ada sinyal, tidak ada kuota, gagal di menit terakhir dll.</li>\r\n</ol>\r\n\r\n<p>Demikian informasi ini kami sampaikan, jika ada hal yang belum jelas, bisa dikonfirmasikan ke daak melalui hotline pusat Harpa&nbsp;: WA 08525-3444-999</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Yogyakarta, 10 Jui 2023</p>\r\n\r\n<p>DAAK</p>\r\n\r\n<p>#HarpaNumber1</p>\r\n', '2023-07-10 09:46:29', 1, 'Pendidikan', 195, 'ea114dc1ec5275560a5ef3238fd04722.jpg', 10, 'admin', 0, 'pelaksanaan-ujian-akhir-semester-ganjil-harpa'),
(29, 'Membangun Komunikasi yang Baik dengan Mahasiswa', '<h2>Komunikasi yang Baik</h2>\r\n\r\n<p>Komunikasi menurut Jenis dan Kelly adalah sebuah proses di mana seorang komunikator berkirim pesan, atau sebutannya stimulus (biasanya dalam bentuk kata-kata maupun tulisan) dengan tujuan mengubah atau membentuk perilaku orang lain maupun khalayak. Hal ini berjalan dengan baik apabila maksud dari komunikator, komunikan paham secara penuh. Atau tidak adanya&nbsp;<em>misspersepsi</em>.</p>\r\n\r\n<h2>Komunikasi antara Guru dengan Siswa</h2>\r\n\r\n<p>Semenjak adanya pandemi di tahun 2020 awal. siswa dan guru kini tidak memiliki banyak waktu untuk melakukan komunikasi secara langsung. Hal itu dapat menyebabkan adanya&nbsp;<em>misspersepsi&nbsp;</em>bagi kedua belah pihak. Untuk itu artikel ini akan menyajikan cara-cara untuk membangun komunikasi yang baik dengan siswa.</p>\r\n\r\n<h3>Cara untuk Meningkatkan Komunikasi yang Baik</h3>\r\n\r\n<ul>\r\n	<li><strong>Melakukan kontak sesering mungkin dengan siswa.</strong></li>\r\n</ul>\r\n\r\n<p>Mungkin, beberapa guru akan kebingungan melakukan hal ini pada saat pandemi. Namun guru tidak perlu khawatir dengan hal tersebut karena saat ini komunikasi dan kontak bisa tetap berjalan dengan baik secara online. Salah satunya dengan menggunakan&nbsp;<em>Learning Management System&nbsp;</em>(LMS). Kamu bisa mendapatkannya di&nbsp;<a href=\"https://campusnet.id/\" target=\"_blank\">https://campusnet.id/</a></p>\r\n\r\n<ul>\r\n	<li><strong>Berikan siswa waktu untuk belajar sendiri</strong></li>\r\n</ul>\r\n\r\n<p>Ada kalanya, siswa tidak harus melulu diajarkan dengan sebuah teori. Tapi juga berlakukan tugas dengan harus menampilkan aksi. Jangan lupa untuk tetap membuat forum diskusi.</p>\r\n\r\n<ul>\r\n	<li><strong>Melakukan 3B (Berhenti, Berpikir, dan Bertanya)</strong></li>\r\n</ul>\r\n\r\n<p>Saat sedang berlangsungnya kegiatan belajar mengajar. Ada baiknya siswa diberikan waktu untuk berhenti belajar sejenak, dan lakukan diskusi ringan. Lalu guru pun harus memberikan pertanyaan-pertanyaan ringan agar kelasnya berjalan dengan aktif dan komunikatif.</p>\r\n\r\n<p>Dengan cara-cara sederhana diatas, siswa akan merasa tidak tertetekan dalam belajar. Juga komunikasi akan berjalan dengan efektif.</p>\r\n\r\n<p>#UHBisa</p>\r\n', '2023-07-16 18:18:35', 1, 'Pendidikan', 10, '3b5b35e5be77ae237183a6744fcce2b7.jpg', 10, 'admin', 0, 'membangun-komunikasi-yang-baik-dengan-mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=945;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
