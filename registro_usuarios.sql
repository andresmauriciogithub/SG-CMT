-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 17:53:59
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
-- Base de datos: `registro_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `tipo_usuario` enum('ClienteInterno','ClienteExterno','CoordinadorCMT','GerenteGeneral','ProveedorNatural','ProveedorJuridico') DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `area` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `nombre_empresa` varchar(100) NOT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `persona_a_cargo` varchar(100) DEFAULT NULL,
  `identificacion` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `eps` varchar(50) DEFAULT NULL,
  `arl` varchar(50) DEFAULT NULL,
  `producto_servicio` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `nombre_contacto` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `tipo_usuario`, `nombres`, `apellidos`, `correo_electronico`, `area`, `cargo`, `nombre_empresa`, `nit`, `persona_a_cargo`, `identificacion`, `telefono`, `eps`, `arl`, `producto_servicio`, `direccion`, `nombre_contacto`, `contrasena`) VALUES
(1, 'ProveedorJuridico', '', '', 'gruplab@hotmail.com', '', '', 'Gruplab ', '900458125-7', '', '', '3133906504', '', '', 'Examenes ', 'Carrera 71d 57f-70sur ', '', '$2y$10$RYYDTE0Ze9Bakvj.dQ2GGuCsFmke5eCkvMBjxqLElJUI96f0UpRvW'),
(2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '$2y$10$vwPK870kVbwg6CPuhEvT.OBxd1VjzRV6TBD/RzJOFnx/fzTnzgw4K'),
(3, 'ProveedorJuridico', '', '', 'semedic@hotmail.com', '', '', 'SEMEDIC', '900526451-8', '', '', '3204567895', '', '', 'Examenes ', 'Calle 17 # 21-36', 'Juan Pablo Chivata ', '$2y$10$/jrT/rx0QX4YEm./bPUYKe3aiUNzi2rcYarHPvcWT.OxS3I.J33hy'),
(4, 'ClienteInterno', 'Andres Mauricio', 'Montañez', 'maurommtt@gmail.com', 'Administrativa', 'Líder de Contratación ', '', '', '', '', '', '', '', '', '', '', '$2y$10$/LJ/xwU/9y2i0CLXalhIbeBEum2p4UYqCb.F//Qu9ddnaMFaspJxO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
