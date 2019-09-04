-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Out-2018 às 16:43
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `idcarrinho` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idproduto` int(11) NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`idcarrinho`, `email`, `idproduto`, `qtd`) VALUES
(3, 'willian.santos064@gmail.com', 0, 1),
(4, 'willian.santos064@gmail.com', 0, 1),
(5, 'willian.santos064@gmail.com', 0, 1),
(6, 'willian.santos064@gmail.com', 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descricao` longtext NOT NULL,
  `preco` float NOT NULL,
  `totalavaliacao` int(11) NOT NULL,
  `somaavaliacao` int(11) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `estoque` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `titulo`, `descricao`, `preco`, `totalavaliacao`, `somaavaliacao`, `imagem`, `estoque`, `categoria`) VALUES
(5, 'Camisa Nerd', 'Special Edition', 40, 0, 0, '0.281804001539172359.jpg', 10, 'camiseta'),
(6, 'Camisa Nerd', 'Superman', 42, 0, 0, '0.577804001539172423.jpg', 15, 'camiseta'),
(7, 'Caneca Nerd', 'Alta qualidade', 25, 0, 0, '0.586804001539172590.jpg', 20, 'Canecas'),
(8, 'Caneca Nerd', 'Alta qualidade', 25, 0, 0, '0.258804001539172652.jpg', 10, 'Canecas'),
(9, 'BonÃ© Mario', 'Alta qualidade', 30, 0, 0, '0.705804001539172724.jpg', 20, 'Bone	'),
(10, 'BonÃ© Ash Ketchum', 'Alta qualidade', 35, 0, 0, '0.669804001539172777.jpg', 15, 'Bone	');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `nivel`, `endereco`, `bairro`, `cidade`, `estado`) VALUES
(5, 'Willian', 'willian.santos064@gmail.com', '202cb962ac59075b964b07152d234b70', 2, 'A', 'A', 'A', 'RJ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`idcarrinho`,`idproduto`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `idcarrinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
