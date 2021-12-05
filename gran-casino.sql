-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2021 a las 01:13:02
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gran-casino`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(4) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='creada por byron';

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `telefono`, `email`, `password`, `rol`, `fecha`) VALUES
(1, 'juan', 'perez', '11 32659887', 'juan@gmail.com', 'juan', 'cajero', '2021-11-01'),
(2, 'pedro', 'lopez', '11 3265 6598', 'pedro@gmail.com', 'pedro', 'usuario', '2021-11-02'),
(3, 'maria', 'martínez', '11 6598 6598', 'maria@gmail.com', 'maria', 'admin', '2021-11-03'),
(4, 'byron', 'baldizon', '11 32659878/', 'byron@gmail.com', 'byron', 'usuario', '2021-11-13'),
(5, 'george', 'tsoukalos', '11 3265987', 'george@gmail.com', 'george', 'cajero', '2021-11-13'),
(6, 'david', 'parcerisa', '1165987865', 'david@gmail.com', 'david', 'usuario', '2021-11-13'),
(7, 'luis', 'alba', '11659878', 'luis@gmail.com', 'luis', 'cajero', '2021-11-13'),
(8, 'xerxes', 'abn Hazim', '11 659878', 'xerxes@gmail.com', 'xerxes', 'cajero', '2021-11-13'),
(9, 'dario', 'hazam', '1165978456', 'dario@gmail.com', 'dario', 'usuario', '2021-11-13'),
(10, 'guy', 'williams', '11 659878987', 'guy@gmail.com', 'guy', 'usuario', '2021-11-14'),
(11, 'bart', 'simpson', '1132659878', 'bart@gmail.com', 'bart', 'usuario', '2021-11-14'),
(12, 'elsy', 'palala', '1132659878', 'elsy@gmail.com', '123', 'cajero', '2021-11-17'),
(13, 'Dave', 'Murray', '', '', '', '', '0000-00-00'),
(14, 'adrian', 'smit', '', '', '', '', '2021-12-07'),
(15, 'don', 'west', '', '', '', '', '2021-12-08'),
(16, 'Bo', 'Derek', '', '', '', '', '2021-12-15'),
(17, 'Derek', 'Sherinian', '', '', '', '', '0000-00-00'),
(18, 'kim', 'bassinger', '', '', '', '', '2021-12-01'),
(19, 'richard', 'basehart', '', '', '', '', '2021-12-22'),
(20, 'nick', 'tate', '', '', '', '', '0000-00-00'),
(21, 'will', 'smith', '', '', '', '', '2021-12-15'),
(22, 'dana', 'plato', '', '', '', '', '2021-12-24'),
(23, 'william', 'shatner', '', '', '', '', '0000-00-00'),
(24, 'Leonard', 'Nemoy', '', '', '', '', '2014-12-17'),
(25, 'De Forest', 'Kelly', '', '', '', '', '2021-12-15'),
(26, 'Richard', 'Anderson', '', '', '', '', '2021-12-23'),
(27, 'Clive', 'Burr', '', '', '', '', '2014-12-07'),
(28, 'June', 'Lockhart', '', '', '', '', '0000-00-00'),
(29, 'Angela', 'Cartrwrigth', '', '', '', '', '2021-12-23'),
(30, 'Martin', 'Landau', '', '', '', '', '2018-12-12'),
(32, 'Paul', 'DiAno', '', '', '', '', '2021-12-10'),
(33, 'Sandra ', 'Bullock', '', '', '', '', '2018-12-04'),
(34, 'Lindsay', 'Wagner', '', '', '', '', '2021-12-22'),
(35, 'Charles', 'Bronson', '', '', '', '', '2019-12-10'),
(36, 'Jill', 'Ireland', '', '', '', '', '2016-12-13'),
(37, 'Frederick', 'Forsythe', '', '', '', '', '2021-12-14'),
(38, 'Martin', 'Landau', '', '', '', '', '2018-12-11'),
(39, 'Barbara', 'Bain', '', '', '', '', '2014-12-10'),
(40, 'David', 'Soul', '', '', '', '', '0000-00-00'),
(41, 'Antonio', 'Fargas', '', '', '', '', '2019-12-24'),
(42, 'Katherin', 'Bach', '', '', '', '', '2016-12-15'),
(43, 'Catherine', 'Schell', '', '', '', '', '0000-00-00'),
(44, 'Vincent', 'Prize', '', '', '', '', '2012-12-06'),
(45, 'Bela', 'Lugosi', '', '', '', '', '2021-12-21'),
(46, 'Mel', 'Gibson', '', '', '', '', '2020-12-16'),
(47, 'Bud', 'Spencer', '', '', '', '', '2021-12-22'),
(48, 'terence', 'hill', '', '', '', '', '2021-12-07'),
(49, 'Jackeline', 'Smith', '', '', '', '', '2021-12-15'),
(50, 'Sabrina', 'Lloyd', '', '', '', '', '2017-12-14'),
(51, 'Pat', 'Bennatar', '', '', '', '', '2021-12-15'),
(52, 'Susy', 'Quattro', '', '', '', '', '2021-12-14'),
(53, 'David Lee', 'Roth', '', '', '', '', '2021-12-22'),
(54, 'laura', 'branigan', '', '', '', '', '2019-12-11'),
(55, 'John', 'Lennon', '', '', '', '', '2021-12-28'),
(56, 'Catherine', 'Deneuve', '', '', '', '', '2015-12-16'),
(57, 'Kathe', 'Jackson', '', '', '', '', '2018-12-11'),
(58, 'Farrah', 'Fawcet', '', '', '', '', '2017-12-13'),
(59, 'Lee', 'Majors', '', '', '', '', '2015-12-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
