-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2023 às 20:09
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `email` varchar(20) NOT NULL,
  `senha` varchar(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `Pais` varchar(10) NOT NULL,
  `codigo_area` varchar(10) NOT NULL,
  `cep` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`email`, `senha`, `name`, `telefone`, `estado`, `Pais`, `codigo_area`, `cep`, `id`, `username`, `password`, `created_at`) VALUES
('', '', '', '', '', '', '', 0, 1, 'joao', '$2y$10$QKDHPFA1wjMASYeCzZ3J8uyMVrU2ha.mEpEnuEuriUZkvHZNt/q.q', '2023-01-21 15:38:57'),
('', '', '', '', '', '', '', 0, 2, 'roberto', '$2y$10$Z3XTuKTxQ2.mXlfkpnHPaOqYCwNbfuukYhMh6nacP1JCxScceYEka', '2023-01-24 16:30:51'),
('', '', '', '', '', '', '', 0, 3, 'maria', '$2y$10$BEgEndkVW9bSBXem1Jrqwu/GzTE04EcgPc/0bV4nQkr.9AsjjbBhW', '2023-01-25 16:18:33'),
('', '', '', '', '', '', '', 0, 4, 'mariasilva', '$2y$10$e4/LdD222TWa/Ls6y.InaudczqUHdd7b74ip39C1Kf13eyQYksnS6', '2023-01-26 15:22:30'),
('', '', '', '', '', '', '', 0, 5, 'mariasilvas', '$2y$10$PkWjV.XosOy/3EaIyiv4ve7PBzNUAUJvuJwdrIUjMcwDvkOpeFwQG', '2023-01-26 15:38:27'),
('', '', '', '', '', '', '', 0, 6, 'FATIMA', '$2y$10$Au7VFLALDk36b7MoYi7Uf.BOj.nE9oAubA7.DYZO2IXJsCflMOhPG', '2023-01-31 14:30:24'),
('', '', '', '', '', '', '', 0, 7, 'joao2', '$2y$10$/bBuQg4wLgSJ3O7az1CsKOArMkNR1rEd3VytdVuMEbigw9A6dXoay', '2023-02-02 15:51:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
