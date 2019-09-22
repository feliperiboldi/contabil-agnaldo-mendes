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

-- Copiando dados para a tabela contabil-site.tb_banners: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_banners` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_contacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_news: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` (`id`, `title`, `subtitle`, `text`, `photo`, `author`) VALUES
	(1, 'Divulgada Nota Conjunta nº 01/2019 SEPRT/RFB/SED sobre a simplificação do eSocial', 'Secretarias Especiais do Ministério da Economia esclarecem pontos sobre a forma de envio das informações\n', 'A Secretaria Especial de Previdência e Trabalho, a Secretaria Especial da Receita Federal e a Secretaria Especial de Desburocratização, Gestão e Governo Digital divulgaram nesta quinta-feira (8) Nota Conjunta esclarecendo pontos sobre a simplificação do eSocial e a forma de envio das informações.', NULL, 1);
/*!40000 ALTER TABLE `tb_news` ENABLE KEYS */;

-- Copiando dados para a tabela contabil-site.tb_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `register`) VALUES
	(1, 'Felipe Riboldi', 'feliperiboldimarques@gmail.com', '123', '2019-09-14 10:08:41');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
