-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2024 a las 02:43:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller_motos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos_electronicos`
--

CREATE TABLE `equipos_electronicos` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos_electronicos`
--

INSERT INTO `equipos_electronicos` (`id_equipo`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'Multímetro digital', 'Multímetro para mediciones eléctricas', 14),
(2, 'Probador de batería', 'Dispositivo para probar baterías', 4),
(3, 'Escáner de diagnóstico', 'Escáner para diagnóstico de motos', 2),
(4, 'Cargadores de batería', 'Cargadores de batería para motos', 4),
(5, 'Sistema de alineación de ruedas', 'Equipo para alinear ruedas de motos', 1),
(6, 'Luces LED para pruebas', 'Luces LED para pruebas de iluminación', 10),
(8, 'Soldador', 'Soldador para Piezas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_seguridad`
--

CREATE TABLE `equipo_seguridad` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_seguridad`
--

INSERT INTO `equipo_seguridad` (`id_equipo`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'Guantes de trabajo', 'Guantes protectores para mecánicos', 11),
(2, 'Gafas de protección', 'Gafas para protección ocular', 15),
(3, 'Cascos', 'Cascos de seguridad', 10),
(4, 'Protectores auditivos', 'Protección auditiva', 8),
(5, 'Extintor', 'Extintor de incendios', 1),
(7, 'gafas para soldar', 'gafas tipo 3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `id_herramienta` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`id_herramienta`, `nombre`, `descripcion`, `cantidad`, `tipo`) VALUES
(1, 'Llave de tubo', 'Llave de tubo de varios tamaños', 10, 'Llave'),
(2, 'Llave dinamométrica', 'Llave para medir el torque', 5, 'Llave'),
(3, 'Destornilladores', 'Destornilladores planos y de estrella', 20, 'Herramienta de mano'),
(4, 'Llave inglesa ajustable', 'Llave inglesa ajustable', 8, 'Llave'),
(5, 'Alicates', 'Alicates de punta, corte y presión', 15, 'Herramienta de mano'),
(6, 'Llave Allen', 'Juego completo de llaves Allen', 10, 'Llave'),
(7, 'Juego de llaves hexagonales', 'Llaves hexagonales de varios tamaños', 7, 'Llave'),
(8, 'Elevador de motos', 'Elevador para mantenimiento de motos', 2, 'Equipo'),
(9, 'Pistola neumática', 'Pistola neumática para desmontar piezas', 4, 'Herramienta neumática'),
(10, 'Compresor de aire', 'Compresor de aire para herramientas neumáticas', 3, 'Equipo'),
(11, 'destornillador estrella', 'destornillador con forma de estrella', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros_accesorios`
--

CREATE TABLE `otros_accesorios` (
  `id_accesorio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `otros_accesorios`
--

INSERT INTO `otros_accesorios` (`id_accesorio`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'ACEITES PARA VENTAS', 'Aseites disponibles para la venta', 12),
(2, 'Cubiertas de asientos', 'Fundas de asientos para motos', 7),
(3, 'Maleteros para motos', 'Maleteros adicionales para motos', 5),
(4, 'bugias', 'bugia', 10),
(5, 'Focos y luces delanteras', 'Luces delanteras para motos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_limpieza`
--

CREATE TABLE `productos_limpieza` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_limpieza`
--

INSERT INTO `productos_limpieza` (`id_producto`, `nombre`, `descripcion`, `cantidad`) VALUES
(1, 'Limpiador de cadenas', 'Limpiador específico para cadenas de motos', 16),
(2, 'Desengrasante', 'Desengrasante multiusos', 15),
(3, 'Aceite lubricante en spray', 'Lubricante en spray para múltiples usos', 30),
(4, 'Cera para carrocería', 'Cera protectora para carrocerías', 10),
(5, 'Paños de microfibra', 'Paños de microfibra para limpieza', 50),
(6, 'Limpiador de frenos', 'Limpiador para el sistema de frenos', 25),
(7, 'Anticongelante', 'Anticongelante para motores', 10),
(8, 'Pulidor de metales', 'Pulidor para partes metálicas', 1),
(9, 'bandas', 'bandas pulsar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuestos_consumibles`
--

CREATE TABLE `repuestos_consumibles` (
  `id_repuesto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `repuestos_consumibles`
--

INSERT INTO `repuestos_consumibles` (`id_repuesto`, `nombre`, `descripcion`, `cantidad`, `tipo`) VALUES
(1, 'Aceite de motor', 'Aceite de motor de diferentes viscosidades', 50, 'Aceite'),
(2, 'Filtros de aceite', 'Filtros de aceite para diferentes modelos', 30, 'Filtro'),
(3, 'Filtros de aire', 'Filtros de aire para diferentes modelos', 25, 'Filtro'),
(4, 'Bujías', 'Bujías de encendido', 40, 'Repuesto'),
(5, 'Cadena de transmisión', 'Cadenas de transmisión para motos', 10, 'Repuesto'),
(6, 'Kits de embrague', 'Kits completos de embrague', 8, 'Repuesto'),
(7, 'Pastillas de freno', 'Pastillas de freno para motos', 20, 'Repuesto'),
(8, 'Cables de freno y acelerador', 'Cables de freno y acelerador', 15, 'Repuesto'),
(9, 'Neumáticos', 'Neumáticos de varios tamaños y marcas', 12, 'Repuesto'),
(10, 'Espejos retrovisores', 'Espejos retrovisores', 2, 'Repuesto'),
(12, 'bandas', 'bandas pulsar', 6, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos_electronicos`
--
ALTER TABLE `equipos_electronicos`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `equipo_seguridad`
--
ALTER TABLE `equipo_seguridad`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`id_herramienta`);

--
-- Indices de la tabla `otros_accesorios`
--
ALTER TABLE `otros_accesorios`
  ADD PRIMARY KEY (`id_accesorio`);

--
-- Indices de la tabla `productos_limpieza`
--
ALTER TABLE `productos_limpieza`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `repuestos_consumibles`
--
ALTER TABLE `repuestos_consumibles`
  ADD PRIMARY KEY (`id_repuesto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos_electronicos`
--
ALTER TABLE `equipos_electronicos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `equipo_seguridad`
--
ALTER TABLE `equipo_seguridad`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  MODIFY `id_herramienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `otros_accesorios`
--
ALTER TABLE `otros_accesorios`
  MODIFY `id_accesorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos_limpieza`
--
ALTER TABLE `productos_limpieza`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `repuestos_consumibles`
--
ALTER TABLE `repuestos_consumibles`
  MODIFY `id_repuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
