-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Sept 24, 2013 kell 09:02 AM
-- Serveri versioon: 5.5.32
-- PHP versioon: 5.4.19

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `blogi`
--
CREATE DATABASE IF NOT EXISTS `blogi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blogi`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'In et nulla vehicula', 'Maecenas eu magna et nisi fermentum accumsan. Etiam gravida leo quam, quis tempus est pretium ut. Nulla facilisi. Cras volutpat, mi non accumsan rhoncus, nisi lectus facilisis ipsum, eu elementum lorem elit et sem. Praesent sed orci hendrerit nisl ultricies ultricies id in enim. Curabitur vestibulum nulla eu felis vulputate, at lacinia ligula ultricies. Maecenas et tincidunt nulla. Proin suscipit quis felis ac imperdiet. Cras metus purus, vestibulum id sagittis volutpat, convallis cursus urna. Aliquam condimentum a nulla et eleifend. Cras lacus nulla, rhoncus vitae pulvinar et, pharetra sed enim.\r\n\r\nCurabitur nec neque velit. Curabitur eu euismod massa. Suspendisse nec feugiat odio. Sed fringilla, tortor id pretium auctor, lorem erat iaculis lorem, ac pretium eros sem nec lacus. Vivamus vulputate quam a risus convallis ultricies. Praesent accumsan neque ac risus accumsan, quis posuere dolor ornare. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fermentum tortor at felis lacinia vehicula nec in nisi. Morbi sagittis ipsum et luctus mollis. Quisque condimentum magna tortor, vel sollicitudin justo dictum id.', '2013-09-24 06:37:28', 1),
(2, ' Donec rutrum ornare lobortis', 'Fusce varius urna non lectus convallis dapibus. In hac habitasse platea dictumst. Sed velit tellus, semper vitae malesuada a, mollis vitae felis. Aenean tristique dignissim eros, pretium sodales sapien fringilla nec. Nam pretium nisi arcu, quis gravida nulla bibendum eu. Pellentesque adipiscing nibh purus, vitae aliquet arcu sodales auctor. Vestibulum accumsan lacus arcu, eget egestas urna volutpat vitae. Sed at consequat erat, nec egestas libero. Integer rhoncus, lacus nec pharetra interdum, tortor arcu venenatis tellus, quis tincidunt sapien nisl id orci. Integer dignissim felis quis enim lacinia, at imperdiet tellus ullamcorper. Sed rutrum mollis ipsum, ac luctus risus. Sed in cursus nibh. Suspendisse consectetur, nisl sed ultricies pharetra, quam nisl dapibus est, laoreet consectetur diam neque ut dui. Sed viverra massa ipsum, at aliquam sem dictum non. Curabitur facilisis, metus sed euismod posuere, lorem libero egestas eros, ut interdum lacus dolor consectetur erat. Donec commodo lacus vel tortor iaculis sollicitudin.', '2013-09-24 06:37:28', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0);
SET FOREIGN_KEY_CHECKS=1;
