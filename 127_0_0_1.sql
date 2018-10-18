-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 13 2018 р., 18:15
-- Версія сервера: 5.6.37
-- Версія PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `vova`
--
CREATE DATABASE IF NOT EXISTS `vova` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `vova`;

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armout', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolse and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'intenors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', NULL, NULL),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product1/c7367e.jpg', 1, 1, 'Product', '5b731bff32-1', ''),
(2, 'Products/Product1/1d9109.jpg', 1, NULL, 'Product', 'be83f25b9c-2', ''),
(3, 'Products/Product1/bffffd.jpg', 1, NULL, 'Product', 'af3959c87a-3', ''),
(4, 'Products/Product1/76b1dd.jpg', 1, NULL, 'Product', '2184bd89e5-4', ''),
(5, 'Products/Product1/bc8068.jpg', 1, NULL, 'Product', '31a80c47d7-5', ''),
(6, 'Products/Product2/c13902.jpg', 2, 1, 'Product', 'b3fa0743b2-1', ''),
(7, 'Products/Product2/a83cbc.jpg', 2, NULL, 'Product', '1fc18e71ad-2', ''),
(8, 'Products/Product2/cea902.jpg', 2, NULL, 'Product', 'e98d0e33a9-3', ''),
(9, 'Products/Product2/1cac62.jpg', 2, NULL, 'Product', '44313eba37-4', ''),
(10, 'Products/Product2/575559.jpg', 2, NULL, 'Product', 'cacc60f19e-5', ''),
(11, 'Products/Product3/99baf2.jpg', 3, 1, 'Product', '71dc25d13e-1', ''),
(12, 'Products/Product3/67db95.jpg', 3, NULL, 'Product', '5e8138cd62-2', ''),
(13, 'Products/Product3/d777b2.jpg', 3, NULL, 'Product', 'b0208d0b6c-3', ''),
(14, 'Products/Product3/6fec5f.jpg', 3, NULL, 'Product', '2d226c8179-4', ''),
(15, 'Products/Product3/4a8402.jpg', 3, NULL, 'Product', 'b89c863eaa-5', ''),
(16, 'Products/Product4/8d59ff.jpg', 4, 1, 'Product', '611735ad12-1', ''),
(17, 'Products/Product4/da3d11.jpg', 4, NULL, 'Product', 'b0f50db586-2', ''),
(18, 'Products/Product4/c8cd58.jpg', 4, NULL, 'Product', '8cb2b6b032-3', ''),
(19, 'Products/Product4/153cf9.jpg', 4, NULL, 'Product', '53676e4474-4', ''),
(20, 'Products/Product4/25277f.jpg', 4, NULL, 'Product', '6fd54792b3-5', ''),
(21, 'Products/Product5/afb042.jpg', 5, 1, 'Product', 'fa9dc5409b-1', ''),
(22, 'Products/Product5/82144b.jpg', 5, NULL, 'Product', '32f62cce18-2', ''),
(23, 'Products/Product5/d83b00.jpg', 5, NULL, 'Product', '0aa0d66ecd-3', ''),
(24, 'Products/Product5/d9a7a5.jpg', 5, NULL, 'Product', '00096a92e7-4', ''),
(25, 'Products/Product5/c9f0c0.jpg', 5, NULL, 'Product', '9f6f2ed2f5-5', ''),
(26, 'Products/Product6/879abd.jpg', 6, 1, 'Product', 'fcff2f07d7-1', ''),
(27, 'Products/Product6/bafc6e.jpg', 6, NULL, 'Product', '2bd040550e-2', ''),
(28, 'Products/Product6/aacf8c.jpg', 6, NULL, 'Product', '1428fb0f70-3', ''),
(29, 'Products/Product6/a95042.jpg', 6, NULL, 'Product', 'a093943604-4', ''),
(30, 'Products/Product6/099e47.jpg', 6, NULL, 'Product', '2d3a1e7237-5', ''),
(31, 'Products/Product7/449612.jpg', 7, 1, 'Product', 'e79f4d9eaf-1', ''),
(32, 'Products/Product7/fe3a3b.jpg', 7, NULL, 'Product', '385cc5bf8c-2', ''),
(33, 'Products/Product7/36645f.jpg', 7, NULL, 'Product', '49183e7407-3', ''),
(34, 'Products/Product7/27e43c.jpg', 7, NULL, 'Product', '2f55386a06-4', ''),
(35, 'Products/Product7/849040.jpg', 7, NULL, 'Product', '7396bdac92-5', ''),
(36, 'Products/Product8/da0a13.jpg', 8, 1, 'Product', '9e9d178937-1', ''),
(37, 'Products/Product8/3a99de.jpg', 8, NULL, 'Product', 'bd902d7c82-2', ''),
(38, 'Products/Product8/99c276.jpg', 8, NULL, 'Product', 'c9fa9b8bd3-3', ''),
(39, 'Products/Product8/03ab5b.jpg', 8, NULL, 'Product', '7234a3030d-4', ''),
(40, 'Products/Product8/a1b7a1.jpg', 8, NULL, 'Product', '0268fc59b9-5', ''),
(41, 'Products/Product9/4919f5.jpg', 9, 1, 'Product', '860e1cd777-1', ''),
(42, 'Products/Product9/385ea7.jpg', 9, NULL, 'Product', '340a477ccd-2', ''),
(43, 'Products/Product9/e8eda5.jpg', 9, NULL, 'Product', 'c6f95f3eb4-3', ''),
(44, 'Products/Product9/06f12c.jpg', 9, NULL, 'Product', '9495c33b1e-4', ''),
(45, 'Products/Product9/98450f.jpg', 9, NULL, 'Product', 'ca97bc8635-5', ''),
(46, 'Products/Product10/0f8c4f.jpg', 10, 1, 'Product', 'b0ce51e629-2', ''),
(47, 'Products/Product10/67f545.jpg', 10, 0, 'Product', 'd9d00bb0f1-3', ''),
(48, 'Products/Product10/b409b3.jpg', 10, 0, 'Product', 'b769a8ace6-4', ''),
(49, 'Products/Product10/26376d.jpg', 10, 0, 'Product', 'a4f9dee120-5', ''),
(50, 'Products/Product10/843a86.jpg', 10, 0, 'Product', '7882492bab-6', ''),
(51, 'Products/Product10/a08bcb.jpg', 10, 1, 'Product', '9598cc7724-1', ''),
(52, 'Products/Product10/c27965.jpg', 10, NULL, 'Product', '7cebdfca82-7', ''),
(53, 'Products/Product10/1142f2.jpg', 10, NULL, 'Product', 'c169539eea-8', ''),
(54, 'Products/Product10/0d1d50.jpg', 10, NULL, 'Product', 'ae8d5898ee-9', ''),
(55, 'Products/Product10/86e480.jpg', 10, NULL, 'Product', 'f5886d8941-10', ''),
(56, 'Products/Product11/890292.jpg', 11, 1, 'Product', '001241a1dc-1', ''),
(57, 'Products/Product11/e1c36c.jpg', 11, NULL, 'Product', '4e29b95e5a-2', ''),
(58, 'Products/Product11/37e83f.jpg', 11, NULL, 'Product', '2cbd72dd77-3', ''),
(59, 'Products/Product11/434b97.jpg', 11, NULL, 'Product', 'a033886969-4', ''),
(60, 'Products/Product11/fcfc1e.jpg', 11, NULL, 'Product', 'c8255441e5-5', ''),
(61, 'Products/Product12/914e43.jpg', 12, 1, 'Product', 'eebe6a9c2f-1', ''),
(62, 'Products/Product12/09295d.jpg', 12, NULL, 'Product', '2e413e47cc-2', ''),
(63, 'Products/Product12/303093.jpg', 12, NULL, 'Product', 'd1e83dced6-3', ''),
(64, 'Products/Product12/2ed5ec.jpg', 12, NULL, 'Product', '5fd5a7add0-4', ''),
(65, 'Products/Product12/64239e.jpg', 12, NULL, 'Product', 'aa4028373c-5', ''),
(66, 'Products/Product13/7c9a4e.jpg', 13, 1, 'Product', 'f209e1672e-1', ''),
(67, 'Products/Product13/30951e.jpg', 13, NULL, 'Product', '3b37e7fa23-2', ''),
(68, 'Products/Product13/b0ec34.jpg', 13, NULL, 'Product', '57e6fa7794-3', ''),
(69, 'Products/Product13/de0104.jpg', 13, NULL, 'Product', 'c3fc15cf8f-4', ''),
(70, 'Products/Product13/d30949.jpg', 13, NULL, 'Product', 'c4c1d7a4ff-5', ''),
(71, 'Products/Product14/909d53.jpg', 14, 1, 'Product', 'e201b6ddc4-1', ''),
(72, 'Products/Product14/7bb43a.jpg', 14, NULL, 'Product', 'd39612079c-2', ''),
(73, 'Products/Product14/9a0384.jpg', 14, NULL, 'Product', 'd5b4fe66ed-3', ''),
(74, 'Products/Product14/407571.jpg', 14, NULL, 'Product', '263752911f-4', ''),
(75, 'Products/Product14/695d00.jpg', 14, NULL, 'Product', '213e27588b-5', ''),
(76, 'Products/Product15/977c3b.jpg', 15, 1, 'Product', '1fa84201ba-1', ''),
(77, 'Products/Product15/eeb7d0.jpg', 15, NULL, 'Product', '96178bc3b2-2', ''),
(78, 'Products/Product15/619dd7.jpg', 15, NULL, 'Product', '5e0ebd1238-3', ''),
(79, 'Products/Product15/23ed26.jpg', 15, NULL, 'Product', '1fd5f111df-4', ''),
(80, 'Products/Product15/316c27.jpg', 15, NULL, 'Product', '1c2f7b4d37-5', ''),
(81, 'Products/Product16/e176e1.jpg', 16, 1, 'Product', '0088a4288d-1', ''),
(82, 'Products/Product16/ed9c40.jpg', 16, NULL, 'Product', 'd725506265-2', ''),
(83, 'Products/Product16/c03131.jpg', 16, NULL, 'Product', 'a4d58072e1-3', ''),
(84, 'Products/Product16/bdfb41.jpg', 16, NULL, 'Product', '9bb8b0a0bc-4', ''),
(85, 'Products/Product16/5cd70e.jpg', 16, NULL, 'Product', 'a1c91417c6-5', '');

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1536836126),
('m140622_111540_create_image_table', 1536836135),
('m140622_111545_add_name_to_image_table', 1536836135);

