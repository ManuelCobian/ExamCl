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
DROP DATABASE IF EXISTS `central_db`;
CREATE DATABASE IF NOT EXISTS `central_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `central_db`;

-- Volcando estructura para tabla central_db.ca_camiones
DROP TABLE IF EXISTS `ca_camiones`;
CREATE TABLE IF NOT EXISTS `ca_camiones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `id_central` bigint(22) DEFAULT NULL,
  `placas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_camiones: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `ca_camiones` DISABLE KEYS */;
INSERT INTO `ca_camiones` (`id`, `numero`, `modelo`, `id_central`, `placas`) VALUES
	(1, '052', 'MERCEDEZ', 1, 'FOGLAH23'),
	(2, '0522', 'A', 1, 'A'),
	(3, 'Todos', 'MERCEDEZ', 1, 'FOGLAH23');
/*!40000 ALTER TABLE `ca_camiones` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ca_cargos
DROP TABLE IF EXISTS `ca_cargos`;
CREATE TABLE IF NOT EXISTS `ca_cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_cargos: 3 rows
/*!40000 ALTER TABLE `ca_cargos` DISABLE KEYS */;
INSERT INTO `ca_cargos` (`id`, `cargo`) VALUES
	(1, 'Administrador Central'),
	(2, 'Capturista de datos'),
	(3, 'Administrador Principal');
/*!40000 ALTER TABLE `ca_cargos` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ca_centrales
DROP TABLE IF EXISTS `ca_centrales`;
CREATE TABLE IF NOT EXISTS `ca_centrales` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_centrales: 2 rows
/*!40000 ALTER TABLE `ca_centrales` DISABLE KEYS */;
INSERT INTO `ca_centrales` (`id`, `nombre`, `domicilio`, `estado`, `correo`, `telefono`) VALUES
	(1, 'Manuel Anaya rojas', 'AV colima', 'Colima', 'colima@gmail.com', '31312112'),
	(2, 'Central Tonala', 'tonala', 'jalisco', 'tonalita@gmail.com', '123423');
/*!40000 ALTER TABLE `ca_centrales` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ca_choferes
DROP TABLE IF EXISTS `ca_choferes`;
CREATE TABLE IF NOT EXISTS `ca_choferes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chofer` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `edad` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `id_central` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_choferes: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `ca_choferes` DISABLE KEYS */;
INSERT INTO `ca_choferes` (`id`, `chofer`, `domicilio`, `edad`, `telefono`, `nota`, `id_central`) VALUES
	(1, 'CHIMINITO', 'COLIMA', '25', '312141', 'SOY CHIMINO', 1),
	(2, 'ELIEZER', 'COLOMA', '34', '31210569', 'NINGUNA', 1);
/*!40000 ALTER TABLE `ca_choferes` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ca_provedores
DROP TABLE IF EXISTS `ca_provedores`;
CREATE TABLE IF NOT EXISTS `ca_provedores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provedor` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `id_central` bigint(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_provedores: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `ca_provedores` DISABLE KEYS */;
INSERT INTO `ca_provedores` (`id`, `provedor`, `domicilio`, `rfc`, `email`, `telefono`, `id_central`) VALUES
	(1, 'PROVEDOR', 'COLIMA', 'CHOLHLA294020', 'lcobianh@gmail.com', '31214121', 1),
	(2, 'PROVEDOR 2', 'jalisco', 'JGLSO2930SLA', 'JALISO', '21213112', 2);
/*!40000 ALTER TABLE `ca_provedores` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ca_tipo_pagos
DROP TABLE IF EXISTS `ca_tipo_pagos`;
CREATE TABLE IF NOT EXISTS `ca_tipo_pagos` (
  `id_tipo` bigint(22) NOT NULL AUTO_INCREMENT,
  `tipo_pago` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tipo`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ca_tipo_pagos: 3 rows
/*!40000 ALTER TABLE `ca_tipo_pagos` DISABLE KEYS */;
INSERT INTO `ca_tipo_pagos` (`id_tipo`, `tipo_pago`) VALUES
	(1, 'Credito'),
	(2, 'Contado'),
	(3, 'Tarjeta');
