-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Oca 2019, 17:53:07
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaretdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `description`, `keywords`, `status`, `create_at`, `update_at`) VALUES
(9, 0, 'Üst Giyim', 'MacroMan Üst Giyim', 'MacroMan', 'True', '2018-11-26 23:39:32', '2018-12-19 18:06:14'),
(10, 0, 'Alt Giyim', 'MacroMan Alt Giyim', 'MacroMan', 'True', '2018-11-26 23:40:12', '2018-12-19 18:06:20'),
(12, 0, 'Dış Giyim', 'MacroMan Dış Gyim', 'MacroMan', 'True', '2018-12-19 18:06:05', '2018-12-19 18:06:38'),
(13, 0, 'Kombin Modelleri', 'MacroMan Erkek Kombin Modelleri', 'MacroMan', 'True', '2018-12-19 18:07:58', '2018-12-20 01:00:46'),
(14, 0, 'Takım Elbise', 'MacroMan Takım Elbise', 'MacroMan', 'True', '2018-12-19 18:08:28', '2018-12-19 18:08:53'),
(15, 0, 'Ayakkabı', 'MacroMan Ayakkabı', 'MacroMan', 'True', '2018-12-19 18:09:03', '2018-12-19 18:10:27'),
(16, 0, 'Aksesuar', 'MacroMan Aksesuar', 'MacroMan', 'True', '2018-12-19 18:09:07', '2018-12-19 18:10:29'),
(17, 9, 'Triko & Kazak', 'MacroMan Triko & Kazak', 'MacroMan', 'True', '2018-12-19 18:12:10', '2018-12-19 22:52:47'),
(19, 9, 'Gömlek', 'MacroMan Gömlek', 'MacroMan', 'True', '2018-12-19 18:12:35', '2018-12-19 18:15:53'),
(21, 10, 'Pantolon', 'MacroMan Pantolon', 'MacroMan', 'True', '2018-12-19 18:16:33', '2018-12-19 18:16:54'),
(22, 12, 'Ceket', 'MacroMan Ceket', 'MacroMan ', 'True', '2018-12-19 18:17:00', '2018-12-19 18:17:59'),
(23, 12, 'Kaban', 'MacroMan Kaban', 'MacroMan ', 'True', '2018-12-19 18:17:02', '2018-12-19 18:18:00'),
(24, 12, 'Yelek', 'MacroMan Yelek', 'MacroMan ', 'True', '2018-12-19 18:17:06', '2018-12-19 18:18:01'),
(25, 12, 'Mont', 'MacroMan Mont', 'MacroMan ', 'True', '2018-12-19 18:17:10', '2018-12-19 18:18:13'),
(26, 15, 'Bot & Çizme', 'MacroMan Bot & Çizme', 'MacroMan', 'True', '2018-12-19 18:18:48', '2018-12-19 18:19:54'),
(28, 16, 'Kravat & Mendil', 'MacroMan Kravat & Mendil', 'MacroMan', 'True', '2018-12-19 18:20:21', '2018-12-19 18:20:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `product_id`, `image`) VALUES
(2, 5, 'b.png'),
(3, 1, '7e9b23eecac8296042ecfb7699ea0362.png'),
(4, 5, '2efc8aa3c332b6d9cb42ec6d95f94a81.png'),
(6, 7, 'b2972f4e139e6ae546862c3e66c694bc.jpeg'),
(8, 6, '6910411e9a676ae6a12168c675cf32e2.jpeg'),
(12, 7, '9955b082e6b7e4830fd250bdaf0f08d8.png'),
(13, 7, '8bb5e20c2a8404c036c37a60d812e726.jpeg'),
(14, 7, '27a77a2bfc3fb2f15d682b65a5983ce0.png'),
(15, 1, '781c7edc06b9aa969c09ef42206287ef.jpeg'),
(16, 13, 'bf3cd1e79fb7814e22f9a692c5829e7c.jpeg'),
(17, 13, '24f358b0a5140e2f2f8bbea3228367d4.jpeg'),
(18, 14, '4d39663c10bc1385f909f0323fe68d3b.jpeg'),
(19, 14, 'dd6e12dbb93dea72d34d3c13139f8d76.jpeg'),
(20, 16, 'aca55458b39540f76ea4bc7b54a94d35.jpeg'),
(21, 16, 'e1c40196e23653321594091cccb6a18f.jpeg'),
(22, 16, '30229e1bfe911426a1d9e456f733fbde.jpeg'),
(23, 17, 'b55e540c08f034a36edf9ffa3fbc1a75.jpeg'),
(24, 17, 'd2b0f3748a1082bcbf6d366e1c5c59c3.jpeg'),
(25, 19, 'c29b8508d46dacc0cf8bad90440bfe5e.jpeg'),
(26, 19, '9bc1aec485bf9dfca8496196fd196414.jpeg'),
(27, 19, 'c457da0759229dd41c9bd172c68baf34.jpeg'),
(28, 19, '6b9a4945e694995ed8c97b129a2ae626.jpeg'),
(29, 21, 'e67a27a3565c4253371df0fab6a85c13.jpeg'),
(30, 21, 'e25725e55c756f5b017528454b48c5f5.jpeg'),
(31, 20, '8c8f821c107d13f8e78d115c8562c7bf.jpeg'),
(32, 22, '2fb056761d5d57ed19c290befd72793a.jpeg'),
(33, 22, 'fe301956de2573bee44d06ccf4a65109.jpeg'),
(34, 23, '8da39e19519ea9e8bb2f51e16e5bf36a.jpeg'),
(35, 23, '5057e615842389119c8b06a3520dbc4a.jpeg'),
(37, 24, '4eb141dc5a2ada4d361703b6c95eec13.jpeg'),
(38, 24, '09225031f091114e1fbd7a92f5ada495.jpeg'),
(39, 25, '95e11185d0e8610c97ca8cd5eb4bf09a.jpeg'),
(40, 25, 'e3e4610046804d4d029719c9928d9a31.jpeg'),
(41, 26, '101418ce1c1f09f9a2cec7e4a621f40b.jpeg'),
(42, 26, '99bdd9e5ac83ca02541010b2601d6887.jpeg'),
(43, 28, 'a9713167b86e14f2f2bc3803406dd1b8.jpeg'),
(44, 28, 'a9d5583e21063f0d24377a5b4c9b152c.jpeg'),
(45, 29, '72aed5fac7aca4b403a312ec168d0585.jpeg'),
(46, 29, '722b50ee67990bb131c64719ba0b6c90.jpeg'),
(47, 30, 'f0e23c0e9a68acb1416ed403cacad9da.jpeg'),
(48, 31, '0e4489c6db12583a27f28e8471b34e22.jpeg'),
(49, 31, 'f21d1da3366f75894875bdc8975d0f7f.jpeg'),
(50, 32, '947e0edd1a092f767c33d9d99a0e3f2c.jpeg'),
(51, 32, '26400e61da83001fe9dc960728bd6852.jpeg'),
(52, 33, '8d5090ed35288a23e38e1ba71f5994a9.jpeg'),
(53, 33, 'f343a066e6d78ffd2fc2eca89fcaa87e.jpeg'),
(54, 34, 'ff95ce7e0ae91e607c12d4ff8d308a51.jpeg'),
(55, 34, 'abd369624aed24482a3c9d058c1367f6.jpeg'),
(56, 35, '2774be52be03d6074615ccd6bb03f30c.jpeg'),
(57, 35, '62004e1723a5c60ac4423a65bd1472bd.jpeg'),
(58, 36, '3b56aefd88117114334fffe89aa2d041.jpeg'),
(59, 36, '6cf428178bb334660337b25a01524cf1.jpeg'),
(60, 37, 'dd2d760dc65abc10fe01cfd608a4f4cf.jpeg'),
(61, 37, 'df1d6cd7edb05f051c0ced0dafe141b3.jpeg'),
(62, 38, '9823692176bea7e5cc4783dc4e1f7664.jpeg'),
(63, 39, '2c78f06131772d13a78bd1ca23039703.jpeg'),
(64, 40, 'de0245716ea4485630715c7db0c53b60.jpeg'),
(65, 41, 'd4512ebf3c50672f0de6244e99d887af.jpeg'),
(66, 42, '1de9f4a682d25fd199a8055b2829b42b.jpeg'),
(67, 43, 'b6a1d7714415170902ebe13e55ec27b3.jpeg'),
(68, 45, '47a6cb25696e8d93ca585526e70230bb.jpeg'),
(69, 44, 'ca0b150969bed15da7027a923706044b.jpeg'),
(70, 47, '6842279a83b0f6dd3b0fb7d059529fae.jpeg'),
(71, 48, 'c37f88ad5f73288e2d0f63219236a2a6.jpeg'),
(72, 49, 'cbaddfda887a6070407b78eb837f94d6.jpeg'),
(73, 49, '2a0fd7b789202fbb80f00fb9ff14dec6.jpeg'),
(74, 50, '7c09790fe83e5d851183c82eddc9c6f9.jpeg'),
(75, 51, 'ecbe3ac9fa84d5e9588c2bad17c9c83d.jpeg'),
(76, 52, 'a3738d8750076919e13787da9d37a54c.jpeg'),
(77, 53, 'a4017d5ab4372db5607af21b3931d4da.jpeg'),
(78, 54, '35fabaa6043640b13746a81beb7ca39d.jpeg'),
(79, 55, '78c4dff42f816fd68d0322f9e9a20b2d.jpeg'),
(80, 57, '1d7efba76bb01e5711b1d097fe2eda06.jpeg'),
(81, 59, 'cbd6c4a6f143a51df9a033aa1fe95fba.jpeg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image_setting`
--

CREATE TABLE `image_setting` (
  `id` int(11) NOT NULL,
  `slider_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anasayfa_image_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_iki` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_uc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_dort` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_bes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_kampanya_alti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urunler_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hakkimizda_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iletisim_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referans_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kampanya_link_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kampanya_link_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image_setting`
--

INSERT INTO `image_setting` (`id`, `slider_image_one`, `slider_image_two`, `anasayfa_image_one`, `anasayfa_image_two`, `anasayfa_image_three`, `anasayfa_image_four`, `anasayfa_image_five`, `anasayfa_image_six`, `slider_kampanya1`, `slider_kampanya_iki`, `slider_kampanya_uc`, `slider_kampanya_dort`, `slider_kampanya_bes`, `slider_kampanya_alti`, `urunler_image`, `hakkimizda_image`, `iletisim_image`, `referans_image`, `kampanya_link_one`, `kampanya_link_two`, `temp`) VALUES
(1, '576d11a3bfbb7bc8d8bd4dd3c493c9b1.jpeg', '92246140676dadc0559b63ecfd2abe13.jpeg', '95a22d8edd762b76c9a31d334040827e.jpeg', 'b0b04b9abc42307d02b33c00c14935e7.jpeg', 'fbefee0b946bbf83fbd4f47a8360f3b9.jpeg', '8c74520de60a65a7291bdc3c6fe1bd01.jpeg', '53ee818a9cd72d7f55fca315316f218c.jpeg', '7259be4684479bd7f7ea0ba5827e3395.jpeg', 'En Gözde Erkek Giyim Ürünleri', 'Kışlık Yeni Sezon Ürünler', 'İndirimi Kaçırmayın', 'Harika Günlük Fırsatlar', 'Sınırlı %50 İndirim Şansı', 'Bu kışa özel avantajlar', 'ccbda3d35f248952fc2ba5c08410f839.jpeg', 'b4766c56da2c08010f0acec723b2b6f1.png', '1411d1c413008769b263583166431148.jpeg', '994788f4b20bc8c689cb9dfb854b6089.jpeg', 'vitrin', 'vitrin', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `comment`, `status`) VALUES
(1, 'yasin', 'iyasin.ates@gmail.com', 'Merhaba', 'Okundu İşlem yapıldı', 'Okundu'),
(2, 'yasin', 'iyasin.ates@gmail.com', 'Nasılsınız', NULL, 'Okundu'),
(3, 'yasin', 'iyasin.ates@gmail.com', 'Güzel Olmuş', NULL, 'Okundu'),
(4, 'yasin', 'iyasin.ates@gmail.com', 'Bu Son', 'İşlem Yapılamadı', 'Okundu'),
(5, 'yasin', 'iyasin.ates@gmail.com', 'Tamam Bu Son', NULL, 'Okundu'),
(8, 'yasin', 'iyasin.ates@gmail.com', 'dsadasdsadas', 'işlem yapıldı', 'Okundu'),
(9, 'yasin', 'samet@gmail.com', 'son deneme', 'deneme işlem', 'Okundu'),
(10, 'ezgi', 'ezgi@gmail.com', 'Hello World', 'Merhaba Dünya', 'Okundu'),
(11, 'denemeeeee', 'ezgsadi@gmail.com', 'isdfklsx', NULL, 'Okundu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181124002852'),
('20181126192202'),
('20181129001333'),
('20181205235730'),
('20181206035411'),
('20181220044942'),
('20181220232558'),
('20181221194723'),
('20181222211943'),
('20181228000529');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`, `create_at`, `update_at`) VALUES
(1, 1, 6, 38, '500', 3, '1500', 'Düğmeli Gömlek Beyaz', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(2, 1, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(3, 1, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(4, 1, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(5, 3, 6, 19, '500', 1, '500', 'Kaşe Klasik Kaban', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(6, 3, 6, 17, '500', 3, '1500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(7, 4, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(8, 6, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(9, 7, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(10, 8, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(11, 9, 6, 32, '500', 1, '500', 'Kruvaze Yelek Kahve', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(12, 10, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(13, 11, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(14, 12, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(15, 13, 6, 19, '500', 1, '500', 'Kaşe Klasik Kaban', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(16, 14, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(17, 16, 35, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(18, 16, 35, 20, '500', 1, '500', 'Kaşe Kaban mixed', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(19, 17, 35, 23, '500', 1, '500', 'Klasik Ceket Camel', 'Ordered', '2019-01-12 11:27:32', '2019-01-12 11:27:29'),
(20, 18, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-14 19:14:43', '2019-01-14 19:14:43'),
(21, 19, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-14 19:20:20', '2019-01-14 19:20:20'),
(22, 20, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-14 21:31:34', '2019-01-14 21:31:34'),
(23, 21, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-14 22:15:32', '2019-01-14 22:15:32'),
(24, 21, 6, 16, '500', 1, '500', 'Kapitone Kaban', 'Ordered', '2019-01-14 22:15:32', '2019-01-14 22:15:32'),
(25, 22, 6, 38, '500', 1, '500', 'Düğmeli Gömlek Beyaz', 'Ordered', '2019-01-20 22:58:08', '2019-01-20 22:58:08'),
(26, 22, 6, 37, '500', 1, '500', 'Kapitone Mont Siyah', 'Ordered', '2019-01-20 22:58:08', '2019-01-20 22:58:08'),
(27, 23, 7, 22, '500', 1, '500', 'Klasik Ceket Mor', 'Ordered', '2019-01-21 18:56:10', '2019-01-21 18:56:10'),
(28, 24, 6, 17, '500', 1, '500', 'Kaşe Kaban Hakim Yaka', 'Ordered', '2019-01-22 09:39:28', '2019-01-22 09:39:28'),
(29, 24, 6, 20, '500', 1, '500', 'Kaşe Kaban mixed', 'Ordered', '2019-01-22 09:39:28', '2019-01-22 09:39:28'),
(30, 25, 6, 20, '500', 1, '500', 'Kaşe Kaban mixed', 'Ordered', '2019-01-22 10:25:09', '2019-01-22 10:25:09');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `adress`, `city`, `phone`, `shipinfo`, `status`, `note`, `create_at`, `update_at`) VALUES
(11, 6, '500', 'Samet YILMAZ', NULL, 'İstanbul', NULL, '                                                \r\n                    dsadsadassa\r\n                    ', 'accepted', '                                                \r\n                    sadsadsa\r\n                    ', NULL, NULL),
(12, 6, '500', 'Samet YILMAZ', NULL, 'İstanbul', NULL, NULL, 'New', NULL, NULL, NULL),
(13, 6, '500', 'Samet YILMAZ', NULL, 'İstanbul', NULL, NULL, 'New', NULL, NULL, NULL),
(14, 6, '500', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', NULL, 'New', NULL, NULL, NULL),
(15, 6, '0', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', NULL, 'New', NULL, NULL, NULL),
(16, 35, '1000', 'hello word', NULL, NULL, '123', NULL, 'New', NULL, NULL, NULL),
(17, 35, '500', 'hello word', 'Karabük', 'İzmir', '123', '                        \r\n                    ', 'accepted', '                        \r\n                    ', NULL, NULL),
(18, 6, '500', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', NULL, 'New', NULL, NULL, NULL),
(19, 6, '500', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', '                        \r\n                    ', 'complated', '                        \r\n                    ', NULL, '2019-01-14 22:21:18'),
(20, 6, '500', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', '                        \r\n                    ', 'canceled', '                        \r\n                    ', NULL, '2019-01-14 22:21:10'),
(21, 6, '1000', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', '                                                \r\n                    sfsdfsdfs\r\n                    ', 'inshipping', '                                                \r\n                    fsdfsd\r\n                    ', NULL, '2019-01-14 22:21:36'),
(22, 6, '1000', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', NULL, 'New', NULL, NULL, NULL),
(23, 7, '500', 'Esma Ezgi ERATIR', 'Kars', 'Kars', '05059809628', NULL, 'New', NULL, NULL, NULL),
(24, 6, '1000', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', '                        Kargoda gönderiliyor.\r\n                    ', 'accepted', '                        \r\n                    Hızlı gönderim.', NULL, '2019-01-22 09:40:44'),
(25, 6, '500', 'Samet YILMAZ', 'İstanbul', 'İstanbul', '05059809633', '                        \r\n                    ', 'accepted', '                        \r\n                    ', NULL, '2019-01-22 10:25:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `minamout` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `category_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `title`, `keywords`, `description`, `type`, `publisher_id`, `year`, `amount`, `pprice`, `sprice`, `minamout`, `detail`, `image`, `category_id`, `user_id`, `status`, `create_at`, `update_at`) VALUES
(16, 'Kapitone Kaban', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '0ffd232b3fe3a13556a8b30a0094cdde.jpeg', 23, 0, 'True', '2018-12-19 23:42:41', '2019-01-14 19:05:41'),
(17, 'Kaşe Kaban Hakim Yaka', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 'a0b9b2e49ef90c93c504783560a4f371.jpeg', 23, 0, 'True', '2018-12-19 23:44:05', '2019-01-12 14:39:54'),
(18, 'Kaşe Kaban ', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'ac522476a9ced03d3e0ec62da70c3bc9.jpeg', 23, 0, 'True', '2018-12-19 23:44:11', '2018-12-22 05:32:33'),
(19, 'Kaşe Klasik Kaban', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'd3c21ea4f0fb36867b27a9ec800e78ab.jpeg', 23, 0, 'True', '2018-12-19 23:46:17', '2018-12-22 05:32:33'),
(20, 'Kaşe Kaban mixed', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '95e2cef8a6bf895b97a7522ce8363fb4.jpeg', 23, 0, 'True', '2018-12-19 23:46:32', '2018-12-22 05:32:33'),
(21, 'Kaşe Kaban Spor ', 'MacroMan', 'Kaban', 'Kaban', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '0a3e074d0a2fe1de333f4ce42f4089d4.jpeg', 23, 0, 'True', '2018-12-19 23:46:50', '2018-12-22 05:32:34'),
(22, 'Klasik Ceket Mor', 'MacroMan', 'Ceket', 'Ceket', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'b793a34f23be80592ac77588dfe3f909.jpeg', 22, 0, 'True', '2018-12-20 00:03:21', '2018-12-22 05:32:34'),
(23, 'Klasik Ceket Camel', 'MacroMan', 'Ceket', 'Ceket', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'd9dd41da82729dcfbca09b7135d8076b.jpeg', 22, 0, 'True', '2018-12-20 00:03:23', '2018-12-22 05:32:34'),
(24, 'Ceket Bej', 'MacroMan', 'Ceket', 'Ceket', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'c703a9f19d7b669cede24552e49c4403.jpeg', 22, 0, 'True', '2018-12-20 00:03:25', '2018-12-22 05:32:35'),
(25, 'Klasik Ceket Siyah Bordo', 'MacroMan', 'Ceket', 'Ceket', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'd273d322dd00f152f6066b9d60c85830.jpeg', 22, 0, 'True', '2018-12-20 00:03:26', '2018-12-22 05:32:35'),
(26, 'Klasik Ceket Siyah', 'MacroMan', 'Ceket', 'Ceket', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'e99d7433e262b40c9338eac811947525.jpeg', 22, 0, 'True', '2018-12-20 00:03:27', '2018-12-22 05:32:36'),
(28, 'Triko Yelek Siyah ', 'MacroMan', 'Yelek', 'Yelek', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'd5f9a8545c09d539323d74aee158ef8a.jpeg', 24, 0, 'True', '2018-12-20 00:20:00', '2018-12-22 05:32:36'),
(29, 'Kruvaze Yelek Mor', 'MacroMan', 'Yelek', 'Yelek', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '1f700efa5f0b2405f73930e03139eeea.jpeg', 24, 0, 'True', '2018-12-20 00:20:09', '2018-12-22 05:32:36'),
(30, 'Kruvaze Yelek Siyah', 'MacroMan', 'Yelek', 'Yelek', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '60e5a902d4a4cb779716720ef59a1be0.jpeg', 24, 0, 'True', '2018-12-20 00:20:10', '2018-12-22 05:32:37'),
(31, 'Yün Yelek Lacivert', 'MacroMan', 'Yelek', 'Yelek', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'fbac7522a31ba1ea4a5fe6fc8dac088e.jpeg', 24, 0, 'True', '2018-12-20 00:20:11', '2018-12-22 05:32:40'),
(32, 'Kruvaze Yelek Kahve', 'MacroMan', 'Yelek', 'Yelek', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'ca425a5e72c816526ed7a096dcf3549c.jpeg', 24, 0, 'True', '2018-12-20 00:20:13', '2018-12-22 05:32:40'),
(33, 'Kapitone Mont Deri Lacivert', 'MacroMan', 'Mont', 'Mont', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '297fc3c12c72788405ef5be9c8af0890.jpeg', 25, 0, 'True', '2018-12-20 00:31:15', '2018-12-22 05:32:41'),
(34, 'Örme Kapitone Mont Haki', 'MacroMan', 'Mont', 'Mont', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '9e93074123a2da51187a9a9f8c497ba9.jpeg', 25, 0, 'True', '2018-12-20 00:31:16', '2018-12-22 05:32:41'),
(35, 'Kapitone Mont Taş', 'MacroMan', 'Mont', 'Mont', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '30e44cb146c588a20247c233c2d8343f.jpeg', 25, 0, 'True', '2018-12-20 00:31:16', '2018-12-22 05:32:42'),
(36, 'Kapitone Mont Bordo', 'MacroMan', 'Mont', 'Mont', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'c951fd2ecee4b6093a83d4de53c57daf.jpeg', 25, 0, 'True', '2018-12-20 00:31:17', '2018-12-22 05:32:42'),
(37, 'Kapitone Mont Siyah', 'MacroMan', 'Mont', 'Mont', 0, 2019, 25, 0, 500, 2, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '287ca694308cd5741f6438a2ddc9c811.jpeg', 25, 0, 'True', '2018-12-20 00:31:18', '2018-12-22 05:32:43'),
(38, 'Düğmeli Gömlek Beyaz', 'MacroMan', 'Gömlek', 'Gömlek', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '410cc52957d6d281d8e700648f12ed20.jpeg', 19, 0, 'True', '2018-12-20 00:40:05', '2018-12-22 05:32:43'),
(39, 'Comford Gömlek Lacivert', 'MacroMan', 'Gömlek', 'Gömlek', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '511d65ccb5d219d9519c83c356342b3f.jpeg', 19, 0, 'True', '2018-12-20 00:40:06', '2018-12-22 05:32:44'),
(40, 'Gömlek Düğmeli Lacivert', 'MacroMan', 'Gömlek', 'Gömlek', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '6125616910bb610af74a2fbfe56881bb.jpeg', 19, 0, 'True', '2018-12-20 00:40:07', '2018-12-22 05:32:44'),
(41, 'Triko Kazak Siyah', 'MacroMan', 'Triko & Kazak', 'Triko & Kazak', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '67db5e9eef203108abc6f46712d5927d.jpeg', 17, 0, 'True', '2018-12-20 00:44:54', '2018-12-22 05:32:45'),
(42, 'Triko Kazak Ekru', 'MacroMan', 'Triko & Kazak', 'Triko & Kazak', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '7c45539f66fdb6fa7c2eb908ced8aa21.jpeg', 17, 0, 'True', '2018-12-20 00:44:55', '2018-12-22 05:32:45'),
(43, 'Triko Body Kazak Gri', 'MacroMan', 'Triko & Kazak', 'Triko & Kazak', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '8d9d0cf1717c63b6391a054f40aae441.jpeg', 17, 0, 'True', '2018-12-20 00:44:56', '2018-12-22 05:32:46'),
(44, 'Pantolon Yan Cep Antrasit', 'MacroMan', 'Pantolon', 'Pantolon', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '07e0f5234b2ad8a1628efc4fb6623bd2.jpeg', 21, 0, 'True', '2018-12-20 00:54:50', '2018-12-22 05:32:46'),
(45, 'Klasik Pantolon', 'MacroMan', 'Pantolon', 'Pantolon', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '421e6ac2f73abf6df9e56254e1daba9d.jpeg', 21, 0, 'True', '2018-12-20 00:54:51', '2018-12-22 05:32:46'),
(46, 'Pantolon Lacivert', 'MacroMan', 'Pantolon', 'Pantolon', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '9caa9e339656b4728712cb778630c737.jpeg', 21, 0, 'True', '2018-12-20 00:54:52', '2018-12-22 05:32:47'),
(47, 'Kombin Kahve', 'MacroMan', 'Kombin', 'Kombin', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '355c09b9528a28ba950404532b556573.jpeg', 13, 0, 'True', '2018-12-20 01:00:53', '2018-12-22 05:32:47'),
(48, 'Kombin Haki', 'MacroMan', 'Kombin', 'Kombin', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'fb022823131ff155480bd9926031ca95.jpeg', 13, 0, 'True', '2018-12-20 01:00:55', '2018-12-22 05:32:48'),
(49, 'Kombin Camel', 'MacroMan', 'Kombin', 'Kombin', 0, 2019, 25, 0, 500, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'deffb0fa259e09daee5508865f878a7f.jpeg', 13, 0, 'True', '2018-12-20 01:03:07', '2018-12-22 05:32:48'),
(50, 'Ekose Takım Elbise İndigo', 'MacroMan', 'Takım Elbise', 'Takım Elbise', 0, 2019, 25, 0, 1000, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'ebbc9be806e45393e5b1a16053dfe6b1.jpeg', 14, 0, 'True', '2018-12-20 01:22:46', '2018-12-22 05:32:49'),
(51, 'Takım Yelekli Siyah', 'MacroMan', 'Takım Elbise', 'Takım Elbise', 0, 2019, 25, 0, 1000, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'a3fc655ab76ce52a08e716005eba4576.jpeg', 14, 0, 'True', '2018-12-20 01:22:51', '2018-12-22 05:32:49'),
(52, 'Takım Kruvaze Lacivert', 'MacroMan', 'Takım Elbise', 'Takım Elbise', 0, 2019, 25, 0, 1000, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '3411da56cf0405979133f39c0dbb0bea.jpeg', 14, 0, 'True', '2018-12-20 01:23:04', '2018-12-22 05:32:50'),
(53, 'Scootland Deri Bot Siyah', 'MacroMan', 'Bot Çizme', 'Bot Çizme', 0, 2019, 25, 0, 600, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '15642755f1a63c0ef1e549456bd629f0.jpeg', 26, 0, 'True', '2018-12-20 01:28:41', '2018-12-22 05:32:50'),
(54, 'Us Army Bot Siyah', 'MacroMan', 'Bot Çizme', 'Bot Çizme', 0, 2019, 25, 0, 600, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'c825b6ed726a5b65227de4ec4d97677f.jpeg', 26, 0, 'True', '2018-12-20 01:28:48', '2018-12-22 05:32:51'),
(55, 'Casual Bot Süet Deri Siyah', 'MacroMan', 'Bot Çizme', 'Bot Çizme', 0, 2019, 25, 0, 600, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '21f800c962e08e00161c6b10bf70c5c2.jpeg', 26, 0, 'True', '2018-12-20 01:28:50', '2019-01-20 22:58:57'),
(56, 'Kravat Mendil Bordo', 'MacroMan', 'Kravat & Mendil', 'Kravat & Mendil', 0, 2019, 25, 0, 100, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'af61c64145950bf01a6951f5be021fc3.jpeg', 28, 0, 'True', '2018-12-20 01:32:20', '2018-12-22 05:32:55'),
(57, 'Kravat Mendil Kırmızı', 'MacroMan', 'Kravat & Mendil', 'Kravat & Mendil', 0, 2019, 25, 0, 100, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', '0a474505c62dc0f33750eed7cd868754.jpeg', 28, 0, 'True', '2018-12-20 01:32:21', '2018-12-22 05:32:55'),
(58, 'Kravat Mendil Lacivert', 'MacroMan', 'Kravat & Mendil', 'Kravat & Mendil', 0, 2019, 25, 0, 100, 0, '<p>Ürünümüz Slim Fit olup &nbsp;%99 Pamuk &nbsp;%1 &nbsp;Elastan&nbsp; kumaştan yapılmaktadır.</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/7bc0dcbe05.jpeg\"></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>\n', 'afdeed3f5eff362f28b3bd723727773c.jpeg', 28, 0, 'True', '2018-12-20 01:32:22', '2018-12-22 05:32:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppaswd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `company`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpmail`, `smtppaswd`, `smtpport`, `aboutus`, `contact`, `referances`, `status`, `create_at`, `update_at`) VALUES
(1, 'MacroMan A.Ş', 'Erkek Ürünleri Sitesi', 'Pantolon Gömlek Kazak', 'MacroMan', 'Atatürk Caddesi Karabük Türkiye', '0505 980 9621', '0505 980 9622', 'info@macroman.com', 'smtp.gmail.com', 'domain@domain.com', '12345', '587', '<h2><strong>Hakkımızda</strong></h2><p>&nbsp;</p><p>MacroMan Mağazacılık A.Ş. Türkiye\'nin halka açık gıda ve elektronik dışı en büyük perakende grubu MacroMan&nbsp;Grup’un amiral gemisi ve Türkiye’nin lider mağaza zinciri... 1981’de ‘Çarşı’ tabelasıyla Bakırköy’de açılan mağazasıyla faaliyetlerine başlayan MacroMan&nbsp;, alışveriş dünyasını yeniliklerle tanıştırarak, sürekli büyümesini sürdürdü. 2013’te YKM’nin hisselerini alarak, sektördeki konumuna güç kattı. MacroMan&nbsp;bugün çok katlı mağazaları, tek kategoride uzmanlaşmış konsept mağazaları MacroMan&nbsp;Sports, &nbsp;Outlet Mağazaları ve MacroMan&nbsp;Mağazaları ile 6 farklı mağazacılık konsepti ile Türkiye’nin 37 ilinde 117&nbsp;mağazası ile hizmet veriyor. MacroMan&nbsp;, müşterilerine &nbsp;erke aktif spor giyimden ayakkabı ve aksesuara, kozmetikten ev dekorasyon ürünlerine kadar farklı kategorideki pek çok yerli ve yabancı marka ürünü bir arada sunuyor. Ayrıca erkek genç aktif spor giyim ve ayakkabı kategorilerinde House Of Camellia, Black Pepper, Penford, North Of Navy, Cotton Bar, T-Box, Limon Company, &nbsp;Mammaramma, Monster High, Barbie, Pink &amp; Orange, Funky Rocks, North Of Navy Kids, Limon Company Kids ile sadece Boyner ve YKM’lere özel markaları ile de dünya moda markalarını müşterileriyle buluşturuyor. MacroMan&nbsp;ve YKM Mağazaları, tüm lifestyle&nbsp;kategorilerinde müşterilerine doğru sezon, marka birliktelikleri, görsel sunum, servis ve mükemmel alışveriş düzeni ile yüksek kaliteli milyonlarca ürün sunarak müşterilerinin keyifli alışveriş deneyimi yaşamaları için hizmet veriyor.</p><p>2015’te ‘Türkiye’nin en çok sevilen ve tercih edilen alışveriş markası olma’ vizyonuyla kapsamlı bir değişim sürecini başlatan MacroMan&nbsp;, ürün ve marka çeşitliliğinden müşteri deneyimine, tedarik süreçlerinden satış kanallarına kadar birçok yeniliği hayata geçiriyor. Yenilikçi kimliğiyle e-ticaret alanında da hızla büyüyen Boyner, mağaza ve online alışverişi birleştiren “all-line” uygulamaları ile yeniliklere imza atıyor.</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/faf26046c7.png\"></figure><h2>&nbsp;</h2><h2>Türkiye\'nin Lider Moda Sitesi</h2><p>macroman.com, en çok aranan marka ve tasarımcıları herkes için ulaşılabilir yapma hedefiyle Mart 2010’da yola çıktı. Kurulduğu günden itibaren modaya öncülük ederek, bu doğrultuda Türk Tasarımcılara destek olma misyonu ile bir çok Türk Tasarımcının ürünlerini internette satışa sunan ilk site oldu. 2011 yılsonu itibarı ile 6,5 milyondan fazla üyesine 900 kişilik genç bir ekip ve 1000’den fazla marka seçeneği ile hizmet veren macroman.com, kurduğu dev operasyon merkezinden her gün onbinlerce paketin sevkiyatını gerçekleştirmektedir.</p><blockquote><p><i>Amaç insanları değiştirmek değil, kim olduklarını kıyafetlerle anlatma fırsatını vermektir</i></p><p><i><strong>Dries Van Noten</strong></i></p></blockquote><h2>Dünya Devi Yatırımcılar</h2><p>macroman.com’un vizyonu, kendisine yatırım yapan fonların prestiji ile tescillidir. Kuruluşunu izleyen 6 ay içerisinde ABD merkezli dev yatırım şirketi Tiger Global’dan yatırım almıştır. Ağustos 2011’de ise Google, Amazon, Groupon, Zynga ve Twitter gibi şirketlerinin yatırımcısı olan; dünyanın en prestijli fonlarından Kleiner Perkins Caufield &amp; Byers’ın yatırımı ile daha da güçlenmiştir.</p><blockquote><p>Elbiseler, insanın ruhudur.</p><p><strong>W.Shakespeare&nbsp;</strong></p></blockquote><p>&nbsp;</p><h3>Güvenli Alışveriş</h3><p>macroman.com, veri iletiminde 128 bit şifreleme ile iletilen bilgilerin güvenliğini sağlayan SSL sertifikası kullanmaktadır. macroman.com’da kredi kartı bilgileriniz yalnızca sipariş işlemi gerçekleştirilirken kullanılır ve veri tabanında kayıtlı olarak tutulmaz. macroman.com, online alışverişi daha güvenli hale getirmek için en yüksek güvenlik yöntemi olan yeşil bar sertifikasını Türkiye’de ilk alan sitelerden biri olduğu gibi, aynı güvenlik sistemine sahip Facebook e-mağazası ile üyelerine Facebook’tan çıkmadan alışveriş kolaylığı sağlamaktadır.</p><blockquote><p>Çok ama önemsiz kıyafete sahip olmaktansa, kaliteli ama az şey olması çok daha iyidir.</p><p><strong>Rachel Zoe</strong></p></blockquote><figure class=\"image\"><img src=\"http://www.resimag.com/p1/88958e06c3.png\"></figure><h3>Kalite ve Orijinallik Garantisi</h3><p>Satılan ürünlerin orijinalliği ve kalitesi, ürünlerin seçim aşamasında macroman.com’a özel geliştirilmiş T29 testi ile, depoda paketleme aşamasında ise %100 kalite kontrolü yapan özel operasyon hattı ile iki defa test edilmektedir.</p><h3>En iyi Müşteri Deneyimi</h3><p>En iyi müşteri deneyimini yaşatmayı hizmet anlayışının merkezine koyan macroman.com, 7 gün 24 saat ulaşılabilen müşteri hizmetleri ekibi, ve üyeleri ile birebir iletişim kurduğu Facebook, twitter, Google+ kanalları aracılığı ile sürekli ulaşılabilir durumdadır.</p><p>macroman.com’dan almış olduğunuz bir ürünü herhangi bir sebeple iade etmek isterseniz, 15 gün içinde kolayca ve ücretsiz olarak geri gönderebilir, üstelik iade ettiğiniz ürün için kargo parası dahil tüm ödemiş olduğunuz tutarı iade alırsınız.</p><blockquote><p>Boşver be yaşı başı,Gönlün ne kadar şık sen ondan haber ver? Şöyle atıp koyu grileri, siyahları sabahtan Sarı bir kaşkol atabiliyor musun boynuna, ondan haber ver…</p><p><strong>Can Yücel</strong></p></blockquote><p>&nbsp;</p>', '<h2>Nasıl yardımcı olabiliriz?</h2><p>İletişim formumuzu doldurarak, ihtiyacınızı belirtin, Size özel en teknolojik çözümleri sunalım.</p><p>Sosyal Medya\'da biz!</p><p>Adınız / Soyadınız:</p><p>E-Mail Adresiniz:</p><p>Konu:</p><p>Telefon:</p><p>Mesaj:</p><p>&nbsp;</p>', '<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Referanslar</h2><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><figure class=\"image\"><img src=\"http://www.resimag.com/p1/952a9e7124.png\"></figure>', NULL, '2018-12-06 04:35:39', '2018-12-19 04:54:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shopcart`
--

INSERT INTO `shopcart` (`id`, `userid`, `productid`, `quantity`, `create_at`, `update_at`) VALUES
(8, 24, 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 24, 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `tel`, `addres`, `type`, `status`, `city`, `create_at`, `update_at`) VALUES
(1, 'İzzet Yasin ATEŞ', 'iyasin.ates@gmail.com', '$2y$10$Da6c1OkLnY39mgFtLEbx8uybHk90QGf.p7QqwMy.eefHVkAYWTBP2', '05059809622', 'Nevşehir', 'Admin', 'True', 'Karabük', '2018-11-24 01:16:33', '2018-11-25 14:04:51'),
(2, 'Yağız KURTOĞLU', 'yagiz@gmail.com', '$2y$10$K.ZgWZo/i6SsrsJObufmpuOzkhUALT.r8YyK1jxbUGKfNzQuTKBxa', '05059809623', 'İstanbul', 'Uye', 'True', 'İstanbul', '2018-11-24 01:18:15', '2018-11-25 19:56:34'),
(4, 'Fatih AYDAR', 'fatih@gmail.com', '123', '05059809625', 'İstanbul', 'Uye', 'True', 'İstanbul', '2018-11-24 01:18:54', '2018-11-24 13:32:16'),
(5, 'Hasan UÇAL', 'hasan@gmail.com', '123', '05059809626', 'Ankara', 'Uye', 'True', 'Ankara', '2018-11-24 01:19:32', '2018-11-24 13:32:22'),
(6, 'Samet YILMAZ', 'samet@gmail.com', '$2y$10$Da6c1OkLnY39mgFtLEbx8uybHk90QGf.p7QqwMy.eefHVkAYWTBP2', '05059809633', 'İstanbul', 'Uye', 'True', 'İstanbul', '2018-11-24 01:19:58', '2018-11-25 21:48:33'),
(7, 'Esma Ezgi ERATIR', 'esma@gmail.com', '$2y$10$kIkWyTWmhVsvfoQoUOKq1OXSoTD0/8BXrIbifZMqXQI8Cli4m719.', '05059809628', 'Kars', 'Uye', 'True', 'Kars', '2018-11-24 01:20:32', '2019-01-21 18:34:54'),
(8, 'Melek KOÇ', 'melek@gmail.com', '123', '05059809629', 'Ankara', 'Uye', 'True', 'Ankara', '2018-11-24 01:22:01', '2018-11-24 13:32:38'),
(9, 'Seda AYDIN', 'seda@gmail.com', '123', '05059809630', 'Malatya', 'Uye', 'True', 'Malatya', '2018-11-24 01:22:26', '2018-11-24 16:01:45'),
(10, 'Emin BAĞ', 'emin@gmail.com', '123', '05059809631', 'Muş', 'Uye', 'True', 'Muş', '2018-11-24 01:22:59', '2018-11-24 13:32:50'),
(22, 'Deneme1', 'Deneme1@gmail.com', 'Deneme1', '6454561320', 'Deneme1', 'Kargocu', 'False', 'Deneme1', '2018-11-26 02:19:51', '0000-00-00 00:00:00'),
(24, 'samet yeni', 'sametyeni@gmail.com', '$2y$10$qdffHqp6BWocNVf69Leth.vQmVJkoYR1kqJ1HFgQ/Il1NPgbA1D0y', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Ahmet Kural', 'remdsadsadzi@gmail.com', '$2y$10$hG4crq1uZVO4U2cVrNMUVezQy43j7BD/KLOLGhmNd.f2eRnJejP/m', '24242424', 'Karabük', 'Uye', 'True', 'ddsadsa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Deneme1dsadsa', 'Deneme1dsadsadsa@gmail.com', '$2y$10$gGe0ekbI/1XT7ZgNja8jVeno5q9Cz3bsfQTQ.wRJrC1qmoQ2eGjpS', '05059809622', 'dsadsa', 'Uye', 'True', 'Karabük', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'ercü', 'ercu@gmail.com', '$2y$10$4HBFora0vtedLx03e.6TUOBptO4ZQBQqvDxZ/R4AALjcSzzglaXWe', '05059809677', NULL, '', 'False', NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(29, 'Remzi YILDIZ', 'ercu33@gmail.com', '$2y$10$Mv7nA2ZButP1jUH32eIIJOuT7w8x0eNW7FmQ7a5n.nXWRzwuug.FC', '05059809622', NULL, NULL, NULL, NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(30, 'sadsadsa', 'sadasd@dassa.dsad', '$2y$10$LLm20MZgNVwdCDfC4BWZ3.4/zN.hjSlRK9AEhWKtrrIos21IIy5yi', '232132', NULL, NULL, NULL, NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(31, 'sadsa', 'dasdas@sad.asd', '$2y$10$kvfEZCf7LmmKurFF.c6Rn.EuDlgr5o0oiAXAoe3jNbdo8kRTu3RaW', 'asd2323', NULL, NULL, NULL, NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(32, 'asdsadasassa', 'dasdasdsa@asd.ads', '$2y$10$h1alv1Dd/c2d2p6kziBfzO9MGE65kJDq3Ns3gYhvQmZDyvt3GPI.6', 'sadsaddsa', NULL, NULL, NULL, NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(33, 'samett', 'samett@ads.asd', '$2y$10$Av7RdXbCa6Bt9UzRER6CSuyBU3kcJQREEmE1Rr.oIgW6QuNmw5JwW', 'adssad', NULL, 'Uye', NULL, NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(34, 'Ahmet Kural', 'ahmet@gmail.com2222', '$2y$10$3dhhObK5P7y8Oyxu9bZ2VurVSnwKikxtBrZqFkoARs/WlX7Spp3Qa', 'dasdasd', NULL, 'Uye', 'False', NULL, '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(35, 'hello word', 'hello@gmail.com', '$2y$10$0IVtyXFpI03XWm8JQnYEm.JINNAZRMPnr.CYZinCegvuEoVIzIlAW', '123', 'Karabük', 'Uye', 'False', 'İzmir', '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(36, 'bardak', 'bardak@gmail.com', '$2y$10$VfLkiN4IFu/dbFGSqz1QB.NpFwtRoynrv.LYCTvzuUYB/86ZiRef.', '05059809622', 'Karabük', 'Uye', 'True', 'Karabük', '2019-01-12 11:26:03', '2019-01-12 11:26:05'),
(37, 'aslan', 'aslan@gmail.com', '$2y$10$Da6c1OkLnY39mgFtLEbx8uybHk90QGf.p7QqwMy.eefHVkAYWTBP2', '05059809622', NULL, 'Uye', 'True', NULL, '2019-01-12 14:41:32', '2019-01-14 17:13:35'),
(38, 'denemekayit', 'denemekayit@denemekayit.com', '$2y$10$syF2puCZOLYwUWmyMzUAt.WuAB0JrPF5fdieSY8jdfwGxxcB2tWRq', '05059809611', 'Karabük', 'Uye', 'True', 'İstanbul', '2019-01-14 22:17:35', '2019-01-14 22:20:10'),
(39, 'samsung', 'samsung@samsung.com', '$2y$10$YAA7DvsDP5e4vjATr0x2sOvtDzo29je1dOcAdtqUF4h0MCTVtAecO', '05059809221', '', 'Uye', 'True', 'Ankara', '2019-01-21 19:26:23', '2019-01-21 19:27:18');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image_setting`
--
ALTER TABLE `image_setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `image_setting`
--
ALTER TABLE `image_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
