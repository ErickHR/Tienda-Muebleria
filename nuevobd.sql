-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2019 a las 11:50:19
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nuevobd`
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
(5, 'Juego comedor'),
(6, 'Muebles de Dormitorio');

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
(1, 'PARIS - Alacena - Madera', 'Caoba', '2019-09-10', 21, 250, 'Crema', '30x80x180 cm', 2, 4, 3, 1, '1m.jpg'),
(2, 'LOS ANGELES - Alacena - Madera', 'Cedro', '2019-09-10', 17, 220, 'Marrón', '30x90x170 cm', 2, 4, 3, 2, '2m.jpg'),
(3, 'BORDEAUX - Alacena - Madera', 'Roble', '2019-09-10', 19, 275, 'Natural', '40x75x190 cm', 2, 4, 3, 3, '3m.jpg'),
(4, 'SYDNEY - Alacena - Madera', 'Pino', '2019-09-10', 9, 247, 'Marrón', '30x80x175 cm', 2, 4, 3, 4, '4m.jpg'),
(5, 'CUPERTINO - Alacena - Madera', 'Caoba', '2019-09-13', 17, 290, 'Natural', '30x90x170 cm', 2, 4, 4, 5, '5m.jpg'),
(6, 'METRO - Alacena - Madera', 'Cedro', '2019-09-13', 20, 260, 'Marrón', '40x75x190 cm', 2, 4, 4, 6, '6m.jpg'),
(7, 'AISLE - Alacena - Madera', 'Roble', '2019-09-13', 20, 270, 'Natural', '30x80x175 cm', 2, 4, 4, 7, '7m.jpg'),
(8, 'FERMO - Alacena - Madera', 'Pino', '2019-09-13', 13, 220, 'Perla', '50x100x190 cm', 2, 4, 4, 8, '8m.jpg'),
(9, 'LUGANO - Alacena - Madera', 'Caoba', '2019-09-17', 22, 300, 'Gris', '30x80x180 cm', 2, 4, 5, 9, '9m.jpg'),
(10, 'MANHATTAN - Alacena - Madera', 'Cedro', '2019-09-17', 29, 295, 'Natural', '30x80x175 cm', 2, 4, 5, 10, '10m.jpg'),
(11, 'PARIS - Alacena - Melamina', 'Liso Mate', '2019-09-20', 26, 210, 'Castaño Blanco', '40x75x190 cm', 2, 4, 3, 11, '1ml.jpg'),
(12, 'LOS ANGELES  - Alacena - Melamina', 'Bosco', '2019-09-20', 19, 275, 'Natural matt', '50x100x190 cm', 2, 4, 3, 12, '2ml.jpg'),
(13, 'BORDEAUX - Alacena - Melamina', 'Enigma', '2019-09-20', 23, 285, 'Natural', '45x90x170 cm', 2, 4, 3, 13, '3ml.jpg'),
(14, 'SYDNEY - Alacena - Melamina', 'Estocolmo', '2019-09-20', 24, 250, 'Blanco Perla', '40x75x190 cm', 2, 4, 3, 14, '4ml.jpg'),
(15, 'Cupertino - Alacena - Melamina', 'Softwood', '2019-09-20', 17, 226, 'Blanco ', '50x100x190 cm', 2, 4, 3, 15, '5ml.jpg'),
(16, 'LUGANO - Armario - Madera', 'Cerezo', '2019-09-21', 30, 150, 'Cacao', '30x120x210 cm', 6, 4, 4, 16, '1a.png'),
(17, 'MANHATTAN - Armario - Madera', 'Pino', '2019-09-21', 32, 200, 'Coigüe', '50x95x200 cm', 6, 4, 4, 17, '2a.png'),
(18, 'AISLE - Armario - Madera', 'Roble', '2019-09-21', 24, 220, 'Lingue', '30x120x210 cm', 6, 4, 4, 18, '3a.png'),
(19, 'FERMO - Armario - Madera', 'Pino', '2019-09-21', 22, 220, 'Roble Antracita', '40x75x190 cm', 6, 4, 4, 19, '4a.png'),
(20, 'LOS ANGELES - Armario - Madera', 'Cedro', '2019-09-21', 27, 235, 'Sahara', '30x120x210 cm', 6, 4, 4, 20, '5a.png'),
(21, 'SYDNEY - Armario - Madera', 'Caoba', '2019-09-21', 29, 245, 'Fresno Humo', '40x75x190 cm', 6, 4, 4, 21, '6a.png'),
(22, 'METRO - Armario - Madera', 'Roble', '2019-09-21', 23, 210, 'Blanco Perla', '30x80x180 cm', 6, 4, 4, 22, '7a.png'),
(23, 'PARIS - Baúl - Madera', 'Cerezo', '2019-09-21', 17, 110, 'Coigue Chocolate', '40x75x50 cm', 6, 9, 5, 23, '1b.png'),
(24, 'LUGANO - Baúl- Madera', 'Caoba', '2019-09-21', 13, 100, 'Maple Grava', '40x65x60', 6, 9, 5, 24, '2b.png'),
(25, 'FERMO - Baúl- Madera', 'Roble', '2019-09-21', 9, 115, 'Nogal Amazónico', '30x55x50 cm', 6, 9, 5, 25, '3b.png'),
(26, 'Cupertino - Baúl- Madera', 'Pino', '2019-09-21', 12, 95, 'Peral', '30x60x62 cm', 6, 9, 5, 26, '4b.png'),
(27, 'BORDEAUX - Baúl - Madera', 'Cedro', '2019-09-21', 15, 120, 'Roble Milano', '30x80x60 cm', 6, 9, 5, 26, '5b.png'),
(28, 'MANHATTAN - Baúl - Madera', 'Caoba', '2019-09-21', 11, 105, 'Santorini', '35x70x50 cm', 6, 9, 5, 28, '6b.png'),
(29, 'LOS ANGELES - Baul - Madera', 'Cerezo', '2019-09-21', 14, 120, 'Teca Italia', '45x60x50 cm', 6, 9, 5, 29, '7b.png'),
(30, 'AISLE - Baúl- Metal', 'Acero', '2019-09-22', 9, 90, 'Acero', '45x60x50 cm', 6, 9, 3, 30, '1bm.png'),
(31, 'FERMO - Baúl- Metal', 'Acero', '2019-09-21', 6, 105, 'Negro', '40x75x52 cm', 6, 9, 3, 31, '2bm.png'),
(32, 'LUGANO - Baúl- Metal', 'Acero', '2019-09-21', 9, 95, 'Marrón', '50x60x40 cm', 6, 9, 3, 32, '3bm.png'),
(33, 'PARIS - Baúl - Metal', 'Aluminio', '2019-09-21', 7, 85, 'Naranja', '30x65x45cm', 6, 9, 3, 33, '4bm.png'),
(34, 'LOS ANGELES - Baúl - Metal', 'Aluminio', '2019-09-21', 10, 100, 'Peral', '40x75x65cm', 6, 9, 3, 34, '5bm.png'),
(35, 'MANHATTAN - Baúl - Metal', 'Acero', '2019-09-21', 11, 95, 'Verde Agua', '30x60x45 cm', 6, 9, 4, 35, '6bm.png'),
(36, 'SYDNEY- Baúl- Metal', 'Aluminio', '2019-09-21', 11, 100, 'Plateado', '40x70x55 cm', 6, 9, 4, 36, '7bm.png');

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
  MODIFY `Idcategoriageneral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `Idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
