-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2023 a las 05:42:17
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica 11`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria1`
--

CREATE TABLE `categoria1` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categoria1`
--

INSERT INTO `categoria1` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Ropa', 'para ir placoso'),
(2, 'Comida', 'ñomi'),
(3, 'Electronicos', 'Está bueno el foco'),
(4, 'Mascotas', ':D'),
(5, 'Extras', 'que sobre a que falte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `telefono`, `fecha_nacimiento`, `sexo`) VALUES
(1, 'René Munguía', 'rsaulrmunguia@gmail.com', '7', '2020-10-06', 1),
(2, 'Pole', 'labellakiza12@hotmail.com', '888-0000', '2021-03-24', 0),
(3, 'Carol', 'depende@outlook.com', '666', '2023-02-21', 0),
(4, 'Kian', 'meincra@gmail.com', '3182307834', '2005-03-06', 1),
(5, 'Kali Uchis', 'telepatio@hotmail.com', '123456789', '1994-07-17', 0),
(6, 'Julian', 'cazacucarachas12@gmail.com', '777', '2006-01-06', 1),
(7, 'Ruben', 'mandilon17@gmail.com', '474', '2006-07-15', 1),
(8, 'Johnadab', 'arribalaboyniza@gmail.com', '505', '2006-01-03', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria1`
--
ALTER TABLE `categoria1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria1`
--
ALTER TABLE `categoria1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
