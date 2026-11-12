-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 12 2026 г., 13:43
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tech_shop_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id_card` int(11) NOT NULL,
  `Full_name` varchar(255) DEFAULT NULL,
  `Bonus_account` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id_card`, `Full_name`, `Bonus_account`) VALUES
(1, 'Александр Смирнов', 1001),
(2, 'Мария Кузнецова', 1002),
(3, 'Дмитрий Попов', 1003),
(4, 'Анна Соколова', 1004),
(5, 'Илья Морозов', 1005),
(6, 'Сергей Иванов', 1006),
(7, 'Ольга Петрова', 1007),
(8, 'Андрей Сидоров', 1008),
(9, 'Елена Смирнова', 1009),
(10, 'Павел Кузнецов', 1010),
(11, 'Ирина Волкова', 1011),
(12, 'Николай Федоров', 1012),
(13, 'Екатерина Морозова', 1013),
(14, 'Михаил Орлов', 1014),
(15, 'Дарья Павлова', 1015);

-- --------------------------------------------------------

--
-- Структура таблицы `marked_units`
--

CREATE TABLE `marked_units` (
  `Marking_code` bigint(20) NOT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `GTIN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `marked_units`
--

INSERT INTO `marked_units` (`Marking_code`, `serial_number`, `GTIN`) VALUES
(700000000001, 'SN-001', 8806095852072),
(700000000002, 'SN-002', 4548736134300),
(700000000003, 'SN-003', 6925281942662),
(700000000004, 'SN-004', 5099206103726),
(700000000005, 'SN-005', 5099206103733),
(700000000006, 'SN-EPSON-006', 8715946680750),
(700000000007, 'SN-HP-007', 3540260191072),
(700000000008, 'SN-CANON-008', 761973698600),
(700000000009, 'SN-APC-009', 731304316008),
(700000000010, 'SN-HIK-010', 6941264063681),
(700000000011, 'SN-DAHUA-011', 6939554981340),
(700000000012, 'SN-AQARA-012', 6970504213777),
(700000000013, 'SN-FELLOWES-013', 43859724666),
(700000000014, 'SN-GBC-014', 5028252330350),
(700000000015, 'SN-BROTHER-015', 4977766775076),
(700000000016, 'SN-TRANS-016', 8715946680750),
(700000000017, 'SN-TRANS-017', 3540260191072),
(700000000018, 'SN-TRANS-018', 761973698600),
(700000000019, 'SN-TRANS-019', 731304316008),
(700000000020, 'SN-TRANS-020', 6941264063681),
(700000000021, 'SN-TRANS-021', 6939554981340),
(700000000022, 'SN-TRANS-022', 6970504213777),
(700000000023, 'SN-TRANS-023', 43859724666),
(700000000024, 'SN-TRANS-024', 5028252330350),
(700000000025, 'SN-TRANS-025', 4977766775076),
(700000000026, 'SN-EPSON-026', 8715946680750),
(700000000027, 'SN-EPSON-027', 8715946680750),
(700000000028, 'SN-EPSON-028', 8715946680750),
(700000000029, 'SN-HP-029', 3540260191072),
(700000000030, 'SN-HP-030', 3540260191072),
(700000000031, 'SN-HP-031', 3540260191072);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `most_returned`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `most_returned` (
`Name` varchar(255)
);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `GTIN` bigint(20) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `OKPD_2` int(11) DEFAULT NULL,
  `TN_VED` varchar(255) DEFAULT NULL,
  `Characteristics` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`GTIN`, `Name`, `OKPD_2`, `TN_VED`, `Characteristics`, `Price`) VALUES
(43859724666, 'Fellowes Powershred 8C', 282320100, '8472907000', 'Уничтожитель документов, производительность до 8 листов', 10990.00),
(731304316008, 'APC Back-UPS BX950UI', 271120100, '8504403009', 'Источник бесперебойного питания, мощность 480 Вт', 15990.00),
(761973698600, 'Canon CanoScan LiDE 400', 262016200, '8471607000', 'Планшетный сканер, разрешение 4800 DPI', 8990.00),
(3540260191072, 'HP LaserJet Pro M404dn', 262016100, '8443321009', 'Лазерный принтер, чёрно-белая печать, USB и Ethernet', 32990.00),
(4548736134300, 'Sony WH-1000XM5', 264042120, '8518300000', 'Беспроводные наушники с шумоподавлением', 29990.00),
(4977766775076, 'Brother QL-800', 262016100, '8443321009', 'Принтер этикеток, термопечать', 11990.00),
(5028252330350, 'GBC Fusion 3000L', 282320200, '8472907000', 'Офисный ламинатор формата A4', 13990.00),
(5099206103726, 'Logitech MX Master 3S Graphite', 262015000, '8471607000', 'Беспроводная компьютерная мышь', 8990.00),
(5099206103733, 'Logitech MX Master 3S Pale Grey', 262015000, '8471607000', 'Беспроводная компьютерная мышь', 8990.00),
(6925281942662, 'JBL Flip 6', 264042110, '8518210000', 'Портативная Bluetooth-колонка', 9990.00),
(6939554981340, 'Dahua DHI-VTO2202F-P', 263050200, '8517699000', 'Вызывная панель видеодомофона', 18990.00),
(6941264063681, 'Hikvision DS-2CD2043G2-I', 263050100, '8525890000', 'IP-камера видеонаблюдения, разрешение 4 Мп', 12990.00),
(6970504213777, 'Aqara Hub M2', 274010100, '8517620000', 'Центр управления устройствами умного дома', 6990.00),
(8715946680750, 'Epson EB-X49', 262016300, '8528620000', 'Проектор, разрешение XGA, яркость 3600 люмен', 74990.00),
(8806095852072, 'Samsung Galaxy S25 256GB Navy', 263022110, '8517130000', 'Смартфон; память 256 ГБ', 59990.00);

-- --------------------------------------------------------

--
-- Структура таблицы `product_group`
--

CREATE TABLE `product_group` (
  `OKPD_2` int(11) NOT NULL,
  `Group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product_group`
--

INSERT INTO `product_group` (`OKPD_2`, `Group_name`) VALUES
(262011110, 'Ноутбуки'),
(262015000, 'Компьютерное оборудование прочее'),
(262016100, 'Принтеры'),
(262016200, 'Сканеры'),
(262016300, 'Проекторы'),
(262016400, 'Многофункциональные устройства'),
(263022110, 'Смартфоны'),
(263050100, 'Оборудование видеонаблюдения'),
(263050200, 'Домофонные системы'),
(264042110, 'Громкоговорители'),
(264042120, 'Наушники'),
(271120100, 'Источники бесперебойного питания'),
(274010100, 'Системы умного дома'),
(282320100, 'Оборудование для обработки документов'),
(282320200, 'Ламинаторы');

-- --------------------------------------------------------

--
-- Структура таблицы `returns`
--

CREATE TABLE `returns` (
  `return_number` int(11) NOT NULL,
  `sale_code` bigint(20) NOT NULL,
  `date_return` date DEFAULT NULL,
  `Reason` text DEFAULT NULL,
  `Passport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `returns`
--

INSERT INTO `returns` (`return_number`, `sale_code`, `date_return`, `Reason`, `Passport`) VALUES
(1, 1, '2026-10-23', 'Неисправность товара', NULL),
(2, 2, '2026-10-23', 'Товар не подошёл', NULL),
(3, 6, '2026-10-26', 'Обнаружен дефект дисплея', '4500 000003'),
(4, 7, '2026-10-26', 'Неисправность камеры', '4500 000004'),
(5, 8, '2026-10-27', 'Не работает динамик', '4500 000005'),
(6, 9, '2026-10-27', 'Неисправность аккумулятора', '4500 000006'),
(7, 10, '2026-10-28', 'Не подошли характеристики ноутбука', '4500 000007'),
(8, 11, '2026-10-28', 'Обнаружен дефект клавиатуры', '4500 000008'),
(9, 12, '2026-10-29', 'Неисправность клавиш', '4500 000009'),
(10, 13, '2026-10-29', 'Повреждение матрицы монитора', '4500 000010'),
(11, 14, '2026-10-30', 'Видеокарта не соответствует ожиданиям', '4500 000011'),
(12, 15, '2026-10-30', 'Не подошёл цвет смартфона', '4500 000012'),
(13, 16, '2026-10-30', 'Неисправность системы проекции', '4500 000013'),
(14, 17, '2026-10-31', 'Проблемы с изображением', '4500 000014'),
(15, 18, '2026-11-01', 'Обнаружен дефект лампы', '4500 000015'),
(16, 19, '2026-10-31', 'Замятие бумаги при печати', '4500 000016'),
(17, 20, '2026-11-01', 'Неисправность механизма подачи бумаги', '4500 000017'),
(18, 21, '2026-11-02', 'Дефект печатающего механизма', '4500 000018');

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `sale_code` bigint(20) NOT NULL,
  `KPP` int(11) DEFAULT NULL,
  `Marking_code` bigint(20) DEFAULT NULL,
  `date_and_time` datetime DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `check` varchar(255) DEFAULT NULL,
  `client_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`sale_code`, `KPP`, `Marking_code`, `date_and_time`, `payment_method`, `check`, `client_ID`) VALUES
(1, 1001, 700000000001, '2026-10-20 12:10:00', 'Карта', 'FP-001', 1),
(2, 1002, 700000000002, '2026-10-20 13:20:00', 'Наличные', 'FP-002', 2),
(3, 1003, 700000000003, '2026-10-21 14:30:00', 'Карта', 'FP-003', 3),
(4, 1004, 700000000004, '2026-10-21 15:40:00', 'Карта', 'FP-004', 4),
(5, 1005, 700000000005, '2026-10-22 16:50:00', 'Наличные', 'FP-005', 5),
(6, 1001, 700000000006, '2026-10-23 10:15:00', 'Карта', 'FP-006', 6),
(7, 1001, 700000000007, '2026-10-23 11:20:00', 'Наличные', 'FP-007', 7),
(8, 1001, 700000000008, '2026-10-24 12:30:00', 'Карта', 'FP-008', 8),
(9, 1001, 700000000009, '2026-10-24 13:40:00', 'Карта', 'FP-009', 9),
(10, 1001, 700000000010, '2026-10-25 14:50:00', 'Наличные', 'FP-010', 10),
(11, 1002, 700000000011, '2026-10-25 15:10:00', 'Карта', 'FP-011', 11),
(12, 1003, 700000000012, '2026-10-26 10:20:00', 'Наличные', 'FP-012', 12),
(13, 1004, 700000000013, '2026-10-26 11:30:00', 'Карта', 'FP-013', 13),
(14, 1005, 700000000014, '2026-10-27 12:40:00', 'Карта', 'FP-014', 14),
(15, 1006, 700000000015, '2026-10-27 13:50:00', 'Наличные', 'FP-015', 15),
(16, 1001, 700000000026, '2026-10-28 10:15:00', 'Карта', 'FP-016', 1),
(17, 1002, 700000000027, '2026-10-28 11:20:00', 'Наличные', 'FP-017', 2),
(18, 1003, 700000000028, '2026-10-29 12:30:00', 'Карта', 'FP-018', 3),
(19, 1001, 700000000029, '2026-10-29 13:40:00', 'Наличные', 'FP-019', 4),
(20, 1002, 700000000030, '2026-10-30 14:50:00', 'Карта', 'FP-020', 5),
(21, 1003, 700000000031, '2026-10-30 15:10:00', 'Карта', 'FP-021', 6),
(22, 1001, 700000000001, '2026-11-11 12:00:00', 'Карта', 'FP-022', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `KPP` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `INN` bigint(20) DEFAULT NULL,
  `OKPO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`KPP`, `Name`, `Address`, `INN`, `OKPO`) VALUES
