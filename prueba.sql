-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2019 a las 10:31:47
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(2) NOT NULL,
  `name_` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `website` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `name_`, `username`, `email`, `phone`, `website`) VALUES
(1, 'Leanne Graham', 'Bret', 'Sincere@april.biz', 2147483647, 'hildegard.org'),
(2, 'Ervin Howell', 'Antonette', 'Shanna@melissa.tv', 2147483647, 'anastasia.net'),
(3, 'Clementine Bauch', 'Samantha', 'Nathan@yesenia.net', 2147483647, 'ramiro.info'),
(4, 'Patricia Lebsack', 'Karianne', 'Julianne.OConner@kory.org', 2147483647, 'kale.biz'),
(5, 'Chelsey Dietrich', 'Kamren', 'Lucio_Hettinger@annie.ca', 2147483647, 'demarco.info'),
(6, 'Mrs. Dennis Schulist', 'Leopoldo_Corkery', 'Karley_Dach@jasper.info', 2147483647, 'ola.org'),
(7, 'Kurtis Weissnat', 'Elwyn.Skiles', 'Telly.Hoeger@billy.biz', 2100676132, 'elvis.io'),
(8, 'Nicholas Runolfsdottir V', 'Maxime_Nienow', 'Sherwood@rosamond.me', 2147483647, 'jacynthe.com'),
(9, 'Glenna Reichert', 'Delphine', 'Chaim_McDermott@dana.io', 2147483647, 'conrad.com'),
(10, 'Clementina DuBuque', 'Moriah.Stanton', 'Rey.Padberg@karina.biz', 246483804, 'ambrose.net');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `id` int(2) NOT NULL,
  `street` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suite` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int(20) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`id`, `street`, `suite`, `city`, `zipcode`, `lat`, `lng`) VALUES
(1, 'Kulas Light', 'Apt. 556', 'Gwenborough', 929983874, -37.3159, 81.1496),
(2, 'Victor Plains', 'Suite 879', 'Wisokyburgh', 905667771, -43.9509, -34.4618),
(3, 'Douglas Extension', 'Suite 847', 'McKenziehaven', 595904157, -68.6102, -47.0653),
(4, 'Hoeger Mall', 'Apt. 692', 'South Elvis', 539194257, 29.4572, -164.299),
(5, 'Skiles Walks', 'Suite 351', 'Roscoeview', 33263, -31.8129, 62.5342),
(6, 'Norberto Crossing', 'Apt. 950', 'South Christy', 235051337, -71.4197, 71.7478),
(7, 'Rex Trail', 'Suite 280', 'Howemouth', 588041099, 24.8918, 21.8984),
(8, 'Ellsworth Summit', 'Suite 729', 'Aliyaview', 45169, -14.399, -120.768),
(9, 'Dayna Park', 'Suite 449', 'Bartholomebury', 764953109, 24.6463, -168.889),
(10, 'Kattie Turnpike', 'Suite 198', 'Lebsackbury', 314282261, -38.2386, 57.2232);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
