-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-11-2019 a las 16:31:12
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `Idcargo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Sueldo` double NOT NULL,
  PRIMARY KEY (`Idcargo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriageneral`
--

DROP TABLE IF EXISTS `categoriageneral`;
CREATE TABLE IF NOT EXISTS `categoriageneral` (
  `Idcategoriageneral` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`Idcategoriageneral`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
CREATE TABLE IF NOT EXISTS `categoriaproducto` (
  `Idcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`Idcategoriaproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `Idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Dni` int(8) NOT NULL,
  `Email` int(50) NOT NULL,
  `Direccion` int(150) NOT NULL,
  `Celular` int(9) NOT NULL,
  PRIMARY KEY (`Idcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueño`
--

DROP TABLE IF EXISTS `dueño`;
CREATE TABLE IF NOT EXISTS `dueño` (
  `Iddueño` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Dni` int(9) NOT NULL,
  PRIMARY KEY (`Iddueño`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `Idempleado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Celular` int(9) NOT NULL,
  `Idcargo` int(11) NOT NULL,
  PRIMARY KEY (`Idempleado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `Idproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Fechadeentrega` date NOT NULL,
  `Stock` int(11) NOT NULL,
  `PrecioCompra` double NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Dimensiones` varchar(30) NOT NULL,
  `Idcategoriageneral` int(11) NOT NULL,
  `Idsubcategoriaproducto` int(11) NOT NULL,
  `Idproveedor` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  PRIMARY KEY (`Idproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `Idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Celular` int(9) NOT NULL,
  `Email` int(50) NOT NULL,
  `Direccion` int(150) NOT NULL,
  `Ruc` int(11) NOT NULL,
  PRIMARY KEY (`Idproveedor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoriaproducto`
--

DROP TABLE IF EXISTS `subcategoriaproducto`;
CREATE TABLE IF NOT EXISTS `subcategoriaproducto` (
  `Idsubcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Idcategoriaproducto` int(11) NOT NULL,
  PRIMARY KEY (`Idsubcategoriaproducto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(15) NOT NULL,
  `Contraseña` varchar(15) NOT NULL,
  `Idcliente` int(11) NOT NULL,
  PRIMARY KEY (`Idusuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
