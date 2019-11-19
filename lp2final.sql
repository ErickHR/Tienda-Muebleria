-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-11-2019 a las 13:55:54
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lp2final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `sueldo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `categoriageneral` (
  `idCategoriaGeneral` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celular`
--

CREATE TABLE `celular` (
  `idCelular` int(11) NOT NULL,
  `celular` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `aPaterno` varchar(20) DEFAULT NULL,
  `aMaterno` varchar(20) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL,
  `idEmail` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `detalleventa` (
  `idDetalleVenta` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `precioUnitario` double DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `idVenta` int(11) DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(11) NOT NULL,
  `departamento` varchar(30) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `distrito` varchar(30) DEFAULT NULL,
  `avenida` varchar(30) DEFAULT NULL,
  `calle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `email` (
  `idEmail` int(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `aPaterno` varchar(20) DEFAULT NULL,
  `aMaterno` varchar(20) DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(11, 'Damián', 'Perea', 'Cárdenas', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL,
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
  `idProveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `idCelular` int(11) DEFAULT NULL,
  `idEmail` int(11) DEFAULT NULL,
  `idDireccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idTipo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `isUsuario` int(11) NOT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `fecha` varchar(8) DEFAULT NULL,
  `IGV` double DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEmpleado` int(11) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `categoriageneral`
--
ALTER TABLE `categoriageneral`
  ADD PRIMARY KEY (`idCategoriaGeneral`);

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`idCategoriaProducto`);

--
-- Indices de la tabla `celular`
--
ALTER TABLE `celular`
  ADD PRIMARY KEY (`idCelular`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`idDetalleVenta`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`idDireccion`);

--
-- Indices de la tabla `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`idEmail`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`isUsuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `categoriageneral`
--
ALTER TABLE `categoriageneral`
  MODIFY `idCategoriaGeneral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  MODIFY `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `celular`
--
ALTER TABLE `celular`
  MODIFY `idCelular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `idDireccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `email`
--
ALTER TABLE `email`
  MODIFY `idEmail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `isUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
