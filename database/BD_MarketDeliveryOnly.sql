-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2020 a las 00:41:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marketline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(14, 'Erica', 'aerica@gmail.com', '$2y$10$lPRjU5U.HRT7jQhOe0AmB.g2nrNnG4tzpT3infz5LkUnk7d/aEf2W', '0'),
(16, 'Gerson ', 'gerson@gmail.com', '$2y$10$xoie3q35TB4926ohT9ecOuewVkseucHepep7kzZxfguy2bMBpaeRy', '0'),
(21, 'ERICA ARROSTICO', 'aerica1998@gmail.com', '$2y$10$5oI4fxpd.1Y77/mCaIGpTu2owI4xzTaYpIsxxYHA8d/u/SDja45.m', '0'),
(24, 'luzmila', 'luzmila_0609@hotmail.com', '$2y$10$r9sIvqupWG1JoprSoRChuegNZzPNqHvZDuW2VcGk5btZag3lqQ7d.', '0'),
(25, 'Gloria', 'glorymarquezhn@gmail.com', '$2y$10$xtBRbbfS1//CGwyFKEoUQep0j/FWQQGodmIzGPXpYL.SNZug2N25.', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'ARIEL'),
(2, 'COCA COLA'),
(3, 'INCA KOLA'),
(4, 'COSTEÑO'),
(5, 'GLORIA'),
(7, 'DON VITTORIO'),
(11, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(50, 1, '::1', 3, 1),
(52, 8, '::1', 3, 1),
(53, 21, '::1', 3, 1),
(54, 22, '::1', 5, 1),
(55, 46, '::1', 5, 1),
(56, 62, '::1', 5, 1),
(58, 50, '::1', 6, 1),
(64, 19, '::1', 8, 1),
(65, 1, '::1', 8, 1),
(82, 1, '::1', 4, 1),
(96, 4, '::1', 10, 1),
(98, 4, '::1', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'ABARROTES'),
(3, 'FRUTAS Y VERDURAS'),
(4, 'LACTEOS Y HUEVOS '),
(5, 'BEBIDAS, CERVEZAS Y LICORES '),
(6, 'CARNES AVES Y PESCADOS'),
(12, 'CUIDADO PERSONAL'),
(13, 'CUIDADO DEL BEBÉ'),
(14, 'LIMPIEZA'),
(16, 'MASCOTAS'),
(17, 'LIBRERIA'),
(18, 'DULCES'),
(25, 'OTROS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `contraseña` varchar(300) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `direccion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `nombre`, `apellidos`, `email`, `contraseña`, `celular`, `direccion`) VALUES
(1, 'Gorge', 'Marquez', 'gorgemarquez@gmail.com', 'gorge2020', '994745814', 'Callao - Callao- Callao'),
(2, 'JUAN', 'ARROZTICO', 'juan2020@gmail.com', 'juan 2020', '989898989', 'callao- callao');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'completado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` decimal(5,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 11, 'Spaghetti MOLITALIA Bolsa 500g', '4.30', 50, 'Spaghetti MOLITALIA Bolsa 500g', '1591308488_molitalia.PNG', 'Spaghetti MOLITALIA Bolsa 500g'),
(2, 2, 7, 'Spaghetti DON VITTORIO Bolsa 1Kg', '4.90', 5000, 'Spaghetti DON VITTORIO Bolsa 1Kg', '1591308179_fideo1.PNG', 'apple, iphone, mobile'),
(4, 2, 11, 'Fideo Spaghetti NICOLINI Bolsa 1kg', '3.00', 100, 'Fideo Spaghetti NICOLINI Bolsa 1kg', '1591308833_ta1.PNG', 'Fideo Spaghetti NICOLINI Bolsa 1kg'),
(6, 2, 11, 'Sal Marina EMSAL Mesa Bolsa 1Kg', '2.00', 100, 'Sal Marina EMSAL Mesa Bolsa 1Kg', '1591309070_sal1.JPG', 'Sal Marina EMSAL Mesa Bolsa 1Kg'),
(7, 2, 11, 'FLORIDA Filete de Atún  Lata 170g', '5.00', 3, 'FLORIDA Filete de Atún  Lata 170g', '1591310298_AT.JPG', 'FLORIDA Filete de Atún  Lata 170g'),
(8, 2, 11, 'NESCAFÉ  Café Tradición Frasco 200g', '22.00', 3, 'NESCAFÉ  Café Tradición Frasco 200g', '1591309544_CAFE.JPG', 'NESCAFÉ  Café Tradición Frasco 200g'),
(9, 2, 4, 'Arroz COSTEÑO 1kg', '3.00', 3, 'Arroz COSTEÑO 1kg', '1591307350_arroz1.jpg', 'Arroz'),
(11, 18, 11, 'INKA CHIPS Piqueo Yucas fritas Bolsa 130Gr', '4.00', 50000, 'INKA CHIPS Piqueo Yucas fritas Bolsa 130Gr', '1591310031_SN.JPG', 'INKA CHIPS Piqueo Yucas fritas Bolsa 130Gr'),
(12, 2, 11, 'NICOLINI Aceite Vegetal Botella 1L', '5.00', 50000, 'NICOLINI Aceite Vegetal Botella 1L', '1591310185_ACEITE.JPG', 'NICOLINI Aceite Vegetal Botella 1L'),
(14, 2, 11, 'FREJOL 1kg', '4.00', 123, 'FREJOL de alta calidad', '1591330422_frejol.PNG', 'abarrotes'),
(18, 3, 11, 'Naranja para Jugo Malla 1Kg', '3.00', 1000, 'Naranja para Jugo Malla 1Kg', '1591904149_n1.PNG', 'Naranja para Jugo Malla 1Kg'),
(19, 3, 11, 'Mandarina Malla 2Kg', '5.00', 1000, 'Mandarina Malla 2Kg', '1591904267_m1.PNG', 'Mandarina Malla 2Kg'),
(20, 3, 11, 'Piña Golden Malla 2.5Kg', '6.00', 1000, 'Piña Golden Malla 2.5Kg', '1591904339_p1.PNG', 'Piña Golden Malla 2.5Kg'),
(21, 3, 11, 'Papaya Bolsa 3Kg', '6.00', 1000, 'Papaya Bolsa 3Kg', '1591904399_papaya1.PNG', 'Papaya Bolsa 3Kg'),
(22, 3, 11, ' Manzana Delicia Malla 2Kg', '3.00', 1000, 'Manzana Delicia Malla 2Kg', '1591904468_manzana.PNG', 'Manzana '),
(23, 3, 11, '  Melón Coquito Malla 2.5Kg', '3.00', 1000, 'Melón Coquito Malla 2.5Kg', '1591904568_melocton.PNG', 'melon'),
(24, 3, 11, 'Zapallo Macre', '4.00', 1000, 'Zapallo Macre', '1591904619_zapallo.PNG', 'Zapallo Macre'),
(25, 3, 11, 'Limón Ácido Malla 500g', '3.00', 1000, 'Limón Ácido Malla 500g', '1591904664_limon.PNG', 'Limón Ácido Malla 500g'),
(26, 3, 11, 'Ajo Entero Bolsa 500g', '15.00', 1000, 'Ajo Entero Bolsa 500g', '1591904709_ajo.PNG', 'Ajo Entero Bolsa 500g'),
(27, 3, 11, 'Col Corazón', '6.00', 1000, 'Col Corazón', '1591904764_lechuga.PNG', 'Col Corazón'),
(28, 3, 11, 'Zanahoria Entera Malla 2Kg', '5.00', 1000, 'Zanahoria Entera Malla 2Kg', '1591904801_zanahoria.PNG', 'Zanahoria Entera Malla 2Kg'),
(29, 3, 11, 'Pepinillo Bolsa 1Kg', '3.00', 1000, 'Pepinillo Bolsa 1Kg', '1591904852_pepino.PNG', 'Pepinillo Bolsa 1Kg'),
(30, 3, 11, 'Tomate Italiano LA FLORENCIA Bolsa 1Kg', '7.00', 1000, 'Tomate Italiano LA FLORENCIA Bolsa 1Kg', '1591904888_tomate.PNG', 'Tomate Italiano LA FLORENCIA Bolsa 1Kg'),
(31, 4, 11, 'Huevos Pardos LA CALERA Paquete 30un', '14.00', 1000, 'Huevos Pardos LA CALERA Paquete 30un', '1591905584_huevo.PNG', 'Huevos Pardos LA CALERA Paquete 30un'),
(32, 4, 11, 'Huevos de Codorniz LA CALERA Bandeja 18un', '5.00', 1000, 'Huevos de Codorniz LA CALERA Bandeja 18un', '1591905658_huevo1.PNG', 'Huevos de Codorniz LA CALERA Bandeja 18un'),
(33, 4, 11, 'Huevos LA CALERA Súper Jumbo Paquete 10un', '8.00', 1000, 'Huevos LA CALERA Súper Jumbo Paquete 10un', '1591905720_huevo3.PNG', '101'),
(34, 4, 5, 'Leche Evaporada GLORIA Azul Paquete 6un Lata 400g', '18.00', 1000, 'Leche Evaporada GLORIA Azul Paquete 6un Lata 400g', '1591905817_leche1.PNG', '0011'),
(35, 4, 11, 'Leche Evaporada LAIVE Entera Caja 350g Paquete 6un', '17.00', 1000, 'Leche Evaporada LAIVE Entera Caja 350g Paquete 6un', '1591905871_leche2.PNG', '01'),
(36, 4, 11, 'Leche Evaporada LAIVE Bolsitarro 400g', '3.00', 1000, 'Leche Evaporada LAIVE Bolsitarro 400g', '1591905953_leche3.PNG', 'Leche Evaporada LAIVE Bolsitarro 400g'),
(37, 4, 5, 'Leche Evaporada GLORIA Azul Lata 400g ', '3.00', 100, 'Leche Evaporada GLORIA Azul Lata 400g\r\n', '1591906000_leche4.PNG', 'Leche Evaporada GLORIA Azul Lata 400g 3'),
(38, 5, 11, 'Agua sin Gas CIELO Botella 2.5L', '2.00', 1000, 'Agua sin Gas CIELO Botella 2.5L', '1591906607_AGUA1.PNG', 'Agua sin Gas CIELO Botella 2.5L'),
(39, 5, 11, 'Agua Mineral SAN LUIS sin Gas Botella 2.5L', '2.00', 1000, 'Agua Mineral SAN LUIS sin Gas Botella 2.5L', '1591906653_AGUA2.PNG', 'Agua Mineral SAN LUIS sin Gas Botella 2.5L'),
(40, 5, 11, 'Agua Mineral SAN LUIS sin Gas Botella 1L Paquete 6un', '12.00', 1000, 'Agua Mineral SAN LUIS sin Gas Botella 1L Paquete 6un', '1591906694_AGUA3.PNG', 'AGUA'),
(41, 5, 2, 'Gaseosa COCA COLA Botella 1.5L Paquete 2un', '10.00', 1000, 'Gaseosa COCA COLA Botella 1.5L Paquete 2un', '1591906749_COCA1.PNG', 'Gaseosa COCA COLA Botella 1.5L Paquete 2un'),
(42, 5, 3, 'Gaseosa INCA KOLA 1.5L Paquete 2un', '10.00', 1000, 'Gaseosa INCA KOLA sin Azúcar Botella 1.5L Paquete 2un', '1591906885_ONCA1.PNG', 'Gaseosa INCA KOLA sin Azúcar Botella 1.5L Paquete 2un'),
(43, 5, 11, 'Cerveza PILSEN 12Pack Lata 355ml', '37.00', 1000, 'Cerveza PILSEN 12Pack Lata 355ml', '1591906930_PILSEN.PNG', 'Cerveza PILSEN 12Pack Lata 355ml'),
(44, 5, 3, 'Gaseosa INCA KOLA + COCA COLA + FANTA Botella 3L Paquete 3un', '22.00', 1000, 'Gaseosa INCA KOLA + COCA COLA + FANTA Botella 3L Paquete 3un', '1591906986_MIXCOCA.PNG', 'Gaseosa INCA KOLA + COCA COLA + FANTA Botella 3L Paquete 3un'),
(45, 5, 5, 'Bebida GLORIA Naranja Caja 1L', '3.00', 1000, 'Bebida GLORIA Naranja Caja 1L', '1591907027_GLORIA1.PNG', 'Bebida GLORIA Naranja Caja 1L'),
(46, 5, 11, 'Cerveza CORONA Extra 6 Pack Botella 355ml', '26.00', 1000, 'Cerveza CORONA Extra 6 Pack Botella 355ml', '1591907066_CORONA.PNG', 'Cerveza CORONA Extra 6 Pack Botella 355ml'),
(47, 5, 11, 'Vino MARQUÉS DE RISCAL Tinto Próximo Botella 750ml ', '29.00', 1000, 'Vino MARQUÉS DE RISCAL Tinto Próximo Botella 750ml', '1591907105_VINO.PNG', 'Vino MARQUÉS DE RISCAL Tinto Próximo Botella 750ml 29'),
(48, 6, 11, 'Carne Molida de Res EL BUEN CORTE', '15.00', 1000, 'Carne Molida de Res EL BUEN CORTE', '1591907549_CARNE1.PNG', 'Carne Molida de Res EL BUEN CORTE'),
(49, 6, 11, 'Lomo de Cerdo OTTO KUNZ', '30.00', 1000, 'Lomo de Cerdo OTTO KUNZ', '1591907592_CARNE2.PNG', 'Lomo de Cerdo OTTO KUNZ'),
(50, 6, 11, 'Pollo Fresco con Menudencia', '17.00', 1000, 'Pollo Fresco con Menudencia', '1591907635_POLLO1.PNG', 'Pollo Fresco con Menudencia'),
(51, 6, 11, 'Pollo Fresco con Menudencia Trozado en 8 Piezas', '18.00', 10000, 'Pollo Fresco con Menudencia Trozado en 8 Piezas', '1591907674_POLLO2.PNG', 'Pollo Fresco con Menudencia Trozado en 8 Piezas'),
(52, 12, 11, 'Crema Dental COLGATE Triple Protección 60ml-6un', '16.00', 1000, 'Crema Dental COLGATE Triple Protección 60ml-6un', '1591908082_COLGATE.PNG', 'Crema Dental COLGATE Triple Protección 60ml-6un'),
(53, 12, 11, 'Jabón de Tocador DOVE  90g Paquete 3un ', '6.00', 1000, 'Jabón de Tocador DOVE  90g Paquete 3un\r\n', '1591908117_JABON1.PNG', 'Jabón de Tocador DOVE  90g Paquete 3un '),
(54, 12, 11, 'Toalla Higiénica NOSOTRAS Invisible Paquete 24un', '999.99', 1000, 'Toalla Higiénica NOSOTRAS Invisible Paquete 24un', '1591908206_NOSOTRAS.PNG', 'Toalla Higiénica NOSOTRAS Invisible Paquete 24un'),
(55, 12, 11, 'Shampoo HEAD & SHOULDERS Limpieza Renovadora 1L', '33.00', 1000, 'Shampoo HEAD & SHOULDERS Limpieza Renovadora 1L', '1591908236_SHAMPO.PNG', 'Shampoo HEAD & SHOULDERS Limpieza Renovadora 1L'),
(56, 12, 11, 'Desodorante AXE Collison Spray 150ml', '10.00', 1000, 'Desodorante AXE Collison Spray 150ml', '1591908282_ECO.PNG', 'Desodorante AXE Collison Spray 150ml '),
(57, 13, 11, 'Pañales para Bebé HUGGIES Natural  100 Días Talla P 50un', '30.00', 1000, 'Pañales para Bebé HUGGIES Natural  100 Días Talla P 50un', '1591908772_PAMPER.PNG', '00111'),
(59, 13, 11, 'Pañales para Bebé BABYSEC Talla XG Paquete 92un', '75.00', 10000, 'Pañales para Bebé BABYSEC Talla XG Paquete 92un', '1591908860_BABY.PNG', '0011'),
(60, 14, 11, 'Detergente en Polvo MARSELLA Aromaterapia Bolsa 780g', '7.00', 1000, 'Detergente en Polvo MARSELLA Aromaterapia Bolsa 780g', '1591909318_MARCEELLA.PNG', 'Detergente en Polvo MARSELLA Aromaterapia Bolsa 780g'),
(61, 14, 11, 'Detergente en Polvo BOLIVAR Active Dúo Bolsa 780g', '8.00', 1000, 'Detergente en Polvo BOLIVAR Active Dúo Bolsa 780g', '1591909352_BOLI.PNG', 'Detergente en Polvo BOLIVAR Active Dúo Bolsa 780g'),
(62, 14, 11, 'Detergente en Polvo ACE Limón Bolsa 800g', '8.00', 1000, 'Detergente en Polvo ACE Limón Bolsa 800g', '1591909390_ACE.PNG', 'Detergente en Polvo ACE Limón Bolsa 800g'),
(64, 14, 11, 'Jabón para Ropa BOLÍVAR Baby & Kids Barra 210g', '2.00', 1000, 'Jabón para Ropa BOLÍVAR Baby & Kids Barra 210g', '1591909482_JABON.PNG', 'Jabón para Ropa BOLÍVAR Baby & Kids Barra 210g'),
(65, 14, 11, 'Suavizante DOWNY 750 ML', '8.00', 1000, 'Suavizante DOWNY 750 ML', '1591909510_DAW.PNG', 'Suavizante DOWNY 750 ML'),
(66, 16, 11, 'Comida para Perros RICOCAN 280g', '5.00', 1000, 'Comida para Perros RICOCAN 280g', '1591909904_RICO.PNG', 'Comida para Perros RICOCAN 280g'),
(67, 16, 11, 'Comida para Perros DOG CHOW 100g', '3.00', 10000, 'Comida para Perros DOG CHOW 100g', '1591909951_DOG.PNG', 'Comida para Perros DOG CHOW 100g'),
(68, 16, 11, 'Comida para Gatos FELIX 85g', '3.00', 1000, 'Comida para Gatos FELIX 85g', '1591909996_GATO.PNG', 'Comida para Gatos FELIX 85g'),
(69, 17, 11, 'Papel Bond CLASS & WORK A4 Paquete 500 Hojas', '11.00', 1000, 'Papel Bond CLASS & WORK A4 Paquete 500 Hojas', '1591910280_PAPEL.PNG', 'Papel Bond CLASS & WORK A4 Paquete 500 Hojas'),
(70, 17, 11, 'Papel Bond STANDFORD A4 Premium 80g', '14.00', 10000, 'Papel Bond STANDFORD A4 Premium 80g', '1591910333_PAPEL2.PNG', 'Papel Bond STANDFORD A4 Premium 80g'),
(71, 17, 11, 'Cartulina ARTI CREATIVO Negro', '2.00', 1000, 'Cartulina ARTI CREATIVO Negro', '1591910369_CARTU.PNG', 'Cartulina ARTI CREATIVO Negro'),
(72, 17, 11, 'Crayones de Cera FABER CASTELL Jumbo Estuche 12un', '3.00', 1000, 'Crayones de Cera FABER CASTELL Jumbo Estuche 12un', '1591910412_FAVER.PNG', 'Crayones de Cera FABER CASTELL Jumbo Estuche 12un'),
(73, 17, 11, 'Goma ARTESCO Frasco 250g', '2.00', 1000, 'Goma ARTESCO Frasco 250g', '1591910447_GOMA.PNG', 'Goma ARTESCO Frasco 250g'),
(74, 17, 11, 'Goma ARTESCO Frasco 250g', '2.00', 1000, 'Goma ARTESCO Frasco 250g', '1591910447_GOMA.PNG', 'Goma ARTESCO Frasco 250g'),
(75, 18, 11, 'Gomas dulces AMBROSOLI Bolsa 240Gr', '4.00', 1000, 'Gomas dulces AMBROSOLI Bolsa 240Gr', '1591910631_DULCE1.PNG', 'Gomas dulces AMBROSOLI Bolsa 240Gr'),
(76, 18, 11, 'Galletas TENTACIÓN con Sabor a Chocolate Paquete 6un', '3.00', 1000, 'Galletas TENTACIÓN con Sabor a Chocolate Paquete 6un', '1591910683_GALLETA1.PNG', 'Galletas TENTACIÓN con Sabor a Chocolate Paquete 6un'),
(78, 18, 11, 'Galletas MARGARITA Paquete 6un', '3.00', 10000, 'Galletas MARGARITA Paquete 6un', '1591910721_MARHA 1.PNG', 'Galletas MARGARITA Paquete 6un'),
(79, 18, 11, 'Chocolate ', '4.00', 1000, 'Chocolate ', '1592348141_ch.jpeg', 'Chocolate '),
(96, 2, 4, 'Quinua COSTEÑO Bolsa 500g', '8.50', 100, 'quinua', '1594079581_quinua.PNG', 'a200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(9) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'Erica', 'Arrostico', 'aerica1998@gmail.com', 'b7205c9166e0133c18e1bbcca031ff19', '994745814', 'LIMA - LIMA - LIMA', 'AV CERCADO '),
(5, 'YOLISA', 'LOMBARDI', 'yolisa0609@hotmail.com', '1ab5fb6f239e6f82958bfbdde6334cf8', '994745814', 'lima lima lima', 'cercado de '),
(6, 'Gerson', 'VILCHERREZ VERA', 'gerson@gmail.com', 'e45952ffdabac9549bcd408b188197f6', '943832522', 'CHORRILLOS', 'VILLA MARIN'),
(8, 'GLORIA', 'MARQUEZ HUAMAN', 'glorymarquezhn@gmail.com', '9fd9a54c894d63428f2c9f94b80798c3', '994745814', 'CANTA CALLAO - CALLAO', 'JR RIOBAMBA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indices de la tabla `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
