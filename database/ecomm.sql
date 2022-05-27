-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2020 pada 02.05
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Pupuk', 'Pupuk'),
(2, 'Obat-Obatan', 'desktop-pc'),
(3, 'Alat Pertanian', 'tablets'),
(4, 'Benih', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
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
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Pupuk Urea Zak 50 Kg Penyubur Rumput Tanaman Daun Non Subsidi Nitrogen', '<h2>Deskripsi&nbsp;Pupuk Urea Zak 50 Kg Penyubur Rumput Tanaman Daun Non Subsidi Nitrogen</h2>\r\n\r\n<p>Pupuk urea termasuk salah satu jenis pupuk kimia yang populer dimanfaatkan pada<br />\r\nindustri tanaman pangan. Pupuk urea mempunyai kandungan senyawa N (nitrogen)<br />\r\ntinggi sebanyak 46% yang mana dikenal sangat baik bagi pertumbuhan dan<br />\r\nperkembangan tanaman. Sangat cocok digunakan untuk segala jenis tanaman, baik<br />\r\ntanaman pangan, tanaman perkebunan, maupun tanaman holtikultura. Bisa juga<br />\r\ndigunakan dalam bidang perikanan dan peternakan.<br />\r\n<br />\r\nSaat ini pupuk urea yang banyak beredar dipasaran terdiri dari 2 jenis yakni<br />\r\nwarna putih (non subsidi) dan juga warna merah (subsidi). Khusus yang kami jual<br />\r\nini adalah pupuk urea non subsidi yang berbentuk kristal (prill) berwarna putih<br />\r\ndan berukuran 1-3,35mm. Biasanya dikenal dengan nama dagang Daun Buah. Sifatnya<br />\r\nmudah larut dan diserap oleh tanaman, tidak berdebu dan lebih higroskopis<br />\r\ndibandingkan dengan pupuk ZA<br />\r\n<br />\r\n<br />\r\nKEUNGGULAN PUPUK UREA:<br />\r\n1. Mengandung zat butir hijau daun (Clorophyl) yang memiliki peranan cukup<br />\r\npenting dalam proses fotosintesa tanaman sehingga tanaman terlihat lebih<br />\r\nhijau dan segar.<br />\r\n2. Memicu pertumbuhan tanaman secara lebih cepat dan optimal sehingga tanaman<br />\r\nlebih cepat tinggi serta memiliki banyak cabang dan anakan.<br />\r\n3. Mempercepat pertumbuhan akar dan tunas-tunas baru.<br />\r\n4. Meningkatkan hasil produksi panen dan kualitas buah.<br />\r\n5. Meningkatkan unsur Nitrogen dalam tanah dan jumlah kandungan protein pada<br />\r\ntanaman.<br />\r\n6. Tanaman menjadi lebih kokoh dan tahan terhadap serangan hama juga penyakit.<br />\r\n<br />\r\nSpesifikasi:<br />\r\n<br />\r\n* Bentuk: Butiran prill dan tidak berdebu<br />\r\n* Warna: Putih (non subsidi)<br />\r\n* Kadar Air: Max. 0.50%<br />\r\n* Kadar Biuret: Max. 1%<br />\r\n* Kadar Nitrogen: Min. 46%<br />\r\n<br />\r\nBerat bersih: 50 kg</p>\r\n', 'pupuk-urea-zak-50-kg-penyubur-rumput-tanaman-daun-non-subsidi-nitrogen', 400000, 'pupuk-urea-zak-50-kg-penyubur-rumput-tanaman-daun-non-subsidi-nitrogen_1609093278.jpg', '2018-07-09', 2),
(4, 1, ' Pupuk NPK Mutiara', '<p>Pupuk NPK 16:16:16 Mutiara adalah pupuk pada masa bertumbuhan, berkualitas terpercaya yang sudah dipakai oleh petani di seluruh dunia. Dengan segala kelebihan dan keutamaannya pupuk ini dapat meningkatkan produksi serta meningkatkan kualitas panen.&nbsp;</p>\r\n\r\n<p><br />\r\nAdapun Manfaat Pupuk NPK Mutiara adalah :&nbsp;<br />\r\nMenjadikan daun tanaman lebih segar dan hijau yang akan mempermudah proses fotosintesis Meningkatkan perkembangan akar, sehingga perakaran menjadi lebih sehat, kuat, lebat, lebih cepat tinggi serta menambah jumlah anakan lebih banyak.&nbsp;<br />\r\nBatang menjadi lebih kuat dan kokoh yang akan berdampak dengan ketahanan tanaman dari serangan hama dan penyakit serta meminimalisir resiko rebah (roboh).&nbsp;<br />\r\nMengakselerasi pembentukan bunga dan pemasakan biji, meningkatkan kandungan protein sehingga masa panen menjadi lebih cepat. Memperbesar jumlah biji serta buah pada setiap tangkai sehingga pembentukan karbohidrat dan pati lebih lancar. Ketahanan hasil panen selama pengangkutan dan penyimpanan menjadi lebih lama.&nbsp;<br />\r\n<br />\r\nKeuntungan Pupuk NPK Mutiara :&nbsp;<br />\r\nHampir tidak ada efek negatif serta resiko dalam penggunaan dan pencampuran di lahan<br />\r\nKandungan unsurnya merata dan seimbang pada setap butirannya<br />\r\nBerbentuk butiran homogen yang lebih mudah dalam pengaplikasiannya<br />\r\nSudah terbukti dan teruji selama puluhan tahun dalam meningkatkan produksi pertanian<br />\r\nPupuk NPK 16:16:16 Mutiara seluruhnya larut dalam air yang akan lebih cepat dan mudah diserap tanaman dengan kandungan unsur hara makro yang lengkap yang terdiri dari Nitrogen, Posfor dan Kalium serta unsur hara mikro Kalsium (Ca), Magneium (Mg), Sulfur (S), protein dan lain-lain yang akan menjadikan tanaman lebih sehat, sempurna dan kuat.</p>\r\n', 'pupuk-npk-mutiara', 700000, 'pupuk-npk-mutiara_1609093451.png', '2018-05-10', 3),
(5, 3, 'Tangki Semprot Merk SWAN Manual 14 Liter Stainless SA-14', '<p>Mesin Penyemprot Hama Manual 14 L Stainless Steel Swan.</p>\r\n\r\n<p>Sprayer 14L ini sudah banyak digunakan di hampir semua pertanian di berbagai penjuru indonesia, Alat ini terbuat dari bahan stainless steel anti karat, ringan dan tahan lama</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Spesifikasi Produk:&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>Merk : SWAN</li>\r\n	<li>Type : SA-14</li>\r\n	<li>Bahan : Stainless Steel berkualitas</li>\r\n	<li>Kapasitas : 13.5L</li>\r\n	<li>Tekanan ( kg/ cm2) : 2.0-6.0</li>\r\n	<li>Berat : 4.6 kg</li>\r\n	<li>Dimensi : 33.5 x 17.5 x 50 CM</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Catatan Pengiriman:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Perkiraan berat untuk perhitungan expedisi 6 kg</li>\r\n	<li>karena produk ini memakan tempat (volume) maka kami memutuskan jika biaya kirim menggunakan expedisi pilihan biaya tidak tercover secara otomatis akan kami ganti dengan expedisi lain yang bisa cover biaya, atau akan kami konfirmasi ulang.</li>\r\n</ul>\r\n', 'tangki-semprot-merk-swan-manual-14-liter-stainless-sa-14', 550000, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-07-09', 3),
(7, 3, 'Hand Sprayer Pompa 2 Liter ', '<p>Ketersediaan hand sprayer pompa yang 2 liter seringkali mengalami kekurangan bahkan kekosongan, untuk itu kami membuat satu postingan dengan judul hand sprayer pompa 2 liter merek acak, sesuai ketersediaan barang. Dengan merek acak tersebut anda akan lebih mudah mendapatkan produk sesuai kebutuhan, anda tidak terpaku pada merek, yang penting fungsi sama, dan ketersediaan lebih mudah.</p>\r\n\r\n<ul>\r\n	<li>hand sprayer</li>\r\n	<li>energi pompa tangan</li>\r\n	<li>kapasitas 2 liter</li>\r\n</ul>\r\n', 'hand-sprayer-pompa-2-liter', 80000, 'hand-sprayer-pompa-2-liter_1609094743.jpg', '2020-12-27', 1),
(9, 2, 'Furadan 3GR Kemasan 2 kg', '<p><strong>Jual Furadan 3GR 1 kg.</strong></p>\r\n\r\n<p>Furadan 3GR adalah Insektisida / Nematisida sistemik yang berbentuk butiran Ungu, yang di gunakan untuk mengendalikan hama yang merusak batang, Cacing, Uret, Semut pada akar tanaman.<br />\r\nAplikasi cukup ditaburkan pada tanah di sekitar pohon / tanaman, sehingga dapat menghilangkan insektisida Cacing Ulat / apa pun hama yang ada di sekitar pohon.<br />\r\nDapat juga ditaburkan di persemaian sebelum bibit ditanam, agar tanah lebih subur sehingga bibit dapat tumbuh dengan baik.</p>\r\n\r\n<p>Dapat juga ditaburkan di persemaian sebelum bibit ditanam, agar tanah lebih subur sehingga bibit dapat tumbuh dengan baik.</p>\r\n\r\n<p><strong>Tanaman dan Hama :</strong><br />\r\n1. Cabai : nematoda/puru akar, orong-orong, bekicot/siput<br />\r\n2. Padi : Ulat grayak, uret, larva kaper, penggerek batang<br />\r\n3. Tomat : nematoda/puru akar, orong-orong, bekicot/siput, ulat, oeteng-oteng/kutu kuya<br />\r\n4. Semangka : Bekicot, orong-orong, penggerek daun, penggerek batang, oteng-oteng/kutu kuya,<br />\r\n5. Kubis : Ulat grayak, Perusak daun (Crocidolomia binotalis dan Plutella xylostella)<br />\r\n6. Kacang hijau : Perusak daun, ulat grayak, oteng-oteng, orong-orong<br />\r\n7. Timun : Bekicot, oteng-oteng, ulat<br />\r\n8. Tembakau : Penggerek pucuk (Heliothis sp.) dan Ulat grayak (Spodoptera litura)<br />\r\n9. Tebu : Penggerek batang (Chilo auricilius dan C.saccharipagus)<br />\r\n10. Jagung : Penggerek batang<br />\r\n11. Dan lain sebagainya.</p>\r\n\r\n<p><strong>Fungsi Dan Kegunaan Furadan 3GR :</strong><br />\r\n&ndash; Berbentuk butiran yang mudah diaplikasikan dengan cara ditabur<br />\r\n&ndash; Bekerja secara sistemik dan efektif untuk mengendalikan hama tanaman<br />\r\n&ndash; Efektif untuk mengendalikan hama didalam tanah seperti nematoda dan orong-orong<br />\r\n&ndash; Daya simpan lama dan tidak mudah rusak<br />\r\n&ndash; Dapat diserap oleh akar dan didstribusikan keseluruh jaringan tanaman, sehingga efektif untuk mengendalikan hama yang ada didalam tanaman seperti nematoda, penggorok daun (Leaf minner) dan penggerek batang<br />\r\n&ndash; Dapat digunakan untuk mengendalikan hama penggerek daun / oteng-oteng<br />\r\n&ndash; Dapat digunakan untuk mengendalikan hama bekicot/siput pada tanaman tomat, semangka atau timun<br />\r\n&ndash; Efektif digunakan untuk mengendalikan hama uret/penggerek batang pada tanaman padi dan jagung</p>\r\n', 'furadan-3gr-kemasan-2-kg', 60000, 'furadan-3gr-kemasan-2-kg_1609094382.jpg', '0000-00-00', 0),
(15, 2, 'Insektisida Decis 500ml', '<p><strong>Decis 500 Ml</strong></p>\r\n\r\n<ul>\r\n	<li>Bahan aktif : Deltametrin 25 g/l</li>\r\n	<li>Bentuk formulasi : Pekatan emulsi</li>\r\n	<li>Warna formulasi : Kuning jernih</li>\r\n	<li>Cara kerja : Kontak</li>\r\n	<li>Toksisitas : Berbahaya</li>\r\n	<li>Kemasan : 500 ml</li>\r\n</ul>\r\n\r\n<p>Insektisida decis merupakan racun kontak dan lambung berbentuk pekatan yang dapat diemulsikan dan berwarna kuning jernih yang berfungsi pengendai hama pada tanaman, apel, bawang merah, belimbing, anggrek, cabai, jagung, jarak pagar, jeruk, kacang hijau, kacang panjang, kakao, kapas, kedelai, kelapa sawit, kentang, ketimun, kopi, kubis, lada,, tembakau , tomat, mangga, melon, semangka dan teh</p>\r\n', 'insektisida-decis-500ml', 150000, 'insektisida-decis-500ml_1609094606.jpg', '2018-07-09', 1),
(16, 2, 'Fungisida Organik Biologi Super SACO-P', '<p>SACO-P adalah Fungisida trichoderma koningii bubuk yang digunakan untuk&nbsp;<strong>cabe</strong>&nbsp;,tanaman&nbsp;<strong>karet</strong>&nbsp;dan&nbsp;<strong>semua tanaman</strong>.</p>\r\n\r\n<p>Manfaat SACO-P trichoderma Koningii yang dikenal adalah untuk mengendalikan penyakit&nbsp;<strong>layu fusarium</strong>&nbsp;pada tanaman<strong>&nbsp;cabe</strong>&nbsp;dan penyakit&nbsp;<strong>jamur akar putih</strong>&nbsp;pada tanaman karet.</p>\r\n\r\n<p>Gejala Penyakit&nbsp;<strong>Layu Fusarium</strong>&nbsp;antara lain:</p>\r\n\r\n<ul>\r\n	<li><strong>daun menguning</strong>&nbsp;mulai dari pinggir daun,</li>\r\n	<li>pecah batang,</li>\r\n	<li>akar tanaman busuk,</li>\r\n	<li>Warna daun menguning dan bentuk melengkung,</li>\r\n	<li>perubahan warna pada saluran pembuluh ruas daunnya,</li>\r\n	<li>biasanya batang menjadi kering lalu mati.</li>\r\n</ul>\r\n\r\n<p><strong>Bahan aktif :&nbsp;&nbsp;</strong></p>\r\n\r\n<p>Trichoderma koningii (minimal 5&times;10 pangkat 6 spora/gram),</p>\r\n\r\n<p>Untuk mengendalikan penyakit akar putih pada tanaman karet dan layu fusarium pada cabai.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cara aplikasi :&nbsp;</strong></p>\r\n\r\n<p>Buat larutan semprot saco-p dengan dosis 3-5 gram/liter air.&nbsp;</p>\r\n\r\n<p>Semprot ke seluruh bagian tanaman dan sekeliling leher akar tanaman yang terserang penyakit.</p>\r\n\r\n<p>volume semprot 500 liter untuk 1 hektar.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>waktu aplikasi :&nbsp;</strong></p>\r\n\r\n<p>Pada saat pindah tanam untuk pencegahan atau apabila ditemukan tanda-tanda serangan penyakit.</p>\r\n\r\n<p>Tanaman cabai serangan ditandai dengan memucatnya tulang daun sebelah atas dan diikuti menunduknya tangkai daun. Jika pada bagian atas antara akar dan batang dipotong akan terlihat cincin cokelat kehitaman diikuti busuk basah pada berkas pembuluh.</p>\r\n\r\n<p>Rekomendasi untuk tanaman cabai dan karet</p>\r\n\r\n<p>Isi : 250 gram</p>\r\n', 'fungisida-organik-biologi-super-saco-p', 50000, 'fungisida-organik-biologi-super-saco-p_1609094082.jpg', '2018-05-10', 2),
(20, 3, 'CBA Electric Battery Sprayer 16 L', '<p>Jual CBA Electric Sprayer 16 L atau alat semprot / semprotan hama untuk pertanian dan keperluan lainnya.</p>\r\n\r\n<p>Juga cocok untuk penyemprotan disinfektan, penyemprotan herbisida, penyemprotan pupuk cair, surfaktan dan lain sebagainya.</p>\r\n\r\n<p>Hemat tenaga, karena tidak perlu memompa manual, cukup dicas ke listrik PLN saja, kemudian siap dipakai.</p>\r\n', 'cba-electric-battery-sprayer-16-l', 700000, 'apple-9-7-ipad-32-gb-space-grey_1609094835.jpg', '2018-05-12', 1),
(27, 1, 'Pupuk Amonium Nitrat CANTIK', '<p>Jual Pupuk Calcium Ammonium Nitrate CANTIK.<br />\r\nManfaat menggunakan pupuk CANTIK pada tanaman adalah sbb:<br />\r\n1. Menyediakan Nitrogen dengan efek langsung dan tahan lama.<br />\r\n2. Menyuburkan tanah yang bermasalah dengan keasaman.<br />\r\n3. Memperkeras buah dan mencegah buah pecah-pecah.<br />\r\n4. Mencegah infeksi jamur.<br />\r\n5. Mencegah penyakit busuk pangkal dan ujung buah.<br />\r\n6. Meningkatkan pertumbuhan akar.</p>\r\n\r\n<p>Unsur Hara:<br />\r\nTotal Nitrogen (N)&hellip;&hellip;&hellip;&hellip;.27%<br />\r\n13,5% NH4 (Ammonium)<br />\r\n13,5% NO3 (Nitrat)<br />\r\nCalcium (CaO)&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;12%</p>\r\n', 'pupuk-amonium-nitrat-cantik', 50000, 'pupuk-amonium-nitrat-cantik_1609093775.png', '2018-07-09', 9),
(28, 4, 'BENIH BIBIT BIJI BUAH JAGUNG UNGGUL BISI- 2', '<p><strong>Benih Jagung Hibrida Bisi -2 Super</strong>&nbsp;Merupakan Benih Jagung kualitas unggul. Dapat menghasilkan 2 tongkol dalam satu tanaman. Sehingga bisa menghasilkan lebih banyak dan menguntungkan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Karakteristik Benih Jagung Hibrida Bisi - 2 Super:</strong><br />\r\n- Golongan Hibrida Silang Tunggal.<br />\r\n- Umur tanaman saat 50% keluar rambut = 56 hari dan saat masak = 103 hari.<br />\r\n- Tinggi tanaman 232 cm dengan batang tinggi dan tegak.<br />\r\n- Daun berwarna hijau cerah berbentuk panjang, lebar dan terkulai.<br />\r\n- Berpotensi menghasilkan 2 tongkol yang sama besar pada setiap tanamannya.<br />\r\n- Tongkol berada di tengah-tengah tinggi tanaman berukuran sedang, silindris dan seragam.<br />\r\n- Janggel kecil, dapat dipipil langsung dengan mesin pipil saat kering sawah dan janggel tidak hancur.<br />\r\n- Kelobot menutup tongkol dengan baik.<br />\r\n- Biji berwarna kuning orange dengan bentuk semi mutiara.<br />\r\n- Berat 100 butir mencapai 265 gram.<br />\r\n- Rata-rata hasil mencapai 8,9 ton per ha pipilan kering.<br />\r\n- Potensi hasil mencapai 13 ton per ha pipilan kering.<br />\r\n- Ketahanan penyakit, toleran terhadap bulai dan karat daun.<br />\r\n- Berpotensi menghasilkan 2 tongkol yang sama besar pada setiap tanamannya.<br />\r\n- Kadar air saat panen rendah sehingga harga jual tinggi dan tahan penyimpanan.<br />\r\n- Mempunyai daya adaptasi lingkungan yang baik, sehingga bisa produksi dengan baik di lahan pertanian manapun.<br />\r\n<br />\r\n<strong>JARAK TANAM :</strong><br />\r\nJarak tanam 80 cm x 20 cm dengan 1 tanaman perlubang tanam. Jarak tanam ini bertujuan untuk memberikan cukup penyinaran dan ruang tumbuh pada tanaman agar dapat meningkatkan potensi bertongkol dua lebih baik.<br />\r\n<br />\r\n<strong>Petunjuk Tanam:</strong><br />\r\nSudah tersedia di bagian belakang kemasan<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'benih-bibit-biji-buah-jagung-unggul-bisi-2', 80000, 'benih-bibit-biji-buah-jagung-unggul-bisi-2_1609092961.jpg', '0000-00-00', 0),
(30, 4, ' Benih Padi Hitam Unggul', '<h2>Deskripsi&nbsp;Bibit / Benih Padi Hitam Unggul</h2>\r\n\r\n<p>Berat Perkantong : 1 Kilogram<br />\r\n<br />\r\nStok Tersedia Sekarang Beras Hitam Varietas Jaliteng<br />\r\n<br />\r\nBenih Padi Beras Hitam Kualitas Bagus<br />\r\n<br />\r\nJaminan Kualitas Kecambah 95%<br />\r\n<br />\r\nNomor seleksi B13486D-4-1-PN-2-MR-3-3-3<br />\r\n<br />\r\nHasil Persilangan Ketan Hitam/Pandan Wangi Cianjur<br />\r\n<br />\r\nRata-rata Hasil GKG : 6,18 ton/ha<br />\r\n<br />\r\nPotensi Hasil : 9,87 ton/ha<br />\r\n<br />\r\nUmur Panen : 113 (HSS)<br />\r\n<br />\r\nTekstur Nasi : Pulen<br />\r\n<br />\r\nKandungan Amilosa : 19,6%<br />\r\n<br />\r\nKandungan Fenolik : 7104,3 &plusmn; 417,9 mg GAE*/100 g BPK<br />\r\n<br />\r\nKetahanan :<br />\r\nTahan WBC biotipe 1<br />\r\nTahan HDB kelompok IV<br />\r\nTahan blas ras 033 dan 073</p>\r\n', 'benih-padi-hitam-unggul', 75000, 'benih-padi-hitam-unggul.jpg', '0000-00-00', 0),
(31, 4, 'Benih Padi Hibrida MAPAN P-05', '<h2>&nbsp;Benih Padi Hibrida MAPAN P-05</h2>\r\n\r\n<p>exp. 06 2021<br />\r\nUmur Panen : 115-120 hari setepah semai<br />\r\nJumlah Anakan : 20-30<br />\r\nTinggi Tanaman : 110-115 sehingga relatif tahan rabah<br />\r\nPerakaran panjang dan kuat, daun bendera tegak dan panjang<br />\r\nJumlah Gabah per malai antara 180-250 butir per malai<br />\r\nPotensi Hasil : 8-11 ton GKP per Ha<br />\r\nBentuk gabah panjang<br />\r\nRendemen 65% - 68%<br />\r\nBeras tidak mengandung kapur (kualitas super)<br />\r\nBeras Putih bening &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp; rasa nasi pulen, putih dan wangi<br />\r\nAdaptasi luas (dapat ditanam di ketinggian 0-700 mdpl)</p>\r\n', 'benih-padi-hibrida-mapan-p-05', 110000, 'benih-padi-hibrida-mapan-p-05.jpg', '2020-12-27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`, `address`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', 'thanos1.jpg', 1, '', '', '2018-05-01', ''),
(2, 'anmsorytkj@gmail.com', '$2y$10$fjuskU1eseeYx/KCX2nruOWQDSFNaX5vsMuxkyga08kmKHm41rFzu', 0, 'Moch Zainul', 'anugrah', '', '', 0, 'FOBjKDtfwWgz', 'VLYMRsAr4SDuUzt', '2020-12-28', 'besuki'),
(3, 'haiyaturtsm3@gmail.com', '$2y$10$7d3UpMpe/MszWcnY2WRHFO3D32ivh0ul8CdjU.YtUcHEReKHhOt52', 0, 'alan', 'anugrah', '09876789', '', 0, 'TzM7QXjRtWbU', 'YPOZQK1Vbse6r39', '2020-12-28', 'Situbondo');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
