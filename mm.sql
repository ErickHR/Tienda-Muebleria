-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2019 a las 19:16:20
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Idcargo` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Sueldo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `categoriageneral` (
  `Idcategoriageneral` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriageneral`
--

INSERT INTO `categoriageneral` (`Idcategoriageneral`, `Nombre`) VALUES
(1, 'Sala lounge'),
(2, 'Muebles de sala'),
(3, 'Sala de entretenimiento'),
(4, 'Escritorios'),
(5, 'Juego comedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `Idcategoriaproducto` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`Idcategoriaproducto`, `Nombre`) VALUES
(1, 'Mesas'),
(2, 'Sillas'),
(3, 'Muebles dobles '),
(4, 'Muebles individuales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Idcliente` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Dni` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Celular` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `detalleventa` (
  `Iddetalleventa` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Descuento` double NOT NULL,
  `PrecioUnitario` double NOT NULL,
  `Importe` double NOT NULL,
  `Idventa` int(11) NOT NULL,
  `Idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`Iddetalleventa`, `Cantidad`, `Descuento`, `PrecioUnitario`, `Importe`, `Idventa`, `Idproducto`) VALUES
(1, 2, 0, 62, 124, 1, 1),
(2, 3, 0, 104, 312, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `Iddueño` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Dni` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `empleado` (
  `Idempleado` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Ap_paterno` varchar(15) NOT NULL,
  `Ap_materno` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Celular` int(9) NOT NULL,
  `Idcargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `producto` (
  `Idproducto` int(11) NOT NULL,
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
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`Idproducto`, `Nombre`, `Descripcion`, `Fechadeentrega`, `Stock`, `PrecioCompra`, `Color`, `Dimensiones`, `Idcategoriageneral`, `Idsubcategoriaproducto`, `Idproveedor`, `Codigo`, `img`) VALUES
(1, 'Mueble individual', 'Madera ???, tela ???', '2019-10-07', 5, 310, 'Rojo', '??x??x??', 2, 8, 5, 1, 'testimonial-4.jpg'),
(2, 'Muebles dobles', 'Madera ???, tela ???', '2019-09-03', 3, 312, 'Esmeralda', '??x??x??', 2, 4, 3, 2, 'testimonial-4.jpg'),
(3, 'Puff', 'Madera ???, tela ???', '2019-11-05', 3, 108, 'Blanco', '??x??x??', 3, 9, 3, 3, 'testimonial-4.jpg'),
(4, 'Mesa de centro', 'Madera ???, tela ???', '2019-11-14', 6, 330, 'Negro', '??x??x??', 1, 3, 5, 4, 'testimonial-4.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `Idproveedor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Celular` int(9) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Ruc` int(11) NOT NULL,
  `Iddueño` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `subcategoriaproducto` (
  `Idsubcategoriaproducto` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL,
  `Idcategoriaproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategoriaproducto`
--

INSERT INTO `subcategoriaproducto` (`Idsubcategoriaproducto`, `Nombre`, `Idcategoriaproducto`) VALUES
(1, 'Mesas grandes', 1),
(2, 'Mesas medianas', 1),
(3, 'Mesas pequeñas', 1),
(4, 'Muebles dobles grandes', 3),
(5, 'Muebles dobles pequeños', 3),
(6, 'Silla de sala', 2),
(7, 'Silla gamer', 2),
(8, 'Muebles individuales grandes', 4),
(9, 'Muebles individuales pequeños', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoventa`
--

CREATE TABLE `tipoventa` (
  `Idtipoventa` int(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `usuario` (
  `Idusuario` int(11) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contraseña` varchar(15) NOT NULL,
  `Idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `venta` (
  `Idventa` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Igv` double NOT NULL,
  `PrecioTotalVenta` double NOT NULL,
  `Idusuario` int(11) NOT NULL,
  `Idempleado` int(11) NOT NULL,
  `Idtipoventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Idventa`, `Fecha`, `Igv`, `PrecioTotalVenta`, `Idusuario`, `Idempleado`, `Idtipoventa`) VALUES
(1, '2019-11-20', 0.18, 124, 6, 3, 2),
(2, '2019-11-19', 0.18, 312, 9, 4, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`Idcargo`);

--
-- Indices de la tabla `categoriageneral`
--
ALTER TABLE `categoriageneral`
  ADD PRIMARY KEY (`Idcategoriageneral`);

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD PRIMARY KEY (`Idcategoriaproducto`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Idcliente`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`Iddetalleventa`),
  ADD KEY `detalle-producto` (`Idproducto`),
  ADD KEY `detalle-venta` (`Idventa`);

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`Iddueño`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Idempleado`),
  ADD KEY `empleado-cargo` (`Idcargo`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Idproducto`),
  ADD KEY `producto-proveedor` (`Idproveedor`),
  ADD KEY `producto-sub` (`Idsubcategoriaproducto`),
  ADD KEY `producto-catgen` (`Idcategoriageneral`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`Idproveedor`),
  ADD KEY `Iddueño` (`Iddueño`);

--
-- Indices de la tabla `subcategoriaproducto`
--
ALTER TABLE `subcategoriaproducto`
  ADD PRIMARY KEY (`Idsubcategoriaproducto`),
  ADD KEY `sub_catpro` (`Idcategoriaproducto`);

--
-- Indices de la tabla `tipoventa`
--
ALTER TABLE `tipoventa`
  ADD PRIMARY KEY (`Idtipoventa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Idusuario`),
  ADD KEY `usuario-cliente` (`Idcliente`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Idventa`),
  ADD KEY `venta-empleado` (`Idempleado`),
  ADD KEY `venta-tipoventa` (`Idtipoventa`),
  ADD KEY `venta-usuario` (`Idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `Idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categoriageneral`
--
ALTER TABLE `categoriageneral`
  MODIFY `Idcategoriageneral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  MODIFY `Idcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `Iddetalleventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dueno`
--
ALTER TABLE `dueno`
  MODIFY `Iddueño` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Idempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `Idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `Idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `subcategoriaproducto`
--
ALTER TABLE `subcategoriaproducto`
  MODIFY `Idsubcategoriaproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipoventa`
--
ALTER TABLE `tipoventa`
  MODIFY `Idtipoventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `Idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
