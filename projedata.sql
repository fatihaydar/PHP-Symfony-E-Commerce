-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Oca 2019, 21:14:58
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `etic`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parent_id`, `title`, `description`, `keywords`, `status`, `create_at`, `update_at`) VALUES
(1, 0, 'Elektronik', 'Elektronik Eşyalar', 'Telefon, Bilgisayar, Elektronik ev eşyaları, tablet, laptop', 'True', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'Giyim & Ayakkabı', 'Her türlü giyim ve ayakkabı', 'Kıyafet, Kaban, şapka, bere, eldiven T-Shirt, Ayakkabı ,Bot , Terlik', 'True', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 'Ev & Yasam', 'Ev ve yasamla ilgili tüm ihtiyaçlarınız.', 'Esya,  Ev esyası, Mobilya, Yapı, Bahce', 'True', NULL, NULL),
(5, 0, 'Mücevher & Saat', 'Mücevher ve saatle ilgili tüm ihtiyaçlarınız.', 'Mücevher, Saat , Yüzük , Kolye, Küpe', 'True', NULL, NULL),
(6, 1, 'Telefon', 'En iyi telefonlar.', 'Telefon, samsung, iphone, huawei, Sony, LG', 'True', NULL, NULL),
(7, 1, 'Bilgisayar', 'En iyi Bilgisayarlar.', 'Bilgisayar, Laptop, Asus, Monster, MSI', 'True', NULL, NULL),
(9, 2, 'Erkek Giyim', 'En ilgi çekici erkek giyim.', 'T-shirt, Pantolon, Kot pantolon,', 'True', NULL, NULL),
(10, 2, 'Kadın Giyim', 'En ilgi çekici kadın giyim.', 'T-shirt, Pantolon, Kot pantolon,', 'True', NULL, NULL),
(11, 4, 'Mobilya', 'En ilgi çekici Mobilyalar.', 'Masa, sandalye, Koltuk Takımı', 'True', NULL, NULL),
(12, 4, 'Mutfak Gereçleri', 'En kullanışlı Mutfak Gereçleri', 'Çaydanlık , Tabak, Çanak', 'True', NULL, NULL),
(13, 5, 'Altın Takılar', 'En iyi altın takılar.', 'Altın Mücevher , Altın , Mücevher', 'True', NULL, NULL),
(14, 5, 'Saat', 'En iyi saatler.', 'Saat, clock , Güzel Saat', 'True', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`id`, `product_id`, `image`, `status`) VALUES
(1, 1, 'ed2eadd74a0024e838954a2590c59f24.jpeg', NULL),
(2, 1, 'abf58bbac16474b87f11b63325a181d2.jpeg', NULL),
(3, 3, '1ad31258ab1e70a489aa7d8c3b6d45e8.jpeg', NULL),
(4, 3, '91e0449f9776db2cef645141b7b8310f.jpeg', NULL),
(5, 4, 'beb2897654d6ad30fb8d36e1cbdf5d9b.png', NULL),
(6, 4, '9eb3dcc935866834ee21237bddfeb02c.png', NULL),
(7, 5, '2c52b876911c286ef47a97e01c383769.png', NULL),
(8, 5, '97151742926bb779c1e589ca59287a3c.png', NULL),
(9, 6, '812b6513a802e8a7f763a4b9b9755cbb.png', NULL),
(10, 6, 'e6aff61485c5b2c62ea6b04642bcde6f.png', NULL),
(11, 7, 'f1c695587a697fe05cd3031d74abc501.png', NULL),
(12, 7, '24d9639df4643f050a9f12dc15663d42.png', NULL),
(13, 7, '781129e11c57d40c6fc64d32b48e1c75.png', NULL),
(14, 7, 'fd083ab0c0dd3a9f2eb7d67de879afe7.png', NULL),
(15, 7, '371ba1a5f67ab423ccaa6cc2c4ced146.png', NULL),
(16, 7, '88162ec77165768e458128907d605bc5.png', NULL),
(17, 7, 'c9f8518d5d24915a5e6351ed62a92b22.png', NULL),
(18, 7, '263401eeda9d8c9281b9423bcd089ac4.png', NULL),
(19, 8, '9e07a3d388432d5a14ce4a0c68d261d8.png', NULL),
(20, 8, 'd38f5fa5a8fa04deb2d669882f722e61.png', NULL),
(21, 8, '131c55cbab378ff6ac60d51e1130fb99.png', NULL),
(22, 8, '04ccc59416b7267feb084269c26099a0.png', NULL),
(23, 9, '087bc2766ea51514c15357c8189ff86b.png', NULL),
(24, 9, '625585085ce44cb952509d6c6e7846ee.png', NULL),
(25, 9, 'd88988d41852dd48cd876577bc992637.png', NULL),
(26, 9, '4b0e4c53d7196d73e37febede0fda052.png', NULL),
(27, 9, 'cea53a26ed9c2482f787bbea49c3f21a.png', NULL),
(28, 10, '2eee58c9aa20168429131fbaa62564a2.png', NULL),
(29, 10, '7d973bc2bece72ba5d8c700e37c3fcd9.png', NULL),
(30, 10, '0c14655a426a8b6b8dbf558bf32b776f.png', NULL),
(31, 10, 'ce4c7dff1c89175eb6c0eaca227212a0.png', NULL),
(32, 10, '77a4764a66d228410360b5b4a600a6e6.png', NULL),
(33, 10, 'e1b5c5917c3d2af207b0c5ae84d1dcc3.png', NULL),
(34, 10, 'f0a8d210f2e2de449b2e9a4615fff8c2.png', NULL),
(35, 11, '6499ec19b0222ff1f4c064a2a2d6d7b8.jpeg', NULL),
(36, 11, '7b41066772554ec91c162c17851497b1.jpeg', NULL),
(37, 11, '85e6520c42038ff020a262c762f801e3.jpeg', NULL),
(38, 11, '3bd8875ebf07e6026a9638aedccb893e.jpeg', NULL),
(39, 11, '784d07c5e7722fc2cb98e63ff49c379e.jpeg', NULL),
(40, 12, '777e8acf090a57dd09a4bd45c68fcb27.jpeg', NULL),
(41, 12, 'e86e66613629c0400ec62ce032567073.jpeg', NULL),
(42, 12, '2b4de1f49aa79223b19e6aa79ae18aba.jpeg', NULL),
(43, 12, '5a3cd8c7c0591a2321bedd62819b3c68.jpeg', NULL),
(44, 13, 'b001a64d3c21c97e2310f534756207a3.jpeg', NULL),
(45, 13, '01583e61be954874f749d7cff9c78136.jpeg', NULL),
(46, 13, '685929bbf2ce22f5ed4e2b3398a1700c.jpeg', NULL),
(47, 13, '5e2ccead7d70a2cc31e2055f492f04cf.jpeg', NULL),
(48, 13, 'eb3fffbb2e075ed76790d50f911f8e2d.jpeg', NULL),
(49, 14, '0c1e6dab85d8c1a329cd3b0408d1b8ab.jpeg', NULL),
(50, 14, '5beafe517308b3bc0dd3927d47b49c1a.jpeg', NULL),
(51, 14, 'b212ff1e8379ed63b9d85e9b4f5cce56.jpeg', NULL),
(52, 14, '89b9614134340f8b03a08a6867950263.jpeg', NULL),
(53, 14, 'f959ab0a921fa73170445305abc576bc.jpeg', NULL),
(54, 15, '03b94a4b3ebf9b9434f427e3854cfe51.jpeg', NULL),
(55, 15, '09f598d3da0e2347d730b83ef993b83d.jpeg', NULL),
(56, 15, '59c75d2d5f3ef879552b3334d821917a.jpeg', NULL),
(57, 15, 'd3908abb63419c83c585faced8a42c31.jpeg', NULL),
(58, 15, 'c30429a136c51f0217d92c32e7f3bede.jpeg', NULL),
(59, 15, '804c5859f14564f1661d519f2c7542dd.jpeg', NULL),
(60, 15, '91b8f32bc07925cd04cc331f4fc5d8f2.jpeg', NULL),
(61, 16, 'e9f5b6b22b1eccc6d1767bbd5da955ce.jpeg', NULL),
(62, 16, '59936e5461ecb3ed662df3078b585848.jpeg', NULL),
(63, 16, '0cd0eafd7dc5b22bf3dd91495f091a4b.jpeg', NULL),
(64, 16, '1b703aa1076b67908cbd2ac0fdcebe16.jpeg', NULL),
(65, 16, '558eb2e30dc58274b2bc58fc3282c211.jpeg', NULL),
(66, 16, 'c66c801e9834acff813002424bf105ce.jpeg', NULL),
(67, 16, '66cee49b191b348fec0d1c746437e664.jpeg', NULL),
(68, 17, '4eefc68cbb0371ccbfb65e82721f6b0d.jpeg', NULL),
(69, 17, 'dbadecee11cb96b7c708874dab1acf80.jpeg', NULL),
(70, 17, '65b6c70fc31770b50f49bce4c8ab83cc.jpeg', NULL),
(71, 18, '9dc8e12aae1dd69e7f3a3783ac42e4cf.jpeg', NULL),
(72, 18, '9c224e4575de80b90ab3db5f5e6066ac.jpeg', NULL),
(73, 18, '72f562e9f6c2fcf49ea86f9e4419df00.jpeg', NULL),
(74, 18, 'b95fa62c5ca032c8ea63ca81b1f17d6c.jpeg', NULL),
(75, 18, '111ae448f50a43372e1f6bf7194a0434.jpeg', NULL),
(76, 19, 'c38107d462ed1603f95068fedcde3c23.jpeg', NULL),
(77, 19, 'add79add5ed3f93e98f5ffef64ddd2b8.jpeg', NULL),
(78, 19, '46671461b6430de6ee18ce15aa52ede3.jpeg', NULL),
(79, 19, 'bb2e42bd4c0577abd7052f13a2aeb509.jpeg', NULL),
(80, 19, '2b5a8ccf174f2d1aa9628344a5470cfe.jpeg', NULL),
(81, 20, 'a52a5e95a86b196f2c47324ceadea316.jpeg', NULL),
(82, 20, '9b725dc1b5f7a824f052a792f91ca292.jpeg', NULL),
(83, 20, '9717d66b3fc877abd16ed9ebb8dd7593.jpeg', NULL),
(84, 20, '33ff2d9bcd048508adf661d17ca9e9aa.jpeg', NULL),
(85, 20, 'f3c6bfcc959e6eabcbec77dfb139fedf.jpeg', NULL),
(86, 20, '9e57447db4fd6e7dfebe6bace99fadf3.jpeg', NULL),
(87, 21, '25f8cad6b04f16e15c6a4554d92909c6.jpeg', NULL),
(88, 21, '3beecef300e37be8af30d7b59d4e84a1.jpeg', NULL),
(89, 21, 'd7accd92e4efae1883c9d636a4fe118c.jpeg', NULL),
(90, 21, '76214bab3cb3cbef93110028a0724854.jpeg', NULL),
(91, 21, 'f6922902c4896e9ae4466f7d913f3fb4.jpeg', NULL),
(92, 21, '7f9197fadd164cd7b8aa2dd1b4d97ee7.jpeg', NULL),
(93, 22, '1371247a4a888cf0066e31655094b6d0.jpeg', NULL),
(94, 22, '4f547480bfc934fda9ba1b012b6b8205.jpeg', NULL),
(95, 22, 'cf5e31603f45b0d3c16cad8f02d85051.jpeg', NULL),
(96, 22, 'bdf60a4c8f91963dccf10936d7c82bd5.jpeg', NULL),
(97, 22, 'a336077cd09580d324188619fd2e2703.jpeg', NULL),
(98, 22, '064c270985bb7fd9a4edeed560047eb0.jpeg', NULL),
(99, 22, 'a1d307e33fd282e40f07c49a9241b9f0.jpeg', NULL),
(100, 22, '9f0e94319f24323e91cf015dbbd726ef.jpeg', NULL),
(101, 22, '0ca59fef7f4b1d65dca75a5ffb41f16d.jpeg', NULL),
(102, 23, '1ae44677d1ce1a7473d8d305212c6639.jpeg', NULL),
(103, 23, '7011f30c9f2c9d441aa909e4f0143dde.jpeg', NULL),
(104, 23, 'b463c52288fd3494cb8c6c8a7d9b0f40.jpeg', NULL),
(105, 23, '1a337427f0691e14d4ce57a66f0b7ed0.jpeg', NULL),
(106, 23, '2bd2566f72b72e397c444b962dac5df8.jpeg', NULL),
(107, 23, 'e003d808c4ef12c30c89d84c20c53c57.jpeg', NULL),
(108, 24, 'a8e163f60f6b197d85901c6b0123abb0.jpeg', NULL),
(109, 24, 'a3258483e45e7ebfe1acc1ce66829393.jpeg', NULL),
(110, 24, '3c5fe17d179982e0c57ce49ef5ffd6bc.jpeg', NULL),
(111, 24, '9bef5cc27fc219d3e49ede52e7186b35.jpeg', NULL),
(112, 24, '86266f851bde938ad45c650b3af18a6f.jpeg', NULL),
(113, 24, '23563a0b515465c3669f544e0109b8f1.jpeg', NULL),
(114, 25, 'b69f6492cf7224d12513e4cc902ee43a.jpeg', NULL),
(115, 25, 'aa1054ca096926e3494603f1bf2ed732.jpeg', NULL),
(116, 25, '878134b94138b22b54576f6272fbb488.jpeg', NULL),
(117, 25, '4ddbd1ab185527b78fbe489110b1f20a.jpeg', NULL),
(118, 25, '24087c38004f2b477c1a216b87b71fcc.jpeg', NULL),
(119, 26, '91186042e8721efb484687d650213a6b.jpeg', NULL),
(120, 27, '19235b73c0360e417daabe49f759e24c.jpeg', NULL),
(121, 27, 'b90abec6ed004573f88dacd62b9f38b1.jpeg', NULL),
(122, 27, '85289c82aaa527fa477d7e89299658fd.jpeg', NULL),
(123, 27, 'bcc4c581cbaeabc163883891ce1ec390.jpeg', NULL),
(124, 27, 'bddb196da48ecf679039e02cd50d510d.jpeg', NULL),
(125, 27, '0b8e5375f7cb6dfc67c2392f8cedb70d.jpeg', NULL),
(126, 28, 'afe0f787b76c369d16208d4bca021638.jpeg', NULL),
(127, 28, '645a3b2c7e3cac31bd3537e63e8c6c96.jpeg', NULL),
(128, 29, '4ff6ac09b066d4f16539b68cfe198be9.jpeg', NULL),
(129, 29, '25a064e4d9cf5c516f8b5f4f5661ae3f.jpeg', NULL),
(130, 29, '2259fb62a95fe15adb0431f74117c997.jpeg', NULL),
(131, 30, 'c17e9df9b958c8172e429ef789834c35.jpeg', NULL),
(132, 30, 'b43e0dfc21dd0d8b9a5f6e9742b34dd7.jpeg', NULL),
(133, 30, '30b0537ffd2cbc9f0635333fd85b443a.jpeg', NULL),
(134, 31, '06ab4ec2f7ad7ad8715b44bdd4ade2f5.jpeg', NULL),
(135, 32, 'fdf778df4a27c934264530c18ec179f6.jpeg', NULL),
(136, 33, '16822cb7710bae1d279aed0120e407a2.jpeg', NULL),
(137, 34, '168245dd3c1e96fa413f266f39b3688f.jpeg', NULL),
(138, 35, 'b5d87eefa69b7287762594a2352c587d.jpeg', NULL),
(139, 35, '85d6fb294ba8e4a7aaa6e62e2ba3f011.jpeg', NULL),
(140, 35, '18da775658e8641feadde2f9068ee621.jpeg', NULL),
(141, 36, '8325c619cf552460fb9696374ee365a9.jpeg', NULL),
(142, 37, '05472e6f884e45650574008029da7af7.jpeg', NULL),
(143, 38, '2ee3744113b3035ffae724cfce2bd841.jpeg', NULL),
(144, 39, 'e8ecd5cfcd5db1670a608311742b3160.jpeg', NULL),
(145, 40, 'c4070c583122485e663411fba1491450.jpeg', NULL),
(146, 2, '56a8e46bf53787345d6ae951d5cf53dc.png', NULL),
(147, 40, '59cbf38829bf706484d1f17e3bfa353d.jpeg', NULL),
(148, 40, '576624a0ab6e72ff06b43aff53b21645.jpeg', NULL),
(149, 39, '60149c5fe94677b8391ec6a86a23abf3.jpeg', NULL),
(150, 39, '86d8d88e6ec58aa904b98eb6c6860b11.jpeg', NULL),
(151, 38, 'f0c803824f4ee4f71706a738884ad295.jpeg', NULL),
(152, 38, '0f16619d33352daf350c7be0a90bb487.jpeg', NULL),
(153, 37, 'd362e5af5dcfaa95669f546e896463b2.jpeg', NULL),
(154, 37, '95fcf7ecfaed0a0b271d756ba2beb11f.jpeg', NULL),
(155, 36, 'f9adf72664e7cf73f1ff4d38854ea203.jpeg', NULL),
(156, 36, '141f50ebf689330adf4db9a79eb8f620.jpeg', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `address`, `phone`, `email`, `message`, `status`, `comment`, `create_at`, `update_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'Okundu', ' sdasd', NULL, NULL),
(2, 'denemeiletisim', NULL, NULL, 'asdaa@sda', 'asdasd', 'Okundu', NULL, NULL, NULL),
(3, '123123', NULL, NULL, '12312312@12321', 'bize yazın', NULL, NULL, NULL, NULL);

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
('20181219213601'),
('20181221184415'),
('20190112191147'),
('20190112191520'),
('20190112192117'),
('20190112193118'),
('20190112215333'),
('20190112222858');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `address`, `city`, `phone`, `shipinfo`, `status`, `note`) VALUES
(0, 6, 21500, 'son', '123123', 'malatya', '12312', '                                                    \r\n                                                ', 'TeslimEdildi', '                                                   \r\n                                                ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`) VALUES
(1, 1, 2, 1, 12313, 0, 0, 'qweq', 'Ordered'),
(2, 1, 2, 1, 12313, 0, 0, 'qweq', 'Ordered'),
(3, 1, 2, 1, 12313, 0, 0, 'qweq', 'Ordered'),
(4, 2, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(5, 4, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(6, 4, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(7, 4, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(8, 4, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(9, 4, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(10, 0, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(11, 0, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(12, 0, 2, 1, 12313, 1, 12313, 'qweq', 'Ordered'),
(13, 0, 2, 2, 8000, 1, 8000, 'Samsung Galaxy Note 9', 'Ordered'),
(14, 0, 2, 2, 8000, 1, 8000, 'Samsung Galaxy Note 9', 'Ordered'),
(15, 0, 2, 5, 1599, 1, 1599, 'HUAWEI P Smart 32GB Akıllı Telefon Siyah', 'Ordered'),
(16, 0, 2, 3, 75000, 1, 75000, 'Apple iPhone XR 64 GB Özellikleri', 'Ordered'),
(17, 0, 2, 21, 8000, 1, 8000, 'Mira Koltuk Takımı', 'Ordered'),
(18, 0, 2, 6, 6099, 1, 6099, 'APPLE MQD32TU/A MacBook Air 13 inç Intel Core i5 1.8 GHz 8 GB 128 GB SSD Notebook', 'Ordered'),
(19, 0, 2, 10, 1899, 1, 1899, 'CASPER C300.3060-4L05E Celeron-N3060 4GB 500GB HDGraphics 15.6\" Laptop', 'Ordered'),
(20, 0, 6, 21, 8000, 1, 8000, 'Mira Koltuk Takımı', 'Ordered'),
(21, 0, 6, 39, 45, 1, 45, 'G-Sport POLO', 'Ordered'),
(22, 0, 6, 2, 8000, 1, 8000, 'Samsung Galaxy Note 9', 'Ordered'),
(23, 0, 6, 2, 8000, 1, 8000, 'Samsung Galaxy Note 9', 'Ordered'),
(24, 0, 6, 25, 13500, 1, 13500, 'Elantra S Salon Takımı', 'Ordered'),
(25, 0, 6, 21, 8000, 1, 8000, 'Mira Koltuk Takımı', 'Ordered');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `pprice` double NOT NULL,
  `sprice` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `title`, `type`, `publisher_id`, `amount`, `pprice`, `sprice`, `description`, `keywords`, `detail`, `image`, `status`, `user_id`, `category_id`, `create_at`, `update_at`) VALUES
(2, 'Samsung Galaxy Note 9', 'Cep Telefonu', 1, 150, 8500, 8000, 'Galaxy Note her zaman, talep edilenden daha güçlü teknolojileri beraberinde getiriyor. Yeni Galaxy Note9, yüksek beklentileri de aşarak bugünün mobil dünyasının en önemli noktalarında devrim yaratıyor.', 'Telefon, Samsung, Galaxy', 'Galaxy Note9 ile neler başarabileceğinizi keşfedin. 10nm işlemci ve 8GB RAM; oyunlar, video yayınları veya diğer çoklu işlemlerde, kayda değer bir performans artışı sağlıyor. Üst düzey hızda ağ bağlantısı, her şeyin süratle tamamlanmasına imkan tanıyor.3', '099524267427a5142b41bc0b2f3a3ba5.png', 'True', 1, 6, NULL, '2019-01-21 21:10:37'),
(3, 'Apple iPhone XR 64 GB Özellikleri', 'true', 1, 12, 6310, 75000, 'Apple iPhone XR 64 GB Özellikleri', 'Apple iPhone XR 64 GB Özellikleri', 'Ağırlık	194 g Arttırılabilir Hafıza	Yok Assisted GPS (Baz İstasyon Destekli Küresel Konumlama Sistemi)	Var Bağlantı Hızı	42.2 Mbps Bas Konuş	Yok (Yüklenebilir) Bekleme Süresi	Bekleme süresi ile ilgili kesin bir bilgi bulunmamaktadır, ürünün modeline göre ', 'bd86580f67ad6d98107c2e8f6a52abdf.jpeg', 'True', 1, 6, NULL, '2019-01-19 02:51:02'),
(4, 'SAMSUNG Galaxy J4+ Altın Sarısı Akıllı Telefon', 'true', 1, 14, 1299, 1199, 'SAMSUNG Galaxy J4+ Altın Sarısı Akıllı Telefon', 'SAMSUNG Galaxy J4+ Altın Sarısı Akıllı Telefon', '<p>İşletim Sistemi: AndroId 8.1 Oreo&nbsp;</p><p>İşlemci: Quad Core 1.4 GHz&nbsp;</p><p>İşlemci Hızı: 1.4 GHz&nbsp;</p><p>Bellek Kapasitesi: 16 GB&nbsp;</p><p>Arttırılabilir Hafıza: Evet&nbsp;</p><p>RAM Bellek Boyutu: 2 GB&nbsp;</p><p>Maksimum Arttırılabi', '19a622cfb7571ddee691081a5a4ae402.png', 'True', 1, 6, NULL, '2019-01-19 03:01:59'),
(5, 'HUAWEI P Smart 32GB Akıllı Telefon Siyah', 'telefon', 1, 14, 1399, 1599, 'HUAWEI P Smart 32GB Akıllı Telefon Siyah', 'HUAWEI P Smart 32GB Akıllı Telefon Siyah', '<p>İşletim Sistemi: Android O&nbsp;</p><p>İşlemci: Kirin 659 16nm Octa core&nbsp;</p><p>İşlemci Hızı: 2.36GHzx4+1.7GHzx4&nbsp;</p><p>Bellek Kapasitesi: 32 GB&nbsp;</p><p>Arttırılabilir Hafıza: Evet&nbsp;</p><p>Bellek kartı formatı: microSD&nbsp;</p><p>RAM', '010e9ca8a4c505b5aaad53af13f37ff2.png', 'True', 1, 6, NULL, '2019-01-19 03:05:01'),
(6, 'APPLE MQD32TU/A MacBook Air 13 inç Intel Core i5 1.8 GHz 8 GB 128 GB SSD Notebook', 'bilgisayar', 1, 55, 5548, 6099, 'APPLE MQD32TU/A MacBook Air 13 inç Intel Core i5 1.8 GHz 8 GB 128 GB SSD Notebook', 'APPLE MQD32TU/A MacBook Air 13 inç Intel Core i5 1.8 GHz 8 GB 128 GB SSD Notebook', '<p>Ekran Boyutu (inç): 13 inç&nbsp;</p><p>RAM Bellek Boyutu: 8 GB&nbsp;</p><p>İşlemci: 1.8 GHz çift çekirdekli Intel Core i5, 2.9 GHz’e kadar Turbo Boost ve 3 MB paylaşımlı L3 önbellek&nbsp;</p><p>Ekran kartı: Intel HD Graphics 6000&nbsp;</p><p>Sabit disk', 'b42fc273040807ce24bf501b17f1068c.png', 'True', 1, 7, NULL, '2019-01-19 03:06:57'),
(7, 'LENOVO ideapad 530S Intel®Core™i5-8250U-8GB-256GB SSD-MX130 2GB DDR5-14.0\"FHD-Win10-Gri 81EU00A8TX', 'bilgisayar', 1, 123, 5540, 5762, 'LENOVO ideapad 530S Intel®Core™i5-8250U-8GB-256GB SSD-MX130 2GB DDR5-14.0\"FHD-Win10-Gri 81EU00A8TX', 'LENOVO ideapad 530S Intel®Core™i5-8250U-8GB-256GB SSD-MX130 2GB DDR5-14.0\"FHD-Win10-Gri 81EU00A8TX', '<p>Çözünürlük: 1920x1080&nbsp;</p><p>Görüntü Oranı: 16:09&nbsp;</p><p>Ekran Tipi: IPS&nbsp;</p><p>Ekran Özellikleri: FHD, IPS&nbsp;</p><p>RAM Tipi: DDR4&nbsp;</p><p>İşlemci: Intel Core i5-8250U 1.60 GHz&nbsp;</p><p>İşlemci Markası: Intel</p>', 'd2b7101c9e1f038ebbb8c12631916985.png', 'True', 1, 7, NULL, '2019-01-19 03:09:25'),
(8, 'ACER Swift 5 SF514-52T/i5-8250U/8GB/256GB SSD/14 FHD Touch/W10 Ultrabook', 'bilgisayar', 1, 12, 5300, 5499, 'ACER Swift 5 SF514-52T/i5-8250U/8GB/256GB SSD/14 FHD Touch/W10 Ultrabook', 'ACER Swift 5 SF514-52T/i5-8250U/8GB/256GB SSD/14 FHD Touch/W10 Ultrabook', '<p>Ekran Boyutu (inç): 14 inç&nbsp;</p><p>RAM Bellek Boyutu: 8 GB&nbsp;</p><p>İşlemci: Intel Core I5 8250U processor (up to 3.40 GHz wIth Intel Turbo Boost Technology 2.0 , 6 MB of Intel Smart Cache)&nbsp;</p><p>Ekran kartı: Intel HD Graphics&nbsp;</p><p>', '88dbfd7f02e5e35510a66cbf6786d573.png', 'True', 1, 7, NULL, '2019-01-19 03:12:23'),
(9, 'LENOVO Ideapad 330 AMD RYZEN 3 2200U 8GB 1TB Laptop', 'bilgisayar', 1, 43, 2500, 2790, 'LENOVO Ideapad 330 AMD RYZEN 3 2200U 8GB 1TB Laptop', 'LENOVO Ideapad 330 AMD RYZEN 3 2200U 8GB 1TB Laptop', '<p>İşlemci: AMD RYZEN 3 2200U&nbsp;</p><p>Ekran kartı: Radeon 535 2GB&nbsp;</p><p>Sabit disk kapasitesi: 1 TB&nbsp;</p><p>Ekran Boyutu: - / 15.6 inç&nbsp;</p><p>Çözünürlük: 1336x768&nbsp;</p><p>Görüntü kalitesi: HD&nbsp;</p><p>Ekran Boyutu (inç): 15.6 inç', 'a41c4da6693a63c1b454a01194e233a1.png', 'True', 1, 7, NULL, '2019-01-19 03:15:23'),
(10, 'CASPER C300.3060-4L05E Celeron-N3060 4GB 500GB HDGraphics 15.6\" Laptop', 'bilgisayar', 1, 12, 1500, 1899, 'CASPER C300.3060-4L05E Celeron-N3060 4GB 500GB HDGraphics 15.6\" Laptop', 'CASPER C300.3060-4L05E Celeron-N3060 4GB 500GB HDGraphics 15.6\" Laptop', '<p>Ekran Boyutu (inç): 15.6 inç&nbsp;</p><p>RAM Bellek Boyutu: 4 GB&nbsp;</p><p>İşlemci: Intel Celeron N3060 1.6 GHz 2 MB Önbellek&nbsp;</p><p>Ekran kartı: Intel HD Graphics&nbsp;</p><p>Sabit disk kapasitesi: 500 GB&nbsp;</p><p>Ekran Boyutu: 39.6 cm / 15.', '8121fd6be1b15fe49a4652d36dbbba7d.png', 'True', 1, 7, NULL, '2019-01-19 03:17:44'),
(11, 'Yazılı Baskılı Sweatshirt', 'erkek giyim', 1, 14, 55, 58, 'Yazılı Baskılı Sweatshirt', 'Yazılı Baskılı Sweatshirt', '<p><strong>Materyal Bilgileri:</strong>%100 Pamuk</p><p><strong>Model Bilgileri:</strong> Boy: 188 cm<br>Göğüs: 99<br>Bel: 85<br>Kalça: 100<br>Modelin Bedeni: M</p>', '328d2299d38b8bc375e04c6b7b325823.jpeg', 'True', 1, 9, NULL, '2019-01-19 03:24:23'),
(12, 'Yazılı Baskılı Sweatshirt', 'erkek giyim', 1, 52, 30, 45, 'Yazılı Baskılı Sweatshirt', 'Yazılı Baskılı Sweatshirt', '<p><strong>Açıklama:</strong>Bisiklet Yaka, Uzun Kollu Sweatshirt</p><p><strong>Materyal Bilgileri:</strong>%100 Pamuk</p>', '43a2d867d654d6e459299565a4eacd27.jpeg', 'True', 1, 9, NULL, '2019-01-19 03:27:00'),
(13, 'Kapüşonlu Hırka', 'erkek giyim', 1, 12, 30, 45, 'Kapüşonlu Hırka', 'Kapüşonlu Hırka', '<p><strong>Açıklama:</strong>Cep Detaylı, Desenli Hırka</p><p><strong>Materyal Bilgileri:</strong>%75 Pamuk, %25 Polyester</p><p><strong>Model Bilgileri:</strong> Boy: 186 cm<br>Göğüs: 98<br>Bel: 80<br>Kalça: 95<br>Modelin Bedeni: M</p>', '5b6c154559701c29f8ed56dccb7b2371.jpeg', 'True', 1, 9, NULL, '2019-01-19 03:29:27'),
(14, 'Kapüşonlu Mont', 'erkek giyim', 1, 150, 150, 321, 'Kapüşonlu Mont', 'Kapüşonlu Mont', '<p><strong>Açıklama:</strong>Suni Kürk Detaylı, Fermuar Detaylı, Kapüşonlu Mont</p><p><strong>Materyal Bilgileri:</strong>%100 Polyester</p><p><strong>Model Bilgileri:</strong> Boy: 188 cm<br>Göğüs: 98<br>Bel: 75<br>Kalça: 95<br>Modelin Bedeni: M</p>', '0f309ff747f405e13ef47b7144317070.jpeg', 'True', 1, 9, NULL, '2019-01-19 03:31:54'),
(15, 'Şişme Mont Haki', 'erkek giyim', 1, 14, 150, 162, 'Şişme Mont Haki', 'Şişme Mont Haki', '<p><strong>Açıklama:</strong>Cep Detaylı, Kapüşonlu, Şişme Mont</p><p><strong>Materyal Bilgileri:</strong>%100 Polyester</p><p><strong>Model Bilgileri:</strong> Boy: 188 cm<br>Göğüs: 99<br>Bel: 85<br>Kalça: 100<br>Modelin Bedeni: M</p>', 'f483012aa114659a0cd5a6222b1453b7.jpeg', 'True', 1, 9, NULL, '2019-01-19 03:33:46'),
(16, 'Düğme Detaylı Kaban', 'kadın giyim', 1, 12, 90, 97, 'Düğme Detaylı Kaban', 'Düğme Detaylı Kaban', '<p><strong>Açıklama:</strong>Klasik Yaka, Düğme Detaylı, Kaban</p><p><strong>Materyal Bilgileri:</strong>%51 Poly Akrilik, %44 Polyester, %5 Yün</p><p><strong>Model Bilgileri:</strong> Boy: 176 cm<br>Göğüs: 84<br>Bel: 60<br>Kalça: 90<br>Modelin Bedeni: 36', '595506dbcfd224c854d5b83142d840e8.jpeg', 'True', 1, 10, NULL, '2019-01-19 03:39:09'),
(17, 'Cep Detaylı Kazak', 'kadın giyim', 1, 150, 15, 25, 'Cep Detaylı Kazak', 'Cep Detaylı Kazak', '<p><strong>Açıklama:</strong>Uzun Kollu,Bisiklet Yaka Kazak</p><p><strong>Materyal Bilgileri:</strong>%100 Polyester</p><p><strong>Model Bilgileri:</strong> Boy: 175 cm<br>Göğüs: 80<br>Bel: 59<br>Kalça: 88<br>Modelin Bedeni: S</p>', 'eea2e60d0656223f5f7c908b664c2108.jpeg', 'True', 1, 10, NULL, '2019-01-19 03:44:25'),
(18, 'Boğazlı Kazak', 'kadın giyim', 1, 12, 30, 38, 'Boğazlı Kazak', 'Boğazlı Kazak', '<h4><strong>Açıklama:</strong>Uzun Kollu, Boğazlı Kazak</h4><h4><strong>Materyal Bilgileri:</strong>%76 Akrilik, %23 Polyester, %1 Elastan</h4><h4><strong>Model Bilgileri:</strong> Boy: 178 cm<br>Göğüs: 87<br>Bel: 59<br>Kalça: 89<br>Modelin Bedeni: S</h4>', '9975cab7bc070d3a587f2ed51d1f1101.jpeg', 'True', 1, 1, NULL, '2019-01-19 03:46:44'),
(19, 'Boğazlı Kazak', 'kadın giyim', 1, 12, 30, 45, 'Boğazlı Kazak', 'Boğazlı Kazak', '<p><strong>Açıklama:</strong>Uzun Kollu, Boğazlı Kazak</p><p><strong>Materyal Bilgileri:</strong>%59 Polyester, %30 Akrilik, %11 Poliamid</p><p><strong>Model Bilgileri:</strong> Boy: 178 cm<br>Göğüs: 87<br>Bel: 59<br>Kalça: 89<br>Modelin Bedeni: S</p>', '9cbc37b0e59beabbc1efdf7f9bdf4591.jpeg', 'True', 1, 10, NULL, '2019-01-19 03:48:51'),
(20, 'Sırt Detaylı Kazak', 'kadın giyim', 1, 12, 46, 52, 'Sırt Detaylı Kazak', 'Sırt Detaylı Kazak', '<p><strong>Açıklama:</strong>Uzun Kollu, V Yaka, Sırt Detaylı Kazak</p><p><strong>Materyal Bilgileri:</strong>73% Akrilik, %25 Polyester, %2 Elastan</p><p><strong>Model Bilgileri:</strong> Boy: 175 cm<br>Göğüs: 80<br>Bel: 59<br>Kalça: 88<br>Modelin Bedeni', 'd83e30a6e16e79ae0e63b4e79f96f696.jpeg', 'True', 1, 10, NULL, '2019-01-19 03:50:29'),
(21, 'Mira Koltuk Takımı', 'mobilya', 1, 12, 7500, 8000, 'Mira Koltuk Takımı', 'Mira Koltuk Takımı', '<p>Ürünün yüksek ayakları, oturum ve kol yanlarında yer alan makromeler ile modern bir görünüm sağlanmıştır.</p><p>Üçlü ve ikili ünitelerdeki sırttan yatma yatak mekanizması ile fonksiyonellik sağlanmıştır.</p><p>Berjer ünitesinin sırt kısmında yer alan y', 'bc69c1d71e0cc0dd61e5049ffc92b21f.jpeg', 'True', 1, 11, NULL, '2019-01-19 03:54:15'),
(22, 'Selegno Salon Takımı', 'mobilya', 1, 12, 12000, 12400, 'Selegno Salon Takımı', 'Selegno Salon Takımı', '<p>Selegno Salon Takımı modelimiz 3-3-B-B takım yapısı ile serimize alınmıştır.</p><p>Selegno Salon Takımı modern tarzın ince detaylar ile yorumlanması ile şık ve gösterişli bir salon takımı olarak tasarlanmıştır.</p><p>Soft hatların hakim olduğu yeni mod', '6a0fdd553623cabea2e49e06394e224a.jpeg', 'True', 1, 11, NULL, '2019-01-19 03:59:51'),
(23, 'Vitella Salon Takımı', 'mobilya', 1, 14, 14500, 15000, 'Vitella Salon Takımı', 'Vitella Salon Takımı', '<p>Vitella salon takımı modelimiz 3-3-B-B takım yapısı ile serimize alınmıştır.</p><p>Vitella salon takımı chester tarzın avangarde detaylar ile birlikte yorumlanması ile hazırlanmış, gösterişli ve şık bir salon takımı olarak hazırlanmıştır.</p><p>Yeni ür', '7b05258c3ad2df285918b7e4f1198f41.jpeg', 'True', 1, 11, NULL, '2019-01-19 04:01:38'),
(24, 'Elantra Salon Takımı', 'mobilya', 1, 27, 12000, 18000, 'Elantra Salon Takımı', 'Elantra Salon Takımı', '<p>Elantra Salon Takımında Chester tarzının karakteristik yapısı olan düğme çektirme uygulaması ile birlikte makrome dikiş yapılarak oldukça zengin ve üst düzey bir görsellik oluşturulmuştur. Lazer kesimle desen verilen deri üzerine flok kumaş uygulaması ', '0087eea4217541fd2e5376ad798b02eb.jpeg', 'True', 1, 11, NULL, '2019-01-19 04:03:56'),
(25, 'Elantra S Salon Takımı', 'mobilya', 1, 7, 1200, 13500, 'Elantra S Salon Takımı', 'Elantra S Salon Takımı', '<p>Elantra S salon takımı modelimizde Chester tarzının karakteristik yapısı olan düğme çektirme uygulaması ile birlikte makrome dikiş yapılarak oldukça zengin ve üst düzey bir görsellik oluşturulmuştur. Modelimizde kullanılan torna ayaklar ürünün tarzını ', '034f3bf0b80f74ccb6e9af6c2611ebd6.jpeg', 'True', 1, 11, NULL, '2019-01-19 04:06:05'),
(26, 'Terre Seramik Tencere - 17 cm', 'mutfak gereçleri', 1, 12, 22, 25, 'Terre Seramik Tencere - 17 cm', 'Terre Seramik Tencere - 17 cm', '<p>TEKNİK ÖZELLİKLER</p><p>Ürün Tipi: Seramik<br>Üretim Yeri: İthal<br>Paket İçeriği: Seramik Tencere (17 cm) + Kapak (1 Adet)</p>', '42c9d171d4ce5cd514a74b3b0180afa3.jpeg', 'True', 1, 12, NULL, '2019-01-19 04:08:47'),
(27, 'Quartz Serisi - Derin Tencere', 'mutfak gereçleri', 1, 9, 75, 99, 'Quartz Serisi - Derin Tencere', 'Quartz Serisi - Derin Tencere', '<p>Ürün Tipi: Çelik<br>Ölçü: 24 cm<br>Taban: İndüksiyon Uyumlu<br>Özellik: Yapışmaz, Isıya Dayanıklı, Temizliği Kolay<br>Üretim Yeri: İthal<br>Paket İçeriği: Tencere (1 adet)</p>', 'eb057a6c820495f74531ba6d557fec18.jpeg', 'True', 1, 12, NULL, '2019-01-19 04:10:15'),
(28, 'Barnes Çaydanlık Takımı - Orta Boy', 'mutfak gereçleri', 1, 27, 200, 218, 'Barnes Çaydanlık Takımı - Orta Boy', 'Barnes Çaydanlık Takımı - Orta Boy', '<p>TEKNİK ÖZELLİKLER</p><p>Ürün TipiPaslanmaz ÇelikÖlçüÜst Demlik 0,9 lt / Alt Demlik 1,5 ltÜretim YeriTürkiyePaket İçeriğiÜst Demlik (1 adet )+ Alt Demlik (1 adet) + Paslanmaz Çelik Kapak (2 adet)</p>', '019cc3d3d0562242d5d3cfbf07f73960.jpeg', 'True', 1, 12, NULL, '2019-01-19 04:12:51'),
(29, 'Aqua Çelik 3\'lü Tencere Setı 14 - 16 - 18 Cm Gri', 'mutfak gereçleri', 1, 16, 100, 109, 'Aqua Çelik 3\'lü Tencere Setı 14 - 16 - 18 Cm Gri', 'Aqua Çelik 3\'lü Tencere Setı 14 - 16 - 18 Cm Gri', '<p>Kategori: Tencere Seti&nbsp;<br>Desen: ivan&nbsp;<br>Renk: Gri&nbsp;<br>Ebat: 14 - 16 - 18 cm&nbsp;<br>Koleksiyon/Tema: Ocean Treasure&nbsp;<br>Ürün Bileşimi: Çelik&nbsp;<br>Ürün Tarifi: 3\'lü&nbsp;</p>', '96bc57e11e43c5d3778f97832cc41cfd.jpeg', 'True', 1, 12, NULL, '2019-01-19 04:14:54'),
(30, 'Eldora Cam Ayaklı Meşrubatlık 1,8l Şeffaf', 'mutfak gereçleri', 1, 14, 90, 101, 'Eldora Cam Ayaklı Meşrubatlık 1,8l Şeffaf', 'Eldora Cam Ayaklı Meşrubatlık 1,8l Şeffaf', '<p>Kategori: Meşrubatlık&nbsp;<br>Desen: Eldora&nbsp;<br>Renk: Şeffaf&nbsp;<br>Ebat: 1,8L&nbsp;<br>Koleksiyon/Tema: Spot&nbsp;<br>Ürün Bileşimi: Cam&nbsp;<br>Ürün Tarifi: Ayaklı&nbsp;</p>', '24d05b4bed3161f15cccb9f2d390a628.jpeg', 'True', 1, 12, NULL, '2019-01-19 04:16:31'),
(31, '0.08 Karat Pırlantalı Boğa Burcu Kolye', 'altın takılar', 2, 14, 2300, 2660, '0.08 Karat Pırlantalı Boğa Burcu Kolye', '0.08 Karat Pırlantalı Boğa Burcu Kolye', '<h2>4.61 gr 14 ayar pembe altın</h2><p>Toplam taş ağırlığı 0.08 Karattır.</p><p>Kolye ucunun boyutu 2.5 cm x 2.5 cm\'dir. Zinciriyle birlikte satışa sunulmaktadır.</p>', '2fb4c114d2727157da4e04af0b3fb13c.jpeg', 'True', 2, 13, NULL, '2019-01-19 04:20:48'),
(32, 'Altın 14 Ayar Taşsız Fantazi Kolye', 'altın takılar', 2, 8, 1300, 1460, 'Altın 14 Ayar Taşsız Fantazi Kolye', 'Altın 14 Ayar Taşsız Fantazi Kolye', '<p><strong>Altın 14 Ayar Taşsız Fantazi Kolye</strong></p>', '4d2074b705b2e5a850ef24f4a3f12444.jpeg', 'True', 2, 13, NULL, '2019-01-19 04:22:55'),
(33, '14 AYAR RENKLİ TAŞLI CHOKER ALTIN KOLYE', 'altın takılar', 5, 6, 1000, 1218, '14 AYAR RENKLİ TAŞLI CHOKER ALTIN KOLYE', '14 AYAR RENKLİ TAŞLI CHOKER ALTIN KOLYE', '<p>Maden: altın</p><p>Renk: sarı</p><p>Ağırlık 3.95</p><p>Ayar 14</p>', '1ace4267fe5869f1422aa4a0fa1f35cc.jpeg', 'True', 2, 13, NULL, '2019-01-19 04:25:39'),
(34, '14 AYAR DAMLA FİGÜRLÜ ALTIN KOLYE', 'altın takılar', 6, 21, 900, 950, '14 AYAR DAMLA FİGÜRLÜ ALTIN KOLYE', '14 AYAR DAMLA FİGÜRLÜ ALTIN KOLYE', '<p>Maden: altın</p><p>Renk:Sarı</p><p>Ağırlık: 3.90</p><p>Ayar: 14</p>', '8324c07c2fe0520edaf17dbc8bb73124.jpeg', 'True', 5, 13, NULL, '2019-01-19 04:27:05'),
(35, '14 AYAR MADALYON ALTIN KOLYE', 'altın takılar', 5, 13, 2000, 2931, '14 AYAR MADALYON ALTIN KOLYE', '14 AYAR MADALYON ALTIN KOLYE', '<p>&nbsp;</p>', '70af393d6e8a284fa9aa05e764cb4579.jpeg', 'True', 7, 13, NULL, '2019-01-19 04:28:30'),
(36, 'Choppers', 'saat', 4, 5, 40, 49, 'Choppers', 'Choppers', '<p>15 gün içinde ücretsiz iade.&nbsp;</p><p>24 saatte kargoda fırsatı iş günlerinde geçerlidir.</p><p>Kasa Çapı:42 mm</p><p>Kasa Cinsi:Metal</p><p>Kordon Cinsi:Metal</p><p>2 Yıl Garantilidir</p><p>Garanti Belgesi ile Gönderilecektir.</p><p>Ürüne ait perak', '7461b27a1dc102c054ca762a91c51cb5.jpeg', 'True', 4, 14, NULL, '2019-01-19 04:31:41'),
(37, 'POLO Rucci', 'saat', 4, 14, 30, 49, 'POLO Rucci', 'POLO Rucci', '<p>15 gün içinde ücretsiz iade.&nbsp;</p><p>24 saatte kargoda fırsatı iş günlerinde geçerlidir.</p><p>Kasa Çapı:44 mm</p><p>Kasa Cinsi:Metal</p><p>Kordon Cinsi:Metal</p><p>2 Yıl Garantilidir</p><p>Garanti Belgesi ile Gönderilecektir.</p><p>Ürüne ait perak', 'f16daf4c6fdddb43acbd362c2604b28c.jpeg', 'True', 8, 14, NULL, '2019-01-19 04:34:43'),
(38, 'Aqua Di Polo', 'saat', 6, 41, 20, 49, 'Aqua Di Polo', 'Aqua Di Polo', '<p>24 saatte kargoda fırsatı iş günlerinde geçerlidir.</p><p>Kasa Çapı:40 mm</p><p>Kasa Cinsi:Metal</p><p>Kordon Cinsi:Plastik / Silikon</p><p>2 Yıl Garantilidir</p><p>Garanti Belgesi ile Gönderilecektir.</p><p>Ürüne ait perakende satış fiyatı tedarikçi t', '943818be8d41f895380321fa3a592285.jpeg', 'True', 3, 14, NULL, '2019-01-19 04:36:28'),
(39, 'G-Sport POLO', 'saat', 3, 45, 20, 45, 'G-Sport POLO', 'G-Sport POLO', '<p>15 gün içinde ücretsiz iade.&nbsp;</p><p>&nbsp;24 saatte kargoda fırsatı iş günlerinde geçerlidir.</p><p>Kasa Çapı:44 mm</p><p>Kasa Cinsi:Metal</p><p>Kordon Cinsi:Metal</p><p>2 Yıl Garantilidir</p><p>Garanti Belgesi ile Gönderilecektir.</p>', '0b4243622fa99ac200b0c0cb722dd9a4.jpeg', 'True', 3, 14, NULL, '2019-01-19 04:38:02'),
(40, 'Diesel', 'saat', 7, 15, 250, 450, 'Diesel', 'Diesel', '<p>5 gün içinde ücretsiz iade. &nbsp;</p><p>24 saatte kargoda fırsatı iş günlerinde geçerlidir.</p><p>Ürün Kodu : DZ1206</p><p>Kasa Çapı : 45 mm</p><p>Kasa : Çelik</p><p>Kordon : Deri</p><p>Cam : Mineral</p><p>Su Geçirmezlik : 10 ATM</p><p>2 Yıl Garantili', '217497a3cfc1da7956bb00761d4cfa18.jpeg', 'True', 13, 1, NULL, '2019-01-19 04:39:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassw` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `company`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpemail`, `smtppassw`, `smtpport`, `aboutus`, `contact`, `referances`, `status`) VALUES
(1, 'denemeeee', '123123', '12313', NULL, NULL, NULL, NULL, NULL, 'fatihaydarr96@gmail.com', 'fatihaydarr96@gmail.com', 'asda', NULL, '<p>&nbsp;</p>', '<p>&nbsp;</p>', '<p>&nbsp;</p>', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `status`, `address`, `city`, `phone`) VALUES
(1, 'fatih@fatih', 'ROLE_ADMIN', '$2y$12$W3AH/xUFHa.KOL8GWOBRtOdWgGdRH/CbqEIipa366BEcyy.tRA3Ki', 'fatih', 'True', NULL, NULL, NULL),
(2, 'user@user', 'ROLE_USER', '$2y$12$W3AH/xUFHa.KOL8GWOBRtOdWgGdRH/CbqEIipa366BEcyy.tRA3Ki', 'deneme', 'True', '', 'İstanbul', '1232'),
(3, 'fatihaydarr96@gmail.com', 'ROLE_USER', '$2y$10$PAmCZHKXAI.HAfWt7vVCg.4oBd7sioFPL1Cfeuofi/Kg7SFBWtMym', '', 'False', NULL, NULL, NULL),
(4, '123@123', 'ROLE_USER', '$2y$10$n9vPhs6AoTqzZVMwBoEqcepMPHHFMyg2fxdjR2coCTlpriBWwgki6', 'denemeson', 'False', NULL, NULL, NULL),
(5, '123@23', 'ROLE_USER', '$2y$10$90OBJXqED2DsXSoEdeqdT.X8AciuAC.QfW3ZAUT5Ap84nxDPDcHYu', 'denama', 'False', NULL, NULL, NULL),
(6, 'asda@asda', 'ROLE_USER', '$2y$12$W3AH/xUFHa.KOL8GWOBRtOdWgGdRH/CbqEIipa366BEcyy.tRA3Ki', 'son', 'True', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
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
-- Tablo için indeksler `order_detail`
--
ALTER TABLE `order_detail`
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
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
