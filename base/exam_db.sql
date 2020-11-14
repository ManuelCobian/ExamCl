-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.20-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para exam_cl
DROP DATABASE IF EXISTS `exam_cl`;
CREATE DATABASE IF NOT EXISTS `exam_cl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `exam_cl`;

-- Volcando estructura para tabla exam_cl.ca_cargos
DROP TABLE IF EXISTS `ca_cargos`;
CREATE TABLE IF NOT EXISTS `ca_cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla exam_cl.ca_cargos: 3 rows
/*!40000 ALTER TABLE `ca_cargos` DISABLE KEYS */;
REPLACE INTO `ca_cargos` (`id`, `cargo`) VALUES
	(1, 'Administrador Central'),
	(2, 'Capturista de datos'),
	(3, 'Administrador Principal');
/*!40000 ALTER TABLE `ca_cargos` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.ca_pacientes
DROP TABLE IF EXISTS `ca_pacientes`;
CREATE TABLE IF NOT EXISTS `ca_pacientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `ap_materno` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `cns` varchar(255) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla exam_cl.ca_pacientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ca_pacientes` DISABLE KEYS */;
REPLACE INTO `ca_pacientes` (`id`, `nombre`, `ap_materno`, `cpf`, `fecha_nacimiento`, `foto`, `cns`, `direccion`) VALUES
	(1, 'Cobian', 'Luis', 'as', '01/10/1991', '20604725_10214258873651374_2296732544555536395_n.j', 'asf', 'asf');
/*!40000 ALTER TABLE `ca_pacientes` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.ci_sessions
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla exam_cl.ci_sessions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.login_attempts
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla exam_cl.login_attempts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `passm` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 1,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isadmin` int(11) NOT NULL DEFAULT 0,
  `islider` int(11) NOT NULL DEFAULT 0,
  `nom` varchar(50) COLLATE utf8_bin DEFAULT '',
  `app` varchar(50) COLLATE utf8_bin DEFAULT '',
  `apm` varchar(50) COLLATE utf8_bin DEFAULT '',
  `foto` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'sinfoto.png',
  `fondo` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `cargo` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `id_nivel` int(11) NOT NULL DEFAULT 0 COMMENT 'Nivel: gobernador, secretario, enlace',
  `logged` tinyint(4) NOT NULL DEFAULT 0,
  `id_sexo` tinyint(4) NOT NULL DEFAULT 1,
  `apodo` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `notas` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `educacion` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `ubicacion` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `tel` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '  ',
  `pubkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mod_ini` int(11) DEFAULT 0,
  `id_central` int(11) DEFAULT 0 COMMENT 'Dirección',
  `status_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `isadmin` (`isadmin`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla exam_cl.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `username`, `password`, `passm`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `isadmin`, `islider`, `nom`, `app`, `apm`, `foto`, `fondo`, `cargo`, `id_nivel`, `logged`, `id_sexo`, `apodo`, `notas`, `educacion`, `ubicacion`, `tel`, `pubkey`, `mod_ini`, `id_central`, `status_user`) VALUES
	(2, 'admin', '$2a$08$NQUFJyRHolivl5VWUWTwVulFxuKXXVKnjcCcIDSZUFX.igULBDw4O', '', 'admin@gmail.com', 1, 0, NULL, NULL, NULL, NULL, '7260ce431bad1aa6d969d893861fb1b3', '::1', '2020-11-13 20:25:26', '2019-07-23 16:06:17', '2020-11-13 14:25:26', 1, 0, 'Luis  Manuel', 'Cobians', 'Hernandez', 'bites.jpg', '0', '3', 0, 0, 1, ' ', ' ', ' ', ' ', '  ', NULL, 0, 1, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.user_autologin
DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla exam_cl.user_autologin: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;

-- Volcando estructura para tabla exam_cl.user_profiles
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla exam_cl.user_profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
