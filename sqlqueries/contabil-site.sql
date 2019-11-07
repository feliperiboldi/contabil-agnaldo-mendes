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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_banners: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_banners` DISABLE KEYS */;
INSERT INTO `tb_banners` (`id`, `title`, `subtitle`, `href`, `photo`) VALUES
	(1, 'Sua empresa em boas mãos', 'Conheça nossas soluções que vão ajudar o seu negócio.', '', 'images/upload_f97509dc147a8ae39bb7e262781e78b6.jpg');
/*!40000 ALTER TABLE `tb_banners` ENABLE KEYS */;

-- Copiando estrutura para tabela contabil-site.tb_contacts
CREATE TABLE IF NOT EXISTS `tb_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `company` varchar(128) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `subject` varchar(128) NOT NULL,
  `message` text NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_contacts: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
INSERT INTO `tb_contacts` (`id`, `name`, `company`, `email`, `telephone`, `subject`, `message`, `register`) VALUES
	(2, 'Gabriel', 'Contábil Agnaldo Mendes', 'gabriel_giannini2008@hotmail.com', '(16) 9926-61573', 'Contabilidade', 'Olá!', '2019-10-08 15:30:03');
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;

-- Copiando estrutura para tabela contabil-site.tb_news
CREATE TABLE IF NOT EXISTS `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `subtitle` varchar(256) NOT NULL,
  `text` text,
  `photo` varchar(512) DEFAULT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news` (`author`),
  CONSTRAINT `fk_news` FOREIGN KEY (`author`) REFERENCES `tb_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela contabil-site.tb_news: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_news` DISABLE KEYS */;
INSERT INTO `tb_news` (`id`, `title`, `subtitle`, `text`, `photo`, `register`, `author`) VALUES
	(4, 'eSocial em números: quase 40 milhões de trabalhadores já cadastrados', 'Apuração foi feita até o mês de julho deste ano. Número abrange trabalhadores de empresas e domésticos.', '39.236.553: esse é o número de trabalhadores que já integram a base do eSocial. O número representa a quantidade de empregados de empresas (inclusive empregador pessoa física, como produtores rurais e profissionais liberais), empregados domésticos e demais trabalhadores sem vínculo de emprego (estagiários, bolsistas, contadores, sócios, etc.). Ainda não estão no sistema os trabalhadores vinculados a órgãos públicos e entidades internacionais, como embaixadas, cuja obrigatoriedade, segundo o calendário oficial, foi adiada para o próximo ano.\r\n\r\nA quantidade expressiva de trabalhadores está dentro da expectativa do governo, e reflete os esforços das empresas para a adesão ao eSocial, que servirá para substituir diversas obrigações dos empregadores.\r\n\r\nAté que seja publicado o novo leiaute simplificado em substituição ao leiaute atual do eSocial, conforme estabelecido pela Lei nº 13.874/19, os empregadores deverão seguir prestando as informações ao sistema, de acordo com o calendário de obrigatoriedade dos grupos. Confira o cronograma completo clicando aqui. \r\n\r\nOs empregadores obrigados ao eSocial que não prestaram as informações referentes às admissões e cadastramentos dos trabalhadores, bem como aos eventos não periódicos, devem fazê-lo logo, uma vez que o prazo já se esgotou. Os dados dos trabalhadores alimentarão a nova CTPS Digital, prevista na mesma lei.', 'images/upload_0a9e1b83fa4d9431fc6c980f106b782e.jpeg', '2019-10-09 15:36:38', 1),
	(5, 'eSocial passa a substituir Livro de Registro de Empregados', 'Livro de Registro de Empregados e Carteira de Trabalho se juntam à RAIS, CAGED e outras obrigações que passaram a ser cumpridas pelo eSocial. Veja a lista de todas as obrigações já substituídas', 'Mais uma obrigação foi substituída pelo eSocial. A Portaria nº 1.195, de 30 de outubro de 2019, da Secretaria Especial de Previdência e Trabalho, publicada hoje (31), passou a disciplinar o registro eletrônico de empregados e a anotação na Carteira de Trabalho e Previdência Social (CTPS) por meio do eSocial. Com isso, o Livro de Registro passa a compor o rol de obrigações já substituídas pelo eSocial.\r\n\r\nAté o momento, já foram substituídas as seguintes obrigações, para todos ou parte dos empregadores obrigados ao eSocial:', 'images/upload_bdfa2939e63ade653805b4fa70f022fd.jpeg', '2019-11-05 13:57:24', 1),
	(6, 'Como registrar o reajuste salarial no eSocial', 'Salário mínimo foi reajustado para R$ 998,00 a partir de 1º de janeiro.', 'Com o Decreto 9.661/2019 assinado pelo Presidente Jair Bolsonaro, que reajustou o salário mínimo em 4,162% a partir de 1º de janeiro, os empregados domésticos que recebem salário mínimo deverão ter seus contratos de trabalho alterados no eSocial para fazer constar o novo valor de R$ 998,00.\r\n\r\nPara os empregados que recebem salário superior ao mínimo, o reajuste deverá seguir o estipulado entre empregador e empregado no contrato de trabalho. Assim, poderá se dar em outra data e com outro percentual, a depender do que foi contratado.\r\n\r\nA alteração de salário não é feita automaticamente pelo sistema, devendo ser realizada pelo empregador, antes de encerrar a folha do mês.\r\n\r\nMas atenção nos casos de férias: o empregador deverá primeiramente fazer a alteração salarial e, só então, registrar as férias, para que os novos valores sejam considerados no recibo e na folha de pagamento. Se o empregado estiver gozando férias em 1º de janeiro, iniciadas em dezembro, a alteração deverá ser feita com data de início de vigência após seu retorno ao trabalho. Não se preocupe, o sistema aplicará o reajuste normalmente na folha do mês de janeiro.\r\n\r\nO eSocial aceita registros sempre respeitando a ordem cronológica. Caso você tenha prestado alguma informação fora de ordem, exclua os eventos e volte a informá-los na ordem correta.', 'images/upload_49df224e96fe2b28360a8fbf4beeb070.jpeg', '2019-11-06 14:15:44', 1),
	(7, 'Simplificação do eSocial: veja como preencher o grupo CTPS', 'Trabalhador passa a ser identificado apenas pelo CPF.', 'Uma das medidas da simplificação do eSocial é a não exigência de informações relativas a documentos pessoais dos trabalhadores. Já na versão atual do leiaute em produção, os dados serão meramente opcionais. Na versão final da simplificação, essas informações deixarão de ser exigidas.\r\n\r\nContudo, na Carteira de Trabalho Digital, que passou a valer a partir de 24/09, a identificação do trabalhador passou a ser o seu CPF, acabando com o número e série do documento. \r\n\r\nE como fica o preenchimento do grupo {CTPS} no eSocial? Esse grupo aparece nos eventos de admissão (S-2200), início de TSVE (S-2300) e alteração de dados cadastrais (S-2205) e será preenchido de acordo com os seguintes critérios:', 'images/upload_03bc5a6a37975a13d55db6343fca07c7.jpeg', '2019-11-06 14:24:21', 1);
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

-- Copiando dados para a tabela contabil-site.tb_users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `photo`) VALUES
	(1, 'Administrador', 'admin@contabilagnaldomendes.com.br', 'admin', 'images/upload_be8fce887e1ace847015166b1c8fa8cb.png');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
