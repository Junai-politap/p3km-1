-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 11.42
-- Versi server: 5.7.33
-- Versi PHP: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p3km`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `poto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `poto`, `created_at`, `updated_at`) VALUES
('9bb82e1a-518a-404a-81a3-1d8814dc319e', 'Super Admin', 'admin', '$2y$12$89gE85kQreMcrHIOb9MFpu.eCyqh7CeKK3LPrGLFtasm2HxmCe.Ny', 'app/admin/1712153495-QfzMS.png', '2024-04-03 07:11:38', '2024-04-03 07:11:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` char(36) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `tanggal_berita` date DEFAULT NULL,
  `detail` text NOT NULL,
  `poto` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `nama_berita`, `tanggal_berita`, `detail`, `poto`, `status`, `created_at`, `updated_at`) VALUES
('9bc01c52-aa9c-4ba1-b9bb-44d910c96b48', 'Coba', '2024-04-01', '<p>asndknkjabskd</p><p>sajdbjbas</p><p>sajdbjbasbdsa</p><p>asbdjbjsad</p><p>jkasbdjas</p>', 'app/berita/1712494112-DFoIA.png', 1, '2024-04-07 16:32:06', '2024-04-07 16:32:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `poto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `poto`, `created_at`, `updated_at`) VALUES
('9bb233d9-a8ff-4ec3-810d-ba3b9e556d39', 'Coba Edit', 'app/galeri/1711896762-oMmg8.jpg', '2024-03-31 14:54:42', '2024-03-31 07:54:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hki`
--

CREATE TABLE `hki` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hki`
--

INSERT INTO `hki` (`id`, `nama`, `tahun_terbit`, `file`, `created_at`, `updated_at`) VALUES
('9bb83ce3-8ae9-49e4-996e-87b922bb4091', 'Coba Edit', '2023', 'app/hki/1712155978-u1SSf.pdf', '2024-04-08 14:57:03', '2024-04-08 14:57:03'),
('9bc24f53-6467-4ccf-913b-6db23d083f67', 'Cobaaaaaa', '2010', 'app/hki/1712588566-sbbVf.pdf', '2024-04-08 08:02:48', '2024-04-08 08:02:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penelitian`
--

CREATE TABLE `penelitian` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ketua_peneliti` varchar(255) NOT NULL,
  `anggota_dosen` varchar(255) NOT NULL,
  `anggota_mahasiswa` varchar(255) NOT NULL,
  `skema` varchar(255) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `jenis_penelitian` enum('Eksternal','Internal','Mahasiswa') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penelitian`
--

INSERT INTO `penelitian` (`id`, `judul`, `ketua_peneliti`, `anggota_dosen`, `anggota_mahasiswa`, `skema`, `tahun_terbit`, `deskripsi`, `jenis_penelitian`, `created_at`, `updated_at`) VALUES
('9bb75729-bfd6-4a6d-8f6a-bbc62466d83d', 'Sistem Informasi Pelayanan Kepegawaian Politeknik Negeri Ketapang', 'Ketua Edit', '<ol><li>A</li><li>D</li><li>F</li><li>F</li><li>G</li></ol>', '<ol><li>D</li><li>S</li><li>F</li><li>S</li><li>F</li><li>F</li></ol>', 'Dosen', 2024, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(116, 122, 128); padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et aliquet elit. In hac habitasse platea dictumst. Curabitur accumsan erat ut pharetra dignissim. Nullam aliquet magna dolor, non posuere mauris fringilla non. Aliquam lacinia erat neque, non ultrices erat hendrerit a. Sed finibus metus sit amet dui vulputate accumsan. Cras imperdiet mauris vitae lorem tempor commodo. Nullam condimentum mauris ut venenatis lacinia. Curabitur volutpat felis purus, in egestas velit viverra id. Donec facilisis tortor id massa molestie, at elementum purus convallis. Quisque ipsum diam, pulvinar eget tellus at, faucibus dapibus nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(116, 122, 128); padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus sollicitudin sem ante, ac viverra mi cursus a. Nam tortor nunc, aliquam ut dolor id, vulputate egestas tellus. Curabitur placerat enim tellus, eu scelerisque risus dapibus nec. Donec leo lectus, molestie non erat ac, rhoncus tempus ante. Vivamus mollis, ligula in suscipit ullamcorper, sem eros faucibus turpis, ut luctus nulla nisi quis lacus. Phasellus posuere metus at pretium commodo. Sed cursus aliquam dui sit amet fringilla. Nunc massa mi, pellentesque vel sem id, bibendum auctor orci. Morbi vestibulum eget dolor in sollicitudin. Nullam non dolor non elit mattis eleifend nec non nisi. Sed at risus imperdiet, gravida dolor et, scelerisque massa.</p>', 'Internal', '2024-04-08 15:04:38', '2024-04-08 15:04:38'),
('9bc24069-91be-401e-9ecf-4bb5c3421668', 'Sistem Pemasaran', 'Ketua', '<ol><li>asdbkjkjasbdkjsak</li><li>asjkjdbjasgjda</li><li>aksdjahsd</li><li>asbdjjads</li></ol>', '<ol><li>masndbas</li><li>asnbdbjasd</li><li>asjdbkjas</li></ol>', 'Dosen', 2010, '<p>&nbsp;asnmdbasbdbhsabdhbhasdsadhbhabsdjjasvdghvhgsa</p>', 'Internal', '2024-04-08 07:21:06', '2024-04-08 07:21:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengabdian`
--

CREATE TABLE `pengabdian` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `ketua_peneliti` varchar(255) NOT NULL,
  `anggota_dosen` varchar(255) NOT NULL,
  `anggota_mahasiswa` varchar(255) NOT NULL,
  `skema` varchar(255) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `jenis_pengabdian` enum('Eksternal','Internal') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengabdian`
--

INSERT INTO `pengabdian` (`id`, `judul`, `ketua_peneliti`, `anggota_dosen`, `anggota_mahasiswa`, `skema`, `tahun_terbit`, `deskripsi`, `jenis_pengabdian`, `created_at`, `updated_at`) VALUES
('9bb759cd-8f43-4350-800c-bf0f90e3d5cc', 'Sistem Pemasaran', 'Ketua Edit', '<ol><li>ada</li><li>ada</li><li>ada</li><li>ada</li></ol>', '<ol><li>asdbksa</li><li>ladbkbasd</li><li>jadbfjbd</li><li>djbfbad</li><li>dfbhd</li></ol>', 'Dosen', 2024, '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', 'Internal', '2024-04-03 04:19:32', '2024-04-02 21:19:32'),
('9bc24420-cf50-4065-97f3-831c0e40022c', 'Sistem Informasi Perpustakaan Digital Politeknik Negeri Ketapang', 'Ketua', '<ol><li>s,andkbsa</li><li>aksjdksa</li><li>jasbkd</li></ol>', '<ol><li>mnasbdkj</li><li>lasdjhas</li><li>babsdjas</li><li>]mnamsbdjja</li></ol>', 'Dosen', 2010, '<p>asmbdhbjasdhvhasdgjchgasddddddddddddddddddc</p>', 'Eksternal', '2024-04-08 07:31:29', '2024-04-08 07:31:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `poto` varchar(255) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `jenis` enum('Profil','Visi','Misi','Tujuan') NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `judul`, `jenis`, `text`, `created_at`, `updated_at`) VALUES
('9bb23cdd-c14d-48c7-b0b6-ee465e341c0d', 'PROFIL P3KM', 'Profil', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas erat urna, finibus sed sagittis ac, tempor id diam. Sed aliquet dolor sit amet convallis condimentum. Sed vitae mauris pharetra, bibendum diam nec, lacinia ligula. Aenean aliquam sapien sed diam fermentum, eget eleifend massa pulvinar.</span><br></p>', '2024-04-07 15:19:58', '2024-04-07 08:19:58'),
('9bb57be3-757d-4a22-8449-19c552c1dd8e', 'VISI P3KM', 'Visi', '<ol><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas erat urna, finibus sed sagittis ac,</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"> tempor id diam. Sed aliquet dolor sit amet convallis condimentum. Sed vitae mauris pharetra, bibendum diam nec, lacinia ligula. </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Aenean aliquam sapien sed diam fermentum, eget eleifend massa pulvinar. Fusce dui dui, placerat a neque quis, laoreet rutrum felis. </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Mauris a nunc a enim pretium imperdiet a gravida odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Nulla molestie hendrerit velit, sit amet commodo purus elementum vel. Mauris in scelerisque arcu, id vehicula purus. </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Praesent a semper urna. Phasellus pulvinar consectetur dolor, vel suscipit libero imperdiet et. </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Etiam vel blandit purus. Nulla orci mauris, aliquet non maximus ultrices, imperdiet sit amet mi. </span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Praesent augue risus, efficitur eget dignissim vitae, cursus eget odio.</span><br></li></ol>', '2024-04-02 06:31:17', '2024-04-01 23:31:17'),
('9bb583b3-1eec-4e9f-b26a-9337729ab145', 'MISI P3KM', 'Misi', '<ol><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas erat urna, finibus sed sagittis ac,</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">tempor id diam. Sed aliquet dolor sit amet convallis condimentum. Sed vitae mauris pharetra, bibendum diam nec, lacinia ligula.</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Aenean aliquam sapien sed diam fermentum, eget eleifend massa pulvinar. Fusce dui dui, placerat a neque quis, laoreet rutrum felis.</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Mauris a nunc a enim pretium imperdiet a gravida odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Nulla molestie hendrerit velit, sit amet commodo purus elementum vel. Mauris in scelerisque arcu, id vehicula purus.</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Praesent a semper urna. Phasellus pulvinar consectetur dolor, vel suscipit libero imperdiet et.</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Etiam vel blandit purus. Nulla orci mauris, aliquet non maximus ultrices, imperdiet sit amet mi.</span></li><li><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Praesent augue risus, efficitur eget dignissim vitae, cursus eget odio.</span></li></ol>', '2024-04-02 06:31:06', '2024-04-01 23:31:06'),
('9bc052f8-ec15-435f-b7e9-a2100a98e15b', 'TUJUAN P3KM', 'Tujuan', '<div style=\"text-align: justify;\"><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><font face=\"Open Sans, Arial, sans-serif\">asbdbhabsdjabdashdvasbdhabsdjbasbdbsa</font></span></div><div style=\"text-align: justify;\"><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><font face=\"Open Sans, Arial, sans-serif\">asdvhgavsdvhsahdsahbdvasvmdhsa</font></span></div><div style=\"text-align: justify;\"><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><font face=\"Open Sans, Arial, sans-serif\">asdbhavavvadvhfadbfad,mnbfhbadfjda</font></span></div><div style=\"text-align: justify;\"><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\"><font face=\"Open Sans, Arial, sans-serif\">adfjdafhhhhhhhhhhhhhhhhhhhhhhhhj</font></span></div>', '2024-04-07 15:24:45', '2024-04-07 08:24:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prosedur_hki`
--

CREATE TABLE `prosedur_hki` (
  `id` char(36) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prosedur_hki`
--

INSERT INTO `prosedur_hki` (`id`, `nama`, `file`, `created_at`, `updated_at`) VALUES
('9bb836b4-be0b-4e35-982c-261aa7606a29', 'Coba Edit', 'app/prosedur-hki/1712154940-CPEs8.pdf', '2024-04-03 14:42:38', '2024-04-03 07:42:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi`
--

CREATE TABLE `publikasi` (
  `id` char(36) NOT NULL,
  `nama_penulis` text NOT NULL,
  `nama_jurnal` text NOT NULL,
  `judul` text NOT NULL,
  `volume` varchar(255) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publikasi`
--

INSERT INTO `publikasi` (`id`, `nama_penulis`, `nama_jurnal`, `judul`, `volume`, `tahun_terbit`, `deskripsi`, `created_at`, `updated_at`) VALUES
('9bb590fb-d4c4-4607-bbe6-5947f1817333', 'Anak Mesin Edit', 'ssd', 'Sistem Informasi Pelayanan Kepegawaian Politeknik Negeri Ketapang', 'sd', 2010, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc et aliquet elit. In hac habitasse platea dictumst. Curabitur accumsan erat ut pharetra dignissim. Nullam aliquet magna dolor, non posuere mauris fringilla non. Aliquam lacinia erat neque, non ultrices erat hendrerit a. Sed finibus metus sit amet dui vulputate accumsan. Cras imperdiet mauris vitae lorem tempor commodo. Nullam condimentum mauris ut venenatis lacinia. Curabitur volutpat felis purus, in egestas velit viverra id. Donec facilisis tortor id massa molestie, at elementum purus convallis. Quisque ipsum diam, pulvinar eget tellus at, faucibus dapibus nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus sollicitudin sem ante, ac viverra mi cursus a. Nam tortor nunc, aliquam ut dolor id, vulputate egestas tellus. Curabitur placerat enim tellus, eu scelerisque risus dapibus nec. Donec leo lectus, molestie non erat ac, rhoncus tempus ante. Vivamus mollis, ligula in suscipit ullamcorper, sem eros faucibus turpis, ut luctus nulla nisi quis lacus. Phasellus posuere metus at pretium commodo. Sed cursus aliquam dui sit amet fringilla. Nunc massa mi, pellentesque vel sem id, bibendum auctor orci. Morbi vestibulum eget dolor in sollicitudin. Nullam non dolor non elit mattis eleifend nec non nisi. Sed at risus imperdiet, gravida dolor et, scelerisque massa.</p>', '2024-04-02 07:13:01', '2024-04-02 00:13:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar`
--

CREATE TABLE `seminar` (
  `id` char(36) NOT NULL,
  `nama_seminar` varchar(255) NOT NULL,
  `tanggal_seminar` date NOT NULL,
  `link_seminar` varchar(255) NOT NULL,
  `poto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `seminar`
--

INSERT INTO `seminar` (`id`, `nama_seminar`, `tanggal_seminar`, `link_seminar`, `poto`, `created_at`, `updated_at`) VALUES
('9bc0692b-5837-4696-88eb-8a00af3c25aa', 'Coba Edit', '2024-12-31', 'youtube.com', 'app/seminar/1712507140-JwKKf.jpg', '2024-04-07 09:23:24', '2024-04-07 09:25:40'),
('9bc06a6c-1547-429a-ab1f-c2acc411f055', 'Coba', '2024-01-01', 'youtube.com', 'app/seminar/1712507214-YSpKs.png', '2024-04-07 09:26:54', '2024-04-07 09:26:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slide`
--

CREATE TABLE `slide` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `poto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slide`
--

INSERT INTO `slide` (`id`, `judul`, `poto`, `created_at`, `updated_at`) VALUES
('9bc02422-ef2a-41aa-b419-bd5b9708bb57', 'Sistem Informasi Pelayanan Kepegawaian Politeknik Negeri Ketapang', 'app/slide/1712495485-TvYu1.jpg', '2024-04-07 13:11:25', '2024-04-07 06:11:25'),
('9bc02437-9f2d-4f2a-a917-2dad2c040ec6', 'Sistem Pemasaran', 'app/slide/1712495436-5z6Uz.jpg', '2024-04-07 06:10:36', '2024-04-07 06:10:36'),
('9bc0244c-f112-4c44-9516-b2c32a0118b0', 'KIP DSS', 'app/slide/1712495450-O2JKw.jpg', '2024-04-07 06:10:50', '2024-04-07 06:10:50'),
('9bc02498-9265-45fa-a65e-5463bdb8583b', 'Sistem Informasi Pelayanan Kepegawaian Politeknik Negeri Ketapang', 'app/slide/1712495500-GCoqe.jpg', '2024-04-07 06:11:40', '2024-04-07 06:11:40');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hki`
--
ALTER TABLE `hki`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penelitian`
--
ALTER TABLE `penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengabdian`
--
ALTER TABLE `pengabdian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prosedur_hki`
--
ALTER TABLE `prosedur_hki`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
