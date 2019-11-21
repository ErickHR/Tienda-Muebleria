-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-11-2019 a las 03:32:00
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`Idcargo`, `Nombre`, `Sueldo`) VALUES
(1, 'Director Ejecutivo ', 2000),
(2, 'Vendedor', 800),
(3, 'Informática y Tecnología', 1700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriageneral`
--

DROP TABLE IF EXISTS `categoriageneral`;
CREATE TABLE IF NOT EXISTS `categoriageneral` (
  `Idcategoriageneral` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`Idcategoriageneral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
CREATE TABLE IF NOT EXISTS `categoriaproducto` (
  `Idcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`Idcategoriaproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Celular` int(9) NOT NULL,
  PRIMARY KEY (`Idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Idcliente`, `Nombre`, `Ap_paterno`, `Ap_materno`, `Dni`, `Email`, `Direccion`, `Celular`) VALUES
(1, 'Héctor ', 'Asurza', 'Huaman', 10080565, ' hectorasurza@hotmail.com ', 'Jesús María Av Ricardo Tizón y Bueno 653 ', 953236500),
(2, 'Terry', 'Chavez', 'Velasquez', 73256383, 'terrylchavez@gmail.com', 'Villa Maria del Triunfo, Elías Aguirre 308 ', 992220734),
(3, 'Juan Guillermo ', 'Rodriguez', 'Vela', 43587415, ' juanguillermo32@hotmail,com ', 'Moquegua Av Balta 335 ', 992801510),
(4, 'Carlos', 'Lopez', 'Mejia', 26584215, ' carloslopezm@gmail.com ', 'Jesús María Av Ricardo Tizón y Bueno 653 ', 914144450),
(5, 'Felipe', 'Tuesta', 'Diaz', 95321478, 'felipe_tuesta24@hotmail.com ', 'Magdalena del Mar Av. del Ejército 434', 998796355),
(6, 'Carmen', 'Ramirez', 'Fernandez', 74123584, 'carmenramirezf@gmail.com', 'Villa El Salvador Av. Revolución 1458', 978123654),
(7, 'Alfonso', 'Mejia', 'Miranda', 10357415, 'alfonso_mejia14@hotmail.com', 'Huaraz Av. Fitzcarrald 330', 960425997),
(8, 'Renato', 'Ponce', 'Llanos', 59355415, ' renatopl@hotmail.com ', 'Chorillos Av. Prol. Huaylas 26 ', 957952144),
(9, 'Tito', 'Valdez', 'Rosas', 69842369, 'titovrosas12@hotmail.com ', 'Incahuasi Calle Unión 285', 993645825),
(10, 'Leo', 'Gomez', 'Rivera', 36975254, 'gomezrivleo@gmail.com ', 'Jesús María Av Ricardo Tizón y Bueno 653 ', 935752112),
(11, 'Jose', 'Hernandez', 'Rios', 99512574, 'hernandez_joser@hotmail.com', 'Acarí Av Sebastian Barranca 15', 972154369),
(12, 'Julio', 'Silvera', 'Iñigo', 12478524, 'juliosilvera48@gmail.com ', 'San Isidro Av. Camino Real 425', 912375474);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
CREATE TABLE IF NOT EXISTS `detalleventa` (
  `Iddetalleventa` int(11) NOT NULL AUTO_INCREMENT,
  `Cantidad` int(11) NOT NULL,
  `Descuento` double NOT NULL,
  `PrecioUnitario` double NOT NULL,
  `Importe` double NOT NULL,
  `Idventa` int(11) NOT NULL,
  `Idproducto` int(11) NOT NULL,
  PRIMARY KEY (`Iddetalleventa`),
  KEY `detalle-producto` (`Idproducto`),
  KEY `detalle-venta` (`Idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

DROP TABLE IF EXISTS `dueno`;
CREATE TABLE IF NOT EXISTS `dueno` (
  `Iddueño` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Dni` int(9) NOT NULL,
  PRIMARY KEY (`Iddueño`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`Iddueño`, `Nombre`, `Ap_paterno`, `Ap_materno`, `Dni`) VALUES
(3, 'Gonzalo', 'Asturias', 'Yarleque', 65842978),
(4, 'Juan', 'Robles', 'Carhuamaca', 45698132),
(5, 'Edwin', 'Gutierrez', 'Rojas', 65482519),
(6, 'Pablo', 'Hernandez', 'Mogollon', 65487899);

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
  PRIMARY KEY (`Idempleado`),
  KEY `empleado-cargo` (`Idcargo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Idempleado`, `Nombre`, `Ap_paterno`, `Ap_materno`, `Email`, `Direccion`, `Celular`, `Idcargo`) VALUES
(1, 'Enrique', 'Guzman', 'Oruna', 'enrique0803@gmail.com', 'Villa Maria del Triunfo Av. El Triunfo 356', 935752112, 3),
(2, 'Luis ', 'Cruz ', 'Perea ', 'perea164@outlook.com', 'Surco Av Surco 684', 987458136, 2),
(3, 'Liliana', 'Carranza', 'Gallardo', 'lilianacarranza@hotmail.com', 'Tablada de Lurin, av Rosedal 546', 984512367, 2),
(4, 'Marible', 'Carranza', 'Altamirano', 'maribel49@gmail.com', 'San Juan de Miraflores Av. Belisario Suarez 1287', 985124576, 1);

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
  PRIMARY KEY (`Idproducto`),
  KEY `producto-proveedor` (`Idproveedor`),
  KEY `producto-sub` (`Idsubcategoriaproducto`),
  KEY `producto-catgen` (`Idcategoriageneral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `Idproveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Celular` int(9) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Ruc` int(11) NOT NULL,
  `Iddueño` int(11) NOT NULL,
  PRIMARY KEY (`Idproveedor`),
  KEY `Iddueño` (`Iddueño`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`Idproveedor`, `Nombre`, `Celular`, `Email`, `Direccion`, `Ruc`, `Iddueño`) VALUES
(3, 'Muebles Elegancia', 965846127, 'mueblesele@gmail.com', 'JR. BUENAVENTURA AGUIRRE 398, SJM', 1545789621, 3),
(4, 'Muebles Maestros', 984576148, 'mueblesymaestros@outlook.com', 'AV. EL TRIUNFO 774 ( A UNA CUADRA DE LA PLAZA DE ARMAS DE VILLA MARIA\r\nDEL TRIUNFO ) ', 1651568137, 4),
(5, 'Decoraciones y muebles', 984562134, 'decoracionesves@gmail.com', 'av. Revolucion 1489, VES', 1012365478, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoriaproducto`
--

DROP TABLE IF EXISTS `subcategoriaproducto`;
CREATE TABLE IF NOT EXISTS `subcategoriaproducto` (
  `Idsubcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Idcategoriaproducto` int(11) NOT NULL,
  PRIMARY KEY (`Idsubcategoriaproducto`),
  KEY `sub_catpro` (`Idcategoriaproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoventa`
--

DROP TABLE IF EXISTS `tipoventa`;
CREATE TABLE IF NOT EXISTS `tipoventa` (
  `Idtipoventa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`Idtipoventa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoventa`
--

INSERT INTO `tipoventa` (`Idtipoventa`, `Nombre`) VALUES
(1, 'Boleta'),
(2, 'Factura');

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
  PRIMARY KEY (`Idusuario`),
  KEY `usuario-cliente` (`Idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Idusuario`, `Usuario`, `Contraseña`, `Idcliente`) VALUES
(1, ' terry999 ', '123', 2),
(2, 'hectorJ', 'hector99', 1),
(3, ' juan32 ', '789', 3),
(4, 'Carlos77', '9876', 4),
(5, 'Fel978', '12345678', 5),
(6, 'Carmen78', 'Carmen4561', 6),
(7, 'Alfo45', 'alfonso8', 7),
(8, 'Renato99', '6547814592', 8),
(9, 'Julio', 'Iñigo45', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

DROP TABLE IF EXISTS `venta`;
CREATE TABLE IF NOT EXISTS `venta` (
  `Idventa` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Igv` double NOT NULL,
  `PrecioTotalVenta` int(11) NOT NULL,
  `Idusuario` int(11) NOT NULL,
  `Idempleado` int(11) NOT NULL,
  `Idtipoventa` int(11) NOT NULL,
  PRIMARY KEY (`Idventa`),
  KEY `venta-empleado` (`Idempleado`),
  KEY `venta-tipoventa` (`Idtipoventa`),
  KEY `venta-usuario` (`Idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalle-producto` FOREIGN KEY (`Idproducto`) REFERENCES `producto` (`Idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle-venta` FOREIGN KEY (`Idventa`) REFERENCES `venta` (`Idventa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado-cargo` FOREIGN KEY (`Idcargo`) REFERENCES `cargo` (`Idcargo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto-catgen` FOREIGN KEY (`Idcategoriageneral`) REFERENCES `categoriageneral` (`Idcategoriageneral`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto-proveedor` FOREIGN KEY (`Idproveedor`) REFERENCES `proveedor` (`Idproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto-sub` FOREIGN KEY (`Idsubcategoriaproducto`) REFERENCES `subcategoriaproducto` (`Idsubcategoriaproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor-dueno` FOREIGN KEY (`Iddueño`) REFERENCES `dueno` (`Iddueño`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subcategoriaproducto`
--
ALTER TABLE `subcategoriaproducto`
  ADD CONSTRAINT `sub_catpro` FOREIGN KEY (`Idcategoriaproducto`) REFERENCES `categoriaproducto` (`Idcategoriaproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario-cliente` FOREIGN KEY (`Idcliente`) REFERENCES `cliente` (`Idcliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta-empleado` FOREIGN KEY (`Idempleado`) REFERENCES `empleado` (`Idempleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta-tipoventa` FOREIGN KEY (`Idtipoventa`) REFERENCES `tipoventa` (`Idtipoventa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta-usuario` FOREIGN KEY (`Idusuario`) REFERENCES `usuario` (`Idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
