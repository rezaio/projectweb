-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jul 2022 pada 08.21
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 2, 'lowongan-pekerjaan-pt-trimarganusantara-indonesia', 'Lowongan pekerjaan PT trimarganusantara indonesia', 'lowongan-pekerjaan-pt-trimarga-nusantara-indonesia', '<h3>Hallo Sobat Puskar, PT. Trimarga Nusantara Indonesia sedang membuka Lowongan Pekerjaan untuk mengisi posisi&nbsp;Agronomist dan Field Assistant. Yuk Raih Kesempatanmu untuk berkarir bersama PT. Trimarga Nusantara Indah..<br /><br /></h3>', 'Publish', 'Berita', '', 'flayer-723x1024.jpg', '', 5, '2019-05-13 15:51:51', '2019-05-13 15:51:00', '2022-07-06 06:33:29'),
(3, 1, 5, 'program-kerja', 'Program Kerja', 'Program Kerja UPT pusat karir polinela', '<h3><strong>Program Kerja</strong></h3>\r\n<p>Guna menunjang Program Kerja Direktur Politeknik Negeri Lampungdalam mewujudkan visi, misi dan tujuan Unit Pengembangan Teknis Pusat Karir Polinela, maka UPT Pusat Karir Polinela menerapkan beberapa program kerja sebagai berikut</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 191px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\"><strong>NO</strong></td>\r\n<td style=\"width: 48.4293%; height: 19px;\"><strong>Program Kerja</strong></td>\r\n</tr>\r\n<tr style=\"height: 39px;\">\r\n<td style=\"width: 48.4293%; height: 39px;\">&nbsp; &nbsp; &nbsp;1</td>\r\n<td style=\"width: 48.4293%; height: 39px;\">Mengadakan pelatihan dan seminar kewirausahaan bagi mahasiswa Politeknik Negeri Lampung</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;2</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Mengadakan kegiatan Program Kewirausahaan Mahasiswa (PMW)</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;3</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Program rekruitment karyawan perusahaan</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;4</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Menyusun dan menetapkan quisioner&nbsp;<em>tracer study</em></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;5</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Melakukan kegiatan&nbsp;<em>tracer study</em></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;6</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Membuat laporan&nbsp;<em>tracer study</em></td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;7</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Pelatihan&nbsp;<em>soft skill</em>&nbsp;bagi calon alumni&nbsp; Politeknik Negeri Lampung</td>\r\n</tr>\r\n<tr style=\"height: 19px;\">\r\n<td style=\"width: 48.4293%; height: 19px;\">&nbsp; &nbsp; &nbsp;8</td>\r\n<td style=\"width: 48.4293%; height: 19px;\">Melaksanakan Bursa Kerja/<em>Job Fair</em>&nbsp;untuk alumni dan umum</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Profil', '', 'web-development-javawebmedia11.png', 'fa fa-globe', 32, '2019-05-17 04:37:00', '2019-05-17 04:36:00', '2022-07-07 06:18:27'),
(4, 1, 5, 'stuktur-organisasi', 'Stuktur Organisasi', 'Stuktur Organisasi UPT pusat karir polinela', '<p><strong>Job Description</strong></p>\r\n<p>Untuk menunjang kelancaran pelaksanaan kegiatan di UPT. Pusat Karir, maka telah disusun uraian tugas masing-masing bagian sebagai berikut :</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Nama/NIP</strong></td>\r\n<td><strong>Pangkat/Golongan/Jabatan</strong></td>\r\n<td><strong>Uraian Tugas</strong></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Riko Noviadi, S.Pt.,M.P.</p>\r\n<p>197111101999031 004</p>\r\n</td>\r\n<td>Lektor Kepala /IV-a/Ka UPT. Pusat Karir</td>\r\n<td>\r\n<ol>\r\n<li>Menyusun rencana dan program kerja UPT</li>\r\n<li>Merencanakan dan mendistribusikan tugas-tugas UPT kepada sekretraris dan staf administerasi</li>\r\n<li>Mengkoordinasikan pelaksanaan tugas sekretraris dan staf administerasi</li>\r\n<li>Memonitoring pelaksanaan tugas sekretraris dan staf administerasi</li>\r\n<li>Melaksanakan evaluasi atas pelaksanaan tugas sekretraris dan staf administerasi</li>\r\n<li>Melaksanakan pembinaan terhadap pegawai di lingkungan UPT Pusat Karir</li>\r\n<li>Mengajukan usulan dan pertimbangan kepada Direktur yang berhubungan dengan tugas UPT Pusat karir bila dirasa perlu terhadap kebijakan yang diambil baik diminta ataupun tidak</li>\r\n<li>Menyusun laporan tahunan UPT Pusat Karir</li>\r\n<li>Melaksanakan tugas kedinasan lain yang diberikan pimpinan</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Oki Arifin, S.Kom., M.Cs.<br />198910232019031011</td>\r\n<td>Penata Muda/III-b/Sekertaris</td>\r\n<td>\r\n<ol>\r\n<li>Mengkoordinasikan pelaksanaan kegiatan UPT Pusat Karir bersama staf Administerasi.</li>\r\n<li>Mengkoordinasikan pengurusan penerimaan, penggajian, dan promosi karyawan non PNS di UPT Pusat Karir.</li>\r\n<li>Mengkoordinasikan pelaksanaan kegiatan penyusunan laporan tahunan UPT Pusat Karir.</li>\r\n<li>Membantu Ka UPT dalam mengelola keuangan dan menyelesaikan administerasi keungan kegiatan UPT Pusat Karir.</li>\r\n<li>Membantu Ka UPT merencakan dan melaksanakan program kerja UPT</li>\r\n<li>Melaksanakan tugas kedinasan lain yang diberikan pimpinan.</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Ririn Ramadani, A.Md.</td>\r\n<td>Tenaga Kontrak Staf Administerasi</td>\r\n<td>\r\n<ol>\r\n<li>Membantu kegiatan perawatan asset dan fasilitas atas arahan Ka UPT dan atau Sekretaris UPT</li>\r\n<li>Membantu kegiatan inventarisir asset dan fasilitas atas arahan Ka UPT dan atau Sekretaris UPT</li>\r\n<li>Membantu Ka UPT dalam hal penyelesaian administrasi keuangan kegiatan-kegiatan yang menjadi tanggung jawab UPT Pusat Karir</li>\r\n<li>Membantu Ka UPT dalam hal penyelesaian administrasi keuangan operasional bulanan</li>\r\n<li>Melaporkan pelaksanaan kegiatan yang menjadi tanggung jawabnya</li>\r\n<li>Melaksanakan tugas kedinasan lain yang diberikan pimpinan.</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Sandi Utama Putra, A.Md.</td>\r\n<td>Tenaga Kontrak Pendukung IT</td>\r\n<td>\r\n<ol>\r\n<li>Melaksanakan kegiatan di bidang IT dalam setiap kegiatan yang dikakukan oleh UPT Pusat Karir</li>\r\n<li>Melaksanakan tugas kedinasan lain yang diberikan pimpinan</li>\r\n</ol>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Profil', '', 'logo-javawebmedia-square.png', '', 17, '2019-07-26 10:38:15', '2019-07-26 10:36:00', '2022-07-06 14:57:43'),
(6, 1, 7, 'tracer-study', 'Tracer Study', 'Tracer Study UPT pusat karir polinela', '<p>Budidaya Tanaman Pangan</p>\r\n<p>Budidaya Tanaman Perkebunan</p>\r\n<p>Ekonomi dan bisnis</p>\r\n<p>Peternakan</p>\r\n<p>Teknologi Pertanian</p>', 'Publish', 'Layanan', '', 'banner-tracer-website-revisi-1024x254.jpg.crdownload', 'fa fa-palette', 10, '2020-02-13 07:42:56', '2020-02-13 07:41:00', '2022-07-07 06:18:31'),
(7, 1, 2, 'lowongan-pekerjaan-di-pt-sugar-group', 'Lowongan Pekerjaan di PT Sugar Group', 'Lowongan Pekerjaan di PT Sugar Group', '<p>Hallo sobat Puskar, PT. Sugar Group Companies sedang membuka Lowongan Pekerjaan untuk mengisi Staff dan Technical Staff. Yuk Bagi Teman Teman yang memenuhi kualifikasi berikut dapat mendaftarkan dirinya. #pusatkarir #puskarpolinela #lowongankerja</p>', 'Publish', 'Berita', '', 'flyer-160622-723x1024.jpg', '', 6, '2020-02-13 07:45:07', '2020-02-13 07:44:00', '2022-07-06 15:16:39'),
(21, 1, 2, 'rekruitment-pt-sari-segar-husada', 'Rekruitment  PT. Sari Segar Husada', 'Rekruitment kampus PT louis dreyfus company', '<p>Hallo Teman-teman Alumni Polinela, PT. Sari Segar Husada sedang membuka Lowongan Pekerjaan. Bagi Teman-teman alumni yang berminat dan sesuai dengan kualifikasi yang ditentukan dapat mendaftarkan diri.<br /><br />#pusatkarir #puskarpolinela #lowongankerja</p>', 'Publish', 'Berita', '', '123.jpeg', '', 0, '2021-04-24 08:03:21', '1970-01-01 00:00:00', '2022-07-06 15:17:18'),
(24, 1, 6, 'user-survey', 'User Survey', 'User Survey UPT pusat karir polinela', '<h2><span style=\"font-family: \'comic sans ms\', sans-serif;\"><em><strong>Mohon maaf Halaman ini masih dalam tahap pengembangan &hellip;&hellip;</strong></em></span></h2>', 'Publish', 'Layanan', '', 'cropped-logo-puskar-polinela.png', 'fa fa-globe', 6, '2021-04-24 12:06:07', '1970-01-01 00:00:00', '2022-07-06 15:55:24'),
(25, 1, 6, 'tugas-pokok-dan-fungsi', 'Tugas Pokok dan Fungsi', 'Tugas Pokok dan Fungsi', '<p>Berdasarkan Buku Panduan Sistem Pusat Karir Edisi II yang diterbitkan oleh Direktorat Pembelajaran dan Kemahasiswaan (Belmawa) Dirjen Dikti (2012), tugas pokok UPT Pusat Karir adalah:</p>\r\n<ol>\r\n<li><strong>Informasi Lowongan Kerja/karir&nbsp;</strong>(<em>Carrer Vacancy Information</em>)</li>\r\n</ol>\r\n<p>Pusat karir polinela menyediakan informasi karir, pemagangan, beasiswa dan lowongan kerja di berbagai bidang dan lintas perusahaan/industri, dan instansi.</p>\r\n<p><strong>2.&nbsp; Rekrutmen Kampus&nbsp;&nbsp;</strong>(<em>Campus Recruitment</em>)</p>\r\n<p>Pusat karir Polinela memfasilitasi kegiatan presentasi dan sesi informasi tentang peluang kesempatan berkarir di berbagai bidang maupun beasiswa pelatihan/studi lanjutan, serta memfasilitasi pelaksanaan rekrutmen berbagai perusahaan di dalam kampus Polinela.</p>\r\n<p><strong>3. Pelatihan Karir&nbsp;</strong>(<em>Carrer Training</em>)</p>\r\n<p>Pusat karir Polinela memberikan pelatihan karir bagi para pencari kerja khususnya bagi para calon alumni baru Polinela antara lain dalam bentuk Surat Lamaran, Curiculum Vitae, Simulasi Interview, dan Latihan soal psikotes.</p>\r\n<p><strong>4. Bursa Kerja/Job Fair&nbsp;</strong>(<em>Integreted Carrer Days</em>)</p>\r\n<p>Pusat karir polinela secara berkala mengadakan kegiatan akbar hari-hari memburu peluang karir dan bursa kerja yang diadakan pada waktu menjelang wisuda setiap tahunnya. Kegiatan ini merupakan integritas dari kegiatan presentasi dan campus recruitment oleh berbagai perusahaan dalam kurun waktu bersamaan.</p>\r\n<p><strong>5. Pelacakan Alumni&nbsp;</strong>(<em>Tracer Study</em>)</p>\r\n<p>Pusat karir polinela mengembangkan database alumni dan melakukan studi pelacakan/penelusuran alumni untuk mendapatkan berbagai informasi penting dan bermanfaat bagi kepentingan evaluasi relevansi pendidikan Polinela.</p>\r\n<p><strong>6. Survey Pengguna Lulusan&nbsp;</strong>(<em>User Survey</em>)</p>\r\n<p>Pusat Karir Polinela melaksanakan Survey terhadap pengguna lulusan yang&nbsp; bertujuan untuk mengukur kualitas lulusan dari sudut pandang pengguna, apakah kualitas lulusan yang dihasilkan seperti yang diharapkan oleh pengguna.</p>', 'Publish', 'Profil', '', NULL, '', 4, '2022-07-06 21:41:08', '2022-07-06 21:40:00', '2022-07-06 14:57:46'),
(26, 1, 7, 'lomba-karya-ilmiah-mahasiswa-polinela', 'Lomba Karya Ilmiah Mahasiswa Polinela', 'Lomba Karya Ilmiah Mahasiswa Polinela', '<p><strong>Hallo Mahasiswa</strong> Polinela, Politeknik Negeri Lampung Sedang Mengadakan Lomba Karya Ilmiah Mahasiswa nih untuk mahasiswa aktif Polinela. Yuk ikuti dan menangkan hadiahnya. Catat tanggalnya yaa&hellip;<br /><br />Silahkan Upload Proposal kalian di link berikut ini :&nbsp;<a href=\"https://bit.ly/KARYAILMIAHPOLINELA2022\">https://bit.ly/KARYAILMIAHPOLINELA2022</a><br />Download Pedoman Karya Ilmiah Mahasiswa&nbsp;<a href=\"https://drive.google.com/drive/folders/1TzAqGv1y3u2lQdTxoGJxo3BiHHYjRdrO?usp=sharing\">&gt;Disini&lt;</a></p>', 'Publish', 'Berita', '', 'flayer.jpg', '', 1, '2022-07-06 22:32:15', '2022-07-06 22:26:00', '2022-07-06 15:35:57'),
(27, 1, 7, 'open-recruitment-it-bootcamp-oleh-pt-enigma-cipta-humanika', 'Open Recruitment IT Bootcamp Oleh PT Enigma Cipta Humanika', 'open recruitment it bootcamp oleh pt enigma cipta humanika', '<p><span style=\"font-family: \'comic sans ms\', sans-serif;\">Hallo teman-teman Alumni Polinela, PT. Enigma Cipta Humanika atau yang dikenal sebagai Enigma Camp sedang membuka kesempatan nih bagi teman-teman alumni yang mempunyai keinginan menjadi Programmer melalui IT Bootcampnya Enigma Camp. Informasi lebih lanjut mengenai IT Bootcamp yang diadakan oleh Enigma Camp teman-teman dapat Mengunjungi Laman website Enigma Camp berikut&nbsp;<a href=\"https://www.enigmacamp.com/\">https://www.enigmacamp.com/</a>&nbsp;#infopuskar #puskarpolinela #politekniknegerilampung #polinela</span></p>', 'Publish', 'Berita', '', 'POSTINGAN-BOOTCAMP2-768x768.jpg', '', 1, '2022-07-06 22:40:38', '2022-07-06 22:33:00', '2022-07-06 15:40:52'),
(28, 1, 7, 'pengumuman-pembuatan-akun-pkm', 'Pengumuman Pembuatan Akun PKM', 'Pengumuman Pembuatan Akun PKM', '<p>Hallo Sobat Polinela &hellip; Sehubung sudah dibukanya Program Kreativitas Mahasiswa (PKM) Oleh Kementerian Pendidikan,Kebudayaan, Riset, dan Teknologi. Maka dengan ini kami sampaikan batas Penguploadan PKM berakhir pada tanggal 31 Maret 2022. Sehubungan dengan kegiatan diatas untuk Pembuatan Akun Peserta(simbelmawa.kemdikbud.go.id) dapat langsung ke&nbsp;<strong>UPT. Pusat Karir Polinela</strong>&nbsp;pada Hari &amp; Jam Kerja, dimulai Pukul 09.00 sampai 15.00 WIB dengan menyiapkan data berikut :</p>\r\n<ol>\r\n<li>Data Ketua Kelompok (NPM, No Handphone, Email, Program Studi)</li>\r\n<li>Data Anggota Kelompok, min 2, max 4 (NPM, No Handphone, Email, Program &ndash; Studi)</li>\r\n<li>Data Dosen Pendamping (NIDN, No Handphone, Email)</li>\r\n<li>Judul PKM</li>\r\n<li>Skema PKM (PKM Karsa Cipta, PKM Penerapan IPTEK, PKM Pengabdian Kepada Masyarakat, PKM Riset Eksakata, PKM Riset Sosial Humaniora, PKM Karya Inovatif, PKM Video Gagasan Konstruktif, PKM Artikel Ilmiah, PKM Gagasan Futuristik &ndash; Tertulis, PKM Kewirausahaan)</li>\r\n</ol>\r\n<p>Pembuatan Akun PKM Dimulai pada tanggal 14 Maret 2022 dan&nbsp;<strong>Terakhir sampai tanggal 22 Maret 2022, Pukul 15.00 WIB.</strong></p>', 'Publish', 'Berita', '', 'flayer-pengumuman-421x300.jpg', '', 0, '2022-07-06 22:43:08', '2022-07-06 22:42:00', '2022-07-06 15:43:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `isi_testimoni`, `gambar`, `status_client`, `tempat_lahir`, `tanggal_lahir`, `tanggal_post`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'AWS Indonesia', 'Uli Handayani', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', 'https://awsindonesia.org', 'javawebmedia@gmail.com', 'Website Yayasan AWS Indonesia saat ini sudah aktif dan bisa diakses tepat pada waktunya. Semoga selalu sukses ya.', 'Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png', 'Publish', 'JAKARTA', '1962-01-02', '0000-00-00 00:00:00', '2021-04-24 05:14:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal_post`, `tanggal`) VALUES
(4, 1, 1, 'Pedoman', 'Download', '<p>Pedoman Pelatihan Karir</p>', 'cropped-logo-puskar-polinela.png', '', 0, '0000-00-00 00:00:00', '2022-07-06 16:02:18'),
(8, 2, 1, 'Tracer Study', 'Download', '<p>Laporan Tracer Study 2018</p>', 'cropped-logo-puskar-polinela.png', '', 8, '2021-04-24 08:20:48', '2022-07-06 16:01:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(5, 5, 1, 'UPT pusat karir polinela', 'Homepage', '<p>Politeknik negeri lampung</p>', 'bg-web.jpg', 'https://pusatkarir.polinela.ac.id/', NULL, 'Ya', NULL, '2022-07-06 16:11:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 1, 'web-design', 'Web Design', 1, 0, '2021-04-20 22:20:49'),
(2, 1, 'lowongan-kerja', 'Lowongan Kerja', 2, 7, '2022-07-07 06:18:34'),
(5, 1, 'web-programming', 'Web Programming', 5, 8, '2021-05-03 01:17:08'),
(6, 1, 'kursus-web', 'Kursus Web', 2, 6, '2022-07-06 15:18:02'),
(7, 1, 'pengumuman', 'Pengumuman', 6, 7, '2022-07-07 06:18:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-21 00:37:58'),
(2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-21 01:08:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 00:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 00:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 00:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-21 00:44:24'),
(2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-21 00:44:24'),
(3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-21 01:54:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 1, 'UPT pusat karir polinela', 'UPT', 'Politeknik negeri lampung', '<p>Berdasarkan Buku Panduan Sistem Pusat Karir Edisi II yang diterbitkan oleh Direktorat Pembelajaran dan Kemahasiswaan (Belmawa) Dirjen Dikti (2012), tugas pokok UPT Pusat Karir adalah:</p>\r\n<p>Informasi Lowongan Kerja/karir (Carrer Vacancy Information)<br />Pusat karir polinela menyediakan informasi karir, pemagangan, beasiswa dan lowongan kerja di berbagai bidang dan lintas perusahaan/industri, dan instansi.</p>\r\n<p>2. &nbsp;Rekrutmen Kampus &nbsp;(Campus Recruitment)</p>\r\n<p>Pusat karir Polinela memfasilitasi kegiatan presentasi dan sesi informasi tentang peluang kesempatan berkarir di berbagai bidang maupun beasiswa pelatihan/studi lanjutan, serta memfasilitasi pelaksanaan rekrutmen berbagai perusahaan di dalam kampus Polinela.</p>\r\n<p>3. Pelatihan Karir (Carrer Training)</p>\r\n<p>Pusat karir Polinela memberikan pelatihan karir bagi para pencari kerja khususnya bagi para calon alumni baru Polinela antara lain dalam bentuk Surat Lamaran, Curiculum Vitae, Simulasi Interview, dan Latihan soal psikotes.</p>\r\n<p>4. Bursa Kerja/Job Fair (Integreted Carrer Days)</p>\r\n<p>Pusat karir polinela secara berkala mengadakan kegiatan akbar hari-hari memburu peluang karir dan bursa kerja yang diadakan pada waktu menjelang wisuda setiap tahunnya. Kegiatan ini merupakan integritas dari kegiatan presentasi dan campus recruitment oleh berbagai perusahaan dalam kurun waktu bersamaan.</p>\r\n<p>5. Pelacakan Alumni (Tracer Study)</p>\r\n<p>Pusat karir polinela mengembangkan database alumni dan melakukan studi pelacakan/penelusuran alumni untuk mendapatkan berbagai informasi penting dan bermanfaat bagi kepentingan evaluasi relevansi pendidikan Polinela.</p>\r\n<p>6. Survey Pengguna Lulusan (User Survey)</p>\r\n<p>Pusat Karir Polinela melaksanakan Survey terhadap pengguna lulusan yang &nbsp;bertujuan untuk mengukur kualitas lulusan dari sudut pandang pengguna, apakah kualitas lulusan yang dihasilkan seperti yang diharapkan oleh pengguna.</p>', 'Pusat karir politeknik negeri lampung', 'pusatkarirpolinela.com', 'pusatkarirpolinela@gmail.com', 'pusatkarirpolinela@gmail.com', '<p>J6RM+CC6, Rajabasa Raya, Kec. Rajabasa, Kota Bandar Lampung, Lampung 35142<br></p>', '+6285715100487', '+6281210697899', 'cropped-puskar-semarak-diesnatalis.png', 'cropped-puskar-semarak-diesnatalis.png', 'UPT pusat karir polinela', '', '', '', '', '', '', '', '', '', '', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2022-07-06 14:27:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 'admin', 'rezaoktario77@gmail.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Admin', NULL, '1657089678_4db2033379b11b0268b4.jpg', '', '2019-10-12 15:50:21', '2022-07-06 16:06:58'),
(3, 'Kheira Alexandrina', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', 'User', NULL, NULL, '<p>adada</p>', '2019-10-12 14:10:05', '2021-04-21 01:07:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
--

CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`id_user_log`, `id_user`, `ip_address`, `username`, `url`, `tanggal_updates`) VALUES
(1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-03 01:19:34'),
(2, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 03:54:34'),
(3, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 03:54:48'),
(4, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 03:54:53'),
(5, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 03:55:00'),
(6, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2022-07-06 03:56:13'),
(7, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 04:12:49'),
(8, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/panduan', '2022-07-06 04:12:59'),
(9, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/7', '2022-07-06 04:13:06'),
(10, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/7', '2022-07-06 04:13:06'),
(11, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/7', '2022-07-06 04:13:06'),
(12, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/7', '2022-07-06 04:13:06'),
(13, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/7', '2022-07-06 04:13:06'),
(14, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video', '2022-07-06 04:14:05'),
(15, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video/delete/3', '2022-07-06 04:21:18'),
(16, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video', '2022-07-06 04:21:18'),
(17, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 04:28:56'),
(18, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 04:29:02'),
(19, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 04:29:05'),
(20, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 04:29:12'),
(21, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2022-07-06 04:29:29'),
(22, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2022-07-06 04:29:44'),
(23, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2022-07-06 04:29:44'),
(24, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/logo', '2022-07-06 04:29:49'),
(25, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 04:47:57'),
(26, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 04:48:04'),
(27, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/12', '2022-07-06 04:48:47'),
(28, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 04:48:59'),
(29, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 04:49:07'),
(30, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2022-07-06 04:49:17'),
(31, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 04:58:10'),
(32, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:36'),
(33, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(34, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(35, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(36, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(37, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(38, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(39, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/unduh/6', '2022-07-06 04:58:37'),
(40, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/7', '2022-07-06 04:58:40'),
(41, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 04:58:48'),
(42, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori_galeri', '2022-07-06 04:58:56'),
(43, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 04:59:04'),
(44, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 05:24:47'),
(45, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 05:33:39'),
(46, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 05:33:41'),
(47, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2022-07-06 05:34:01'),
(48, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 06:08:19'),
(49, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 06:08:35'),
(50, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 06:09:03'),
(51, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 06:09:03'),
(52, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 06:23:23'),
(53, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 06:27:11'),
(54, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 06:27:12'),
(55, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/delete/22', '2022-07-06 06:28:32'),
(56, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 06:28:32'),
(57, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/1', '2022-07-06 06:31:22'),
(58, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/1', '2022-07-06 06:33:29'),
(59, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 06:33:30'),
(60, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 06:35:37'),
(61, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 06:36:39'),
(62, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 06:36:39'),
(63, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 06:38:01'),
(64, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 06:38:30'),
(65, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 06:38:30'),
(66, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 06:40:16'),
(67, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/panduan', '2022-07-06 06:40:30'),
(68, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:40:37'),
(69, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:41:18'),
(70, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:41:22'),
(71, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:41:26'),
(72, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:41:28'),
(73, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:41:30'),
(74, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:42:37'),
(75, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:44:37'),
(76, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 06:44:40'),
(77, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2022-07-06 06:44:44'),
(78, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2022-07-06 06:44:48'),
(79, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2022-07-06 06:44:56'),
(80, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2022-07-06 06:44:56'),
(81, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/icon', '2022-07-06 06:45:00'),
(82, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 06:50:34'),
(83, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 06:50:39'),
(84, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:51:07'),
(85, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:51:22'),
(86, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:51:25'),
(87, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 06:51:30'),
(88, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:52:02'),
(89, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:52:45'),
(90, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 06:53:40'),
(91, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 06:55:00'),
(92, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 06:56:51'),
(93, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 06:56:58'),
(94, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:20:22'),
(95, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:20:23'),
(96, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 07:20:48'),
(97, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:20:53'),
(98, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:21:00'),
(99, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:21:06'),
(100, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/kategori_staff', '2022-07-06 07:21:10'),
(101, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2022-07-06 07:21:14'),
(102, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:21:24'),
(103, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:21:44'),
(104, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:21:46'),
(105, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:22:08'),
(106, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:32:01'),
(107, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:32:52'),
(108, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:35:31'),
(109, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:35:36'),
(110, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:35:58'),
(111, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 07:36:06'),
(112, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 07:37:37'),
(113, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/delete/2', '2022-07-06 07:37:51'),
(114, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 07:37:51'),
(115, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/delete/23', '2022-07-06 07:37:59'),
(116, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 07:37:59'),
(117, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:38:03'),
(118, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:38:09'),
(119, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:38:52'),
(120, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:38:52'),
(121, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:39:45'),
(122, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:39:51'),
(123, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:39:51'),
(124, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:41:41'),
(125, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 07:41:48'),
(126, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:41:48'),
(127, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/4', '2022-07-06 07:42:22'),
(128, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:42:22'),
(129, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/13', '2022-07-06 07:42:26'),
(130, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:42:27'),
(131, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/12', '2022-07-06 07:42:31'),
(132, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:42:31'),
(133, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/10', '2022-07-06 07:42:39'),
(134, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:42:39'),
(135, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/9', '2022-07-06 07:43:56'),
(136, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:43:56'),
(137, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri/delete/8', '2022-07-06 07:44:00'),
(138, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/galeri', '2022-07-06 07:44:01'),
(139, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:47:29'),
(140, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:47:43'),
(141, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 07:48:32'),
(142, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2022-07-06 07:48:50'),
(143, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2022-07-06 07:49:23'),
(144, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi/seo', '2022-07-06 07:49:24'),
(145, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 07:49:30'),
(146, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:49:43'),
(147, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:51:13'),
(148, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:51:16'),
(149, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2022-07-06 07:53:31'),
(150, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff/delete/10', '2022-07-06 07:53:39'),
(151, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2022-07-06 07:53:39'),
(152, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff/delete/9', '2022-07-06 07:53:42'),
(153, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2022-07-06 07:53:42'),
(154, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/staff', '2022-07-06 07:53:56'),
(155, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 07:54:20'),
(156, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 07:55:08'),
(157, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:55:12'),
(158, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:55:20'),
(159, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 07:56:15'),
(160, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 07:56:21'),
(161, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 07:56:33'),
(162, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2022-07-06 07:56:44'),
(163, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 07:56:48'),
(164, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 07:58:15'),
(165, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 08:03:51'),
(166, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 08:07:55'),
(167, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 08:07:55'),
(168, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 08:08:03'),
(169, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 08:08:27'),
(170, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 08:08:27'),
(171, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:14:50'),
(172, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:25:53'),
(173, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:25:55'),
(174, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:26:04'),
(175, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:26:04'),
(176, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:26:23'),
(177, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:27:28'),
(178, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 08:28:10'),
(179, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 14:26:59'),
(180, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 14:27:02'),
(181, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 14:27:05'),
(182, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 14:27:42'),
(183, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 14:27:42'),
(184, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 14:28:02'),
(185, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 14:28:06'),
(186, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 14:28:23'),
(187, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 14:28:26'),
(188, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 14:28:29'),
(189, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video', '2022-07-06 14:34:59'),
(190, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video/delete/2', '2022-07-06 14:37:19'),
(191, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video', '2022-07-06 14:37:19'),
(192, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video/edit/1', '2022-07-06 14:37:47'),
(193, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video/edit/1', '2022-07-06 14:38:22'),
(194, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/video', '2022-07-06 14:38:22'),
(195, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 14:38:54'),
(196, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 14:40:07'),
(197, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 14:41:08'),
(198, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:41:08'),
(199, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:41:32'),
(200, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:41:47'),
(201, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:41:47'),
(202, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 14:41:51'),
(203, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 14:42:04'),
(204, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:42:04'),
(205, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:48:59'),
(206, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:53:54'),
(207, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:53:54'),
(208, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:54:06'),
(209, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:55:39'),
(210, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:55:39'),
(211, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:56:11'),
(212, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:56:49'),
(213, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:56:49'),
(214, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:57:01'),
(215, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 14:57:32'),
(216, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 14:57:32'),
(217, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 14:58:11'),
(218, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 15:02:11'),
(219, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 15:02:11'),
(220, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 15:02:23'),
(221, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/3', '2022-07-06 15:02:49'),
(222, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 15:02:50'),
(223, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/4', '2022-07-06 15:03:17'),
(224, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Profil', '2022-07-06 15:03:23'),
(225, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/client', '2022-07-06 15:04:02'),
(226, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 15:06:10'),
(227, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 15:16:11'),
(228, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/7', '2022-07-06 15:16:39'),
(229, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:16:39'),
(230, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 15:17:07'),
(231, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/21', '2022-07-06 15:17:18'),
(232, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:17:19'),
(233, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:23:04'),
(234, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:26:52'),
(235, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:32:15'),
(236, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:32:15'),
(237, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:33:10'),
(238, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:40:38'),
(239, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:40:38'),
(240, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:42:03'),
(241, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/tambah', '2022-07-06 15:43:08'),
(242, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:43:08'),
(243, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/28', '2022-07-06 15:43:27'),
(244, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/28', '2022-07-06 15:43:33'),
(245, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Berita', '2022-07-06 15:43:33'),
(246, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 15:45:10'),
(247, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2022-07-06 15:49:18'),
(248, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/24', '2022-07-06 15:50:26'),
(249, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Layanan', '2022-07-06 15:50:27'),
(250, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/6', '2022-07-06 15:51:44'),
(251, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/edit/6', '2022-07-06 15:55:16'),
(252, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita/jenis_berita/Layanan', '2022-07-06 15:55:17'),
(253, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:56:06'),
(254, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/delete/3', '2022-07-06 15:57:28'),
(255, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:57:28'),
(256, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/delete/5', '2022-07-06 15:57:35'),
(257, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:57:35'),
(258, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/delete/6', '2022-07-06 15:57:44'),
(259, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:57:44'),
(260, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/delete/7', '2022-07-06 15:57:50'),
(261, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:57:50'),
(262, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 15:58:48'),
(263, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 15:59:01'),
(264, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 15:59:13'),
(265, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 15:59:13'),
(266, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 15:59:28'),
(267, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:00:22'),
(268, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:00:29'),
(269, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:00:40'),
(270, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 16:00:41'),
(271, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:00:54'),
(272, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:01:13'),
(273, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/8', '2022-07-06 16:01:23'),
(274, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 16:01:23'),
(275, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/4', '2022-07-06 16:01:32'),
(276, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download/edit/4', '2022-07-06 16:02:18'),
(277, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/download', '2022-07-06 16:02:18'),
(278, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:02:44'),
(279, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:02:49'),
(280, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:03:14'),
(281, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:03:15'),
(282, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:03:19'),
(283, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:03:22'),
(284, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 16:03:24'),
(285, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/akun', '2022-07-06 16:03:27'),
(286, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2022-07-06 16:03:41'),
(287, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/berita', '2022-07-06 16:04:14'),
(288, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/konfigurasi', '2022-07-06 16:04:23'),
(289, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:04:24'),
(290, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/delete/2', '2022-07-06 16:04:34'),
(291, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:04:34'),
(292, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:04:39'),
(293, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:04:55'),
(294, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:05:00'),
(295, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:05:06'),
(296, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:05:18'),
(297, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:05:21'),
(298, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:05:28'),
(299, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/user', '2022-07-06 16:05:28'),
(300, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2022-07-06 16:06:28'),
(301, 1, '::1', 'admin', 'http://localhost/webci4/admin/user', '2022-07-06 16:06:33'),
(302, 1, '::1', 'admin', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:06:36'),
(303, 1, '::1', 'admin', 'http://localhost/webci4/admin/user/edit/1', '2022-07-06 16:06:58'),
(304, 1, '::1', 'admin', 'http://localhost/webci4/admin/user', '2022-07-06 16:06:58'),
(305, 1, '::1', 'admin', 'http://localhost/webci4/admin/dasbor', '2022-07-06 16:07:09'),
(306, 1, '::1', 'admin', 'http://localhost/webci4/admin/staff', '2022-07-06 16:07:22'),
(307, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2022-07-06 16:07:24'),
(308, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/delete/5', '2022-07-06 16:07:30'),
(309, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2022-07-06 16:07:30'),
(310, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/delete/3', '2022-07-06 16:07:40'),
(311, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2022-07-06 16:07:40'),
(312, 1, '::1', 'admin', 'http://localhost/webci4/admin/client/edit/2', '2022-07-06 16:07:43'),
(313, 1, '::1', 'admin', 'http://localhost/webci4/admin/client', '2022-07-06 16:07:48'),
(314, 1, '::1', 'admin', 'http://localhost/webci4/admin/video', '2022-07-06 16:07:51'),
(315, 1, '::1', 'admin', 'http://localhost/webci4/admin/video/edit/1', '2022-07-06 16:07:58'),
(316, 1, '::1', 'admin', 'http://localhost/webci4/admin/video/edit/1', '2022-07-06 16:08:05'),
(317, 1, '::1', 'admin', 'http://localhost/webci4/admin/video', '2022-07-06 16:08:05'),
(318, 1, '::1', 'admin', 'http://localhost/webci4/admin/download', '2022-07-06 16:08:13'),
(319, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2022-07-06 16:08:16'),
(320, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/7', '2022-07-06 16:08:33'),
(321, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2022-07-06 16:08:37'),
(322, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/delete/7', '2022-07-06 16:08:41'),
(323, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2022-07-06 16:08:41'),
(324, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 16:10:16'),
(325, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 16:10:32'),
(326, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2022-07-06 16:10:32'),
(327, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 16:11:30'),
(328, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri/edit/5', '2022-07-06 16:11:36'),
(329, 1, '::1', 'admin', 'http://localhost/webci4/admin/galeri', '2022-07-06 16:11:37'),
(330, 1, '::1', 'admin', 'http://localhost/project_web/admin/dasbor', '2022-07-07 06:20:27'),
(331, 1, '::1', 'admin', 'http://localhost/project_web/admin/galeri', '2022-07-07 06:20:48'),
(332, 1, '::1', 'admin', 'http://localhost/project_web/admin/galeri/tambah', '2022-07-07 06:21:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_user`, `judul`, `keterangan`, `video`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 'Kisah Sukses Alumni Polinela Bertani Hdroponik', 'Kisah Sukses Alumni Polinela Bertani Hdroponik', 'XRdaybMaJI', '0000-00-00 00:00:00', '2022-07-06 16:08:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id_user_log`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
