-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-11-2025 a las 17:48:44
-- Versión del servidor: 8.4.3
-- Versión de PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int NOT NULL,
  `categoria_nombre` varchar(50) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `categoria_ubicacion` varchar(150) COLLATE utf8mb3_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(5, 'Calzados', ''),
(6, 'Consolas', 'Asuncion'),
(8, 'Instrumentos', 'Sanlo'),
(9, 'Telas', 'Sanlo'),
(10, 'Juguetes', 'lambare'),
(11, 'Utensilios', 'Fernando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int NOT NULL,
  `producto_codigo` varchar(70) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_nombre` varchar(70) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `producto_precio` decimal(30,2) NOT NULL,
  `producto_stock` int NOT NULL,
  `producto_foto` varchar(500) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `categoria_id` int NOT NULL,
  `usuario_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_precio`, `producto_stock`, `producto_foto`, `categoria_id`, `usuario_id`) VALUES
(3, '0010014785', 'Adidas Top Sala', 850000.00, 15, 'Adidas_Top_Sala_7.jpg', 5, 18),
(6, '0010012235', 'Nike T90', 100000.00, 20, 'Nike_T90_53.png', 5, 18),
(11, '0010035465', 'Ps4Pro', 200.00, 50, 'Ps4Pro_99.jpg', 6, 18),
(12, '0010035654', 'Xbox', 180.00, 30, 'Xbox_13.jpg', 6, 18),
(13, '0010050004', 'pS3', 100.00, 10, 'pS3_73.png', 6, 18),
(19, '0010020014', 'Joma Top Flex IN Blanco', 560000.00, 15, 'Joma_Top_Flex_IN_Blanco_24.jpg', 5, 18),
(20, '0010025478', 'Joma Top Flex IN Amarillo', 560000.00, 15, 'Joma_Top_Flex_IN_Amarillo_92.jpg', 5, 18),
(21, '0010054879', 'Joma Top Flex IN Celeste', 56000.00, 15, 'Joma_Top_Flex_IN_Celeste_10.jpg', 5, 18),
(22, '0010021982', 'Nike Lunar Gato Lila', 800.00, 20, 'Nike_Lunar_Gato_Lila_46.jpg', 5, 18),
(23, '0010014784', 'NIke Lunar Gato Negro', 800000.00, 50, 'NIke_Lunar_Gato_Negro_52.jpg', 5, 18),
(24, '0010056589', 'NIke Lunar Gato Rojo', 800000.00, 20, 'NIke_Lunar_Gato_Rojo_54.jpg', 5, 18),
(25, '0010032547', 'NIke Lunar Gato Blanco', 800000.00, 10, 'NIke_Lunar_Gato_Blanco_33.jpg', 5, 18),
(26, '0100054578', 'Ps5 Pro 1TB', 500.00, 20, 'Ps5_Pro_1TB_60.jpg', 6, 18),
(27, '010456456', 'Control Xbox', 50.00, 45, 'Control_Xbox_68.jpg', 6, 18),
(28, '010454454', 'Control Ps3', 10.00, 30, 'Control_Ps3_47.jpg', 6, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int NOT NULL,
  `usuario_nombre` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(40) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(40) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_clave` varchar(200) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `usuario_email` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_usuario`, `usuario_clave`, `usuario_email`) VALUES
(8, 'Sara', 'Conor', 'saraconor', '$2y$10$OnzZWnO47AigkZ0WqYhoM.5ktJXRKrr12P8F3/WsrVU5pYVDONfLa', 'saraconor@gmail.com'),
(9, 'Juan', 'Caceres', 'juancaceres', '$2y$10$FR8Gh4BPQpA1CbO.3hsGPORSM19SjhCj5w8KgLjIFUVeaqGsJb/u6', 'juancaceres@gmail.com'),
(10, 'Juan', 'Ayala', 'juanayala', '$2y$10$aD6p2jGIK1EPZJmC3c4quuHbWStilDTwGg441EVhV8PK5GkS5uMN.', 'juanayala@gmail.com'),
(11, 'Jose', 'Trinidad', 'josetrinidad', '$2y$10$buvNb1OK6BH0ixQbqZ73qujkgaRHTkOK5fRUnggRFejtWlM2ifKj2', 'josetrinidad@gmail.com'),
(12, 'Bruno', 'Ortellado', 'brunoortellado_', '$2y$10$WZtw1MEj/kTScAdc7VAvFOoCZOGrRkPsBJhvy3sTpKIfJYqjqdSvq', 'brunoortellado3@gmail.com'),
(13, 'Belen', 'Balbuena', 'belenbalbuena', '$2y$10$ihVTTSJoPPMeO2oq/TMh.ubJrYtx9enR.tAJfckiOuIJ1G0KR6UsO', 'belenbalbuena@gmail.com'),
(14, 'Maria', 'Dillon', 'mariadillon', '$2y$10$FKrxvPTb3NZxK7dgafrDvuja6kd2ZvuvlzW.xqG4RsV/BfCw7.CCq', 'mariadillon@gmail.com'),
(15, 'Ivan', 'Melgarejo', 'ivanmelgarejo', '$2y$10$YLvnuF8Gbn6SbiveXOXfk.Qn.AwMjlNr3y1BUihiF5C2Mqlv7fX8W', 'ivan@gmail.com'),
(16, 'Lider', 'Zarza', 'lizerzarza', '$2y$10$29UcBTgvXi59.wIjN1sT9ejzRufGOq7OJ2bSoa.B1WGSW7MtSTwmq', 'lider@gmail.com'),
(18, 'Administrador', 'Principall', 'adminn', '$2y$10$QqyfpPDNEfoV3JXXNx1F2.8z2AEm1EOv4ouMwUSqJr5E1eRF6PNPK', 'admin@gmail.com'),
(19, 'Lujan', 'Saldivar', 'lujansaldivar', '$2y$10$eiypBSpQL.6ofYZOnaq6GOZIeT4lNIqJBV/1IbeJao4.YuXizidey', 'lujansal@gmail.com'),
(20, 'Juan', 'Trinidad', 'juantrinidad', '$2y$10$uVqlyi4YDl2bYYK3IH./feH9nSkZHJmKn5eEUCe.l9oWwo9Websvm', 'juan@gmail.com'),
(21, 'Laura', 'Nunez', 'laununez', '$2y$10$G6PtRwhyhqlBm8.QFneXDukb4hr2zaMkkgW2FDz/UqWry0fW4GEMK', 'lau@gmail.com'),
(22, 'Laura', 'Nunez', 'laununezz', '$2y$10$mDEM5fsqp85.n.JTAwo6IOFta6dhuNi4qVPXWpARbKZfSc61Mzhtq', 'lauu@gmail.com'),
(23, 'Laura', 'Nunez', 'laununezzz', '$2y$10$rn2048y7fxzB9S/1WFMQcumdaJ.Nx9cjJ0mAVcm/8HsGVuRV07SnG', 'lauuu@gmail.com'),
(24, 'Oscar', 'Nunez', 'oscarnunez', '$2y$10$k2jKBeGYNaF1Pem3myHFie9V8x.n3gWYgGfWjnaRzam.uaU7RQ.ky', 'oscar@gmail.com'),
(25, 'Libre', 'Soy', 'libresoy', '$2y$10$XK3KaUWyMrvDeQ0msJBFC.atm.HYeRq3cuSXWmlEaX6XdcgCXYMU.', 'libresoy@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
