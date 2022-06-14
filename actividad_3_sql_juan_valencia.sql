-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tienda_deportiva_el_podio
CREATE DATABASE IF NOT EXISTS `tienda_deportiva_el_podio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tienda_deportiva_el_podio`;

-- Dumping structure for table tienda_deportiva_el_podio.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `premium` bit(1) NOT NULL DEFAULT b'0',
  `phone_number` varchar(45) NOT NULL DEFAULT '3003003030',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tienda_deportiva_el_podio.customers: ~3 rows (approximately)
DELETE FROM `customers`;
INSERT INTO `customers` (`id`, `name`, `premium`, `phone_number`) VALUES
	(1, 'Marta', b'0', '3245798291'),
	(2, 'Pedro', b'0', '3003003030'),
	(3, 'Sara', b'0', '3002036809');

-- Dumping structure for table tienda_deportiva_el_podio.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tienda_deportiva_el_podio.payments: ~3 rows (approximately)
DELETE FROM `payments`;
INSERT INTO `payments` (`id`, `payment_method`) VALUES
	(1, 'cash'),
	(2, 'tdc_amex'),
	(3, 'check');

-- Dumping structure for table tienda_deportiva_el_podio.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '0',
  `product_size` varchar(45) NOT NULL DEFAULT '0',
  `product_imported` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tienda_deportiva_el_podio.products: ~3 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `product_size`, `product_imported`) VALUES
	(1, 'sneakers', '9.5 US', b'1'),
	(2, 't-shirt', 'L', b'1'),
	(3, 'sports bag', '35 cm', b'0');

-- Dumping structure for table tienda_deportiva_el_podio.selling
CREATE TABLE IF NOT EXISTS `selling` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cost_selling` float unsigned NOT NULL,
  `customer_id` smallint(6) unsigned NOT NULL,
  `date` date NOT NULL,
  `products_id` smallint(5) unsigned NOT NULL,
  `pyment_method_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tienda_deportiva_el_podio.selling: ~3 rows (approximately)
DELETE FROM `selling`;
INSERT INTO `selling` (`id`, `cost_selling`, `customer_id`, `date`, `products_id`, `pyment_method_id`) VALUES
	(1, 325000, 1, '2022-06-13', 1, 2),
	(2, 69900, 2, '2022-06-13', 2, 1),
	(3, 420000, 3, '2022-06-13', 3, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
