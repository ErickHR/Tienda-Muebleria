-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-11-2019 a las 15:16:05
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
-- Base de datos: `tiendamuebleria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `idCargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idCargo`, `nombre`, `sueldo`) VALUES
(1, 'Director Ejecutivo', 2000),
(2, 'Director de Operaciones', 1800),
(3, 'Director Comercial', 1750),
(4, 'Director de Recursos Humanos', 1500),
(5, 'Responsable Financiero', 1850),
(6, 'Gerente de Producción', 1400),
(7, 'Logística', 1300),
(8, 'Informática y Tecnología', 1700),
(9, 'Atención al Cliente', 800),
(10, 'Vendedor', 800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriageneral`
--

DROP TABLE IF EXISTS `categoriageneral`;
CREATE TABLE IF NOT EXISTS `categoriageneral` (
  `idCategoriaGeneral` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaGeneral`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriageneral`
--

INSERT INTO `categoriageneral` (`idCategoriaGeneral`, `nombre`) VALUES
(1, 'Muebles de sala'),
(2, 'Sala Lounge'),
(3, 'Sala de entretenimiento'),
(4, 'Escritorios'),
(5, 'Juego comedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
CREATE TABLE IF NOT EXISTS `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idCategoriaProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celular`
--

DROP TABLE IF EXISTS `celular`;
CREATE TABLE IF NOT EXISTS `celular` (
  `idCelular` int(11) NOT NULL AUTO_INCREMENT,
  `celular` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idCelular`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `celular`
--

INSERT INTO `celular` (`idCelular`, `celular`) VALUES
(1, '992220734'),
(2, '953236500'),
(3, '992801510'),
(4, '914144450'),
(5, '998796355'),
(6, '978123654'),
(7, '960425997'),
(8, '957952144'),
(9, '993645825'),
(10, '935752112'),
(11, '972154369'),
(12, '912375474'),
(13, '994562654'),
(14, '954641119'),
(15, '925982532'),
(16, '935954428'),
(17, '963214856'),
(18, '936845236'),
(19, '991753692'),
(20, '975641326');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `aPaterno` varchar(20) DEFAULT NULL,
  `aMaterno` varchar(20) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL,
  `idEmail` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombre`, `aPaterno`, `aMaterno`, `dni`, `idDireccion`, `idEmail`) VALUES
(1, 'Terry', 'Chavez', 'Velasquez', '73256383', 1, 1),
(2, 'Héctor ', 'Asurza', 'Huaman', '10080565', 2, 2),
(3, 'Juan Guillermo', 'Rodriguez', 'Vela', '43587415', 3, 3),
(4, 'Carlos', 'López', 'Mejía', '26584215', 4, 4),
(5, 'Felipe', 'Tuesta', 'Diaz', '95321478', 5, 5),
(6, 'Carmen', 'Ramirez', 'Fernandez', '74123584', 6, 6),
(7, 'Alfonso', 'Mejía', 'Miranda', '10357415', 7, 7),
(8, 'Renato', 'Ponce', 'Llanos', '59355415', 8, 8),
(9, 'Tito', 'Valdez', 'Rosas', '69842369', 9, 9),
(10, 'Leo', 'Gomez', 'Rivera', '36975254', 10, 10),
(11, 'José', 'Hernandez', 'Ríos', '99512574', 11, 11),
(12, 'Julio', 'Silvera', 'Iñigo', '12478524', 12, 12),
(13, 'Blanca', 'Gutierrez', 'Zavala', '52124756', 13, 13),
(14, 'Mery', 'Vilcapoma', 'Mnedoza', '10384523', 14, 14),
(15, 'Jefferson', 'Palomino', 'Vega', '47523599', 15, 15),
(16, 'Keyla', 'Blas', 'Espinoza', '78896321', 16, 16),
(17, 'Bryan', 'Paucar', 'Champe', '82232381', 17, 17),
(18, 'Juan Carlos', 'Chumbes', 'Alcahua', '95312475', 18, 18),
(19, 'Efraín', 'Falcon', 'Quispe', '14658226', 19, 19),
(20, 'Miguel', 'Bellido', 'Medina', '23965448', 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
CREATE TABLE IF NOT EXISTS `detalleventa` (
  `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precioUnitario` double DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `idVenta` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalleVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

DROP TABLE IF EXISTS `direccion`;
CREATE TABLE IF NOT EXISTS `direccion` (
  `idDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(30) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `distrito` varchar(30) DEFAULT NULL,
  `avenida` varchar(30) DEFAULT NULL,
  `calle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idDireccion`, `departamento`, `provincia`, `distrito`, `avenida`, `calle`) VALUES
(1, 'Lima', 'Lima', 'Villa Maria del Triunfo', 'Av. El Triunfo 356', NULL),
(2, 'Lima', 'Lima', 'Villa El Salvador', 'Av. Revolución 1458', NULL),
(3, 'Ica', 'Pisco', 'San Ándres', '', 'Calle Bolivia 3ra cuadra'),
(4, 'Áncash', 'Huaraz', 'Huaraz', 'Av. Fitzcarrald 330', NULL),
(5, 'Lima', 'Huaral', 'Chancay', NULL, 'López de Zúñiga 455'),
(6, 'Lima', 'Lima', 'Chorillos', 'Av. Prol. Huaylas 26', NULL),
(7, 'Lambayeque', 'Ferreñafe', 'Incahuasi', NULL, 'Calle Unión 285'),
(8, 'La Libertad', 'Trujillo', 'Huanchaco', NULL, 'Calle Atahualpa 210 '),
(9, 'Lima', 'Lima', 'Surco', 'Av Surco 684', NULL),
(10, 'Lima', 'Lima', 'Jesús María', 'Av Ricardo Tizón y Bueno 653', NULL),
(11, 'Piura', 'Piura', 'Castilla', 'Av Progreso 1622', NULL),
(12, 'Lima', 'Canta', 'Canta', NULL, 'Jr. Sángrar 255'),
(13, 'Moquegua', 'Mariscal Nieto', 'Moquegua', 'Av Balta 335', NULL),
(14, 'Lima', 'Lima', 'San Juan de Miraflores', 'Av. Belisario Suarez 1287', NULL),
(15, 'Lima', 'Lima', 'Villa Maria del Triunfo', NULL, 'Elías Aguirre 308'),
(16, 'Lima', 'Lima', 'Magdalena del Mar', 'Av. del Ejército 434', NULL),
(17, 'Lima', 'Cañete', 'Mala', NULL, 'Calle San Martín 148'),
(18, 'Arequipa', 'Caravelí', 'Acarí', 'Av Sebastian Barranca 15', NULL),
(19, 'Lima', 'Lima', 'Miraflores', 'Av. Comandante Espinar 191', NULL),
(20, 'Lima', 'Lima', 'San Isidro', 'Av. Camino Real 425', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `idEmail` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `email`
--

INSERT INTO `email` (`idEmail`, `email`) VALUES
(1, 'terrylchavez@gmail.com'),
(2, 'hectorasurza@hotmail.com'),
(3, 'juanguillermo32@hotmail,com'),
(4, 'carloslopezm@gmail.com'),
(5, 'felipe_tuesta24@hotmail.com'),
(6, 'carmenramirezf@gmail.com'),
(7, 'alfonso_mejia14@hotmail.com'),
(8, 'renatopl@hotmail.com'),
(9, 'titovrosas12@hotmail.com'),
(10, 'gomezrivleo@gmail.com'),
(11, 'hernandez_joser@hotmail.com'),
(12, 'juliosilvera48@gmail.com'),
(13, 'blanca_gutierrez@hotmail.com'),
(14, 'mery555vilcapoma@hotmail.com'),
(15, 'jefferpalomino@gmail.com'),
(16, 'keyla_bespinoza@hotmail.com'),
(17, 'bryanpaucar_ch@hotmail.com'),
(18, 'juancarloschumbes@gmail.com'),
(19, 'efrainfquispe@gmail.com'),
(20, 'miguelbellido7@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `aPaterno` varchar(20) DEFAULT NULL,
  `aMaterno` varchar(20) DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `idCargo` (`idCargo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombre`, `aPaterno`, `aMaterno`, `idCargo`) VALUES
(1, 'Enrique ', 'Guzman', 'Cáceres', 1),
(2, 'Ricardo', 'Enriquez', 'Miranda', 2),
(3, 'Manuel', 'Ponce', 'Champi', 3),
(4, 'Fiorella', 'Granda', 'Moreno', 4),
(5, 'Luis', 'Sarango', 'Martinez', 5),
(6, 'Normán', 'Mejía', 'Escobedo', 6),
(7, 'Frank', 'Villanueva ', 'Ochoa', 7),
(8, 'Martín', 'Oruna', 'Páez', 8),
(9, 'Gerardo', 'Reyero', 'Castañeda', 9),
(10, 'Ana', 'Cruz', 'Sotomayor', 10),
(12, 'Anthony', 'Talavera', 'Carranza', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `idMaterial` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `ancho` varchar(20) DEFAULT NULL,
  `longitud` varchar(20) DEFAULT NULL,
  `alto` varchar(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idCategoriaGeneral` int(11) DEFAULT NULL,
  `idCategoriaProducto` int(11) DEFAULT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `idProveedor` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `idCelular` int(11) DEFAULT NULL,
  `idEmail` int(11) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE IF NOT EXISTS `tipo` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `isUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`isUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`isUsuario`, `usuario`, `contraseña`, `idCliente`) VALUES
(1, 'terry999', '123', 1),
(2, 'asurza2019', '456', 2),
(3, 'juan32', '789', 3),
(4, 'carlitos20', '147', 4),
(5, 'felipe1', '258', 5),
(6, 'carmen7', '369', 6),
(7, 'alfon78', '159', 7),
(8, 'renato25', '753', 8),
(9, 'tito333', '987', 9),
(10, 'leo69', '654', 10),
(11, 'jose_45', '321', 11),
(12, 'julios88', '741', 12),
(13, 'blanca110', '852', 13),
(14, 'mery555', '963', 14),
(15, 'jeff44', '444', 15),
(16, 'blas_123', '113', 16),
(17, 'bryan931', '931', 17),
(18, 'juanch111', '185', 18),
(19, 'falcon255', '658', 19),
(20, 'miguel22', '226', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(8) DEFAULT NULL,
  `IGV` double DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
