-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2025 a las 19:00:38
-- Versión del servidor: 8.0.43
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parrilla51`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_historial_pedido` (IN `p_id_pedido` INT, IN `p_estado` VARCHAR(50))   BEGIN
    INSERT INTO historial_pedidos (id_pedido, estado, fecha_cambio)
    VALUES (p_id_pedido, p_estado, NOW());
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alertas`
--

CREATE TABLE `alertas` (
  `id_alerta` int NOT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` enum('stock','pedido','reserva','usuario','producto') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alertas`
--

INSERT INTO `alertas` (`id_alerta`, `mensaje`, `fecha`, `tipo`) VALUES
(1, '👤 Nuevo usuario registrado: Andrés Arias', '2025-09-03 19:07:43', 'usuario'),
(2, '👤 Nuevo usuario registrado: Carlos Ramírez', '2025-09-03 19:07:43', 'usuario'),
(3, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-03 19:17:39', 'usuario'),
(4, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-03 19:32:13', 'usuario'),
(5, '📅 Se creó una reserva para el 2025-09-14 a las 18:00:00 en la mesa 1', '2025-09-14 17:36:49', 'reserva'),
(6, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-14 18:50:59', 'usuario'),
(7, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-14 18:52:55', 'usuario'),
(8, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-14 18:56:01', 'usuario'),
(9, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-14 19:00:49', 'usuario'),
(10, '👤 Nuevo usuario registrado: Carlos Ramírez', '2025-09-14 19:02:31', 'usuario'),
(11, '👤 Nuevo usuario registrado: Carlos Ramírez', '2025-09-15 18:02:09', 'usuario'),
(12, '📅 Se creó una reserva para el 2025-09-18 a las 06:59:00 en la mesa 1', '2025-09-15 18:56:23', 'reserva'),
(13, '👤 Nuevo usuario registrado: ANDRES ARIAS', '2025-09-15 20:12:03', 'usuario'),
(14, '📅 Se creó una reserva para el 2025-09-18 a las 12:35:00 en la mesa 2', '2025-09-15 21:32:39', 'reserva'),
(16, '❌ El pedido N° 1 fue cancelado', '2025-09-15 22:27:32', 'pedido'),
(0, '? Se creó una reserva para el 2025-10-21 a las 13:00:00 para 4 personas, ', '2025-10-20 21:01:34', 'reserva'),
(0, '❌ Se canceló la reserva N° 4', '2025-10-20 22:21:14', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-22 a las 11:30:00 para 3 personas, ', '2025-10-20 22:33:05', 'reserva'),
(0, '❌ Se canceló la reserva N° 6', '2025-10-20 23:03:53', 'reserva'),
(0, '❌ Se canceló la reserva N° 7', '2025-10-20 23:04:01', 'reserva'),
(0, '? Se creó una reserva para el 2025-03-22 a las 11:11:00 para 2 personas, ', '2025-10-20 23:06:49', 'reserva'),
(0, '❌ Se canceló la reserva N° 10', '2025-10-20 23:07:01', 'reserva'),
(0, '? Se creó una reserva para el 2025-12-11 a las 12:00pm-2:00pm para 9 personas, ', '2025-10-21 15:31:46', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-21 a las 12:00pm-2:00pm para 6 personas, ', '2025-10-21 18:48:04', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-21 a las 12:30pm-2:30pm para 10 personas, ', '2025-10-21 18:48:48', 'reserva'),
(0, '❌ Se canceló la reserva N° 3', '2025-10-22 23:51:21', 'reserva'),
(0, '❌ Se canceló la reserva N° 5', '2025-10-22 23:51:21', 'reserva'),
(0, '❌ Se canceló la reserva N° 11', '2025-10-22 23:51:21', 'reserva'),
(0, '❌ Se canceló la reserva N° 12', '2025-10-22 23:51:21', 'reserva'),
(0, '❌ Se canceló la reserva N° 13', '2025-10-22 23:51:21', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-23 a las  para 11 personas, ', '2025-10-23 00:33:03', 'reserva'),
(0, '❌ Se canceló la reserva N° 14', '2025-10-23 00:33:55', 'reserva'),
(0, '? Se creó una reserva para el 2025-12-11 a las  para 12 personas, ', '2025-10-23 00:44:49', 'reserva'),
(0, '❌ Se canceló la reserva N° 15', '2025-10-23 00:45:11', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-23 a las 12:00pm-2:00pm para 11 personas, ', '2025-10-23 00:49:53', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-24 a las 12:00pm-2:00pm para 10 personas, ', '2025-10-23 00:57:00', 'reserva'),
(0, '❌ Se canceló la reserva N° 18', '2025-10-23 00:57:16', 'reserva'),
(0, '? Se creó una reserva para el 2025-12-11 a las 2:00pm-4:00pm para 4 personas, ', '2025-10-23 01:21:14', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-25 a las 12:30pm-2:30pm para 7 personas, ', '2025-10-24 00:17:10', 'reserva'),
(0, '❌ Se canceló la reserva N° 17', '2025-10-24 00:18:18', 'reserva'),
(0, '? Se creó una reserva para el 2025-10-31 a las 2:00pm-4:00pm para 11 personas, ', '2025-10-24 00:19:27', 'reserva'),
(0, '? Se creó una reserva para el 2025-11-01 a las 1:00pm-3:00pm para 12 personas, ', '2025-10-24 00:54:58', 'reserva'),
(0, '❌ Se eliminó el producto \"pan\" del inventario', '2025-10-25 22:23:24', 'producto'),
(0, '? Se creó una reserva para el 2025-10-29 a las 12:00pm-2:00pm para 1 personas, ', '2025-10-26 02:17:59', 'reserva'),
(0, '❌ Se canceló la reserva N° 24', '2025-10-26 02:26:12', 'reserva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL,
  `nombre_categoria` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Res'),
(2, 'Pollo'),
(3, 'Cerdo'),
(4, 'Entradas'),
(5, 'Plato del día'),
(6, 'Acompañamientos'),
(7, 'Platos Combinados'),
(8, 'Cortes gruesos'),
(9, 'Bebidas'),
(10, 'Adicionales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_empleados`
--