/*!40000 ALTER TABLE `ca_tipo_pagos` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ci_sessions
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla central_db.ci_sessions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.corridas
DROP TABLE IF EXISTS `corridas`;
CREATE TABLE IF NOT EXISTS `corridas` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `id_central` int(22) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `abierto` int(22) NOT NULL,
  `finalizado` int(22) NOT NULL,
  `rechazado` int(22) NOT NULL,
  `nota` varchar(50) NOT NULL,
  `u_cierra` int(22) NOT NULL,
  `u_modifica` int(22) NOT NULL,
  `u_crea` int(22) NOT NULL,
  `total_ingreso_dia` varchar(50) DEFAULT '0',
  `total_gastado_chof` varchar(50) DEFAULT '0',
  `total_gastado_provedor` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.corridas: 3 rows
/*!40000 ALTER TABLE `corridas` DISABLE KEYS */;
INSERT INTO `corridas` (`id`, `id_central`, `fecha`, `abierto`, `finalizado`, `rechazado`, `nota`, `u_cierra`, `u_modifica`, `u_crea`, `total_ingreso_dia`, `total_gastado_chof`, `total_gastado_provedor`) VALUES
	(1, 1, '2019-09-12 00:00:00', 1, 0, 0, '', 0, 0, 2, '178', '922', '0'),
	(2, 1, '2019-09-17 00:00:00', 1, 0, 0, '', 0, 0, 2, '0', '0', '0'),
	(3, 1, '2019-09-20 00:00:00', 1, 0, 0, '', 0, 0, 2, '290.96', '1451.04', '0');
/*!40000 ALTER TABLE `corridas` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.gastos_provedores
DROP TABLE IF EXISTS `gastos_provedores`;
CREATE TABLE IF NOT EXISTS `gastos_provedores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_provedor` bigint(20) DEFAULT NULL,
  `id_camion` int(20) DEFAULT NULL,
  `num_factura` varchar(255) DEFAULT NULL,
  `concepto` text,
  `factura` varchar(255) DEFAULT NULL,
  `xml_factura` varchar(255) DEFAULT NULL,
  `importe` varchar(255) DEFAULT NULL,
  `cantidad_pagada` varchar(255) DEFAULT NULL,
  `id_pago` int(20) DEFAULT NULL,
  `id_corrida` int(20) DEFAULT NULL,
  `id_central` int(20) DEFAULT NULL,
  `fecha_contra_recibo` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifica` int(20) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.gastos_provedores: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `gastos_provedores` DISABLE KEYS */;
INSERT INTO `gastos_provedores` (`id`, `id_provedor`, `id_camion`, `num_factura`, `concepto`, `factura`, `xml_factura`, `importe`, `cantidad_pagada`, `id_pago`, `id_corrida`, `id_central`, `fecha_contra_recibo`, `modifica`, `fecha_pago`) VALUES
	(1, 1, 2, '43', '21', NULL, NULL, '1300', '1500', 2, 3, 1, '2019-09-20 00:00:00', NULL, '2019-09-20 00:00:00');
/*!40000 ALTER TABLE `gastos_provedores` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.gasto_camiones_choferes
DROP TABLE IF EXISTS `gasto_camiones_choferes`;
CREATE TABLE IF NOT EXISTS `gasto_camiones_choferes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_chofer` bigint(20) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `sueldo` varchar(50) DEFAULT NULL,
  `administraciones` varchar(255) DEFAULT NULL,
  `archivo_admin` varchar(255) DEFAULT NULL,
  `salidas` varchar(50) DEFAULT NULL,
  `total_reportar` varchar(50) DEFAULT NULL,
  `total_gastado` varchar(50) DEFAULT NULL,
  `ingreso_neto` varchar(50) DEFAULT NULL,
  `archivo_salida` varchar(255) DEFAULT NULL,
  `reparaciones` varchar(50) DEFAULT NULL,
  `archivo_reparaciones` varchar(50) DEFAULT NULL,
  `gasto_extra` varchar(50) DEFAULT NULL,
  `archivo_gasto_extra` varchar(50) DEFAULT NULL,
  `fecha_gasto` datetime DEFAULT CURRENT_TIMESTAMP,
  `disel` varchar(50) DEFAULT NULL,
  `id_central` int(20) DEFAULT NULL,
  `id_corrida` bigint(20) DEFAULT NULL,
  `modifica` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.gasto_camiones_choferes: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `gasto_camiones_choferes` DISABLE KEYS */;
INSERT INTO `gasto_camiones_choferes` (`id`, `id_chofer`, `id_camion`, `sueldo`, `administraciones`, `archivo_admin`, `salidas`, `total_reportar`, `total_gastado`, `ingreso_neto`, `archivo_salida`, `reparaciones`, `archivo_reparaciones`, `gasto_extra`, `archivo_gasto_extra`, `fecha_gasto`, `disel`, `id_central`, `id_corrida`, `modifica`) VALUES
	(1, 1, 1, '104.52', '200', '37823303_238100776820678_3322742783592103936_n.jpg', '100', '276.48', '644.52', '226.48000000000002', NULL, '100', '39891464_1125034404319555_6326865054712987648_n.jp', '90', '39134035_1897016077058139_540927877978259456_n.jpg', '2019-09-20 00:00:00', '50', 1, 3, 0);
