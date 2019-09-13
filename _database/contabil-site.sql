-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.37-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para contabil-site
CREATE DATABASE IF NOT EXISTS `contabil-site` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `contabil-site`;

-- Copiando estrutura para tabela contabil-site.tb_banners
CREATE TABLE IF NOT EXISTS `tb_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `subtitle` varchar(256) NOT NULL,
  `href` varchar(512) DEFAULT NULL,
  `photo` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_banners: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_banners` ENABLE KEYS */;

-- Copiando estrutura para tabela contabil-site.tb_news
CREATE TABLE IF NOT EXISTS `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `subtitle` varchar(256) NOT NULL,
  `text` text,
  `photo` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_news: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;

-- Copiando estrutura para tabela contabil-site.tb_users
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(512) NOT NULL,
  `photo` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `photo`) VALUES
	(1, 'Felipe Riboldi', 'feliperiboldimarques@gmail.com', '123', NULL);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
