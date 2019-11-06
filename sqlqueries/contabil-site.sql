-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.3.16-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando dados para a tabela contabil-site.tb_banners: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_banners` DISABLE KEYS */;
INSERT INTO `tb_banners` (`id`, `title`, `subtitle`, `href`, `photo`) VALUES
	(1, 'Sua empresa em boas mãos', 'Conheça nossas soluções que vão ajudar seu negócio.', '', 'images/upload_0eef161732c8818a6749ca99bdb8d0db.jpg'),
	(2, 'Imposto de Renda 2019', 'Faça seu imposto de renda com especialistas no assunto', '', 'images/upload_ce62622c442a3c2b25679ded677a6fd5.jpg');
/*!40000 ALTER TABLE `tb_banners` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_contacts: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
INSERT INTO `tb_contacts` (`id`, `name`, `company`, `email`, `telephone`, `subject`, `message`, `register`) VALUES
	(1, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'Olá', '2019-09-27 11:52:23'),
	(2, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'Olá', '2019-09-27 11:53:11'),
	(3, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 11:58:43'),
	(4, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:06:14'),
	(5, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:12:23'),
	(6, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:13:03'),
	(7, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:14:09'),
	(8, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:15:14'),
	(9, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:15:22'),
	(10, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:16:19'),
	(11, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '16994050226', 'Contabilidade', 'olá', '2019-09-27 12:17:00'),
	(12, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '(16) 9940-50226', 'Contabilidade', 'Teste', '2019-11-06 09:29:39'),
	(13, 'Felipe Riboldi', 'Keith Maconha', 'feliperiboldimarques@gmail.com', '(16) 9940-50226', 'Contabilidade', 'Teste', '2019-11-06 09:41:21');
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_news: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `photo`) VALUES
	(1, 'Felipe Riboldi', 'feliperiboldimarques@gmail.com', '1234', NULL);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