/*!40000 ALTER TABLE `gasto_camiones_choferes` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.ingresos
DROP TABLE IF EXISTS `ingresos`;
CREATE TABLE IF NOT EXISTS `ingresos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_chofer` bigint(20) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `boletos_vendidos` varchar(50) DEFAULT NULL,
  `archivo_boletos_vendidos` varchar(20) DEFAULT NULL,
  `boletos_taquilla` varchar(50) DEFAULT NULL,
  `archivo_boleto_taquilla` varchar(255) DEFAULT NULL,
  `ingreso_bruto` varchar(50) DEFAULT NULL,
  `ingreso_neto` varchar(50) DEFAULT NULL,
  `fecha_ingreso` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_central` int(20) DEFAULT NULL,
  `id_corrida` bigint(20) DEFAULT NULL,
  `modifica` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla central_db.ingresos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
INSERT INTO `ingresos` (`id`, `id_chofer`, `id_camion`, `boletos_vendidos`, `archivo_boletos_vendidos`, `boletos_taquilla`, `archivo_boleto_taquilla`, `ingreso_bruto`, `ingreso_neto`, `fecha_ingreso`, `id_central`, `id_corrida`, `modifica`) VALUES
	(1, 1, 1, '550', NULL, '550', NULL, '1100', NULL, '2019-09-12 00:00:00', 1, 1, 0),
	(2, 1, 2, '550', NULL, '550', NULL, '1100', NULL, '2019-09-17 00:00:00', 1, 2, 0),
	(3, 1, 1, '321', NULL, '550', NULL, '871', NULL, '2019-09-20 00:00:00', 1, 3, 0);
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.login_attempts
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla central_db.login_attempts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `passm` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isadmin` int(11) NOT NULL DEFAULT '0',
  `islider` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(50) COLLATE utf8_bin DEFAULT '',
  `app` varchar(50) COLLATE utf8_bin DEFAULT '',
  `apm` varchar(50) COLLATE utf8_bin DEFAULT '',
  `foto` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT 'sinfoto.png',
  `fondo` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `cargo` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `id_nivel` int(11) NOT NULL DEFAULT '0' COMMENT 'Nivel: gobernador, secretario, enlace',
  `logged` tinyint(4) NOT NULL DEFAULT '0',
  `id_sexo` tinyint(4) NOT NULL DEFAULT '1',
  `apodo` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `notas` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `educacion` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `ubicacion` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT ' ',
  `tel` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '  ',
  `pubkey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mod_ini` int(11) DEFAULT '0',
  `id_central` int(11) DEFAULT '0' COMMENT 'Dirección',
  `status_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `isadmin` (`isadmin`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla central_db.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `passm`, `email`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `isadmin`, `islider`, `nom`, `app`, `apm`, `foto`, `fondo`, `cargo`, `id_nivel`, `logged`, `id_sexo`, `apodo`, `notas`, `educacion`, `ubicacion`, `tel`, `pubkey`, `mod_ini`, `id_central`, `status_user`) VALUES
	(1, 'lcobian', '$2a$08$XWttCLk5IbQcimDMlXSTbedw2VXklpS/WRJycRHG/7hxi5l0dNRVq', '', 'lcobianh@gmail.com', 0, 0, NULL, NULL, NULL, NULL, '0eb60a378d71d05ffd00e3ea058ccfc7', '::1', '2019-07-23 11:03:30', '2019-07-23 16:03:30', '2019-07-23 16:16:18', 0, 0, 'Luis Manuels', 'Cobian', 'Hernandez', '22df7-1521892_10202849716583428_5322571182878425809_n.jpg', '0', '2', 0, 0, 1, ' ', ' ', ' ', ' ', '  312158945', NULL, 0, 1, NULL),
	(2, 'admin', '$2a$08$NQUFJyRHolivl5VWUWTwVulFxuKXXVKnjcCcIDSZUFX.igULBDw4O', '', 'admin@gmail.com', 1, 0, NULL, NULL, NULL, NULL, '7260ce431bad1aa6d969d893861fb1b3', '::1', '2019-09-20 15:09:59', '2019-07-23 16:06:17', '2019-09-20 10:09:59', 1, 0, 'Luis  Manuel', 'Cobians', 'Hernandez', 'bites.jpg', '0', '3', 0, 0, 1, ' ', ' ', ' ', ' ', '  ', NULL, 0, 1, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.user_autologin
DROP TABLE IF EXISTS `user_autologin`;
CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla central_db.user_autologin: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_autologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_autologin` ENABLE KEYS */;

-- Volcando estructura para tabla central_db.user_profiles
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla central_db.user_profiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
