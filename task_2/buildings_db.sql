-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 11 2019 г., 00:59
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
-- База данных: `buildings_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buildings`
--

CREATE TABLE `buildings` (
  `BuildID` int(11) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buildings`
--

INSERT INTO `buildings` (`BuildID`, `Address`) VALUES
(101, 'Красноярская 4'),
(102, 'Дзержинского 5'),
(103, 'Тестовая 11'),
(104, 'Южная 21'),
(105, 'Северная 34');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `ContactID` int(11) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `Contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`ContactID`, `PersonID`, `Contact`) VALUES
(15, 10, '2015254103'),
(20, 20, '2015254104'),
(25, 30, '2015254104'),
(30, 40, '2015254103'),
(35, 50, '2015254101');

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `PersonID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `BuildID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`PersonID`, `Name`, `BuildID`) VALUES
(10, 'Евлампий Бабушкин', 101),
(20, 'Иван Харитонов', 102),
(30, 'Банан Афанасьев', 103),
(40, 'Петр Сидоров', 104),
(50, 'Сидр Петров', 105);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`BuildID`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`PersonID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buildings`
--
ALTER TABLE `buildings`
  MODIFY `BuildID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
