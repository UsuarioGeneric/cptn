-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2020 a las 07:26:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cptn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia`
--

CREATE TABLE `dia` (
  `id_dia` int(11) NOT NULL,
  `nombre_dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dia`
--

INSERT INTO `dia` (`id_dia`, `nombre_dia`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_en`
--

CREATE TABLE `in_en` (
  `id_in_en` int(11) NOT NULL,
  `nombre_in_en` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `in_en`
--

INSERT INTO `in_en` (`id_in_en`, `nombre_in_en`) VALUES
(1, 'Ingreso'),
(2, 'Egreso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE `mes` (
  `id_mes` int(11) NOT NULL,
  `nombre_mes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mes`
--

INSERT INTO `mes` (`id_mes`, `nombre_mes`) VALUES
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal`
--

CREATE TABLE `principal` (
  `id` int(11) NOT NULL,
  `id_in_en` varchar(20) NOT NULL,
  `id_year` int(11) NOT NULL,
  `id_mes` varchar(20) NOT NULL,
  `id_dia` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `principal`
--

INSERT INTO `principal` (`id`, `id_in_en`, `id_year`, `id_mes`, `id_dia`, `producto`, `descripcion`, `precio`) VALUES
(16, 'Ingreso', 2020, 'Febrero', 14, 'Aceite', 'Aceite de 600 ML', 28),
(17, 'Ingreso', 2019, 'Octubre', 22, 'Coca cola', 'Coca cola de 2 L', 30),
(18, 'Ingreso', 2019, 'Julio', 5, 'Queso', 'Queso en trozo', 20),
(21, 'Egreso', 2019, 'Julio', 10, 'Ajo', '2 piezas de ajo', 30),
(22, 'Ingreso', 2020, 'Diciembre', 18, 'Cuchillo', 'Cuchillo barato', 40),
(23, 'Ingreso', 2019, 'Enero', 12, 'Agua', 'Agua de 600 ML', 30),
(24, 'Egreso', 2020, 'Noviembre', 29, 'Laptop', 'Laptop alienware', 100),
(25, 'Ingreso', 2020, 'Enero', 22, 'Cebolla', 'Cebolla morada', 18),
(29, 'Ingreso', 2019, 'Enero', 1, 'Jamon', 'Jamón de pavo', 18),
(30, 'Egreso', 2020, 'Mayo', 8, 'Pago de luz', 'Luz', 1600),
(31, 'Ingreso', 2020, 'Julio', 13, 'Tacos de barbacoa', '30 órdenes', 1050),
(32, 'Ingreso', 2020, 'Julio', 13, 'Tacos de cecina', '16 órdenes', 560),
(33, 'Ingreso', 2020, 'Julio', 13, 'Tacos dorados', '10 órdenes', 350),
(34, 'Ingreso', 2020, 'Julio', 13, 'Hamburguesa', '15 órdenes', 525),
(35, 'Ingreso', 2020, 'Julio', 13, 'Enchiladas', '13 órdenes', 455),
(36, 'Ingreso', 2020, 'Julio', 13, 'Tortas', '20 órdenes', 700),
(37, 'Ingreso', 2020, 'Julio', 13, 'Burritos', '25 órdenes', 875),
(38, 'Ingreso', 2020, 'Julio', 13, 'Gringas', '15 órdenes', 525),
(39, 'Ingreso', 2020, 'Julio', 13, 'Agua', '30 Aguas Ciel de 600 ml', 450),
(40, 'Ingreso', 2020, 'Julio', 13, 'Coca cola', '32 Coca colas de 600 ml', 480),
(41, 'Ingreso', 2020, 'Julio', 13, 'Fanta', '28 Fantas de 600 ml', 420),
(42, 'Ingreso', 2020, 'Julio', 13, 'Yoli', '20 Yolis de 600 ml', 300),
(43, 'Ingreso', 2020, 'Julio', 13, 'Agua de jamaica', '10 Aguas de jamaica', 150),
(44, 'Ingreso', 2020, 'Julio', 13, 'Agua de naranja', '19 Aguas de naranja', 285),
(45, 'Egreso', 2020, 'Julio', 13, 'Gas', 'El gas para toda la semana', 500),
(46, 'Egreso', 2020, 'Julio', 13, 'Pollo', '30 Pechugas de pollo', 2700),
(47, 'Egreso', 2020, 'Julio', 13, 'Telera', '80 Teleras', 240),
(48, 'Egreso', 2020, 'Julio', 13, 'Crema', '2 Cremas Lala de 4L', 340),
(49, 'Egreso', 2020, 'Julio', 13, 'Queso rallado', '3kl de queso rallado', 300),
(50, 'Egreso', 2020, 'Julio', 13, 'Queso amarillo', '1.57 kg de queso amarillo', 140),
(51, 'Egreso', 2020, 'Julio', 13, 'Lechuga', '5 piezas de lechuga fresca', 100),
(52, 'Egreso', 2020, 'Julio', 13, 'Jitomate', '5 kg de jitomate', 80),
(53, 'Egreso', 2020, 'Julio', 13, 'Tomate verde', '3 kg de tomate verde', 66),
(54, 'Egreso', 2020, 'Julio', 13, 'Cebolla', '5 kg de cebolla', 110),
(55, 'Egreso', 2020, 'Julio', 13, 'Cilantro', '1 kg de cilantro', 25),
(56, 'Egreso', 2020, 'Julio', 13, 'Carne de cecina', '7 kg de carne de cecina', 1505),
(57, 'Egreso', 2020, 'Julio', 13, 'Carne para barbacoa', '5 kg de carne para barbacoa', 900),
(58, 'Ingreso', 2020, 'Julio', 14, 'Tacos de barbacoa', '42 órdenes', 1470),
(59, 'Ingreso', 2020, 'Julio', 14, 'Tacos de cecina', '38 órdenes', 1330),
(60, 'Ingreso', 2020, 'Julio', 14, 'Tacos dorados', '23 órdenes', 805),
(61, 'Ingreso', 2020, 'Julio', 14, 'Hamburguesa', '30 órdenes', 1050),
(62, 'Ingreso', 2020, 'Julio', 14, 'Enchiladas', '19 órdenes', 665),
(63, 'Ingreso', 2020, 'Julio', 14, 'Tortas', '35 órdenes', 1225),
(64, 'Ingreso', 2020, 'Julio', 14, 'Burritos', '31 órdenes', 1085),
(65, 'Ingreso', 2020, 'Julio', 14, 'Gringas', '27 órdenes', 945),
(66, 'Ingreso', 2020, 'Julio', 14, 'Agua', '37 Aguas Ciel de 600 ml', 555),
(67, 'Ingreso', 2020, 'Julio', 14, 'Coca cola', '45 Coca colas de 600 ml', 675),
(68, 'Ingreso', 2020, 'Julio', 14, 'Fanta', '24 Fantas de 600 ml', 360),
(69, 'Ingreso', 2020, 'Julio', 14, 'Yoli', '34 Yolis de 600 ml', 510),
(70, 'Ingreso', 2020, 'Julio', 14, 'Agua de jamaica', '47 Aguas de jamaica', 705),
(71, 'Ingreso', 2020, 'Julio', 14, 'Agua de naranja', '40 Aguas de naranja', 600),
(72, 'Ingreso', 2020, 'Julio', 14, 'Agua de horchata', '24 Aguas de horchata', 360),
(73, 'Ingreso', 2020, 'Julio', 13, 'Agua de horchata', '38 Aguas de horchata', 570),
(74, 'Ingreso', 2020, 'Julio', 13, 'Manzanita Sol', '26 Manzanita Sol de 600 ml', 390),
(75, 'Ingreso', 2020, 'Julio', 14, 'Manzanita Sol', '30 Manzanita Sol de 600 ml', 450),
(76, 'Egreso', 2020, 'Julio', 14, 'Pollo', '29 Pechugas de pollo	', 2610),
(77, 'Egreso', 2020, 'Julio', 14, 'Telera', '70 Teleras', 210),
(78, 'Egreso', 2020, 'Julio', 14, 'Queso rallado', '3kl de queso rallado', 300),
(79, 'Egreso', 2020, 'Julio', 14, 'Queso amarillo', '2 quesos amarillos de 1.57 kg', 280),
(80, 'Egreso', 2020, 'Julio', 14, 'Lechuga', '6 piezas de lechuga fresca', 120),
(81, 'Egreso', 2020, 'Julio', 14, 'Jitomate', '6 kg de jitomate', 96),
(82, 'Egreso', 2020, 'Julio', 14, 'Tomate verde', '5 kg de tomate verde', 110),
(83, 'Egreso', 2020, 'Julio', 14, 'Cebolla', '5 kg de cebolla	', 110),
(84, 'Egreso', 2020, 'Julio', 14, 'Cilantro', '3 kg de cilantro', 75),
(85, 'Egreso', 2020, 'Julio', 14, 'Carne de cecina', '7 kg de carne de cecina', 1505),
(86, 'Egreso', 2020, 'Julio', 14, 'Carne para barbacoa', '6 kg de carne para barbacoa', 1080),
(87, 'Ingreso', 2020, 'Julio', 15, 'Tacos de barbacoa', '30 órdenes', 1050),
(88, 'Ingreso', 2020, 'Julio', 15, 'Tacos de cecina', '24 órdenes', 840),
(89, 'Ingreso', 2020, 'Julio', 15, 'Tacos dorados', '33 órdenes', 1155),
(90, 'Ingreso', 2020, 'Julio', 15, 'Hamburguesa', '40 órdenes', 1400),
(92, 'Ingreso', 2020, 'Julio', 15, 'Enchiladas', '28 órdenes', 980),
(93, 'Ingreso', 2020, 'Julio', 15, 'Tortas', '38 órdenes', 1330),
(94, 'Ingreso', 2020, 'Julio', 15, 'Burritos', '30 órdenes', 1050),
(95, 'Ingreso', 2020, 'Julio', 15, 'Gringas', '26 órdenes', 910),
(96, 'Ingreso', 2020, 'Julio', 15, 'Agua', '20 Aguas Ciel de 600 ml	', 300),
(97, 'Ingreso', 2020, 'Julio', 15, 'Agua de horchata', '24 Aguas de horchata', 360),
(98, 'Ingreso', 2020, 'Julio', 15, 'Agua de jamaica', '30 Aguas de jamaica', 450),
(99, 'Ingreso', 2020, 'Julio', 15, 'Agua de naranja', '32 Aguas de naranja', 480),
(100, 'Ingreso', 2020, 'Julio', 15, 'Coca cola', '42 Coca colas de 600 ml	', 630),
(101, 'Ingreso', 2020, 'Julio', 15, 'Fanta', '36 Fantas de 600 ml	', 540),
(102, 'Ingreso', 2020, 'Julio', 15, 'Yoli', '28 Yolis de 600 ml	', 420),
(103, 'Ingreso', 2020, 'Julio', 15, 'Manzanita Sol', '26 Manzanita Sol de 600 ml', 390),
(104, 'Egreso', 2020, 'Julio', 15, 'Pollo', '20 Pechugas de pollo	', 1800),
(105, 'Egreso', 2020, 'Julio', 15, 'Telera', '100 Teleras	', 300),
(106, 'Egreso', 2020, 'Julio', 15, 'Crema', '2 Cremas Lala de 4L', 340),
(107, 'Egreso', 2020, 'Julio', 15, 'Queso rallado', '3kl de queso rallado', 300),
(108, 'Egreso', 2020, 'Julio', 15, 'Queso amarillo', '2 quesos amarillos de 1.57 kg', 280),
(109, 'Egreso', 2020, 'Julio', 15, 'Lechuga', '5 piezas de lechuga fresca', 100),
(110, 'Egreso', 2020, 'Julio', 15, 'Jitomate', '5 kg de jitomate', 80),
(111, 'Egreso', 2020, 'Julio', 15, 'Tomate verde', '4 kg de tomate verde', 88),
(112, 'Egreso', 2020, 'Julio', 15, 'Cebolla', '5 kg de cebolla', 110),
(113, 'Egreso', 2020, 'Julio', 15, 'Cilantro', '3 kg de cilantro', 75),
(114, 'Egreso', 2020, 'Julio', 15, 'Carne de cecina', '7 kg de carne de cecina', 1505),
(115, 'Egreso', 2020, 'Julio', 15, 'Carne para barbacoa', '5 kg de carne para barbacoa', 900),
(116, 'Ingreso', 2020, 'Julio', 16, 'Tacos de barbacoa', '20 órdenes', 700),
(117, 'Ingreso', 2020, 'Julio', 16, 'Tacos de cecina', '23 órdenes', 805),
(118, 'Ingreso', 2020, 'Julio', 16, 'Tacos dorados', '28 órdenes', 980),
(119, 'Ingreso', 2020, 'Julio', 16, 'Hamburguesa', '30 órdenes', 1050),
(120, 'Ingreso', 2020, 'Julio', 16, 'Enchiladas', '26 órdenes', 910),
(121, 'Ingreso', 2020, 'Julio', 16, 'Tortas', '30 órdenes', 1050),
(122, 'Ingreso', 2020, 'Julio', 16, 'Burritos', '24 órdenes', 840),
(123, 'Ingreso', 2020, 'Julio', 16, 'Gringas', '26 órdenes', 910),
(124, 'Ingreso', 2020, 'Julio', 16, 'Agua', '20 Aguas Ciel de 600 ml	', 300),
(125, 'Ingreso', 2020, 'Julio', 16, 'Agua de horchata', '25 Aguas de horchata	', 375),
(126, 'Ingreso', 2020, 'Julio', 16, 'Agua de jamaica', '33 Aguas de jamaica', 495),
(127, 'Ingreso', 2020, 'Julio', 16, 'Agua de naranja', '28 Aguas de naranja', 420),
(128, 'Ingreso', 2020, 'Julio', 16, 'Coca cola', '40 Coca colas de 600 ml	', 600),
(129, 'Ingreso', 2020, 'Julio', 16, 'Yoli', '30 Yolis de 600 ml', 450),
(130, 'Ingreso', 2020, 'Julio', 16, 'Fanta', '23 Fantas de 600 ml', 345),
(131, 'Ingreso', 2020, 'Julio', 16, 'Manzanita Sol', '34 Manzanita Sol de 600 ml', 510),
(132, 'Egreso', 2020, 'Julio', 16, 'Pollo', '30 Pechugas de pollo', 2700),
(133, 'Egreso', 2020, 'Julio', 16, 'Telera', '80 Teleras', 240),
(134, 'Egreso', 2020, 'Julio', 16, 'Queso rallado', '3kl de queso rallado', 300),
(135, 'Egreso', 2020, 'Julio', 16, 'Queso amarillo', '2 quesos amarillos de 1.57 kg', 280),
(136, 'Egreso', 2020, 'Julio', 16, 'Lechuga', '5 piezas de lechuga fresca', 100),
(137, 'Egreso', 2020, 'Julio', 16, 'Jitomate', '5 kg de jitomate', 80),
(138, 'Egreso', 2020, 'Julio', 16, 'Tomate verde', '3 kg de tomate verde', 66),
(139, 'Egreso', 2020, 'Julio', 16, 'Cebolla', '7 kg de cebolla', 154),
(140, 'Egreso', 2020, 'Julio', 16, 'Cilantro', '2 kg de cilantro', 50),
(141, 'Egreso', 2020, 'Julio', 16, 'Carne de cecina', '7 kg de carne de cecina', 1505),
(142, 'Egreso', 2020, 'Julio', 16, 'Carne para barbacoa', '5 kg de carne para barbacoa', 900),
(143, 'Ingreso', 2020, 'Julio', 17, 'Tacos de barbacoa', '28 órdenes', 980),
(144, 'Ingreso', 2020, 'Julio', 17, 'Tacos de cecina', '26 órdenes', 910),
(145, 'Ingreso', 2020, 'Julio', 17, 'Tacos dorados', '34 órdenes', 1190),
(146, 'Ingreso', 2020, 'Julio', 17, 'Hamburguesa', '30 órdenes', 1050),
(147, 'Ingreso', 2020, 'Julio', 17, 'Enchiladas', '24 órdenes', 840),
(148, 'Ingreso', 2020, 'Julio', 17, 'Tortas', '30 órdenes', 1050),
(149, 'Ingreso', 2020, 'Julio', 17, 'Burritos', '26 órdenes', 910),
(150, 'Ingreso', 2020, 'Julio', 17, 'Gringas', '20 órdenes', 700),
(151, 'Ingreso', 2020, 'Julio', 17, 'Agua', '20 Aguas Ciel de 600 ml', 300),
(152, 'Ingreso', 2020, 'Julio', 17, 'Agua de horchata', '16 Aguas de horchata', 240),
(153, 'Ingreso', 2020, 'Julio', 17, 'Agua de jamaica', '37 Aguas de jamaica', 555),
(154, 'Ingreso', 2020, 'Julio', 17, 'Agua de naranja', '41 Aguas de naranja', 615),
(155, 'Egreso', 2020, 'Julio', 17, 'Pollo', '30 Pechugas de pollo', 2700),
(156, 'Egreso', 2020, 'Julio', 17, 'Telera', '100 Teleras', 300),
(157, 'Egreso', 2020, 'Julio', 17, 'Crema', 'Crema Lala de 4L', 170),
(158, 'Egreso', 2020, 'Julio', 17, 'Queso rallado', '4kl de queso rallado', 400),
(159, 'Egreso', 2020, 'Julio', 17, 'Queso amarillo', '1.57 kg de queso amarillo', 140),
(160, 'Egreso', 2020, 'Julio', 17, 'Lechuga', '5 piezas de lechuga fresca', 100),
(161, 'Egreso', 2020, 'Julio', 17, 'Jitomate', '5 kg de jitomate', 80),
(162, 'Egreso', 2020, 'Julio', 17, 'Tomate verde', '3 kg de tomate verde', 66),
(163, 'Egreso', 2020, 'Julio', 17, 'Cebolla', '5 kg de cebolla', 110),
(164, 'Egreso', 2020, 'Julio', 17, 'Cilantro', '1 kg de cilantro', 25),
(165, 'Egreso', 2020, 'Julio', 17, 'Carne de cecina', '7 kg de carne de cecina', 1505),
(166, 'Egreso', 2020, 'Julio', 17, 'Carne para barbacoa', '6 kg de carne para barbacoa', 1080),
(167, 'Egreso', 2020, 'Julio', 13, 'Sueldo 12 h', '4 empleados', 1000),
(168, 'Egreso', 2020, 'Julio', 14, 'Sueldo 12 h', '4 empleados', 1000),
(169, 'Egreso', 2020, 'Julio', 15, 'Sueldo 12 h', '4 empleados', 1000),
(170, 'Egreso', 2020, 'Julio', 16, 'Sueldo 12 h', '4 empleados', 1000),
(171, 'Egreso', 2020, 'Julio', 17, 'Sueldo 12 h', '4 empleados', 1000),
(172, 'Egreso', 2020, 'Julio', 13, 'Sueldo 7 h', '3 empleados', 450),
(173, 'Egreso', 2020, 'Julio', 14, 'Sueldo 7 h', '3 empleados', 450),
(174, 'Egreso', 2020, 'Julio', 15, 'Sueldo 7 h', '3 empleados', 450),
(175, 'Egreso', 2020, 'Julio', 16, 'Sueldo 7 h', '3 empleados', 450),
(176, 'Egreso', 2020, 'Julio', 17, 'Sueldo 7 h', '3 empleados', 450);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `year`
--

CREATE TABLE `year` (
  `id_year` int(11) NOT NULL,
  `nombre_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `year`
--

INSERT INTO `year` (`id_year`, `nombre_year`) VALUES
(1, 2019),
(2, 2020);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`id_dia`);

--
-- Indices de la tabla `in_en`
--
ALTER TABLE `in_en`
  ADD PRIMARY KEY (`id_in_en`);

--
-- Indices de la tabla `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`id_mes`);

--
-- Indices de la tabla `principal`
--
ALTER TABLE `principal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id_year`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dia`
--
ALTER TABLE `dia`
  MODIFY `id_dia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `in_en`
--
ALTER TABLE `in_en`
  MODIFY `id_in_en` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mes`
--
ALTER TABLE `mes`
  MODIFY `id_mes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `principal`
--
ALTER TABLE `principal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de la tabla `year`
--
ALTER TABLE `year`
  MODIFY `id_year` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
