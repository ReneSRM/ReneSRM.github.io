-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 02:41:42
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `color` varchar(50) NOT NULL,
  `existencia` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `medida` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`id`, `nombre`, `precio`, `descripcion`, `color`, `existencia`, `marca`, `medida`) VALUES
(1, 'Playera ', 79, 'Playera acá placosa', 'Rojo', 167, 'Licenciado valeriano', 'Mediana'),
(2, 'Disfraz inflable de Alien ', 559.95, 'Cierre de Cremallera\r\nLavado a máquina\r\nMaterial de primera calidad: El disfraz está hecho con 100% poliéster que es fuerte y resistente para que nunca tengas que preocuparte de cualquier desgarre o agujero.', 'Verde', 40, ' Stegosaurus', 'Grande'),
(4, 'Disfraz inflable de dinosaurio', 1059.49, 'Traje perfecto para halloween', 'Café', 30, 'Qudai', 'Grande'),
(5, 'Cuadro artistico', 2000, 'Cudro pintado a mano por Calamardo', 'Multicolor', 2, 'Calamardo SA de CV', 'XL'),
(6, 'Colchon matrimonial', 3699, 'Para las personas que buscan comodidad y descansar en un lugar más amplio, les presentamos el nuevo colchón Randóm de Restonic. Cuenta con un Soporte de Nivel Medio a Semifirme. Con Tecnología Resorte Continuos', 'Gris', 40, 'Signature Sleep', 'Matrimonial'),
(7, 'Sábanas Matrimoniales', 279, 'Mejora tu descanso con éstas sábanas de alta suavidad y diseño vanguardista. Incluye una práctica bolsita para guardarlas', 'Verde', 58, 'Onstore', 'Matrimonial');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
