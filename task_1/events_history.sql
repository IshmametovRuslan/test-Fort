-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 09 2019 г., 18:48
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events_history`
--

CREATE TABLE `events_history` (
  `RecordID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `EventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `events_history`
--

INSERT INTO `events_history` (`RecordID`, `Date`, `Time`, `EventID`, `UserID`, `ClientID`) VALUES
(9, '2019-02-01', '15:00:00', 2, 100, 5),
(10, '2019-02-01', '17:00:00', 2, 150, 5),
(11, '2019-02-05', '12:00:00', 2, 200, 5),
(12, '2019-02-05', '15:00:00', 3, 100, 5),
(13, '2019-02-06', '15:00:00', 2, 200, 5),
(14, '2019-02-06', '15:00:00', 2, 200, 5),
(15, '2019-02-01', '15:00:00', 2, 100, 5),
(16, '2019-02-01', '17:00:00', 2, 150, 5),
(17, '2019-02-05', '12:00:00', 2, 200, 8),
(18, '2019-02-05', '15:00:00', 3, 100, 8),
(19, '2019-02-06', '15:00:00', 2, 200, 6),
(20, '2019-02-06', '15:00:00', 2, 200, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events_history`
--
ALTER TABLE `events_history`
  ADD PRIMARY KEY (`RecordID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events_history`
--
ALTER TABLE `events_history`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
