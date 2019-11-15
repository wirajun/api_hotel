-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2019 at 01:06 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akomodasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `harga` int(15) NOT NULL,
  `bintang` int(2) NOT NULL,
  `kodeprop` int(4) DEFAULT NULL,
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`nama`, `alamat`, `harga`, `bintang`, `kodeprop`, `id`) VALUES
('Ameera Hotel Pekanbaru', 'Senapelan,    Pekanbaru', 206612, 3, 1400, 1),
('PRIME PARK Hotel Pekanbaru', 'Bukit Raya,    Pekanbaru', 285124, 4, 1400, 2),
('Ayola First Point Pekanbaru', 'Tampan,    Pekanbaru', 338843, 3, 1400, 3),
('Citismart Bandara', 'Bukit Raya,    Pekanbaru', 185950, 2, 1400, 4),
('Red Planet Pekanbaru', 'Pusat Kota Pekanbaru,    Pekanbaru', 232487, 3, 1400, 5),
('Hotel Sabrina Paninsula Pekanbaru', 'Marpoyan Damai,    Pekanbaru', 154545, 0, 1400, 6),
('Grand Central Hotel Pekanbaru', 'Bukit Raya,    Pekanbaru', 442149, 4, 1400, 7),
('FOX Hotel Pekanbaru', 'Senapelan,    Pekanbaru', 421487, 4, 1400, 8),
('Citismart Hotel Pekanbaru', 'Pusat Kota Pekanbaru,    Pekanbaru', 185950, 2, 1400, 9),
('Pesonna Hotel Pekanbaru', 'Pusat Kota Pekanbaru,    Pekanbaru', 303966, 3, 1400, 10),
('The Zuri Pekanbaru', 'Payung Sekaki,    Pekanbaru', 437328, 4, 1400, 11),
('Alpha Hotel', 'Bukit Raya,    Pekanbaru', 239669, 3, 1400, 12),
('The Premiere Hotel Pekanbaru', 'Pusat Kota Pekanbaru,    Pekanbaru', 569328, 4, 1400, 13),
('favehotel Pekanbaru', 'Marpoyan Damai,    Pekanbaru', 258000, 3, 1400, 14),
('Paus Kost Syariah', 'Marpoyan Damai,    Pekanbaru', 102091, 0, 1400, 15),
('Lodge Labersa Garden Inn', 'Siak Hulu,    Pekanbaru', 338843, 2, 1400, 16),
('Cottage Labersa Garden Inn', 'Siak Hulu,    Pekanbaru', 1322314, 2, 1400, 17),
('Wisma Rainbow', 'Senapelan,    Pekanbaru', 143570, 1, 1400, 18),
('Labersa Grand Hotel & Convention Center', 'Siak Hulu Kampar,    Pekanbaru', 495868, 5, 1400, 19),
('Hotel Grand Zuri Pekanbaru', 'Lima Puluh,    Pekanbaru', 367309, 4, 1400, 20),
('Tjokro Hotel Pekanbaru', 'Bukit Raya,    Pekanbaru', 270744, 3, 1400, 21),
('New Hollywood Hotel', 'Lima Puluh,    Pekanbaru', 264463, 3, 1400, 22),
('Sabrina City', 'Marpoyan Damai,    Pekanbaru', 154545, 1, 1400, 23),
('Parma Paus Hotel', 'Marpoyan Damai,    Pekanbaru', 161157, 2, 1400, 24),
('Hotel Royal Asnof Pekanbaru', 'Marpoyan Damai,    Pekanbaru', 371901, 3, 1400, 25),
('Grand Suka Hotel Pekanbaru', 'Tampan,    Pekanbaru', 314050, 3, 1400, 26),
('Hotel Grand Jatra Pekanbaru', 'Pusat Kota Pekanbaru,    Pekanbaru', 661157, 5, 1400, 27),
('Novotel Pekanbaru', 'Senapelan,    Pekanbaru', 514917, 4, 1400, 28),
('Grand Elite Hotel Pekanbaru', 'Payung Sekaki,    Pekanbaru', 462810, 4, 1400, 29),
('Hotel Holiday Pekanbaru', 'Lima Puluh,    Pekanbaru', 82645, 2, 1400, 30),
('1BR Parahyangan Residence with Sofa Bed By Travelio', 'Cidadap,    Bandung', 445223, 0, 3200, 31),
('Alam Permai Hotel', 'Cidadap,    Bandung', 275482, 2, 3200, 32),
('Ardan Hotel', 'Sukajadi,    Bandung', 413223, 3, 3200, 33),
('Aston Braga Hotel & Residence Bandung', 'Sumur Bandung,    Bandung', 682396, 4, 3200, 34),
('Bantal Guling Pasar Baru', 'Andir,    Bandung', 116246, 2, 3200, 35),
('Bobobox Pods Dago', 'Citarum,    Bandung', 205785, 0, 3200, 36),
('Bobobox Pods Paskal', 'Cicendo,    Bandung', 197796, 0, 3200, 37),
('Clove Garden Hotel & Residences', 'Cimenyan,    Bandung', 499999, 4, 3200, 38),
('De Paviljoen Bandung By HIM', 'Bandung Wetan,    Bandung', 765821, 4, 3200, 39),
('El Cavana Hotel', 'Andir,    Bandung', 421120, 3, 3200, 40),
('eL Hotel Royale Bandung', 'Sumur Bandung,    Bandung', 553719, 4, 3200, 41),
('favehotel Premier Cihampelas', 'Cihampelas,    Bandung', 374667, 3, 3200, 42),
('FOX HARRIS City Center Bandung', 'Sumur Bandung,    Bandung', 423829, 4, 3200, 43),
('Gateway Pasteur Apartment By Nfive Hospitality', 'Cicendo,    Bandung', 275482, 3, 3200, 44),
('Geary Hotel Bandung', 'Cicendo,    Bandung', 338843, 3, 3200, 45),
('Gino Feruci Kebon Jati Bandung', 'Andir,    Bandung', 433884, 4, 3200, 46),
('Golden Flower Hotel', 'Braga,    Bandung', 487190, 4, 3200, 47),
('Grand Aquila Hotel', 'Pasteur,    Bandung', 833551, 5, 3200, 48),
('Grand Cordela Hotel Bandung', 'Soekarno Hatta Bypass,    Bandung', 369146, 3, 3200, 49),
('Grand Setiabudi Hotel', 'Setiabudi,    Bandung', 414454, 4, 3200, 50),
('Grand Tjokro Bandung', 'Coblong,    Bandung', 813553, 4, 3200, 51),
('Gumilang Regency Hotel by Gumilang Hospitality', 'Sukasari,    Bandung', 423333, 3, 3200, 52),
('Hemangini Hotel', 'Setiabudi,    Bandung', 599173, 4, 3200, 53),
('Home 33 Residence V', 'Sukasari,    Bandung', 413223, 0, 3200, 54),
('Hotel California Bandung', 'Bandung Wetan,    Bandung', 413499, 3, 3200, 55),
('Hotel Eve', 'Cibaduyut,    Bandung', 205233, 0, 3200, 56),
('Hotel Nalendra Bandung', 'Coblong,    Bandung', 537190, 3, 3200, 57),
('Hotel Ponty', 'Cidadap,    Bandung', 246473, 0, 3200, 58),
('Hotel Progo', 'Bandung Wetan,    Bandung', 190082, 3, 3200, 59),
('Kristalia Hotel', 'Cicendo,    Bandung', 261708, 2, 3200, 60),
('Metro Suite', 'Buahbatu,    Bandung', 214876, 3, 3200, 61),
('Mulberry Hill By The Lodge', 'Lembang,    Bandung', 826446, 0, 3200, 62),
('Novena Hotel Bandung', 'Lembang,    Bandung', 605234, 3, 3200, 63),
('Saloka Guesthouse', 'Cimahi,    Bandung', 132214, 1, 3200, 64),
('Serela Cihampelas Hotel', 'Coblong,    Bandung', 433884, 3, 3200, 65),
('Serela Merdeka Hotel', 'Bandung Kota,    Bandung', 433884, 3, 3200, 66),
('Serela Waringin Bandung', 'Andir,    Bandung', 359504, 3, 3200, 67),
('Smart Room Near Pasteur', 'Sukasari,    Bandung', 177961, 0, 3200, 68),
('Strategic Studio Tamansari La Grande Apt By Travelio', 'Sumur Bandung,    Bandung', 523438, 0, 3200, 69),
('Subwow Hostel Bandung', 'Bandung Wetan,    Bandung', 396694, 0, 3200, 70),
('Sudirman Suite', 'Andir,    Bandung', 267218, 3, 3200, 71),
('Tamansari Panoramic', 'Soekarno Hatta Bypass,    Bandung', 289256, 3, 3200, 72),
('The Blessing House Bed & Breakfast', 'Coblong,    Bandung', 166702, 0, 3200, 73),
('The Jarrdin Apartemen by Omami', 'Cihampelas,    Bandung', 234282, 0, 3200, 74),
('The Suites Metro Apartement by Naufal Faris Property', 'Buahbatu,    Bandung', 234160, 3, 3200, 75),
('The Suites Metro Apartment By Faris', 'Buahbatu,    Bandung', 273822, 3, 3200, 76),
('The Suites Metro Apartment By King Property', 'Buahbatu,    Bandung', 196924, 0, 3200, 77),
('Tibera Hotel Ciumbuleuit Bandung', 'Cidadap,    Bandung', 275482, 2, 3200, 78),
('Tibera Hotel Taman Cibeunying Bandung', 'Bandung Wetan,    Bandung', 305785, 2, 3200, 79),
('U Janevalla Bandung', 'Sumur Bandung,    Bandung', 815100, 4, 3200, 80),
('Villa Penginapan Purnama', 'Ciwidey,    Bandung', 164876, 2, 3200, 81),
('Vio Hotel Cihampelas', 'Bandung Wetan,    Bandung', 275482, 2, 3200, 82),
('Vio Hotel Cimanuk', 'Bandung Kota,    Bandung', 303030, 2, 3200, 83),
('Vio Hotel Surapati', 'Coblong,    Bandung', 358126, 2, 3200, 84),
('West Point Hotel', 'Andir,    Bandung', 526171, 4, 3200, 85),
('Zodiak @Asia Afrika Hotel', 'Regol,    Bandung', 296143, 2, 3200, 86),
('Zodiak @Kebon Kawung', 'Cicendo,    Bandung', 268595, 2, 3200, 87),
('Zodiak @Kebonjati', 'Andir,    Bandung', 224793, 2, 3200, 88),
('Zodiak @Paskal Bandung', 'Cicendo,    Bandung', 268595, 2, 3200, 89),
('Zodiak @Sutami Bandung', 'Sukajadi,    Bandung', 268595, 2, 3200, 90),
('Rivavi Kuta Beach Hotel', 'Badung,    Bali', 247934, 3, 5100, 94),
('The Alea Hotel Seminyak', 'Badung,    Bali', 277199, 3, 5100, 95),
('PrimeBiz Hotel Kuta', 'Badung,    Bali', 371900, 3, 5100, 96),
('J4 Hotels Legian', 'Badung,    Bali', 1583471, 4, 5100, 97),
('Wyndham Garden Kuta Beach Bali', 'Badung,    Bali', 780409, 4, 5100, 98),
('Dhyanapura City Hotel', 'Badung,    Bali', 108967, 3, 5100, 99),
('Atanaya Kuta Bali', 'Badung,    Bali', 583333, 4, 5100, 100),
('Ramada Encore Bali Seminyak', 'Badung,    Bali', 537190, 4, 5100, 101),
('Siesta Legian Hotel', 'Badung,    Bali', 240805, 3, 5100, 102),
('POP! Hotel Kuta Beach Bali', 'Badung,    Bali', 206776, 2, 5100, 103),
('Cara Cara Inn', 'Badung,    Bali', 295041, 3, 5100, 104),
('Grand Mega Resort & Spa', 'Badung,    Bali', 464876, 4, 5100, 105),
('favehotel Kuta Square', 'Badung,    Bali', 275975, 3, 5100, 106),
('Rofa Kuta Hotel', 'Badung,    Bali', 291322, 3, 5100, 107),
('INAYA Putri Bali', 'Badung,    Bali', 1923966, 5, 5100, 108),
('Manhattan Villa by Premier Hospitality Asia', 'Badung,    Bali', 16528926, 4, 5100, 109),
('La Mogi Cottage', 'Klungkung,    Bali', 421487, 3, 5100, 110),
('Sri Permana Deluxe', 'Gianyar,    Bali', 495868, 0, 5100, 111),
('Dijumah Homestay', 'Gianyar,    Bali', 234298, 0, 5100, 112),
('MaxOneHotels at Legian', 'Badung,    Bali', 275206, 3, 5100, 113),
('Jambuluwuk Oceano Seminyak', 'Badung,    Bali', 768595, 5, 5100, 114),
('Seminyak Garden', 'Badung,    Bali', 232397, 3, 5100, 115),
('Grand Livio Kuta Hotel', 'Badung,    Bali', 245867, 3, 5100, 116),
('Mega Boutique Hotel and Spa', 'Badung,    Bali', 407438, 4, 5100, 117),
('Hotel Zia Bali Kuta', 'Badung,    Bali', 373140, 4, 5100, 118),
('Matahari Kuta Beach House', 'Badung,    Bali', 115702, 2, 5100, 119),
('The Sunrise Hotel Sanur', 'Denpasar,    Bali', 123967, 3, 5100, 120),
('Klapa Resort', 'Badung,    Bali', 951363, 5, 5100, 121),
('Grand Ixora Kuta Resort', 'Badung,    Bali', 409008, 4, 5100, 122),
('MaxOneHotels at Ubud', 'Gianyar,    Bali', 466115, 3, 5100, 123),
('Villa Mandi Ubud', 'Gianyar,    Bali', 838264, 4, 5100, 124),
('Best Western Kuta Beach', 'Badung,    Bali', 484319, 4, 5100, 125),
('Sense Hotel Seminyak', 'Badung,    Bali', 814152, 4, 5100, 126),
('Kutabex Beach Front Hotel', 'Badung,    Bali', 572434, 3, 5100, 127),
('Tijili Seminyak', 'Badung,    Bali', 743801, 4, 5100, 128),
('Losari Sunset Hotel', 'Badung,    Bali', 241736, 3, 5100, 129),
('Grand Whiz Hotel Nusa Dua', 'Badung,    Bali', 618842, 4, 5100, 130),
('L Amore Hotel Seminyak', 'Badung,    Bali', 249587, 3, 5100, 131),
('GM Bali Guest House', 'Badung,    Bali', 115289, 0, 5100, 132),
('Sense Sunset Seminyak', 'Badung,    Bali', 436776, 4, 5100, 133),
('POP! Hotel Teuku Umar', 'Denpasar,    Bali', 220881, 2, 5100, 134),
('Aston Denpasar Hotel & Convention Center', 'Denpasar,    Bali', 433000, 4, 5100, 135),
('Swiss-Belexpress Kuta Legian', 'Badung,    Bali', 294214, 3, 5100, 136),
('The One Legian', 'Badung,    Bali', 1635072, 4, 5100, 137),
('ibis Styles Bali Denpasar', 'Denpasar,    Bali', 321432, 3, 5100, 138),
('Signature Bali Sanur', 'Denpasar,    Bali', 413223, 4, 5100, 139),
('Dewata Indah Hotel', 'Denpasar,    Bali', 89256, 1, 5100, 140),
('Duo Legian Hotel', 'Badung,    Bali', 181942, 2, 5100, 141),
('Wyndham Tamansari Jivva Resort Bali', 'Gianyar,    Bali', 798898, 5, 5100, 142),
('HARRIS Hotel Seminyak Bali', 'Badung,    Bali', 583057, 4, 5100, 143),
('favehotel Kuta Kartika Plaza', 'Badung,    Bali', 398000, 3, 5100, 144),
('Sari Villa Ubud', 'Gianyar,    Bali', 361570, 3, 5100, 145),
('Koi Hotel & Residence', 'Denpasar,    Bali', 230826, 2, 5100, 146),
('Santosa City Hotel', 'Denpasar,    Bali', 151455, 2, 5100, 147),
('The Legian 777', 'Badung,    Bali', 116056, 1, 5100, 148),
('Bali Paragon Resort Hotel', 'Badung,    Bali', 493057, 4, 5100, 149),
('H Sovereign Bali', 'Badung,    Bali', 557851, 4, 5100, 150),
('Bali Nusa Dua Hotel', 'Badung,    Bali', 1220950, 5, 5100, 151),
('The Tusita Kuta Hotel', 'Badung,    Bali', 290082, 3, 5100, 152),
('Pondok Asri Denpasar', 'Denpasar,    Bali', 173554, 0, 5100, 153);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(2048) NOT NULL,
  `token` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `token`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '123456', NULL),
