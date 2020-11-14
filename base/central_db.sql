-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.37-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla central_db.ca_cargos
DROP TABLE IF EXISTS `ca_cargos`;
CREATE TABLE IF NOT EXISTS `ca_cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla central_db.ca_tipo_pagos
DROP TABLE IF EXISTS `ca_tipo_pagos`;
CREATE TABLE IF NOT EXISTS `ca_tipo_pagos` (
  `id_tipo` bigint(22) NOT NULL AUTO_INCREMENT,
  `tipo_pago` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tipo`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla central_db.factura_provedor
DROP TABLE IF EXISTS `factura_provedor`;
CREATE TABLE IF NOT EXISTS `factura_provedor` (
  `id_factura` bigint(20) NOT NULL AUTO_INCREMENT,
  `folio` varchar(50) DEFAULT '0',
  `concepto` varchar(20) NOT NULL DEFAULT '0',
  `pdf` varchar(50) DEFAULT '0',
  `id_provedor` bigint(20) NOT NULL DEFAULT '0',
  `id_central` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla central_db.login_attempts
DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- La exportación de datos fue deseleccionada.
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- La exportación de datos fue deseleccionada.
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

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla central_db.user_profiles
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
