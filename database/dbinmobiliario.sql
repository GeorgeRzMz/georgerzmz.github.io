-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2023 a las 01:05:03
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbinmobiliario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agent_list`
--

CREATE TABLE `agent_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agent_list`
--

INSERT INTO `agent_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(3, 'carlos', 'alanya', 'peter', 'Masculino', '942557154', 'los lib', 'admin@gmail.com', 'dc599a9972fde3045dab59dbd1ae170b', 'uploads/agents/3.jpeg?v=1693865467', 1, 0, '2023-09-04 17:11:07', NULL),
(4, 'luis', 'gallardo', 'templado', 'Masculino', '942557154', 'Av.  las bacterias y gérmenes 147', 'luis@gmail.com', '502ff82f7f1f8218dd41201fe4353687', 'uploads/agents/4.jpg?v=1694452526', 1, 0, '2023-09-11 12:15:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amenity_list`
--

CREATE TABLE `amenity_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` tinyint(1) DEFAULT 1 COMMENT '1 = indoor, 2 = outdoor',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `amenity_list`
--

INSERT INTO `amenity_list` (`id`, `name`, `type`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Recamara principal', 1, 1, 0, '2022-02-19 09:45:33'),
(2, 'Habitación de huéspedes', 1, 1, 0, '2022-02-19 09:45:42'),
(3, 'Sala de estar', 1, 1, 0, '2022-02-19 09:45:48'),
(4, 'Chimenea', 1, 1, 0, '2022-02-19 09:45:56'),
(5, 'Cocina', 1, 1, 0, '2022-02-19 09:46:17'),
(6, 'Garaje', 2, 1, 0, '2022-02-19 09:47:08'),
(7, 'Balcon', 2, 1, 0, '2022-02-19 09:47:15'),
(8, 'Piscina', 2, 1, 0, '2022-02-19 09:47:30'),
(9, 'Espacio de jardín', 2, 1, 0, '2022-02-19 09:47:43'),
(10, 'Internet', 1, 1, 0, '2022-02-19 09:52:07'),
(11, 'Lavadora', 1, 1, 0, '2022-02-19 09:52:15'),
(12, 'Área de juegos para niños', 1, 1, 0, '2022-02-19 09:52:39'),
(13, 'campo con regadio', 2, 1, 0, '2023-09-09 12:22:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `real_estate_amenities`
--

CREATE TABLE `real_estate_amenities` (
  `real_estate_id` int(30) NOT NULL,
  `amenity_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `real_estate_amenities`
--

INSERT INTO `real_estate_amenities` (`real_estate_id`, `amenity_id`) VALUES
(4, 1),
(4, 12),
(4, 7),
(4, 4),
(4, 5),
(4, 9),
(5, 7),
(5, 5),
(5, 9),
(5, 11),
(5, 8),
(5, 3),
(8, 1),
(8, 12),
(8, 7),
(8, 4),
(8, 5),
(8, 9),
(8, 6),
(8, 2),
(8, 10),
(8, 11),
(7, 1),
(7, 12),
(7, 7),
(7, 4),
(7, 5),
(7, 6),
(7, 2),
(7, 10),
(7, 11),
(7, 8),
(6, 7),
(6, 5),
(9, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `real_estate_list`
--

CREATE TABLE `real_estate_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `type_id` int(30) NOT NULL,
  `agent_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Available, 2 = not Available',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `real_estate_list`
--

INSERT INTO `real_estate_list` (`id`, `code`, `name`, `type_id`, `agent_id`, `status`, `date_created`, `date_updated`) VALUES
(4, '20230900001', 'castillo de naipes', 1, 3, 1, '2023-09-05 16:03:15', NULL),
(5, '20230900002', 'casa de lujo', 1, 3, 1, '2023-09-05 16:27:47', NULL),
(6, '20230900005', 'Casa de lujo', 1, 3, 1, '2023-09-06 15:39:52', '2023-09-07 16:48:46'),
(7, '20230900003', 'casa de campo', 1, 3, 1, '2023-09-06 15:44:22', '2023-09-07 16:47:34'),
(8, '20230900006', 'casa de campo', 3, 3, 1, '2023-09-06 15:49:33', '2023-09-07 16:46:48'),
(9, '20230900007', 'campos de pampa de hambre', 4, 3, 0, '2023-09-08 17:41:39', '2023-09-13 12:14:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `real_estate_meta`
--

CREATE TABLE `real_estate_meta` (
  `real_estate_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `real_estate_meta`
--

INSERT INTO `real_estate_meta` (`real_estate_id`, `meta_field`, `meta_value`) VALUES
(4, 'type', 'residencial'),
(4, 'purpose', 'vender'),
(4, 'area', '100 mt2'),
(4, 'location', 'urbanizacion los retamos'),
(4, 'sale_price', '150.000'),
(4, 'coordinates', '1232123 - 121231231'),
(4, 'description', '&lt;p&gt;excelente zona comercial&amp;nbsp;&lt;/p&gt;'),
(4, 'thumbnail_path', 'uploads/thumbnails/4.png?v=1693947795'),
(5, 'type', 'duplex'),
(5, 'purpose', 'alquilar'),
(5, 'area', '500mt2'),
(5, 'location', 'urbanización los matorrales'),
(5, 'sale_price', '2000.000'),
(5, 'coordinates', '121212'),
(5, 'description', '&lt;h2&gt;mastakana&lt;/h2&gt;'),
(5, 'thumbnail_path', 'uploads/thumbnails/5.jpg?v=1693949267'),
(8, 'type', 'duplex'),
(8, 'purpose', 'Para vivir seguro.'),
(8, 'area', '150mt2'),
(8, 'location', 'Huancayo, Junín'),
(8, 'sale_price', '2000.000'),
(8, 'coordinates', '-11.118540, -75.358748'),
(8, 'description', '&lt;div data-test-id=&quot;closeup-title&quot; class=&quot;zI7 iyn Hsu&quot; style=&quot;color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, メイリオ, Meiryo, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;div class=&quot;zI7 iyn Hsu&quot;&gt;&lt;div class=&quot;CloseupTitleCard&quot; style=&quot;color: rgb(68, 68, 68); font-weight: 700;&quot;&gt;&lt;div class=&quot;KO4 zI7 iyn Hsu&quot; style=&quot;margin-top: 16px;&quot;&gt;&lt;div data-test-id=&quot;rich-pin-information&quot; itemscope=&quot;&quot; itemtype=&quot;https://schema.org/Article&quot;&gt;&lt;div itemprop=&quot;name&quot;&gt;&lt;a class=&quot;Wk9 CCY S9z eEj kVc xQ4 iyn&quot; href=&quot;https://proyectos.habitissimo.es/proyecto/microrreformas-x-dormitorios-en-los-que-querras-dormir?utm_expid=49153841-148.lQb3edLSTXSqs3pCactRrw.0&amp;amp;utm_referrer=https://proyectos.habitissimo.es/reformas&quot; rel=&quot;noopener noreferrer nofollow&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); outline: none; transition: transform 85ms ease-out 0s; display: block; border-radius: 0px;&quot;&gt;&lt;h1 class=&quot;lH1 dyH iFc H2s GTB O2T zDA IZT&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-font-smoothing: antialiased; font-size: var(--font-size-500); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-semibold); overflow-wrap: break-word;&quot;&gt;8 dormitorios en los que querr&aacute;s dormir&lt;/h1&gt;&lt;div class=&quot;XiG zI7 iyn Hsu&quot; style=&quot;position: relative; display: inline;&quot;&gt;&lt;div class=&quot;NVN CRJ zI7 iyn Hsu&quot; style=&quot;clip: rect(0px, 0px, 0px, 0px); border: 0px; clip-path: inset(50%); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; text-wrap: nowrap; width: 1px;&quot;&gt;; Abre um novo separador&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;jzS ujU un8 C9i TB_&quot; style=&quot;display: flex; margin: 0px; flex-direction: column; flex: 1 1 auto; min-height: 0px; min-width: 0px; color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, メイリオ, Meiryo, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;div class=&quot;dLb hs0 un8 C9i TB_&quot; style=&quot;display: flex; margin: 0px; flex-direction: row; align-items: baseline;&quot;&gt;&lt;div class=&quot;zI7 iyn Hsu&quot; style=&quot;max-width: 444px;&quot;&gt;&lt;span class=&quot;tBJ dyH iFc sAJ O2T zDA IZT swG&quot; style=&quot;color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-300); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-normal); overflow-wrap: break-word;&quot;&gt;&lt;span class=&quot;richPinInformation&quot; data-test-id=&quot;richPinInformation-description&quot;&gt;&lt;div class=&quot;KO4 RDc zI7 iyn Hsu&quot; style=&quot;margin-top: 16px; margin-bottom: 16px;&quot;&gt;&lt;div data-test-id=&quot;truncated-description&quot; class=&quot;XiG ujU zI7 iyn Hsu&quot; style=&quot;position: relative; flex: 1 1 auto; min-height: 0px; min-width: 0px;&quot;&gt;&lt;div dir=&quot;ltr&quot;&gt;&lt;div class=&quot;tBJ dyH iFc sAJ O2T Oii IZT swG CKL&quot; style=&quot;color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-300); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-normal); overflow-wrap: break-word; -webkit-box-orient: vertical; display: -webkit-box; max-width: 100%; overflow: hidden; -webkit-line-clamp: 3;&quot;&gt;Hasta los cambios m&aacute;s peque&ntilde;os suponen grandes diferencias en muchas ocasiones.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;'),
(8, 'thumbnail_path', 'uploads/thumbnails/8.jpg?v=1694033373'),
(7, 'type', 'residencial'),
(7, 'purpose', 'Para vivir agradable.'),
(7, 'area', '180mt2'),
(7, 'location', 'las palmeras de la merced'),
(7, 'sale_price', '180.000'),
(7, 'coordinates', '-11.118540, -75.358748'),
(7, 'description', '&lt;p&gt;CASA&lt;/p&gt;&lt;div data-test-id=&quot;closeup-title&quot; class=&quot;zI7 iyn Hsu&quot; style=&quot;color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, メイリオ, Meiryo, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;div class=&quot;zI7 iyn Hsu&quot;&gt;&lt;div class=&quot;CloseupTitleCard&quot; style=&quot;color: rgb(68, 68, 68); font-weight: 700;&quot;&gt;&lt;div class=&quot;KO4 zI7 iyn Hsu&quot; style=&quot;margin-top: 16px;&quot;&gt;&lt;div data-test-id=&quot;rich-pin-information&quot; itemscope=&quot;&quot; itemtype=&quot;https://schema.org/Article&quot;&gt;&lt;div itemprop=&quot;name&quot;&gt;&lt;a class=&quot;Wk9 CCY S9z eEj kVc xQ4 iyn&quot; href=&quot;https://proyectos.habitissimo.es/proyecto/microrreformas-x-dormitorios-en-los-que-querras-dormir?utm_expid=49153841-148.lQb3edLSTXSqs3pCactRrw.0&amp;amp;utm_referrer=https://proyectos.habitissimo.es/reformas&quot; rel=&quot;noopener noreferrer nofollow&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); outline: none; transition: transform 85ms ease-out 0s; display: block; border-radius: 0px;&quot;&gt;&lt;h1 class=&quot;lH1 dyH iFc H2s GTB O2T zDA IZT&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; -webkit-font-smoothing: antialiased; font-size: var(--font-size-500); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-semibold); overflow-wrap: break-word;&quot;&gt;8 dormitorios en los que querr&aacute;s dormir&lt;/h1&gt;&lt;div class=&quot;XiG zI7 iyn Hsu&quot; style=&quot;position: relative; display: inline;&quot;&gt;&lt;div class=&quot;NVN CRJ zI7 iyn Hsu&quot; style=&quot;clip: rect(0px, 0px, 0px, 0px); border: 0px; clip-path: inset(50%); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; text-wrap: nowrap; width: 1px;&quot;&gt;; Abre um novo separador&lt;/div&gt;&lt;/div&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;jzS ujU un8 C9i TB_&quot; style=&quot;display: flex; margin: 0px; flex-direction: column; flex: 1 1 auto; min-height: 0px; min-width: 0px; color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;ヒラギノ角ゴ Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, メイリオ, Meiryo, &amp;quot;ＭＳ Ｐゴシック&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;div class=&quot;dLb hs0 un8 C9i TB_&quot; style=&quot;display: flex; margin: 0px; flex-direction: row; align-items: baseline;&quot;&gt;&lt;div class=&quot;zI7 iyn Hsu&quot; style=&quot;max-width: 444px;&quot;&gt;&lt;span class=&quot;tBJ dyH iFc sAJ O2T zDA IZT swG&quot; style=&quot;color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-300); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-normal); overflow-wrap: break-word;&quot;&gt;&lt;span class=&quot;richPinInformation&quot; data-test-id=&quot;richPinInformation-description&quot;&gt;&lt;div class=&quot;KO4 RDc zI7 iyn Hsu&quot; style=&quot;margin-top: 16px; margin-bottom: 16px;&quot;&gt;&lt;div data-test-id=&quot;truncated-description&quot; class=&quot;XiG ujU zI7 iyn Hsu&quot; style=&quot;position: relative; flex: 1 1 auto; min-height: 0px; min-width: 0px;&quot;&gt;&lt;div dir=&quot;ltr&quot;&gt;&lt;div class=&quot;tBJ dyH iFc sAJ O2T Oii IZT swG CKL&quot; style=&quot;color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-300); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-normal); overflow-wrap: break-word; -webkit-box-orient: vertical; display: -webkit-box; max-width: 100%; overflow: hidden; -webkit-line-clamp: 3;&quot;&gt;Hasta los cambios m&aacute;s peque&ntilde;os suponen grandes diferencias en muchas ocasiones.&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;'),
(7, 'thumbnail_path', 'uploads/thumbnails/7.jpg?v=1694033062'),
(6, 'type', 'residencial'),
(6, 'purpose', 'Para vivir como rey.'),
(6, 'area', '150mt2'),
(6, 'location', 'amazonas, urb, las perlas'),
(6, 'sale_price', '110.000'),
(6, 'coordinates', '-4.233653, -77.869284'),
(6, 'description', '&lt;p&gt;CASA MODERNA&lt;/p&gt;&lt;p&gt;CUENTA:&lt;/p&gt;&lt;p&gt;02 SS HH&lt;/p&gt;&lt;p&gt;04 DORMITORIO&lt;/p&gt;&lt;p&gt;COCHERA&lt;/p&gt;&lt;p&gt;SALA&lt;/p&gt;&lt;p&gt;COCINA&lt;/p&gt;&lt;p&gt;COMEDOR&lt;/p&gt;&lt;p&gt;TERRAZA&lt;/p&gt;'),
(6, 'thumbnail_path', 'uploads/thumbnails/6.jpeg?v=1694032792'),
(9, 'type', 'tierra para cultivo'),
(9, 'purpose', 'siembra'),
(9, 'area', '10000.000 mt2'),
(9, 'location', 'cerro camote'),
(9, 'sale_price', '1000.00'),
(9, 'coordinates', '-11.962993, -76.929707'),
(9, 'description', '&lt;p&gt;con riego&lt;/p&gt;'),
(9, 'thumbnail_path', 'uploads/thumbnails/9.jpg?v=1694212899');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Inmobiliaria Casagrande'),
(6, 'short_name', 'Tarea Completo'),
(11, 'logo', 'uploads/tc.png?v=1694012790'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1693949111.jpg?v=1693949111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_list`
--

CREATE TABLE `type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_list`
--

INSERT INTO `type_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Residencial', 'Bienes raíces residenciales se refiere a cualquier propiedad utilizada para vivienda. Estos incluyen casas familiares, cooperativas, dúplex y condominios donde vive el inversionista o una parte que alquila la propiedad. Este tipo es ideal si está buscando comenzar a construir la casa de sus sueños o formar una familia.', 1, 0, '2022-02-19 10:02:11', '2023-09-05 09:35:42'),
(2, 'Comercial', 'Bienes raíces comerciales se refiere a cualquier propiedad cuyo objetivo principal sea albergar operaciones comerciales y servicios. Estas propiedades suelen incluir complejos de apartamentos, tiendas, gasolineras, hoteles, hospitales, aparcamientos, etc.', 1, 0, '2022-02-19 10:02:33', '2023-09-09 12:12:34'),
(3, 'Industrial', 'Los bienes raíces industriales se refieren a todos los terrenos, edificios y otras propiedades que albergan actividades de tamaño industrial. Estas actividades incluyen producción, montaje, almacenamiento, fabricación, investigación y distribución de bienes y productos.', 1, 0, '2022-02-19 10:02:48', '2023-09-05 09:36:17'),
(4, 'Tierra cruda\n', 'La tierra cruda generalmente se refiere a tierras agrícolas o no urbanizadas, como granjas, ranchos y bosques. Muchos inversores consideran estas propiedades una buena inversión porque son recursos tangibles y finitos. Además, estas propiedades le evitan la molestia de realizar renovaciones y preocuparse por bienes robados o dañados.', 1, 0, '2022-02-19 10:03:35', '2023-09-05 09:36:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Tarea ', 'Completo', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1645064505', NULL, 1, '2021-01-20 14:02:37', '2023-09-13 12:11:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agent_list`
--
ALTER TABLE `agent_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `amenity_list`
--
ALTER TABLE `amenity_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `real_estate_amenities`
--
ALTER TABLE `real_estate_amenities`
  ADD KEY `real_estate_id` (`real_estate_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indices de la tabla `real_estate_list`
--
ALTER TABLE `real_estate_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indices de la tabla `real_estate_meta`
--
ALTER TABLE `real_estate_meta`
  ADD KEY `real_estate_id` (`real_estate_id`);

--
-- Indices de la tabla `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_list`
--
ALTER TABLE `type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agent_list`
--
ALTER TABLE `agent_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `amenity_list`
--
ALTER TABLE `amenity_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `real_estate_list`
--
ALTER TABLE `real_estate_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `type_list`
--
ALTER TABLE `type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `real_estate_amenities`
--
ALTER TABLE `real_estate_amenities`
  ADD CONSTRAINT `real_estate_amenities_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estate_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `real_estate_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenity_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `real_estate_list`
--
ALTER TABLE `real_estate_list`
  ADD CONSTRAINT `real_estate_list_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `real_estate_list_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agent_list` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `real_estate_meta`
--
ALTER TABLE `real_estate_meta`
  ADD CONSTRAINT `real_estate_meta_ibfk_1` FOREIGN KEY (`real_estate_id`) REFERENCES `real_estate_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