(4, 'wira', 'Jun', 'wirajun@gmail.com', '$2y$10$X68PSsf/Fj1ksBkTXx3ga.meOiWdIY4Y.VbHESys40hfOHkW9ZYHq', '5a9c058c4c5f107bd46b3d76b2ba2105'),
(5, 'aman', 'amin', 'aman@gmail.com', '$2y$10$Y4sqW62jPz.vjn2OAtLky.xrAx4zu.0djsZ85lUccAQ53kG2JbEJm', '2bf2e089898743beb3aa3a88f0a08a82'),
(8, 'a', 'a', 'admin@gmail.net', '$2y$10$5dPyByHV7xExeGC8H9sr9eeWElP8GD65mKrafgfRiYUeFNlwVYsZK', 'ce8ccbcdab13327f11da098d3b7f7d6c');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `kode` int(11) NOT NULL,
  `nama_prop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`kode`, `nama_prop`) VALUES
(1100, 'Aceh'),
(1200, 'Sumatera Utara'),
(1300, 'Sumatera Barat'),
(1400, 'Riau'),
(1500, 'Jambi'),
(1600, 'Sumatera Selatan'),
(1700, 'Bengkulu'),
(1800, 'Lampung'),
(1900, 'Kep. Bangka Belitung'),
(2100, 'Kep. Riau'),
(3100, 'Dki Jakarta'),
(3200, 'Jawa Barat'),
(3300, 'Jawa Tengah'),
(3400, 'Di Yogyakarta'),
(3500, 'Jawa Timur'),
(3600, 'Banten'),
(5100, 'Bali'),
(5200, 'Nusa Tenggara Barat'),
(5300, 'Nusa Tenggara Timur'),
(6100, 'Kalimantan Barat'),
(6200, 'Kalimantan Tengah'),
(6300, 'Kalimantan Selatan'),
(6400, 'Kalimantan Timur'),
(6500, 'Kalimantan Utara'),
(7100, 'Sulawesi Utara'),
(7200, 'Sulawesi Tengah'),
(7300, 'Sulawesi Selatan'),
(7400, 'Sulawesi Tenggara'),
(7500, 'Gorontalo'),
(7600, 'Sulawesi Barat'),
(8100, 'Maluku'),
(8200, 'Maluku Utara'),
(9100, 'Papua Barat'),
(9400, 'Papua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