(1001, 'Магазин Электроника 1', 'Москва, ул. Тверская, д. 12', 7701000001, 10000001),
(1002, 'Магазин Электроника 2', 'Казань, ул. Баумана, д. 18', 7701000002, 10000002),
(1003, 'Магазин Электроника 3', 'Москва, пр. Мира, д. 45', 1601000003, 10000003),
(1004, 'Магазин Электроника 4', 'Самара, ул. Ленинградская, д. 7', 6301000004, 10000004),
(1005, 'Магазин Электроника 5', 'Екатеринбург, ул. Малышева, д. 36', 6601000005, 10000005),
(1006, 'Магазин электроника 6', 'Москва, ул. Тверская, д. 15', 7701234567, 12345678),
(1007, 'Магазин электроника 7', 'Казань, ул. Баумана, д. 20', 1651234567, 23456789),
(1008, 'Магазин электроника 8', 'Самара, Московское шоссе, д. 25', 6312345678, 34567890),
(1009, 'Магазин электроника 9', 'Екатеринбург, ул. Ленина, д. 30', 6671234567, 45678901),
(1010, 'Магазин электроника 10', 'Санкт-Петербург, Невский проспект, д. 40', 7812345678, 56789012),
(1011, 'Магазин электроника 11', 'Нижний Новгород, ул. Большая Покровская, д. 10', 5261234567, 67890123),
(1012, 'Магазин электроника 12', 'Воронеж, ул. Плехановская, д. 15', 3661234567, 78901234),
(1013, 'Магазин электроника 13', 'Пермь, ул. Ленина, д. 50', 5901234567, 89012345),
(1014, 'Магазин электроника 14', 'Краснодар, ул. Красная, д. 60', 2301234567, 90123456),
(1015, 'Магазин электроника 15', 'Ростов-на-Дону, ул. Большая Садовая, д. 35', 6161234567, 11234567);

