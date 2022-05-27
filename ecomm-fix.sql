-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 02:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(10, 9, 10, 1),
(11, 18, 1, 1),
(19, 30, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Pupuk ', 'pupuk'),
(2, 'Obat Pertanian', 'obat_pertanian'),
(4, 'Benih', 'benih'),
(5, 'Alat Pertanian', 'alat_pertanian'),
(8, 'Mesin Pertanian', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 36, 1),
(22, 12, 30, 1),
(23, 13, 52, 1),
(24, 14, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 1, 'Pupuk  Kaltim', '<p>Pupuk kaltim adalah pupuk yang blablabla</p>\r\n', 'pupuk-kaltim', 35000, 'pupuk-kaltim.jpeg', '2020-12-30', 1),
(31, 1, 'Pupuk Mahkota', '<p>Pupuk terbaik yang bisa menjadi salah satu pilihan anda</p>\r\n', 'pupuk-mahkota', 50000, 'pupuk-mahkota.jpeg', '2020-11-22', 4),
(32, 1, 'Pupuk Phonska', '<p>Pupuk Phonska 15 15 15 memiliki kelebihan yang membuat anda patut memilikinya</p>\r\n', 'pupuk-phonska', 30000, 'pupuk-phonska.jpeg', '2020-11-22', 1),
(33, 5, 'Klaher koyo', '<p>Klaher koyo ini memiliki daya tahan yang sangat bagus</p>\r\n', 'klaher-koyo', 25000, 'klaher-koyo_1609267007.jpeg', '2020-11-22', 5),
(34, 5, 'Klaher 6207', '<p>Klaher kode:6207</p>\r\n', 'klaher-6207', 29000, 'klaher-6207_1609266993.jpeg', '2020-11-22', 4),
(35, 5, 'Ring 62', '<p>Ring kode:62</p>\r\n', 'ring-62', 5000, 'ring-62_1609267021.jpeg', '2020-11-22', 1),
(36, 2, 'Starban 100ml', '<p>Deskripsi Starban 100 ml<br />\r\nSTARBAN 585 EC, insektisida berbahan aktif ganda :<br />\r\nKlorpirifos (chlorpyrifos) : 530 g/l<br />\r\nsipermetrin (cypermethrin) : 55 g/l<br />\r\nInsektisida racun kontak dan lambung berbentuk pekatan yang dapat diemulsikan.<br />\r\nDapat mengendalikan berbagai macam serangga seperti ulat, kepinding, kutu, kecoa, wereng, lalat, semut, belalang dll.<br />\r\nBawang merah : ulat grayak Spodoptera exigua (Penyemprotan volume tinggi : 1,5 - 2 ml/l)<br />\r\nJagung : penggerek batang Ostrinia nubilalis (Penyemprotan volume tinggi : 1 - 2 ml/l)<br />\r\nKacang panjang : penggerek polong Maruca testulalis, kutu daun Aphis cracivora (Penyemprotan volume tinggi : 1 - 2 ml/l)<br />\r\nKakao : penggerek buah Canopomorpha cramerella (Penyemprotan volume tinggi : 0,5 - 1 ml/l)<br />\r\nKedelai : penggerek polong Etiella zinckenella (Penyemprotan volume tinggi : 1,125 - 2 ml)<br />\r\nKedelai : ulat grayak Spodoptera litura (Penyemprotan volume tinggi : 1,50 - 2 ml/l)<br />\r\nMentimun : kutu daun Myzus persicae, hama trips Thrips parvispinus (Penyemprotan volume tinggi : 1 - 2 ml/l)<br />\r\nTerung : kutu kebul Bemisia tabaci, wereng hijau Empoasca sp. (Penyemprotan volume tinggi : 1 - 2 ml/l)PT Biotis Agrindo (info)<br />\r\nIzin: Tetap<br />\r\n11 May 2021<br />\r\nRI. 01010120062192</p>\r\n', 'starban-100ml', 13500, 'starban-100ml.jpeg', '2020-12-30', 1),
(37, 2, 'Starellle 80ml', '<p>Insektisida racun kontak, lambung dan pernafasan berbentuk pekatan yang dapat diemulsikan dalam air, berwarna kuning kecoklatan, untuk mengendalikan hama pada tanaman bawang merah dan kedelai.<br />\r\n<br />\r\nBahan Aktif : Klorpirifos 600 g/l, Sipermetrin 60 g/l<br />\r\nBerat Bersih : 80 ml</p>\r\n', 'starellle-80ml', 30000, 'starellle-80ml.jpeg', '2020-12-23', 1),
(38, 2, 'Sankill 400ml', '<p>Netto: 400 ml<br />\r\nBahan aktif :</p>\r\n\r\n<p>-Klorpirifos : 530 g/l</p>\r\n\r\n<p>-Sipermetrin : 60 g/l</p>\r\n\r\n<p>Insektisida racun kontak dan lambung berbentuk pekatan yang dapat diemulsikan.</p>\r\n', 'sankill-400ml', 75000, 'sankill-400ml.jpeg', '2020-11-22', 2),
(40, 4, 'Inpari45 ', '<p>Tahun Dilepas : 2019<br />\r\n- SK Menteri Pertanian : 82/HK.540/C/02/2019<br />\r\n- Asal Persilangan : Cibogo / Ciherang<br />\r\n- Golongan : Cere<br />\r\n- Umur Tanaman : &plusmn; 116 hari setelah semai<br />\r\n- Bentuk Tanaman : Tegak<br />\r\n- Tinggi Tanaman : &plusmn; 120 cm<br />\r\n- Daun Bendera : Tegak<br />\r\n- Bentuk Gabah : Ramping<br />\r\n- Warna Gabah : Kuning jerami<br />\r\n- Kerontokan : Sedang<br />\r\n- Kerebahan : Medium<br />\r\n- Tekstur Nasi : Pulen<br />\r\n- Kadar Amilosa : 12,40%<br />\r\n- Berat 1000 Butir : &plusmn; 27,8 gram<br />\r\n- Rata Rata Hasil : &plusmn; 7,1 ton/ha<br />\r\n- Potensi Hasil : &plusmn; 9,5 ton/ha<br />\r\n- Hama : Agak tahan WBC biotipe 1, 2, dan 3<br />\r\n- Penyakit : Tahan HDB patotipe III dan VIII, Agak rentan HDB patotipe IV, Rentan blas strain 033, 073, 133, dan 173, Agak tahan tungro inokulum Purwakarta, Rentan tungro inokulum Garut<br />\r\n- Anjuran Tanam : Cocok ditanam pada lahan sawah irigasi dataran rendah (0-600 mdpl)<br />\r\n- Pemulia : Untung Susanto, Rina H Wening, Wage R Rohaeni, Satoto</p>\r\n', 'inpari45', 60000, 'inpari45.jpg', '0000-00-00', 0),
(41, 4, 'Inpari32', '<p>Benih Padi Pertiwi Inpari 32<br />\r\npotensi hasil 10 ton per ha<br />\r\nDaun bendera tegak<br />\r\nbatang kokoh<br />\r\nanakan banyak<br />\r\nlebih tahan wereng dan blast daun jamur penyebab potong leher<br />\r\nperawatan padat penuh<br />\r\nrasa nasi sedang<br />\r\ncocok ditanam disegala lahan</p>\r\n', 'inpari32', 55000, 'inpari32.jpg', '0000-00-00', 0),
(42, 4, 'Ciherang ', '<p>* Benih Padi &quot;PANEN PRIMA&quot; adalah benih padi berkwalitas prima<br />\r\n* Hemat kebutuhan benih per hektar luas lahan yaitu 25 - 30kg/ha<br />\r\n* Memiliki daya tahan yg lebih baik<br />\r\n* Pindah tanam usia bibit 15-20 hari<br />\r\n* Panen dpt dilakukan pd tingkat pemasakan biji antara 80-100 persen<br />\r\n* Kadar Air 12,6%<br />\r\n* Daya Kecambah 94%<br />\r\n* CVL Lapang 0,3%<br />\r\n* Kotoran Benih 0,1%<br />\r\n* Benih Murni 99,9%<br />\r\n* Benih Tan. Lain / Gulma 0,0%</p>\r\n', 'ciherang', 65000, 'ciherang.jpg', '0000-00-00', 0),
(43, 4, 'Sunggal', '<p>Golongan : Cere Umur tanaman : 115 - 125 hari Bentuk tanaman : Tegak Tinggi tanaman : 99 - 110 cm Anakan produktif : 16 - 18 batang Warna kaki : Hijau Warna batang : Hijau Warna telinga daun : Tidak berwarna Warna lidah daun : Tidak berwarna Warna helai daun : Hijau Muka daun : Agak kasar Posisi daun : Tegak Daun bendera : Tegak Bentuk gabah : Panjang ramping Warna gabah : Kuning bersih Kerontokan : Sedang Kerebahan : Sedang Tekstur nasi : Pulen Kadar amilosa : 23%</p>\r\n', 'sunggal', 56000, 'sunggal.jpg', '0000-00-00', 0),
(44, 4, 'Situbagendit', '<p>Deskripsi Varietas Padi Situ Bagendit:<br />\r\n<br />\r\nNomor seleksi :S4325D-1-2-3-1<br />\r\nAsal Persilangan:Batur/2*S2823-7D-8-1-A<br />\r\nGolongan:Cere<br />\r\nUmur tanaman:110 &#39;&#39;&quot; 120 hari setelah semai<br />\r\nBentuk tanaman:Tegak<br />\r\nTinggi tanaman:99 &#39;&#39;&quot; 105 cm<br />\r\nAnakan produktif:12 &#39;&#39;&quot; 13 batang<br />\r\nWarna kaki:Hijau<br />\r\nWarna batang:Hijau<br />\r\nWarna telinga daun:Tidak berwarna<br />\r\nWarna lidah daun:Tidak berwarna<br />\r\nWarna daun:Hijau<br />\r\nMuka daun:Kasar<br />\r\nPosisi daun:Tegak<br />\r\nDaun bendera:Tegak<br />\r\nBentuk gabah:Panjang ramping<br />\r\nWarna gabah:Kuning bersih<br />\r\nKerontokan:Sedang<br />\r\nKerebahan:Sedang<br />\r\nTekstur nasi:Pulen<br />\r\nKadar amilosa:22 %</p>\r\n', 'situbagendit', 62000, 'situbagendit.jpg', '0000-00-00', 0),
(45, 2, 'Ally Plus', '<p>Ally plus 77WP 40gr<br />\r\n<br />\r\n*Golongan: Herbisida<br />\r\n*Cara Kerja : Sistemik selektif pra tumbuh dan purna tumbuh<br />\r\n*Untuk Tanaman: Padi<br />\r\n*Penyakit Sasaran: Gulma berdaun lebar, Gulma berdaun sempit, dan teki<br />\r\n*Penyemprotan:<br />\r\n- Rekomendasi Waktu: Pagi hari<br />\r\n- Rekomendasi Dosis: 1g/l &ndash; 1,5g/l atau 13gr-20gr per tengki 14 liter<br />\r\n- Rekomendasi Lainnya: dapat dicampur dengan pupuk<br />\r\nBahan Aktif: 2,4-D natrium : 75 % etil klorimuron : 0,7 % metil metsulfuron : 0,7 %</p>\r\n', 'ally-plus', 15000, 'ally-plus.jpg', '0000-00-00', 0),
(46, 2, 'Alphadine', '<p>pembasmi kaper,penggerek batang,wereng pada tanaman.</p>\r\n', 'alphadine', 18000, 'alphadine.jpg', '0000-00-00', 0),
(47, 2, 'Antracol', '<p>Antracol 70WP Kemasan Pabrik 250 Gram<br />\r\nMerk dagang : Antracol 70WP<br />\r\nJenis : Fungisida<br />\r\nBahan aktif : Propinep 70%<br />\r\nFormulasi : WP (Wattable Powder)<br />\r\nWarna : Krem/putih kekuningan<br />\r\nCara kerja : Kontak<br />\r\nBentuk fisik : Tepung<br />\r\nProdusen : PT. Bayer Indonesia</p>\r\n', 'antracol', 33000, 'antracol.jpg', '0000-00-00', 0),
(48, 2, 'Amistar Top', '<ul>\r\n	<li>Amistartop merupakan fungisida sistemik yang dilengkapi dengan ZPT (zat pengatur tumbuh), dengan memberi fungisida ini berarti anda juga sekaligus memberikan &ldquo;semacam pupuk&rdquo; pada tanaman.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Fungisida sistemik ini bisa diaplikasikan ke hampir semua tanaman, diataranya; bawang merah, cabai, jagung, kakao, kedelai, kubis, pembibitan kelapa sawit, pembibitan sengon, melon, padi, tomat dan lainnya.</li>\r\n</ul>\r\n', 'amistar-top', 55000, 'amistar-top.png', '0000-00-00', 0),
(49, 2, 'Bassa', '<h2>Deskripsi&nbsp;Insektisida BASSA 400 ml Bahan Aktif BPMC Fenobukarb 500 g/l</h2>\r\n\r\n<p>Insektisida racun kontak dan lambung berbentuk pekatan yang dapat diemulsikan berwarna coklat muda untuk mengendalikan hama-hama penting pada tanaman jagung, kakao, kedelai, kopi, lada, lamtoro, teh dan padi.<br />\r\n<br />\r\nBahan Aktif : BPMC (fenobukarb) 500 g/l<br />\r\nIsi Bersih : 400 ml</p>\r\n', 'bassa', 20000, 'bassa.jpg', '0000-00-00', 0),
(50, 2, 'Bio KCL', '<p>Pupuk KCL ( kalium Chlorida ) Pak Tani<br />\r\n-Kemasan segel pabrik<br />\r\n-isi bersih : 5 Kg<br />\r\n-Unsur Hara : K2O 60 %<br />\r\n-Unsur K2O yang timggi cocok untuk fase generatif , Untuk Pengisian dan pembesaran buah.<br />\r\n<br />\r\n-Anjuran : Jangan Diaplikasikan untuk tanaman yang sensitif terhadap chlor atau tidak membutuhkan chlor sama sekali seperti tembakau.<br />\r\n<br />\r\n-KCL mengandung kadar Kalium tinggi untuk membantu pembentukan bunga dan inseminasi . KCl mengurangi efek negative dari Pupuk Nitrogen. Memperkuat batang tanamandan membantu pembentukan warna hijau pada daun dan karbohidrat pada buah serta menguatkan ketahanan terhadap penyakit. Kekurangan kalium mengakibatkan tanaman menjadi kerdil dan lemah.</p>\r\n', 'bio-kcl', 25000, 'bio-kcl.jpg', '0000-00-00', 0),
(51, 1, 'Urea Petro', '<p>Manfaat unsur hara Nitrogen yang dikandung pupuk Urea Membuat bagian tanaman lebih hijau dan segar Mempercepat pertumbuhan Menambah kandungan protein hasil panen Gejala kekurangan unsur hara Nitrogen pada tanaman Seluruh tanaman berwarna pucat kekuningan Pertumbuhan tanaman lambat dan kerdil</p>\r\n', 'urea-petro', 295000, 'urea-petro.png', '0000-00-00', 0),
(52, 1, 'Za Petro', '<h2>Deskripsi&nbsp;Pupuk ZA Mahkota Amonium Ammonium Sulfat Sulfate 1 Zak 50kg 50 kg Z A</h2>\r\n\r\n<p>Pupuk ZA (Zwavelzure Ammoniak) Mahkota merupakan pupuk kimia buatan yang<br />\r\nmengandung unsur Amonium Sulfat. Pupuk ini dirancang khusus sebagai penambah<br />\r\nunsur hara belerang (S) dan nitrogen (N) pada tanaman. Bentuknya berupa butiran<br />\r\nkristal berwarna putih menyerupai garam dapur dan terasa asin.<br />\r\n<br />\r\nZA memiliki sifat yang mudah menyerap air (higroskopis) namun tidak sekuat pupuk<br />\r\nurea. Kandungan unsur nitrogen dalam pupuk ZA juga lebih sedikit dibandingkan<br />\r\ndengan pupuk amonium nitrat dan urea. Meskipun demikian, pupuk ZA mampu<br />\r\nmeningkatkan unsur hara belerang yang berperan penting berperan dalam<br />\r\npembentukan zat gula dan zat butir hijau daun, serta mampu menurunkan kadar pH<br />\r\ntanah sehingga hanya cocok diterapkan pada diterapkan pada tanah alkalin.<br />\r\n<br />\r\nKandungan:<br />\r\n<br />\r\n* Nitrogen (N): 21%<br />\r\n* Asam bebas H2SO4: 0.08%<br />\r\n* Sulphur (S): 24%<br />\r\n* Kadar air: 0.78%</p>\r\n', 'za-petro', 195000, 'za-petro.jpg', '2020-12-30', 1),
(53, 1, 'Urea Kaltim', '<p>1. Mengandung zat butir hijau daun (Clorophyl) yang memiliki peranan cukup<br />\r\npenting dalam proses fotosintesa tanaman sehingga tanaman terlihat lebih<br />\r\nhijau dan segar.<br />\r\n2. Memicu pertumbuhan tanaman secara lebih cepat dan optimal sehingga tanaman<br />\r\nlebih cepat tinggi serta memiliki banyak cabang dan anakan.<br />\r\n3. Mempercepat pertumbuhan akar dan tunas-tunas baru.<br />\r\n4. Meningkatkan hasil produksi panen dan kualitas buah.<br />\r\n5. Meningkatkan unsur Nitrogen dalam tanah dan jumlah kandungan protein pada<br />\r\ntanaman.<br />\r\n6. Tanaman menjadi lebih kokoh dan tahan terhadap serangan hama juga penyakit.<br />\r\n&nbsp;</p>\r\n', 'urea-kaltim', 300000, 'urea-kaltim.jpg', '0000-00-00', 0),
(54, 8, 'Traktor', '<p>Traktor adalah alat untuk membajak sawah</p>\r\n', 'traktor', 35000, 'traktor.png', '2020-12-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(14, 30, 'PAYID-L7V7FUA0GW97349T36909202', '2020-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Rizkon', 'Ansyori', '', '', 'ae5cfca6-8844-418b-88ba-fb9d50e270aa.jpg', 1, '', 'RKZ4o7YpzxFhv8r', '2018-05-01'),
(19, 'rizkon@gmail.com', '$2y$10$m6.uqYeIaLzfGK0.7vKwJe/5RvTQL9ulzgus/Ll9LINuitysZRs6C', 0, 'Rizkon', 'Ansyori', 'Jl Laut Banda no 4 Burneh Bangkalan Madura', '087845669875', '', 1, '', '', '2020-11-22'),
(30, 'vanika@gmail.co.id', '$2y$10$Jd83w.o3WTkALmW4p.lGqeJB73av8mpJE30/3.slEVqE1i1P8h6qO', 0, 'vanika', 'ningrum', 'jl kalitidu, bojonegoro', '085452654526', '', 1, 'wKebFph7Poa9', '', '2020-12-30'),
(31, 'viqih@gmail.com', '$2y$10$K9ctrOLlPEXYu/ZSitilBeRPrJYdUXlVGGJs53.l5P4YgUBMy9Ww.', 0, 'viqih', 'zamzami', 'jl perumans tunjung, bangkalan', '085254653665', 'download.jfif', 1, '', '', '2020-12-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
