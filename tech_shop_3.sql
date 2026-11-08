-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 08 2026 г., 11:08
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
-- База данных: `tech_shop_3`
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
(5, 'Илья Морозов', 1005);

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
(700000000001, 'UNIT-001', 8806095852072),
(700000000002, 'UNIT-002', 4548736134300),
(700000000003, 'UNIT-003', 6925281942662),
(700000000004, 'UNIT-004', 5099206103726),
(700000000005, 'UNIT-005', 5099206103733);

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
  `characteristics` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`GTIN`, `Name`, `OKPD_2`, `TN_VED`, `characteristics`, `Price`) VALUES
(4548736134300, 'Sony WH-1000XM5', 264042120, '8518300000', 'Беспроводные наушники с шумоподавлением', 29990.00),
(5099206103726, 'Logitech MX Master 3S Graphite', 262015000, '8471607000', 'Беспроводная компьютерная мышь', 8990.00),
(5099206103733, 'Logitech MX Master 3S Pale Grey', 262015000, '8471607000', 'Беспроводная компьютерная мышь', 8990.00),
(6925281942662, 'JBL Flip 6', 264042110, '8518210000', 'Портативная Bluetooth-колонка', 9990.00),
(8806095852072, 'Samsung Galaxy S25 256GB Navy', 263022110, '8517130000', 'Смартфон; память 256 ГБ', 64990.00);

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
(263022110, 'Смартфоны'),
(264042110, 'Громкоговорители'),
(264042120, 'Наушники');

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
(2, 2, '2026-10-23', 'Товар не подошёл', NULL);

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
(5, 1005, 700000000005, '2026-10-22 16:50:00', 'Наличные', 'FP-005', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `KPP` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `INN` bigint(20) DEFAULT NULL,
  `OKPO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`KPP`, `Name`, `Adress`, `INN`, `OKPO`) VALUES
(1001, 'Магазин Электроника 1', 'Москва, ул. Тверская, д. 12', 7701000001, 10000001),
(1002, 'Магазин Электроника 2', 'Казань, ул. Баумана, д. 18', 7701000002, 10000002),
(1003, 'Магазин Электроника 3', 'Москва, пр. Мира, д. 45', 1601000003, 10000003),
(1004, 'Магазин Электроника 4', 'Самара, ул. Ленинградская, д. 7', 6301000004, 10000004),
(1005, 'Магазин Электроника 5', 'Екатеринбург, ул. Малышева, д. 36', 6601000005, 10000005);

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
(2, 1002, 1003, 'В пути'),
(3, 1003, 1004, 'Выполнена'),
(4, 1004, 1005, 'Создана'),
(5, 1005, 1001, 'В пути');

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
(1, 5, 700000000005);

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
  ADD KEY `Код_ОКПД_2` (`OKPD_2`);

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
  ADD KEY `Код_продажи` (`sale_code`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_code`),
  ADD KEY `КПП_магазина` (`KPP`),
  ADD KEY `Код_маркировки` (`Marking_code`),
  ADD KEY `ID_карты_покупателя` (`client_ID`),
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
  ADD KEY `КПП_магазина_отправителя` (`KPP_sender`),
  ADD KEY `КПП_магазина_получателя` (`KPP_receiver`);

--
-- Индексы таблицы `transfer_positions`
--
ALTER TABLE `transfer_positions`
  ADD PRIMARY KEY (`transfer_number`,`Position_number_in_transfer`),
  ADD KEY `Код_маркировки` (`Marking_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `returns`
--
ALTER TABLE `returns`
  MODIFY `return_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_code` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `fk_transfer_positions_transfer` FOREIGN KEY (`transfer_number`) REFERENCES `transfer` (`transfer_number`),
  ADD CONSTRAINT `transfer_positions_ibfk_2` FOREIGN KEY (`Marking_code`) REFERENCES `marked_units` (`Marking_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