-- --------------------------------------------------------

--
-- Структура таблицы `transfer`
--

CREATE TABLE `transfer` (
  `transfer_number` int(11) NOT NULL,
  `KPP_sender` int(11) DEFAULT NULL,
  `KPP_receiver` int(11) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `transfer`
--

INSERT INTO `transfer` (`transfer_number`, `KPP_sender`, `KPP_receiver`, `Status`) VALUES
(1, 1001, 1002, 'Создана'),
(2, 1002, 1003, 'Выполнена'),
(3, 1003, 1004, 'Выполнена'),
(4, 1004, 1005, 'Создана'),
(5, 1005, 1001, 'В пути'),
(6, 1001, 1002, 'Создана'),
(7, 1002, 1003, 'В пути'),
(8, 1003, 1004, 'Выполнена'),
(9, 1004, 1005, 'Создана'),
(10, 1005, 1006, 'В пути'),
(11, 1006, 1007, 'Выполнена'),
(12, 1007, 1008, 'Создана'),
(13, 1008, 1009, 'В пути'),
(14, 1009, 1010, 'Выполнена'),
(15, 1010, 1011, 'Создана');

-- --------------------------------------------------------

--
-- Структура таблицы `transfer_positions`
--

CREATE TABLE `transfer_positions` (
  `Position_number_in_transfer` int(11) NOT NULL,
  `transfer_number` int(11) NOT NULL,
  `Marking_code` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `transfer_positions`
--

INSERT INTO `transfer_positions` (`Position_number_in_transfer`, `transfer_number`, `Marking_code`) VALUES
(1, 1, 700000000001),
(1, 2, 700000000002),
(1, 3, 700000000003),
(1, 4, 700000000004),
(1, 5, 700000000005),
(1, 6, 700000000016),
(1, 7, 700000000017),
(1, 8, 700000000018),
(1, 9, 700000000019),
(1, 10, 700000000020),
(1, 11, 700000000021),
(1, 12, 700000000022),
(1, 13, 700000000023),
(2, 13, 700000000024);

-- --------------------------------------------------------

--
-- Структура для представления `most_returned`
--
DROP TABLE IF EXISTS `most_returned`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `most_returned`  AS SELECT `products`.`Name` AS `Name` FROM (((`products` join `marked_units` on(`marked_units`.`GTIN` = `products`.`GTIN`)) join `sales` on(`marked_units`.`Marking_code` = `sales`.`Marking_code`)) join `returns` on(`returns`.`sale_code` = `sales`.`sale_code`)) GROUP BY `products`.`Name` HAVING count(`returns`.`return_number`) > 3 ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_card`);

--
-- Индексы таблицы `marked_units`
--
ALTER TABLE `marked_units`
  ADD PRIMARY KEY (`Marking_code`),
  ADD KEY `GTIN` (`GTIN`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`GTIN`),
  ADD KEY `OKPD_2` (`OKPD_2`);

--
-- Индексы таблицы `product_group`
--
ALTER TABLE `product_group`
  ADD PRIMARY KEY (`OKPD_2`);

--
-- Индексы таблицы `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_number`),
  ADD KEY `sale_code` (`sale_code`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_code`),
  ADD KEY `KPP` (`KPP`),
  ADD KEY `Marking_code` (`Marking_code`),
  ADD KEY `client_ID` (`client_ID`),
  ADD KEY `idx_sales_datetime` (`date_and_time`);

--
-- Индексы таблицы `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`KPP`);

--
-- Индексы таблицы `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_number`),
  ADD KEY `KPP_sender` (`KPP_sender`),
  ADD KEY `KPP_receiver` (`KPP_receiver`);

--
-- Индексы таблицы `transfer_positions`
--
ALTER TABLE `transfer_positions`
  ADD PRIMARY KEY (`Position_number_in_transfer`,`transfer_number`),
  ADD KEY `transfer_number` (`transfer_number`),
  ADD KEY `Marking_code` (`Marking_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `returns`
--
ALTER TABLE `returns`
  MODIFY `return_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_code` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `marked_units`
--
ALTER TABLE `marked_units`
  ADD CONSTRAINT `marked_units_ibfk_1` FOREIGN KEY (`GTIN`) REFERENCES `products` (`GTIN`);

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`OKPD_2`) REFERENCES `product_group` (`OKPD_2`);

--
-- Ограничения внешнего ключа таблицы `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`sale_code`) REFERENCES `sales` (`sale_code`);

--
-- Ограничения внешнего ключа таблицы `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`KPP`) REFERENCES `shops` (`KPP`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`Marking_code`) REFERENCES `marked_units` (`Marking_code`),
  ADD CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`client_ID`) REFERENCES `clients` (`id_card`);

--
-- Ограничения внешнего ключа таблицы `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`KPP_sender`) REFERENCES `shops` (`KPP`),
  ADD CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`KPP_receiver`) REFERENCES `shops` (`KPP`);

--
-- Ограничения внешнего ключа таблицы `transfer_positions`
--
ALTER TABLE `transfer_positions`
  ADD CONSTRAINT `transfer_positions_ibfk_1` FOREIGN KEY (`transfer_number`) REFERENCES `transfer` (`transfer_number`),
  ADD CONSTRAINT `transfer_positions_ibfk_2` FOREIGN KEY (`Marking_code`) REFERENCES `marked_units` (`Marking_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
