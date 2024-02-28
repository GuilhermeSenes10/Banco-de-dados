-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2022 às 15:49
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `CPF` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone_cliente` varchar(15) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `modelo_carro` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CPF`, `nome`, `telefone_cliente`, `placa`, `modelo_carro`) VALUES
('102.378.559-50', 'Guilherme Senes', '(47) 9273-3532', 'PLL6F50', 'fusca'),
('456.546.516-51', 'Jenifer', '(47) 5568-3495', 'PLP4E49', 'mustang'),
('654.516.465-64', 'Carlos', '(47) 4002-8922', 'BDB1B52', 'camaro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `cracha` float NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `setor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cracha`, `nome`, `setor`) VALUES
(1, 'Otavio Prada', 'Mecanico'),
(2, 'Guilherme Senes', 'Recepção'),
(3, 'Carlos', 'Faxina'),
(4, 'Jenifer', 'Administraçao'),
(5, 'abigail', 'Administraçao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_servico`
--

CREATE TABLE `ordem_servico` (
  `numero_servico` int(11) NOT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `funcionario` varchar(50) DEFAULT NULL,
  `modelo_carro` varchar(50) DEFAULT NULL,
  `tempo` time DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `telefone_cliente` varchar(20) DEFAULT NULL,
  `valor` varchar(50) NOT NULL,
  `relatorio_final` varchar(500) NOT NULL,
  `situacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ordem_servico`
--

INSERT INTO `ordem_servico` (`numero_servico`, `descricao`, `funcionario`, `modelo_carro`, `tempo`, `placa`, `nome_cliente`, `telefone_cliente`, `valor`, `relatorio_final`, `situacao`) VALUES
(21, 'Motor pifando', 'otavio', 'fusca', NULL, 'PLL6F50', 'Guilherme Senes', '(47) 9273-3532', 'R$ 6.000,00', 'o motor foi trocado', 'Finalizado'),
(22, 'Amortecedor quebrado', 'otavio', 'camaro', NULL, 'BDB1B52', 'Carlos Freitas', '(47) 4002-8922', '', '', 'em andamento'),
(23, 'Pisca queimado', NULL, 'mustang', NULL, 'PLP4E49', 'Jenifer', '(47) 5568-3495', '', '', 'Aberto');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`cracha`);

--
-- Índices para tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD PRIMARY KEY (`numero_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  MODIFY `numero_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
