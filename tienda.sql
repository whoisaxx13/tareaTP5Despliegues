-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2022 a las 18:20:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`, `cantidad`) VALUES
(1, 'Artículo 1', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum, nobis. Harum facilis soluta nesciunt, molestias necessitatibus esse nulla? A earum doloremque iusto dolor ab aspernatur laborum reprehenderit quod quae culpa itaque, asperiores assumenda non repudiandae placeat repellendus repellat, quam debitis enim mollitia qui iste quos exercitationem molestiae? Quod deserunt excepturi, neque quia quo deleniti modi cumque, tempore, recusandae culpa maxime sit nulla vitae veniam et voluptates? Corrupti minus tenetur rem impedit. Temporibus pariatur nisi quam harum id quibusdam, similique laboriosam iusto magnam, odit illum quidem repudiandae vero itaque quisquam. Provident non labore nam, facilis corrupti cum mollitia tempore repellendus, vel sapiente commodi, necessitatibus ipsa! Molestias, debitis eligendi. Odit eos nam vitae, doloribus mollitia a! Facilis culpa eligendi, quam atque voluptas sapiente, explicabo odio vero modi iure eius possimus quaerat optio eaque facere est corporis vitae, at soluta nulla accusantium recusandae? Impedit velit natus laboriosam voluptates reiciendis a exercitationem odio quas beatae ullam! Accusamus aspernatur, eum ut totam fuga dignissimos labore beatae libero culpa soluta veritatis, aliquam quo alias eligendi dolore consectetur iusto. Dignissimos tempore incidunt dolor eius iste sit iusto nisi quasi voluptate amet, consequatur sequi saepe quas ipsum. Vel maiores officiis eum recusandae, quaerat voluptate voluptatem eius ad veritatis mollitia impedit alias, fuga dignissimos perspiciatis porro hic? Distinctio soluta repellendus quibusdam itaque est rem tempora illum expedita dignissimos quisquam voluptatibus, quae et doloremque ducimus asperiores earum numquam ad quaerat nihil? Cum eveniet cupiditate beatae nam tempore, repellat provident quidem labore ad tenetur quaerat numquam in eum aperiam accusamus atque vitae rem optio porro? Quia voluptas, accusantium itaque, possimus tenetur totam tempora reprehenderit officia illum amet deserunt distinctio non sed nam? Velit doloribus vero eius neque non, minus voluptate qui deserunt harum quod blanditiis quasi numquam eveniet sapiente doloremque corporis nam, repellat voluptates dolore? Velit nihil dignissimos, id odit impedit accusantium totam, cum reprehenderit ad molestiae repellendus possimus incidunt est ratione aperiam natus ducimus porro aspernatur quo, vel nostrum voluptates nam. Voluptatibus sapiente odio doloribus maxime, ullam deleniti asperiores, quaerat hic magnam excepturi temporibus vitae alias ratione. Officia ab cumque ea doloremque maxime ipsum, sint esse sequi quas nisi minima veritatis laborum ex? Veritatis, alias itaque. Ipsa odio quae quod commodi illo accusantium ipsam debitis, corrupti, laboriosam nemo possimus quidem maiores, distinctio maxime! Error, veritatis saepe rerum, officia amet ratione temporibus fugit laborum, quod exercitationem delectus dolorem a quasi asperiores? Reprehenderit iste provident enim sit eaque totam obcaecati dignissimos repudiandae atque ipsum repellendus rem similique recusandae facere rerum libero dolore vitae neque, debitis nobis cum! Soluta est eaque sapiente accusantium pariatur at sint quae natus ratione vitae vel molestiae, beatae quibusdam mollitia delectus illo deserunt, impedit sed cupiditate officiis! Tempore porro aliquid a sunt numquam provident voluptas magnam explicabo ipsa nam sit commodi ab ducimus quasi eligendi repellat distinctio totam saepe vel dolore, facere dolores rem incidunt. Neque quis consequuntur consectetur doloremque itaque repellat quasi similique blanditiis eos fugiat, ex modi facilis sunt nulla! Corrupti non temporibus, enim suscipit delectus nam quia nihil velit nobis sed et? Ex, alias aspernatur!', 'mariotattoo.jpg', 20, 0),
(2, 'Artículo 2', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum, nobis. Harum facilis soluta nesciunt, molestias necessitatibus esse nulla? A earum doloremque iusto dolor ab aspernatur laborum reprehenderit quod quae culpa itaque, asperiores assumenda non repudiandae placeat repellendus repellat, quam debitis enim mollitia qui iste quos exercitationem molestiae? Quod deserunt excepturi, neque quia quo deleniti modi cumque, tempore, recusandae culpa maxime sit nulla vitae veniam et voluptates? Corrupti minus tenetur rem impedit. Temporibus pariatur nisi quam harum id quibusdam, similique laboriosam iusto magnam, odit illum quidem repudiandae vero itaque quisquam. Provident non labore nam, facilis corrupti cum mollitia tempore repellendus, vel sapiente commodi, necessitatibus ipsa! Molestias, debitis eligendi. Odit eos nam vitae, doloribus mollitia a! Facilis culpa eligendi, quam atque voluptas sapiente, explicabo odio vero modi iure eius possimus quaerat optio eaque facere est corporis vitae, at soluta nulla accusantium recusandae? Impedit velit natus laboriosam voluptates reiciendis a exercitationem odio quas beatae ullam! Accusamus aspernatur, eum ut totam fuga dignissimos labore beatae libero culpa soluta veritatis, aliquam quo alias eligendi dolore consectetur iusto. Dignissimos tempore incidunt dolor eius iste sit iusto nisi quasi voluptate amet, consequatur sequi saepe quas ipsum. Vel maiores officiis eum recusandae, quaerat voluptate voluptatem eius ad veritatis mollitia impedit alias, fuga dignissimos perspiciatis porro hic? Distinctio soluta repellendus quibusdam itaque est rem tempora illum expedita dignissimos quisquam voluptatibus, quae et doloremque ducimus asperiores earum numquam ad quaerat nihil? Cum eveniet cupiditate beatae nam tempore, repellat provident quidem labore ad tenetur quaerat numquam in eum aperiam accusamus atque vitae rem optio porro? Quia voluptas, accusantium itaque, possimus tenetur totam tempora reprehenderit officia illum amet deserunt distinctio non sed nam? Velit doloribus vero eius neque non, minus voluptate qui deserunt harum quod blanditiis quasi numquam eveniet sapiente doloremque corporis nam, repellat voluptates dolore? Velit nihil dignissimos, id odit impedit accusantium totam, cum reprehenderit ad molestiae repellendus possimus incidunt est ratione aperiam natus ducimus porro aspernatur quo, vel nostrum voluptates nam. Voluptatibus sapiente odio doloribus maxime, ullam deleniti asperiores, quaerat hic magnam excepturi temporibus vitae alias ratione. Officia ab cumque ea doloremque maxime ipsum, sint esse sequi quas nisi minima veritatis laborum ex? Veritatis, alias itaque. Ipsa odio quae quod commodi illo accusantium ipsam debitis, corrupti, laboriosam nemo possimus quidem maiores, distinctio maxime! Error, veritatis saepe rerum, officia amet ratione temporibus fugit laborum, quod exercitationem delectus dolorem a quasi asperiores? Reprehenderit iste provident enim sit eaque totam obcaecati dignissimos repudiandae atque ipsum repellendus rem similique recusandae facere rerum libero dolore vitae neque, debitis nobis cum! Soluta est eaque sapiente accusantium pariatur at sint quae natus ratione vitae vel molestiae, beatae quibusdam mollitia delectus illo deserunt, impedit sed cupiditate officiis! Tempore porro aliquid a sunt numquam provident voluptas magnam explicabo ipsa nam sit commodi ab ducimus quasi eligendi repellat distinctio totam saepe vel dolore, facere dolores rem incidunt. Neque quis consequuntur consectetur doloremque itaque repellat quasi similique blanditiis eos fugiat, ex modi facilis sunt nulla! Corrupti non temporibus, enim suscipit delectus nam quia nihil velit nobis sed et? Ex, alias aspernatur!', 'mariotattoo.jpg', 20, 1),
(3, 'Artículo 3', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum, nobis. Harum facilis soluta nesciunt, molestias necessitatibus esse nulla? A earum doloremque iusto dolor ab aspernatur laborum reprehenderit quod quae culpa itaque, asperiores assumenda non repudiandae placeat repellendus repellat, quam debitis enim mollitia qui iste quos exercitationem molestiae? Quod deserunt excepturi, neque quia quo deleniti modi cumque, tempore, recusandae culpa maxime sit nulla vitae veniam et voluptates? Corrupti minus tenetur rem impedit. Temporibus pariatur nisi quam harum id quibusdam, similique laboriosam iusto magnam, odit illum quidem repudiandae vero itaque quisquam. Provident non labore nam, facilis corrupti cum mollitia tempore repellendus, vel sapiente commodi, necessitatibus ipsa! Molestias, debitis eligendi. Odit eos nam vitae, doloribus mollitia a! Facilis culpa eligendi, quam atque voluptas sapiente, explicabo odio vero modi iure eius possimus quaerat optio eaque facere est corporis vitae, at soluta nulla accusantium recusandae? Impedit velit natus laboriosam voluptates reiciendis a exercitationem odio quas beatae ullam! Accusamus aspernatur, eum ut totam fuga dignissimos labore beatae libero culpa soluta veritatis, aliquam quo alias eligendi dolore consectetur iusto. Dignissimos tempore incidunt dolor eius iste sit iusto nisi quasi voluptate amet, consequatur sequi saepe quas ipsum. Vel maiores officiis eum recusandae, quaerat voluptate voluptatem eius ad veritatis mollitia impedit alias, fuga dignissimos perspiciatis porro hic? Distinctio soluta repellendus quibusdam itaque est rem tempora illum expedita dignissimos quisquam voluptatibus, quae et doloremque ducimus asperiores earum numquam ad quaerat nihil? Cum eveniet cupiditate beatae nam tempore, repellat provident quidem labore ad tenetur quaerat numquam in eum aperiam accusamus atque vitae rem optio porro? Quia voluptas, accusantium itaque, possimus tenetur totam tempora reprehenderit officia illum amet deserunt distinctio non sed nam? Velit doloribus vero eius neque non, minus voluptate qui deserunt harum quod blanditiis quasi numquam eveniet sapiente doloremque corporis nam, repellat voluptates dolore? Velit nihil dignissimos, id odit impedit accusantium totam, cum reprehenderit ad molestiae repellendus possimus incidunt est ratione aperiam natus ducimus porro aspernatur quo, vel nostrum voluptates nam. Voluptatibus sapiente odio doloribus maxime, ullam deleniti asperiores, quaerat hic magnam excepturi temporibus vitae alias ratione. Officia ab cumque ea doloremque maxime ipsum, sint esse sequi quas nisi minima veritatis laborum ex? Veritatis, alias itaque. Ipsa odio quae quod commodi illo accusantium ipsam debitis, corrupti, laboriosam nemo possimus quidem maiores, distinctio maxime! Error, veritatis saepe rerum, officia amet ratione temporibus fugit laborum, quod exercitationem delectus dolorem a quasi asperiores? Reprehenderit iste provident enim sit eaque totam obcaecati dignissimos repudiandae atque ipsum repellendus rem similique recusandae facere rerum libero dolore vitae neque, debitis nobis cum! Soluta est eaque sapiente accusantium pariatur at sint quae natus ratione vitae vel molestiae, beatae quibusdam mollitia delectus illo deserunt, impedit sed cupiditate officiis! Tempore porro aliquid a sunt numquam provident voluptas magnam explicabo ipsa nam sit commodi ab ducimus quasi eligendi repellat distinctio totam saepe vel dolore, facere dolores rem incidunt. Neque quis consequuntur consectetur doloremque itaque repellat quasi similique blanditiis eos fugiat, ex modi facilis sunt nulla! Corrupti non temporibus, enim suscipit delectus nam quia nihil velit nobis sed et? Ex, alias aspernatur!', 'mariotattoo.jpg', 20, 1),
(4, 'Artículo 4', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolorum, nobis. Harum facilis soluta nesciunt, molestias necessitatibus esse nulla? A earum doloremque iusto dolor ab aspernatur laborum reprehenderit quod quae culpa itaque, asperiores assumenda non repudiandae placeat repellendus repellat, quam debitis enim mollitia qui iste quos exercitationem molestiae? Quod deserunt excepturi, neque quia quo deleniti modi cumque, tempore, recusandae culpa maxime sit nulla vitae veniam et voluptates? Corrupti minus tenetur rem impedit. Temporibus pariatur nisi quam harum id quibusdam, similique laboriosam iusto magnam, odit illum quidem repudiandae vero itaque quisquam. Provident non labore nam, facilis corrupti cum mollitia tempore repellendus, vel sapiente commodi, necessitatibus ipsa! Molestias, debitis eligendi. Odit eos nam vitae, doloribus mollitia a! Facilis culpa eligendi, quam atque voluptas sapiente, explicabo odio vero modi iure eius possimus quaerat optio eaque facere est corporis vitae, at soluta nulla accusantium recusandae? Impedit velit natus laboriosam voluptates reiciendis a exercitationem odio quas beatae ullam! Accusamus aspernatur, eum ut totam fuga dignissimos labore beatae libero culpa soluta veritatis, aliquam quo alias eligendi dolore consectetur iusto. Dignissimos tempore incidunt dolor eius iste sit iusto nisi quasi voluptate amet, consequatur sequi saepe quas ipsum. Vel maiores officiis eum recusandae, quaerat voluptate voluptatem eius ad veritatis mollitia impedit alias, fuga dignissimos perspiciatis porro hic? Distinctio soluta repellendus quibusdam itaque est rem tempora illum expedita dignissimos quisquam voluptatibus, quae et doloremque ducimus asperiores earum numquam ad quaerat nihil? Cum eveniet cupiditate beatae nam tempore, repellat provident quidem labore ad tenetur quaerat numquam in eum aperiam accusamus atque vitae rem optio porro? Quia voluptas, accusantium itaque, possimus tenetur totam tempora reprehenderit officia illum amet deserunt distinctio non sed nam? Velit doloribus vero eius neque non, minus voluptate qui deserunt harum quod blanditiis quasi numquam eveniet sapiente doloremque corporis nam, repellat voluptates dolore? Velit nihil dignissimos, id odit impedit accusantium totam, cum reprehenderit ad molestiae repellendus possimus incidunt est ratione aperiam natus ducimus porro aspernatur quo, vel nostrum voluptates nam. Voluptatibus sapiente odio doloribus maxime, ullam deleniti asperiores, quaerat hic magnam excepturi temporibus vitae alias ratione. Officia ab cumque ea doloremque maxime ipsum, sint esse sequi quas nisi minima veritatis laborum ex? Veritatis, alias itaque. Ipsa odio quae quod commodi illo accusantium ipsam debitis, corrupti, laboriosam nemo possimus quidem maiores, distinctio maxime! Error, veritatis saepe rerum, officia amet ratione temporibus fugit laborum, quod exercitationem delectus dolorem a quasi asperiores? Reprehenderit iste provident enim sit eaque totam obcaecati dignissimos repudiandae atque ipsum repellendus rem similique recusandae facere rerum libero dolore vitae neque, debitis nobis cum! Soluta est eaque sapiente accusantium pariatur at sint quae natus ratione vitae vel molestiae, beatae quibusdam mollitia delectus illo deserunt, impedit sed cupiditate officiis! Tempore porro aliquid a sunt numquam provident voluptas magnam explicabo ipsa nam sit commodi ab ducimus quasi eligendi repellat distinctio totam saepe vel dolore, facere dolores rem incidunt. Neque quis consequuntur consectetur doloremque itaque repellat quasi similique blanditiis eos fugiat, ex modi facilis sunt nulla! Corrupti non temporibus, enim suscipit delectus nam quia nihil velit nobis sed et? Ex, alias aspernatur!', 'mariotattoo.jpg', 20, 1),
(5, 'Artículo 5', 'Descripción 5', 'mariotattoo.jpg', 20, 9),
(6, 'Artículo 6', 'Descripción 6', 'mariotattoo.jpg', 20, 10),
(7, 'Artículo 7', 'Descripción 7', 'mariotattoo.jpg', 20, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contiene`
--

