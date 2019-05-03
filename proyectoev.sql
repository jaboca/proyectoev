-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2019 a las 17:38:00
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoev`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `NIF` varchar(15) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(200) NOT NULL,
  `Administrador` tinyint(1) NOT NULL,
  `Dentro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`NIF`, `Nombre`, `Apellidos`, `Administrador`, `Dentro`) VALUES
('2345', 'Manolo', 'García', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichajes`
--

CREATE TABLE `fichajes` (
  `NIF` varchar(15) NOT NULL,
  `Dia` date NOT NULL,
  `Horaentrada` time NOT NULL,
  `Horasalida` time NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fichajes`
--

INSERT INTO `fichajes` (`NIF`, `Dia`, `Horaentrada`, `Horasalida`, `ID`) VALUES
('2345', '2019-04-20', '17:04:17', '17:17:58', 1),
('2345', '2019-04-20', '17:11:20', '17:17:58', 2),
('2345', '2019-04-20', '17:17:53', '17:17:58', 3),
('2345', '2019-04-20', '17:18:24', '17:18:36', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`NIF`);

--
-- Indices de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fichajes`
--
ALTER TABLE `fichajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
