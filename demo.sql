-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2025 г., 19:35
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `material_type_import`
--

CREATE TABLE `material_type_import` (
  `id_material_type` int NOT NULL,
  `type_material` int DEFAULT NULL,
  `procent_poter_sirya` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `material_type_import`
--

INSERT INTO `material_type_import` (`id_material_type`, `type_material`, `procent_poter_sirya`) VALUES
(1, 1, '0,80%'),
(2, 2, '0,70%'),
(3, 3, '0,55%'),
(4, 4, '0,30%');

-- --------------------------------------------------------

--
-- Структура таблицы `name_ceh`
--

CREATE TABLE `name_ceh` (
  `id_ceh` int NOT NULL,
  `name_ceh` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_ceh`
--

INSERT INTO `name_ceh` (`id_ceh`, `name_ceh`) VALUES
(1, 'Проектный'),
(2, 'Расчетный'),
(3, 'Раскроя'),
(4, 'Обработки'),
(5, 'Сушильный'),
(6, 'Покраски'),
(7, 'Столярный'),
(8, 'Изготовления изделий из искусственного камня и композитных материалов'),
(9, 'Изготовления мягкой мебели'),
(10, 'Монтажа стеклянных, зеркальных вставок и других изделий'),
(11, 'Сборки'),
(12, 'Упаковки');

-- --------------------------------------------------------

--
-- Структура таблицы `name_material`
--

CREATE TABLE `name_material` (
  `id_material` int NOT NULL,
  `name_material` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_material`
--

INSERT INTO `name_material` (`id_material`, `name_material`) VALUES
(1, 'Мебельный щит из массива дерева'),
(2, 'Ламинированное ДСП'),
(3, 'Фанера'),
(4, 'МДФ');

-- --------------------------------------------------------

--
-- Структура таблицы `name_product`
--

CREATE TABLE `name_product` (
  `id_name` int NOT NULL,
  `name_product` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_product`
--

INSERT INTO `name_product` (`id_name`, `name_product`) VALUES
(1, 'Комплект мебели для гостиной Ольха горная'),
(2, 'Стенка для гостиной Вишня темная'),
(3, 'Прихожая Венге Винтаж'),
(4, 'Тумба с вешалкой Дуб натуральный'),
(5, 'Прихожая-комплект Дуб темный'),
(6, 'Диван-кровать угловой Книжка'),
(7, 'Диван модульный Телескоп'),
(8, 'Диван-кровать Соло'),
(9, 'Детский диван Выкатной'),
(10, 'Кровать с подъемным механизмом с матрасом 1600х2000 Венге'),
(11, 'Кровать с матрасом 90х2000 Венге'),
(12, 'Кровать универсальная Дуб натуральный'),
(13, 'Кровать с ящиками Ясень белый'),
(14, 'Шкаф-купе 3-х дверный Сосна белая'),
(15, 'Стеллаж Бук натуральный'),
(16, 'Шкаф 4 дверный с ящиками Ясень серый'),
(17, 'Шкаф-пенал Береза белый'),
(18, 'Комод 6 ящиков Вишня светлая'),
(19, 'Комод 4 ящика Вишня светлая'),
(20, 'Тумба под ТВ ');

-- --------------------------------------------------------

--
-- Структура таблицы `name_type_product`
--

CREATE TABLE `name_type_product` (
  `id_type` int NOT NULL,
  `name_type_product` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `name_type_product`
--

INSERT INTO `name_type_product` (`id_type`, `name_type_product`) VALUES
(1, 'Гостиные'),
(2, 'Прихожие'),
(3, 'Мягкая мебель'),
(4, 'Кровати'),
(5, 'Шкафы'),
(6, 'Комоды');

-- --------------------------------------------------------

--
-- Структура таблицы `products_import`
--

CREATE TABLE `products_import` (
  `id_products` int NOT NULL,
  `type_products` int DEFAULT NULL,
  `name_product` int DEFAULT NULL,
  `articul` int DEFAULT NULL,
  `min_cost_partner` varchar(9) DEFAULT NULL,
  `main_material` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `products_import`
--

INSERT INTO `products_import` (`id_products`, `type_products`, `name_product`, `articul`, `min_cost_partner`, `main_material`) VALUES
(1, 1, 1, 1549922, '160507,00', 1),
(2, 1, 2, 1018556, '216907,00', 1),
(3, 2, 3, 3028272, '24970,00', 2),
(4, 2, 4, 3029272, '18206,00', 2),
(5, 2, 5, 3028248, '177509,00', 1),
(6, 3, 6, 7118827, '85900,00', 1),
(7, 3, 7, 7137981, '75900,00', 1),
(8, 3, 8, 7029787, '120345,00', 1),
(9, 3, 9, 7758953, '25990,00', 3),
(10, 4, 10, 6026662, '69500,00', 1),
(11, 4, 11, 6159043, '55600,00', 2),
(12, 4, 12, 6588376, '37900,00', 2),
(13, 4, 13, 6758375, '46750,00', 3),
(14, 5, 14, 2759324, '131560,00', 2),
(15, 5, 15, 2118827, '38700,00', 1),
(16, 5, 16, 2559898, '160151,00', 3),
(17, 5, 17, 2259474, '40500,00', 3),
(18, 6, 18, 4115947, '61235,00', 1),
(19, 6, 19, 4033136, '41200,00', 1),
(20, 6, 20, 4028048, '12350,00', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `product_type_import`
--

CREATE TABLE `product_type_import` (
  `id_product_type` int NOT NULL,
  `type_product` int DEFAULT NULL,
  `koeff_type_product` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product_type_import`
--

INSERT INTO `product_type_import` (`id_product_type`, `type_product`, `koeff_type_product`) VALUES
(1, 1, '3,5'),
(2, 2, '5,6'),
(3, 3, '3'),
(4, 4, '4,7'),
(5, 5, '1,5'),
(6, 6, '2,3');

-- --------------------------------------------------------

--
-- Структура таблицы `product_workshops_import`
--

CREATE TABLE `product_workshops_import` (
  `id_products` int NOT NULL,
  `name_products` int DEFAULT NULL,
  `name_cehs` int DEFAULT NULL,
  `time_izgotov` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product_workshops_import`
--

INSERT INTO `product_workshops_import` (`id_products`, `name_products`, `name_cehs`, `time_izgotov`) VALUES
(1, 10, 8, '2,0'),
(2, 20, 8, '2,7'),
(3, 6, 9, '4,2'),
(4, 7, 9, '4,5'),
(5, 8, 9, '4,7'),
(6, 9, 9, '4,0'),
(7, 11, 9, '5,5'),
(8, 2, 10, '0,3'),
(9, 3, 10, '0,5'),
(10, 5, 10, '0,3'),
(11, 10, 10, '0,5'),
(12, 14, 10, '0,5'),
(13, 20, 10, '1,0'),
(14, 1, 4, '0,5'),
(15, 2, 4, '0,3'),
(16, 3, 4, '0,5'),
(17, 4, 4, '0,5'),
(18, 5, 4, '0,5'),
(19, 6, 4, '0,5'),
(20, 7, 4, '0,5'),
(21, 8, 4, '0,5'),
(22, 9, 4, '0,3'),
(23, 10, 4, '0,6'),
(24, 11, 4, '1,0'),
(25, 12, 4, '0,8'),
(26, 13, 4, '2,0'),
(27, 14, 4, '0,5'),
(28, 15, 4, '0,3'),
(29, 16, 4, '1,5'),
(30, 17, 4, '1,0'),
(31, 18, 4, '0,5'),
(32, 19, 4, '0,4'),
(33, 20, 4, '0,5'),
(34, 1, 6, '0,3'),
(35, 2, 6, '0,4'),
(36, 5, 6, '0,5'),
(37, 6, 6, '0,5'),
(38, 7, 6, '1,0'),
(39, 8, 6, '0,5'),
(40, 9, 6, '0,5'),
(41, 10, 6, '0,4'),
(42, 13, 6, '1,5'),
(43, 15, 6, '1,0'),
(44, 17, 6, '2,5'),
(45, 18, 6, '1,0'),
(46, 19, 6, '0,4'),
(47, 20, 6, '0,5'),
(48, 1, 1, '1,0'),
(49, 2, 1, '1,0'),
(50, 5, 1, '1,5'),
(51, 8, 1, '0,5'),
(52, 14, 1, '2,0'),
(53, 15, 1, '1,0'),
(54, 20, 1, '1,0'),
(55, 1, 3, '1,0'),
(56, 2, 3, '1,0'),
(57, 3, 3, '1,0'),
(58, 4, 3, '1,0'),
(59, 5, 3, '1,0'),
(60, 6, 3, '1,0'),
(61, 7, 3, '1,0'),
(62, 8, 3, '0,5'),
(63, 9, 3, '0,7'),
(64, 10, 3, '1,0'),
(65, 11, 3, '1,0'),
(66, 12, 3, '1,1'),
(67, 13, 3, '2,0'),
(68, 14, 3, '1,0'),
(69, 15, 3, '1,0'),
(70, 16, 3, '1,0'),
(71, 17, 3, '1,0'),
(72, 18, 3, '1,0'),
(73, 19, 3, '1,0'),
(74, 20, 3, '0,6'),
(75, 1, 2, '0,4'),
(76, 2, 2, '1,0'),
(77, 5, 2, '0,5'),
(78, 8, 2, '0,5'),
(79, 14, 2, '1,0'),
(80, 15, 2, '0,7'),
(81, 20, 2, '0,4'),
(82, 2, 11, '1,0'),
(83, 3, 11, '1,0'),
(84, 5, 11, '0,5'),
(85, 6, 11, '0,5'),
(86, 7, 11, '0,3'),
(87, 12, 11, '0,8'),
(88, 13, 11, '0,3'),
(89, 14, 11, '1,5'),
(90, 15, 11, '0,3'),
(91, 16, 11, '2,0'),
(92, 18, 11, '0,3'),
(93, 20, 11, '1,0'),
(94, 1, 7, '1,5'),
(95, 2, 7, '1,0'),
(96, 5, 7, '1,0'),
(97, 7, 7, '0,5'),
(98, 8, 7, '0,5'),
(99, 9, 7, '1,0'),
(100, 15, 7, '0,5'),
(101, 16, 7, '1,0'),
(102, 17, 7, '3,0'),
(103, 18, 7, '2,0'),
(104, 19, 7, '2,0'),
(105, 1, 5, '2,0'),
(106, 2, 5, '2,0'),
(107, 5, 5, '2,0'),
(108, 6, 5, '2,0'),
(109, 7, 5, '2,0'),
(110, 15, 5, '2,0'),
(111, 18, 5, '2,0'),
(112, 19, 5, '2,0'),
(113, 1, 12, '0,3'),
(114, 4, 12, '0,5'),
(115, 5, 12, '0,2'),
(116, 6, 12, '0,3'),
(117, 7, 12, '0,2'),
(118, 8, 12, '0,3'),
(119, 9, 12, '0,5'),
(120, 10, 12, '0,5'),
(121, 11, 12, '0,5'),
(122, 12, 12, '0,3'),
(123, 13, 12, '0,2'),
(124, 14, 12, '0,5'),
(125, 15, 12, '0,2'),
(126, 16, 12, '0,5'),
(127, 17, 12, '0,5'),
(128, 18, 12, '0,2'),
(129, 19, 12, '0,2'),
(130, 20, 12, '0,3');

-- --------------------------------------------------------

--
-- Структура таблицы `type_ceh`
--

CREATE TABLE `type_ceh` (
  `id_type_ceh` int NOT NULL,
  `type_ceh` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `type_ceh`
--

INSERT INTO `type_ceh` (`id_type_ceh`, `type_ceh`) VALUES
(1, 'Проектирование'),
(2, 'Обработка'),
(3, 'Сушка'),
(4, 'Сборка');

-- --------------------------------------------------------

--
-- Структура таблицы `workshops_import_1`
--

CREATE TABLE `workshops_import_1` (
  `id_ceh` int NOT NULL,
  `name_ceh` int DEFAULT NULL,
  `type_ceh` int DEFAULT NULL,
  `people_workshop` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `workshops_import_1`
--

INSERT INTO `workshops_import_1` (`id_ceh`, `name_ceh`, `type_ceh`, `people_workshop`) VALUES
(1, 1, 1, 4),
(2, 2, 1, 5),
(3, 3, 2, 5),
(4, 4, 2, 6),
(5, 5, 3, 3),
(6, 6, 2, 5),
(7, 7, 2, 7),
(8, 8, 2, 3),
(9, 9, 2, 5),
(10, 10, 4, 2),
(11, 11, 4, 6),
(12, 12, 4, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `material_type_import`
--
ALTER TABLE `material_type_import`
  ADD PRIMARY KEY (`id_material_type`),
  ADD KEY `id_material_type` (`id_material_type`),
  ADD KEY `type_material` (`type_material`);

--
-- Индексы таблицы `name_ceh`
--
ALTER TABLE `name_ceh`
  ADD PRIMARY KEY (`id_ceh`);

--
-- Индексы таблицы `name_material`
--
ALTER TABLE `name_material`
  ADD PRIMARY KEY (`id_material`);

--
-- Индексы таблицы `name_product`
--
ALTER TABLE `name_product`
  ADD PRIMARY KEY (`id_name`);

--
-- Индексы таблицы `name_type_product`
--
ALTER TABLE `name_type_product`
  ADD PRIMARY KEY (`id_type`);

--
-- Индексы таблицы `products_import`
--
ALTER TABLE `products_import`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `type_products` (`type_products`,`name_product`,`main_material`),
  ADD KEY `name_product` (`name_product`),
  ADD KEY `main_material` (`main_material`);

--
-- Индексы таблицы `product_type_import`
--
ALTER TABLE `product_type_import`
  ADD PRIMARY KEY (`id_product_type`),
  ADD KEY `type_product` (`type_product`);

--
-- Индексы таблицы `product_workshops_import`
--
ALTER TABLE `product_workshops_import`
  ADD PRIMARY KEY (`id_products`),
  ADD KEY `name_products` (`name_products`,`name_cehs`),
  ADD KEY `name_cehs` (`name_cehs`);

--
-- Индексы таблицы `type_ceh`
--
ALTER TABLE `type_ceh`
  ADD PRIMARY KEY (`id_type_ceh`);

--
-- Индексы таблицы `workshops_import_1`
--
ALTER TABLE `workshops_import_1`
  ADD PRIMARY KEY (`id_ceh`),
  ADD KEY `name_ceh` (`name_ceh`,`type_ceh`),
  ADD KEY `type_ceh` (`type_ceh`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `material_type_import`
--
ALTER TABLE `material_type_import`
  ADD CONSTRAINT `material_type_import_ibfk_1` FOREIGN KEY (`type_material`) REFERENCES `name_material` (`id_material`);

--
-- Ограничения внешнего ключа таблицы `products_import`
--
ALTER TABLE `products_import`
  ADD CONSTRAINT `products_import_ibfk_1` FOREIGN KEY (`name_product`) REFERENCES `name_product` (`id_name`),
  ADD CONSTRAINT `products_import_ibfk_2` FOREIGN KEY (`main_material`) REFERENCES `name_material` (`id_material`),
  ADD CONSTRAINT `products_import_ibfk_3` FOREIGN KEY (`type_products`) REFERENCES `name_type_product` (`id_type`);

--
-- Ограничения внешнего ключа таблицы `product_type_import`
--
ALTER TABLE `product_type_import`
  ADD CONSTRAINT `product_type_import_ibfk_1` FOREIGN KEY (`type_product`) REFERENCES `name_type_product` (`id_type`);

--
-- Ограничения внешнего ключа таблицы `product_workshops_import`
--
ALTER TABLE `product_workshops_import`
  ADD CONSTRAINT `product_workshops_import_ibfk_1` FOREIGN KEY (`name_products`) REFERENCES `name_product` (`id_name`),
  ADD CONSTRAINT `product_workshops_import_ibfk_2` FOREIGN KEY (`name_cehs`) REFERENCES `name_ceh` (`id_ceh`);

--
-- Ограничения внешнего ключа таблицы `workshops_import_1`
--
ALTER TABLE `workshops_import_1`
  ADD CONSTRAINT `workshops_import_1_ibfk_1` FOREIGN KEY (`name_ceh`) REFERENCES `name_ceh` (`id_ceh`),
  ADD CONSTRAINT `workshops_import_1_ibfk_2` FOREIGN KEY (`type_ceh`) REFERENCES `type_ceh` (`id_type_ceh`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