-- --------------------------------------------------------

--
-- Структура таблиці `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(1, '2018-09-13 17:06:22', '2018-09-13 17:06:22', 5, 1730, '0', 'vova', 'kazda.vvvvvvv@gmail.com', '1234567', 'wwww');

-- --------------------------------------------------------

--
-- Структура таблиці `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 1, 5, 'Список Шиндлера ', 350, 2, 700),
(2, 1, 4, 'Спартак', 350, 1, 350),
(3, 1, 8, 'Леон', 330, 1, 330),
(4, 1, 9, 'Карты, деньги, два ствола', 350, 1, 350);

-- --------------------------------------------------------

--
-- Структура таблиці `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `year` smallint(5) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `play` varchar(255) NOT NULL,
  `cast` text NOT NULL,
  `content` text NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL,
  `sale` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `product`
--

INSERT INTO `product` (`id`, `category_id`, `img`, `name`, `price`, `year`, `country`, `director`, `play`, `cast`, `content`, `date`, `keywords`, `description`, `hit`, `new`, `sale`) VALUES
(1, 6, 'product1.jpg', 'Очень страшное кино', 300, 2000, 'США', 'Кинен Айвори Уайанс', '01:28:00', 'Анна Фэрис, Реджина Холл, Марлон Уайанс, Джон Абрахамс, Шеннон Элизабет, Кармен Электра, Дейв Шеридан, Фрэнк Б. Мур, Джакомо Бессато, Кайл Грэхэм', '<p><strong><img alt=\"\" src=\"/web/upload/global/001.jpg\" style=\"float:right; height:28px; margin:10px; width:20px\" />В каждом уважающем</strong> себя фильме ужасов есть телефон, который вот-вот зазвонит; жертва, которая вот-вот завопит; убийца, который вот-вот нанесет смертельный удар. И единственный способ остаться в живых &mdash; это тве<span style=\"color:#FF0000\">рдо помнить,</span> что надо всегда опережать убийцу на один шаг&hellip; Когда сексуальная репортерша, вечно сующая свой нос, на пару с попадающим во всякие дурацкие истории охранником из супермаркета пытается остановить убийцу, задумавшего расправиться с самыми видными учениками средней школы Булемия-Фоллз, начинается такое&hellip; ну очень страшное кино.</p>\r\n', 1359028310, '', '', '1', '0', '0'),
(2, 4, 'product2.jpg', 'Очень страшное кино 2 ', 320, 2001, 'США, Канада', 'Кинен Айвори Уайанс', '01:23:00', 'Анна Фэрис, Марлон Уайанс, Джеймс ДеБелло, Шон Уайанс, Дэвид Кросс, Реджина Холл, Кристофер Мастерсон, Тим Карри, Кэтлин Робертсон, Крис Эллиот', '<p><span style=\"font-size:12px\"><img alt=\"\" src=\"/web/upload/global/1.jpg\" style=\"float:right; height:57px; margin:10px; width:40px\" />Отыгравшись по полной программе в фильме &laquo;Очень страшное кино&raquo; на молодежных ужастиках, создатели картины окончательно потеряли стыд и совесть! Теперь пришла очередь киноклассики &laquo;Изгоняющий дьявола&raquo;, &laquo;Полтергейст&raquo;, &laquo;Кладбище домашних животных&raquo; и таких блокбастеров как: &laquo;Ангелы Чарли&raquo;, &laquo;Миссия невыполнима 2&raquo;, &laquo;Что скрывает ложь&raquo;, &laquo;Ганнибал&raquo;, &laquo;Призрак дома на холме&raquo;. Мало не покажется!</span></p>\r\n', 1359028310, '', '', '1', '0', '0'),
(3, 2, 'product3.jpg', 'Иван Васильевич меняет профессию ', 320, 1973, 'СССР', 'Леонид Гайдай', '01:28:00', 'Александр Демьяненко, Юрий Яковлев, Леонид Куравлёв, Наталья Крачковская, Савелий Крамаров, Наталья Селезнёва, Владимир Этуш, Михаил Пуговкин, Сергей Филиппов, Наталья Кустинская', '<p><span style=\"font-size:14px\"><span style=\"font-family:arial,helvetica,sans-serif\">Инженер-изобретатель Тимофеев сконструировал машину времени, которая соединила его квартиру с далеким шестнадцатым веком &mdash; точнее, с палатами государя Ивана Грозного. Туда-то и попадают тезка царя пенсионер-общественник Иван Васильевич Бунша и квартирный вор Жорж Милославский. На их место в двадцатом веке &laquo;переселяется&raquo; великий государь. Поломка машины приводит ко множеству неожиданных и забавных событий&hellip;</span></span></p>\r\n', 1359028434, '', '', '1', '1', '0'),
(4, 1, 'product4.jpg', 'Спартак', 350, 1960, 'США', 'Стэнли Кубрик, Энтони Манн', '03:17:00', 'Кирк Дуглас, Лоуренс Оливье, Джин Симмонс, Чарльз Лотон, Питер Устинов, Джон Гэвин, Нина Фош, Джон Айрленд, Херберт Лом, Джон Долл', '<p><span style=\"font-size:12px\">История гладиатора Спартака, его возлюбленной Варинии и честолюбивого римского полководца Красса. Непреодолимая тяга к свободе заставляет Спартака поднять легендарное восстание рабов, ставшее важнейшей вехой мировой истории.</span></p>\r\n', 1359028672, '', '', '1', '0', '1'),
(5, 5, 'product5.jpg', 'Список Шиндлера ', 350, 1993, 'США', 'Стивен Спилберг', '03:15:00', 'Лиам Нисон, Бен Кингсли, Рэйф Файнс, Кэролайн Гудолл, Эмбет Дэвидц, Джонатан Сагалл, Малгоша Гебель, Шмуэль Леви, Марк Иванир, Беатриче Макола', '<p>Лента рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны более тысячи ста евреев. Это триумф одного человека, не похожего на других, и драма тех, кто, благодаря ему, выжил в ужасный период человеческой истории.</p>\r\n', 1359028672, '', '', '1', '1', '0'),
(6, 3, 'product6.jpg', 'Значит, война ', 210, 2012, 'США', 'МакДжи', '01:37:00', 'Том Харди, Крис Пайн, Риз Уизерспун, Тиль Швайгер, Челси Хэндлер, Джон Пол Руттан, Эбигейл Спенсер, Анджела Бассетт Розмари Харрис, Джордж Тулиатос', '<p><span style=\"font-size:14px\"><img alt=\"\" src=\"/web/upload/global/1ay95k26%5B1%5D.jpg\" style=\"float:right; height:71px; margin:10px; width:50px\" />Два секретных агента, <em>к</em><span style=\"color:#FF0000\">оторые к тому же и зака</span>дычные друзья, влюбляются в одну и ту же женщину, но ни один не желает уступить другому.</span></p>\r\n', 1359028853, '', '', '1', '0', '1'),
(7, 3, 'product1.jpg', 'Манхэттенская мелодрама', 205, 1934, 'США', 'В.С. Ван Дайк, Джордж Кьюкор', '01:30:00', 'Кларк Гейбл, Уильям Пауэлл, Мирна Лой, Лео Каррильо, Нат Пендлтон, Джордж Сидни, Изабель Джуэлл, Мюриэль Эванс, Томас Э. Джексон, Изабель Кейт', '<p>Эдвард Гэллахер и Джим Уэй дружили с детства. Вступив во взрослую жизнь, каждый пошёл своей дорогой. Гэллахер становится бандитом и вымогателем, а Уэйд, заняв пост окружного прокурора, мечтает о губернаторской должности. Уэйд благодаря Гэллахеру её получает, но какую цену друзья должны за это заплатить.</p>\r\n', 1359029011, '', '', '1', '1', '0'),
(8, 4, 'product2.jpg', 'Леон', 330, 1994, 'Франция', 'Люк Бессон', '01:50:00', 'Жан Рено, Гари Олдман, Натали Портман, Дэнни Айелло, Питер Эппел, Уилли Уан Блад, Дон Крич, Кейт А. Гласко, Рэндольф Скотт, Майкл Бадалукко', '<p><span style=\"font-size:12px\">Профессиональный убийца Леон, не знающий пощады и жалости, знакомится со своей очаровательной соседкой Матильдой, семью которой расстреливают полицейские, замешанные в торговле наркотиками. Благодаря этому знакомству он впервые испытывает чувство любви, но&hellip;</span></p>\r\n', 1359029167, '', '', '1', '0', '1'),
(9, 4, 'product3.jpg', 'Карты, деньги, два ствола', 350, 1998, 'Великобритания', 'Гай Ричи', '01:47:00', 'Джейсон Стэйтем, Ник Моран, Джейсон Флеминг, Декстер Флетчер, Винни Джонс, Ленни МакЛин, П.Х. Мориарти, Вэс Блэквуд, Стинг, Фрэнк Харпер ', '<p><span style=\"font-size:12px\">Четверо молодых парней накопили каждый по 25 тысяч фунтов, чтобы один из них мог сыграть в карты с опытным шулером и матерым преступником, известным по кличке Гарри-Топор. Парень в итоге проиграл 500 тысяч, на уплату долга ему дали неделю. В противном случае и ему и его &laquo;спонсорам&raquo; каждый день будут отрубать по пальцу, а потом&hellip; Чтобы выйти из положения, ребята решили ограбить бандитов, решивших ограбить трех &laquo;ботаников&raquo;, выращивающих марихуану для местного наркобарона. Но на этом приключения четверки не заканчиваются&hellip;</span></p>\r\n', 1359029262, '', '', '1', '1', '0'),
(10, 4, 'product4.jpg', 'Большой куш', 410, 2000, 'США, Великобритания', 'Гай Ричи', '01:42:00', 'Джейсон Стэйтем, Брэд Питт, Бенисио Дель Торо, Стивен Грэм, Алан Форд, Деннис Фарина, Раде Шербеджия, Винни Джонс, Джейсон Флеминг, Майк Рейд', '<p>Четырехпалый Френки должен был переправить краденный алмаз из Англии в США своему боссу Эви. Но вместо этого герой попадает в эпицентр больших неприятностей. Сделав ставку на подпольном боксерском поединке, Френки попадает в круговорот весьма нежелательных событий. Вокруг героя и его груза разворачивается сложная интрига с участием множества колоритных персонажей лондонского дна &mdash; русского гангстера, троих незадачливых грабителей, хитрого боксера и угрюмого громилы грозного мафиози. Каждый норовит в одиночку сорвать Большой Куш.</p>\r\n', 1359029498, '', '', '1', '0', '1'),
(11, 4, 'product5.jpg', 'Эффект бабочки', 299, 2004, 'США, Канада', 'Эрик Бресс, Дж. Макки Грубер', '01:53:00', 'Эштон Катчер, Эми Смарт, Мелора Уолтерс, Элден Хенсон, Уильям Ли Скотт, Джон Патрик Амедори, Кевин Шмидт, Эрик Столц, Каллум Кит Ренни, Лорена Гэйл', '<p>Мальчик Эван перенял от своего отца-психопата, ныне запертого в доме для умалишённых, странную болезнь &mdash; он не помнит некоторых эпизодов своей жизни, причем в эти моменты происходили довольно странные, а то и ужасные, события. Возмужав и поступив в колледж, Эван делает удивительное открытие. Читая дневники, которые он писал в детстве по совету врача, Эван может возвращаться в детство и своими действиями изменять будущее.</p>\r\n', 1359029498, '', '', '1', '1', '0'),
(12, 4, 'product6.jpg', 'Пятый элемент ', 225, 1997, 'Франция', 'Люк Бессон', '02:06:00', 'Брюс Уиллис, Милла Йовович, Гари Олдман, Иэн Холм, Крис Такер, Люк Перри, Брайон Джеймс, Том ’Тайни’ Листер мл., Ли Эванс, Чарли Крид-Майлз ', '<p>Каждые пять тысяч лет открываются двери между измерениями и темные силы стремятся нарушить существующую гармонию. Каждые пять тысяч лет Вселенной нужен герой, способный противостоять этому злу. XXIII век. Нью-йоркский таксист Корбен Даллас должен решить глобальную задачу &mdash; спасение всего рода человеческого. Зло в виде раскаленной массы, наделенной интеллектом, надвигается на Землю. Победить его можно, только лишь собрав воедино четыре элемента (они же стихии &mdash; земля, вода, воздух и огонь) и добавив к ним загадочный пятый элемент.</p>\r\n', 1359029668, '', '', '1', '0', '1'),
(13, 7, 'product1.jpg', 'Доспехи Бога 2', 290, 1991, 'Гонконг', 'Джеки Чан', '01:32:00', 'Джеки Чан, Кэрол «До До» Чэн, Ева Кобо, Шоко Икеда, Альдо Самбрелл, Кен Гудман, Стиви Тарталия, Лин Персивал, Брюс Фонтейн, Уэйн Арчер', '<p>Азиатский Ястреб возвращается! На этот раз ему предстоит новая работа, из-за которой наш герой опять приезжает в Мадрид. Некий загадочный миллионер предлагает Ястребу заняться поисками нацистских сокровищ, которые спрятаны в глубине африканской пустыни. Он передает ключ к сокровищнице, соглашается финансировать экспедицию и отправляет с Ястребом попутчицу &mdash; специалиста по Африке Аду. Во-время, своего пребывания в Мадриде, Ястреб знакомится с немецкой девушкой Эльзой, которая разыскивает своего деда, пропавшего во время войны в Африке. После ряда приключений Эльза тоже присоединяется к экспедиции.</p>\r\n', 1359029820, '', '', '1', '1', '0'),
(14, 5, 'product2.jpg', 'Час пик 2', 200, 2001, 'США, Гонконг', 'Бретт Рэтнер', '01:30:00', 'Джеки Чан, Крис Такер, Джон Лоун, Чжан Цзыи, Розелин Санчез, Алан Кинг, Харрис Юлин, Кеннет Цан, Лиза ЛоЦицеро, Мей Меланкон ', '<p>История начинается непосредственно с того момента, на котором закончилась первая часть &mdash; полицейские Ли и Картер прибывают в Гонконг по следам преступников, замышляющих похищение китайский сокровищ и продажи их в штатах. По мере того, как детективы Картер и Ли становятся все больше и больше запутанными в преступном заговоре, вовлекающем их в смертоносную Триаду, поездка в стиле нон-стоп от Гонконга до Лос-Анджелеса и Лас-Вегаса, оборачивается для них безумно интересным, смешным и в то же время опасным приключением. Полицейские должны использовать все свои навыки, чтобы заманить в ловушку одного из самых опасных преступников в мире&hellip;</p>\r\n', 1359029960, '', '', '1', '1', '0'),
(15, 5, 'product3.jpg', 'Час пик', 199, 1998, 'США', 'Бретт Рэтнер', '01:38:00', 'Джеки Чан, Крис Такер, Элизабет Пенья, Том Уилкинсон, Марк Ролстон, Филип Бейкер Холл, Кен Люн, Ци Ма, Роберт Литман, Майкл Чоу', '<p>В Лос-Анджелесе злодеи похищают малолетнюю дочь китайского консула, которую в Гонконге учил кунг-фу инспектор Ли. Консул вызывает Ли в Америку, чтобы тот принял участие в освобождении девочки. Агенты ФБР обратились к полиции с просьбой выделить им самого никчемного сотрудника, чтобы тот взял китайца на себя и показал ему достопримечательности, а главное, не позволил вмешиваться в их дела. Им оказывается самый болтливый полицейский Картер. Естественно, после ряда разногласий и недоразумений они объединяют усилия и всерьез берутся за вызволение заложницы.</p>\r\n', 1359030152, '', '', '1', '0', '1'),
(16, 5, 'product4.jpg', 'Кто я?', 349, 1998, 'Гонконг', 'Бенни Чан, Джеки Чан', '01:58:00', 'Джеки Чан, Мишель Ферре, Мираи Ямамото, Рон Смержак, Эд Нельсон, Том Помперт, Глори Саймон, Фред ван Дитмарш, Фриц Кромменхёк, Дик Риенстра', '<p><span style=\"font-size:12px\">Группа спецназа,<strong> работающая</strong> под прикрытием ЦРУ, направляется на задание по вывозу энергетического тела, которое было найдено учеными в африканских джунглях. По окончании операции всю группу пытаются ликвидировать. Один из солдат, выживший после авиакатастрофы, но потерявший память, пытается бороться со своими мыслями и вспомнить, кто он. На пути к истине ему мешают, и он не знает, кому можно верить.</span></p>\r\n', 1359030152, '', '', '1', '1', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$Npmb688z.PuwcKiAIlgUguCLKq0Dcodxy6PTokcel5VeDqcUPOlmm', 'Ko5VCBMxToNhTaoUNa6DbNldoZ14qodO');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Індекси таблиці `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблиці `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT для таблиці `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