CREATE TABLE `contiene` (
  `id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `idped` int(11) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contiene`
--

INSERT INTO `contiene` (`id`, `idprod`, `idped`, `cant`) VALUES
(13, 1, 9, 1),
(17, 1, 10, 2),
(18, 2, 10, 1),
(19, 2, 9, 1),
(21, 2, 11, 1),
(22, 4, 11, 2),
(23, 6, 11, 1),
(24, 7, 11, 1),
(25, 1, 11, 1),
(37, 3, 12, 1),
(42, 1, 13, 1),
(43, 1, 14, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `idus` int(11) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idus`, `confirmed`, `precio`) VALUES
(9, 3, 1, 40),
(10, 2, 1, 60),
(11, 3, 1, 120),
(12, 2, 1, 20),
(13, 2, 1, 20),
(14, 2, 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `rol` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `mail`, `pass`, `rol`, `activo`) VALUES
(2, 'Mario', 'Muñoz', 'whoisaxx6', 'droidermunoz@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1),
(3, 'Araceli', 'Martos', 'aramar4', 'uncorreo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprod` (`idprod`),
  ADD KEY `idped` (`idped`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idus` (`idus`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contiene`
--
ALTER TABLE `contiene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD CONSTRAINT `contiene_ibfk_1` FOREIGN KEY (`idped`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contiene_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `articulos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idus`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
