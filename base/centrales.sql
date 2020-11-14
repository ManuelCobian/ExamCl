-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.9 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para central_db
CREATE DATABASE IF NOT EXISTS `central_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `central_db`;

-- Volcando estructura para tabla central_db.ca_centrales
DROP TABLE IF EXISTS `ca_centrales`;
CREATE TABLE IF NOT EXISTS `ca_centrales` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `cp` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_centrales: 2 rows
/*!40000 ALTER TABLE `ca_centrales` DISABLE KEYS */;
INSERT INTO `ca_centrales` (`id`, `nombre`, `domicilio`, `cp`, `rfc`, `email`, `estado`, `correo`, `telefono`) VALUES
	(1, 'Manuel Anaya rojas', 'KM 3 Libramiento CARR Guadalajara Manzanillo Nueva centra C9 Y C10 Santa Amalia', '28040', 'AARM591224Db0', 'transportes-anayarojas@hotmail.com', 'Colima', 'colima@gmail.com', '31312112'),
	(2, 'Central Tonala', 'tonala', NULL, NULL, NULL, 'jalisco', 'tonalita@gmail.com', '123423');
/*!40000 ALTER TABLE `ca_centrales` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
