-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 17:56:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portal_solicitudes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(11) NOT NULL,
  `tipo_solicitud` varchar(50) DEFAULT NULL,
  `servicio_producto` varchar(100) DEFAULT NULL,
  `tipo_mantenimiento` varchar(100) DEFAULT '',
  `descripcion` text DEFAULT NULL,
  `estado` varchar(20) DEFAULT 'En trámite',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `tipo_solicitud`, `servicio_producto`, `tipo_mantenimiento`, `descripcion`, `estado`, `fecha_creacion`) VALUES
(11, 'compra', 'vettingFinanciero', '', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'En trámite', '2024-10-21 02:52:30'),
(12, 'mantenimiento', 'vettingFinanciero', 'mantenimientoCorrectivoSoftware', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 'En trámite', '2024-10-21 02:52:52'),
(13, 'mantenimiento', 'vettingFinanciero', 'cambiodePeriféricosdeEntrada ', 'QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ', 'En trámite', '2024-10-21 03:00:33'),
(14, 'compra', 'visitadomiciliaria', '', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'En trámite', '2024-10-22 02:19:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