CREATE TABLE `categorias_empleados` (
  `id_categoria_em` int NOT NULL,
  `nombre_categoria` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias_empleados`
--

INSERT INTO `categorias_empleados` (`id_categoria_em`, `nombre_categoria`) VALUES
(12, 'pollo'),
(14, 'carne');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id_detalle` int NOT NULL,
  `cod_pedido` int DEFAULT NULL,
  `cod_producto` int DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `precio_unitario` bigint DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id_detalle`, `cod_pedido`, `cod_producto`, `cantidad`, `precio_unitario`, `iva`) VALUES
(1, 1, 2, 1, 1000, NULL),
(2, 2, 2, 1, 1000, NULL),
(3, 3, 2, 1, 1000, NULL),
(0, 1, 16, 3, 28000, NULL),
(0, 1, 34, 1, 4000, NULL),
(0, 1, 35, 1, 3500, NULL),
(0, 1, 16, 1, 28000, NULL),
(0, 1, 35, 1, 3500, NULL),
(0, 1, 37, 1, 4000, NULL),
(0, 1, 11, 1, 24000, NULL),
(0, 1, 36, 1, 3500, NULL),
(0, 1, 37, 1, 4000, NULL),
(0, 1, 10, 1, 19000, NULL),
(0, 1, 36, 1, 3500, NULL),
(0, 1, 37, 1, 4000, NULL),
(0, 11, 16, 1, 28000, NULL),
(0, 11, 35, 1, 3500, NULL),
(0, 11, 36, 1, 3500, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido_restaurante`
--

CREATE TABLE `detalle_pedido_restaurante` (
  `id_detalle_pedido_restaurante` int NOT NULL,
  `id_pago_restaurante` int NOT NULL,
  `id_producto_em` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedido_restaurante`
--

INSERT INTO `detalle_pedido_restaurante` (`id_detalle_pedido_restaurante`, `id_pago_restaurante`, `id_producto_em`, `cantidad`, `precio_unitario`) VALUES
(1, 2, 6, 1, 15000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilios`
--

CREATE TABLE `domicilios` (
  `id_domicilio` int NOT NULL,
  `cod_pedido` int DEFAULT NULL,
  `cod_usuario` int DEFAULT NULL,
  `cod_direccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_pedidos`
--

CREATE TABLE `historial_pedidos` (
  `id_historial` int NOT NULL,
  `id_pedido` int NOT NULL,
  `estado` enum('pendiente','en preparacion','entregado','cancelado') COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `fecha_cambio` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_pedidos`
--

INSERT INTO `historial_pedidos` (`id_historial`, `id_pedido`, `estado`, `fecha`, `hora`, `fecha_cambio`) VALUES
(2, 1, 'entregado', '0000-00-00', '00:00:00', '2025-09-15 22:27:30'),
(3, 1, 'cancelado', '0000-00-00', '00:00:00', '2025-09-15 22:27:32'),
(4, 1, 'entregado', '0000-00-00', '00:00:00', '2025-09-15 22:27:34'),
(5, 1, 'pendiente', '0000-00-00', '00:00:00', '2025-09-15 22:27:35'),
(0, 1, 'entregado', '0000-00-00', '00:00:00', '2025-10-24 01:22:03'),
(0, 1, 'pendiente', '0000-00-00', '00:00:00', '2025-10-24 01:22:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `id_insumo` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cantidad` int NOT NULL DEFAULT '0',
  `precio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fecha_vencimiento` date DEFAULT NULL,
  `lote` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subcategoria_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesa`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos_restaurante`
--

CREATE TABLE `pagos_restaurante` (
  `id_pago_restaurante` int NOT NULL,
  `id_mesa` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `total` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos_restaurante`
--

INSERT INTO `pagos_restaurante` (`id_pago_restaurante`, `id_mesa`, `fecha`, `hora`, `total`) VALUES
(2, 1, '2025-10-26', '17:02:55', 15000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL,
  `tipo_entrega` enum('restaurante','domicilio') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `metodo_pago` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `estado` enum('entregado','cancelado','pendiente','en preparacion') COLLATE utf8mb4_general_ci DEFAULT 'pendiente',
  `cod_usuario` int DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `tipo_entrega`, `fecha`, `hora`, `metodo_pago`, `telefono`, `total`, `estado`, `cod_usuario`, `direccion`) VALUES
(1, 'restaurante', '2025-09-15', '22:17:23', NULL, NULL, 1000, 'pendiente', 16, NULL),
(2, 'domicilio', '2025-09-15', '22:53:18', NULL, NULL, 1000, 'pendiente', 16, NULL),
(3, 'domicilio', '2025-09-15', '22:56:40', 'tarjeta', NULL, 1000, 'pendiente', 16, NULL),
(4, '', '2025-10-26', '01:46:58', 'efectivo', NULL, 91500, 'pendiente', 16, NULL),
(5, '', '2025-10-26', '01:47:53', 'efectivo', NULL, 35500, 'pendiente', 16, NULL),
(6, '', '2025-10-26', '01:51:49', 'efectivo', NULL, 31500, 'pendiente', 16, NULL),
(7, 'restaurante', '2025-10-26', '01:55:32', 'efectivo', NULL, 26500, 'pendiente', 16, NULL),
(11, 'domicilio', '2025-10-26', '01:58:20', 'efectivo', 3271738299, 35000, 'pendiente', 16, 'calle 20 # 4-11');

--
-- Disparadores `pedidos`
--
DELIMITER $$
CREATE TRIGGER `trg_alerta_pedido_cancelado` AFTER UPDATE ON `pedidos` FOR EACH ROW BEGIN
    IF NEW.estado = 'cancelado' AND OLD.estado <> 'cancelado' THEN
        INSERT INTO alertas(mensaje, fecha, tipo)
        VALUES (CONCAT('❌ El pedido N° ', NEW.id_pedido, ' fue cancelado'), NOW(), 'pedido');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_alerta_pedido_confirmado` AFTER UPDATE ON `pedidos` FOR EACH ROW BEGIN
    IF NEW.estado = 'confirmado' AND OLD.estado <> 'confirmado' THEN
        INSERT INTO alertas(mensaje, fecha, tipo)
        VALUES (CONCAT('✅ El pedido N° ', NEW.id_pedido, ' fue confirmado'), NOW(), 'pedido');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_pedidos_historial` AFTER UPDATE ON `pedidos` FOR EACH ROW BEGIN
    IF NEW.estado <> OLD.estado THEN
        CALL registrar_historial_pedido(NEW.id_pedido, NEW.estado);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` bigint DEFAULT NULL,
  `cod_categoria` int DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `cantidad`, `descripcion`, `precio`, `cod_categoria`, `imagen`) VALUES
(1, 'Churrasco grande (390g)', 10, 'Un rico churrasco grande', 39000, 1, 'churrasco_grandesito.jpg'),
(2, 'Churrasco pequeño (230g)', 10, 'Corte de res a la parrilla de 230 gramos', 25000, 1, 'churrasco_pequeno.png'),
(3, 'Carne grande (320g)', 10, 'Porción de carne de res de 320 gramos', 24000, 1, 'carne_grande.jpg'),
(4, 'Carne pequeña (200g)', 10, 'Porción de carne de res de 200 gramos', 19000, 1, 'carne_pequena.jpg'),
(5, 'Baby beef (250g)', 10, 'Corte jugoso de baby beef de 250 gramos', 32000, 1, 'baby_beef.jpg'),
(6, 'Sobrebarriga dorada a la parrilla o en salsa (270g)', 10, 'Sobrebarriga dorada con sazón especial', 26000, 1, 'sobrebarriga.jpg'),
(7, 'Lengua a la parrilla', 10, 'Lengua a la parrilla con acompañamientos', 26000, 1, 'lengua_parrilla.jpg'),
(8, 'Morrillo (290g)', 10, 'Corte blando y jugoso de res', 26000, 1, 'morillo.jpg'),
(9, 'Hamburguesa con papas', 10, 'Hamburguesa de res con papas a la francesa', 16000, 1, 'hamburguesa.jpg'),
(10, 'Churrasco de pollo (280g)', 10, 'Corte de pierna pernil deshuesado', 19000, 2, 'churrasco_pollo.jpg'),
(11, 'Pechuga grande (320g)', 10, 'Pechuga de pollo a la parrilla de 320 gramos', 24000, 2, 'pechuga_grande.jpg'),
(12, 'Pechuga pequeña (200g)', 10, 'Pechuga de pollo a la parrilla de 200 gramos', 19000, 2, 'pechuga_pequena.jpg'),
(13, 'Pollo al horno', 10, 'Rico pollito', 16000, 2, 'pollo_horno.jpg'),
(14, 'Lomo de cerdo grande (320g)', 10, 'Lomo de cerdo a la parrilla de 320 gramos', 26000, 3, 'lomo_cerdo_grande.jpg'),
(15, 'Lomo de cerdo pequeño (200g)', 10, 'Lomo de cerdo a la parrilla de 200 gramos', 20000, 3, 'lomo_cerdo_pequeno.jpg'),
(16, 'Costillitas de cerdo (350g) ', 10, '(solo jueves, viernes, sabados y domingos)', 28000, 3, 'costillitas_cerdo.jpg'),
(17, 'Plato del día', 10, 'Varia según el dia: Lunes(Ajiaco con pollo), Martes(Mondongo), Miercoles(Variado), Jueves(Frijolada), Viernes(Sancocho mixto)', 20000, 5, 'plato_dia.png'),
(18, 'Chorizo', 10, 'Porción de chorizo', 5000, 4, 'chorizo.jpg'),
(19, 'Arepitas de la parrilla', 10, '(4 unidades)', 4000, 4, 'arepitas_parrilla.jpg'),
(20, 'Plato mixto', 10, 'Dos tipos de carne entre: pechuga, churrasco y lomo de cerdo', 39000, 7, 'plato_mixto.jpg'),
(21, 'Parrillada ', 10, '(res, cerdo, pechuga y chorizo)', 39000, 7, 'parrillada.jpg'),
(22, 'Medallones de lomo (300g)', 10, 'Corte grueso de lomo fino de 300 gramos', 34000, 8, 'medallones_lomo.jpg'),
(23, 'Biffe chorizo (350g)', 10, 'Corte jugoso de 350 gramos', 34000, 8, 'biffe_chorizo.jpg'),
(24, 'Entrecot', 10, 'Corte a la parrilla', 34000, 8, 'entrecot.jpg'),
(25, 'Gaseosa (350ml)', 10, 'Bebida gaseosa personal de 350ml', 3000, 9, 'Gaseosa350.jpg'),
(26, 'Gaseosa (250ml)', 10, 'Bebida gaseosa', 2500, 9, 'gaseosa250.jpg'),
(27, 'Cola & Pola', 10, 'Bebida tradicional mezcla de cerveza y gaseosa', 4000, 9, 'colaypola.jpg'),
(28, 'Cerveza Águila o Poker', 10, 'Cerveza refrescante', 4500, 9, 'cerveza.jpg'),
(29, 'Cerveza Club Colombia', 10, 'Cerveza deliciosa', 6000, 9, 'cervezaclub.png'),
(30, 'Agua en botella (600ml)', 10, 'Botella de agua', 3500, 9, 'agua.jpg'),
(31, 'Agua con gas (600ml)', 10, 'Botella de agua con gas', 3500, 9, 'aguagas.jpg'),
(32, 'Jugo del día', 10, 'Jugo natural del día', 2500, 9, 'jugo.jpg'),
(33, 'Aguacate macerado con sal', 10, 'Porción de aguacate fresco', 7000, 6, 'aguacate.jpg'),
(34, 'Ensalada de la casa', 10, 'Ensalada muy rica', 4000, 6, 'ensalada.jpg'),
(35, 'Arroz blanco', 10, 'Porción de arroz blanco', 3500, 6, 'arroz.jpg'),
(36, 'Papa salada', 10, 'Porción de papa salada', 3500, 6, 'papa.jpg'),
(37, 'Yuca al vapor', 10, 'Porción de yuca cocida al vapor', 4000, 6, 'yuca.jpg'),
(38, 'Sopa', 10, 'Sopa ', 5000, 10, 'sopa.jpg');

--
-- Disparadores `productos`
--
DELIMITER $$
CREATE TRIGGER `trg_alerta_producto_eliminado` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
    INSERT INTO alertas(mensaje, fecha, tipo)
    VALUES (CONCAT('❌ Se eliminó el producto "', OLD.nombre, '" del inventario'), NOW(), 'producto');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_alerta_stock_bajo` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
    IF NEW.cantidad < 5 AND OLD.cantidad >= 5 THEN
        INSERT INTO alertas(mensaje, fecha, tipo)
        VALUES (CONCAT('⚠ El producto "', NEW.nombre, '" tiene stock bajo: ', NEW.cantidad), NOW(), 'stock');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_alerta_stock_recuperado` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
    IF NEW.cantidad >= 5 AND OLD.cantidad < 5 THEN
        INSERT INTO alertas(mensaje, fecha, tipo)
        VALUES (CONCAT('✅ El producto "', NEW.nombre, '" se recuperó, stock actual: ', NEW.cantidad), NOW(), 'stock');
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_empleados`
--

CREATE TABLE `productos_empleados` (
  `id_producto_em` int NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  `id_categoria_em` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_empleados`
--

INSERT INTO `productos_empleados` (`id_producto_em`, `nombre`, `precio`, `descripcion`, `id_categoria_em`) VALUES
(6, 'queso ', 15000.00, '', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` enum('','11:30m-1:30pm','12:00pm-2:00pm','12:30pm-2:30pm','1:00pm-3:00pm','1:30pm-3:30pm','2:00pm-4:00pm','2:30pm-4:30pm') COLLATE utf8mb4_general_ci NOT NULL,
  `cant_personas` enum('','1','2','3','4','5','6','7','8','9','10','11','12') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` enum('Pendiente','confirmada','Completada') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `documento` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo_evento` enum('','Almuerzo','Reunión','Celebración','Otro') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comentarios` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `fecha`, `hora`, `cant_personas`, `estado`, `telefono`, `id_usuario`, `nombre`, `documento`, `tipo_evento`, `comentarios`) VALUES
(19, '2025-12-11', '2:00pm-4:00pm', '4', 'Completada', '3202995114', 16, 'aaa', '111', 'Almuerzo', 'hola'),
(20, '2025-10-25', '12:30pm-2:30pm', '7', 'confirmada', '3202995114', 16, 'Tommy ', '1111111', 'Almuerzo', '# app.py unificado (comentado por bloques y funciones) from flask import (     Flask, render_template, request, redirect, url_for, session,     jsonify, flash, send_file ) from flask_mysqldb import MySQL from flask_mail import Mail   # falta message # fro'),
(21, '2025-10-31', '2:00pm-4:00pm', '11', 'Pendiente', '3202995114', 16, 'Tommy ', '111', 'Almuerzo', 'hola'),
(22, '2025-11-01', '1:00pm-3:00pm', '12', 'Pendiente', '3202995114', 16, 'aa', '332222', 'Otro', 'a');

--
-- Disparadores `reservas`
--
DELIMITER $$
CREATE TRIGGER `trg_alerta_reserva_cancelada` AFTER DELETE ON `reservas` FOR EACH ROW BEGIN
    INSERT INTO alertas(mensaje, fecha, tipo)
    VALUES (
        CONCAT('❌ Se canceló la reserva N° ', OLD.id_reserva),
        NOW(),
        'reserva'
    );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_alerta_reserva_creada` AFTER INSERT ON `reservas` FOR EACH ROW BEGIN
    INSERT INTO alertas(mensaje, fecha, tipo)
    VALUES (
        CONCAT('? Se creó una reserva para el ', NEW.fecha, ' a las ', NEW.hora, 
               ' para ', NEW.cant_personas, ' personas, '),
        NOW(),
        'reserva'
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id_salida` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `cod_producto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias_insumos`
--

CREATE TABLE `subcategorias_insumos` (
  `id_subcategoria` int NOT NULL,
  `nombre_subcategoria` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rol` enum('cliente','empleado','administrador') COLLATE utf8mb4_general_ci DEFAULT 'cliente',
  `estado` enum('activo','inactivo') COLLATE utf8mb4_general_ci DEFAULT 'activo',
  `token_activacion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `telefono`, `direccion`, `correo`, `contraseña`, `rol`, `estado`, `token_activacion`) VALUES
(16, 'Carlos', 'Ramírezzzz', 3213, 'Calle 50 #10-20', 'andresitoarias96yurtyrtyrt@gmail.com', 'scrypt:32768:8:1$RmJ5HGmgJS62pohh$22121b36889cd44c11480b7853a9c9547ce443aede61cd9858d342377ac717c91d4cf2b6b86e913e66cdde9751b31e04532df05f52c2762bc1e0b05d9d88006b', 'cliente', 'activo', NULL),
(18, 'ANDRES', 'ARIAS', 321123, 'Calle 50 #10-20', 'andresitoarias96@gmail.com', 'scrypt:32768:8:1$QHOI2LH8L9cVNMbV$f12db04d82c6251cb3946f636e2d7a86082a54f6c3702479c06f8bd94d6dd59ab431416736c5dfd225638bb90400dd7c557066c8609b6a41cdbb187feed68d4a', 'administrador', 'activo', NULL);

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `trg_alerta_usuario_desactivado` AFTER UPDATE ON `usuarios` FOR EACH ROW BEGIN
    IF NEW.estado = 'inactivo' AND OLD.estado <> 'inactivo' THEN
        INSERT INTO alertas(mensaje, fecha, tipo)
        VALUES (CONCAT('? El usuario "', OLD.nombre, ' ', OLD.apellido, '" fue desactivado'), NOW(), 'usuario');
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_alerta_usuario_registrado` AFTER INSERT ON `usuarios` FOR EACH ROW BEGIN
    INSERT INTO alertas(mensaje, fecha, tipo)
    VALUES (CONCAT('? Nuevo usuario registrado: ', NEW.nombre, ' ', NEW.apellido), NOW(), 'usuario');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_alertas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_alertas` (
`fecha` datetime
,`id_alerta` int
,`mensaje` varchar(255)
,`tipo` enum('stock','pedido','reserva','usuario','producto')
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_detalle_pedidos`
--

CREATE TABLE `vista_detalle_pedidos` (
  `id_detalle` int DEFAULT NULL,
  `id_pedido` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `producto` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `precio_unitario` bigint DEFAULT NULL,
  `subtotal` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_historial_pedidos`
--

CREATE TABLE `vista_historial_pedidos` (
  `id_historial` int DEFAULT NULL,
  `id_pedido` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido_usuario` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` enum('pendiente','en preparacion','entregado','cancelado') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_estado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_pedidos_usuarios`
--

CREATE TABLE `vista_pedidos_usuarios` (
  `id_pedido` int DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `estado` enum('entregado','cancelado','pendiente','en preparacion') COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_productos_categorias`
--

CREATE TABLE `vista_productos_categorias` (
  `id_producto` int DEFAULT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `precio` bigint DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `nombre_categoria` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_reservas_mesas`
--

CREATE TABLE `vista_reservas_mesas` (
  `id_reserva` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `cant_personas` int DEFAULT NULL,
  `estado` enum('disponible','no disponible') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_mesa` int DEFAULT NULL,
  `capacidad` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vista_stock_bajo`
--

CREATE TABLE `vista_stock_bajo` (
  `id_producto` int DEFAULT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cantidad` bigint DEFAULT NULL,
  `precio` bigint DEFAULT NULL,
  `estado_stock` varchar(16) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_total_pagos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_total_pagos` (
`fecha` date
,`hora` time
,`id_mesa` int
,`id_pago_restaurante` int
,`total_calculado` decimal(42,2)
,`total_registrado` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_alertas`
--
DROP TABLE IF EXISTS `vista_alertas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_alertas`  AS SELECT `alertas`.`id_alerta` AS `id_alerta`, `alertas`.`mensaje` AS `mensaje`, `alertas`.`fecha` AS `fecha`, `alertas`.`tipo` AS `tipo` FROM `alertas` ORDER BY `alertas`.`fecha` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_total_pagos`
--
DROP TABLE IF EXISTS `vista_total_pagos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_total_pagos`  AS SELECT `p`.`id_pago_restaurante` AS `id_pago_restaurante`, `p`.`id_mesa` AS `id_mesa`, `p`.`fecha` AS `fecha`, `p`.`hora` AS `hora`, `p`.`total` AS `total_registrado`, coalesce(sum((`d`.`cantidad` * `d`.`precio_unitario`)),0) AS `total_calculado` FROM (`pagos_restaurante` `p` left join `detalle_pedido_restaurante` `d` on((`p`.`id_pago_restaurante` = `d`.`id_pago_restaurante`))) GROUP BY `p`.`id_pago_restaurante`, `p`.`id_mesa`, `p`.`fecha`, `p`.`hora`, `p`.`total` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categorias_empleados`
--
ALTER TABLE `categorias_empleados`
  ADD PRIMARY KEY (`id_categoria_em`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD KEY `fk_detalle_pedido_pedidos` (`cod_pedido`);

--
-- Indices de la tabla `detalle_pedido_restaurante`
--
ALTER TABLE `detalle_pedido_restaurante`
  ADD PRIMARY KEY (`id_detalle_pedido_restaurante`),
  ADD KEY `idx_detalle_pago` (`id_pago_restaurante`),
  ADD KEY `idx_detalle_producto` (`id_producto_em`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `pagos_restaurante`
--
ALTER TABLE `pagos_restaurante`
  ADD PRIMARY KEY (`id_pago_restaurante`),
  ADD KEY `idx_pagos_mesa` (`id_mesa`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `fk_pedidos_usuarios` (`cod_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos_empleados`
--
ALTER TABLE `productos_empleados`
  ADD PRIMARY KEY (`id_producto_em`),
  ADD KEY `fk_categoria` (`id_categoria_em`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `fk_reservas_usuarios` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categorias_empleados`
--
ALTER TABLE `categorias_empleados`
  MODIFY `id_categoria_em` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido_restaurante`
--
ALTER TABLE `detalle_pedido_restaurante`
  MODIFY `id_detalle_pedido_restaurante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pagos_restaurante`
--
ALTER TABLE `pagos_restaurante`
  MODIFY `id_pago_restaurante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `productos_empleados`
--
ALTER TABLE `productos_empleados`
  MODIFY `id_producto_em` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `fk_detalle_pedido_pedidos` FOREIGN KEY (`cod_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_pedido_restaurante`
--
ALTER TABLE `detalle_pedido_restaurante`
  ADD CONSTRAINT `fk_detalle_pago` FOREIGN KEY (`id_pago_restaurante`) REFERENCES `pagos_restaurante` (`id_pago_restaurante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`id_producto_em`) REFERENCES `productos_empleados` (`id_producto_em`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pagos_restaurante`
--
ALTER TABLE `pagos_restaurante`
  ADD CONSTRAINT `fk_pagos_mesa` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id_mesa`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedidos_usuarios` FOREIGN KEY (`cod_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_empleados`
--
ALTER TABLE `productos_empleados`
  ADD CONSTRAINT `fk_categoria_em` FOREIGN KEY (`id_categoria_em`) REFERENCES `categorias_empleados` (`id_categoria_em`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reservas_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
