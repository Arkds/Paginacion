-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2023 a las 22:54:32
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nombre`, `descripcion`, `fecha_vencimiento`) VALUES
(1, 'Ibuprofeno', 'Antiinflamatorio no esteroideo', '2023-12-31'),
(2, 'Paracetamol', 'Analgésico y antipirético', '2023-11-30'),
(3, 'Amoxicilina', 'Antibiótico', '2023-10-31'),
(4, 'Loratadina', 'Antihistamínico', '2023-09-30'),
(5, 'Omeprazol', 'Inhibidor de la bomba de protones', '2023-08-31'),
(6, 'Diazepam', 'Ansiolítico y relajante muscular', '2023-07-31'),
(7, 'Atorvastatina', 'Estatina para reducir el colesterol', '2023-06-30'),
(8, 'Metformina', 'Antidiabético', '2023-05-31'),
(9, 'Fluoxetina', 'Antidepresivo inhibidor selectivo de la recaptación de serotonina', '2023-04-30'),
(10, 'Losartán', 'Bloqueador de los receptores de angiotensina II', '2023-03-31'),
(11, 'Aspirina', 'Analgésico y antiinflamatorio', '2023-02-28'),
(12, 'Alprazolam', 'Ansiolítico', '2023-01-31'),
(13, 'Cetirizina', 'Antihistamínico', '2022-12-31'),
(14, 'Lansoprazol', 'Inhibidor de la bomba de protones', '2022-11-30'),
(15, 'Amlodipino', 'Bloqueador de los canales de calcio', '2022-10-31'),
(16, 'Simvastatina', 'Estatina para reducir el colesterol', '2022-09-30'),
(17, 'Metoprolol', 'Bloqueador beta', '2022-08-31'),
(18, 'Fluconazol', 'Antifúngico', '2022-07-31'),
(19, 'Ciprofloxacina', 'Antibiótico', '2022-06-30'),
(20, 'Lisinopril', 'Inhibidor de la enzima convertidora de angiotensina', '2022-05-31'),
(21, 'Hidroclorotiazida', 'Diurético', '2022-04-30'),
(22, 'Sertralina', 'Antidepresivo inhibidor selectivo de la recaptación de serotonina', '2022-03-31'),
(23, 'Metronidazol', 'Antibiótico y antiparasitario', '2022-02-28'),
(24, 'Clonazepam', 'Antiepiléptico y ansiolítico', '2022-01-31'),
(25, 'Tramadol', 'Analgésico opioide', '2021-12-31'),
(26, 'Dextrometorfano', 'Antitusivo', '2021-11-30'),
(27, 'Pregabalina', 'Anticonvulsivo y analgésico', '2021-10-31'),
(28, 'Atenolol', 'Bloqueador beta', '2021-09-30'),
(29, 'Esomeprazol', 'Inhibidor de la bomba de protones', '2021-08-31'),
(30, 'Ranitidina', 'Antagonista del receptor H2', '2021-07-31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
