-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 01, 2013 kell 11:13 AM
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
-- Tabeli struktuur tabelile `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_text` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Andmete tõmmistamine tabelile `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_time`, `user_id`, `post_id`) VALUES
(1, 'Kellake.', '2013-09-26 14:01:35', 1, 1),
(2, 'Ma ei oska midagi öelda.', '2013-09-26 14:01:35', 1, 1),
(3, 'Yes!', '2013-09-26 15:12:50', 2, 1),
(4, 'Kahtlane', '2013-09-26 15:12:50', 3, 1),
(5, 'Lilleke rohus.', '2013-09-26 15:12:50', 2, 1),
(6, 'Imeline.', '2013-09-26 15:12:50', 2, 1),
(7, 'Tordid.', '2013-09-26 15:12:50', 3, 1),
(9, 'yee', '2013-09-26 15:33:16', NULL, 1),
(10, 'yee', '2013-09-26 15:33:25', NULL, 1),
(11, 'tere', '2013-09-26 15:43:33', NULL, 1),
(12, 'ok', '2013-09-26 15:44:23', NULL, 1),
(13, 'tere', '2013-09-26 15:44:34', NULL, 1),
(14, 'nii tore', '2013-09-26 15:53:08', NULL, 1),
(15, 'jee', '2013-09-26 15:53:47', NULL, 1),
(16, 'jee', '2013-09-26 15:53:53', NULL, 1),
(17, 'jee kui tore', '2013-10-01 07:28:01', NULL, 1),
(18, 'jooooo', '2013-10-01 08:08:17', NULL, 1),
(19, 'tere', '2013-10-01 08:16:38', NULL, 1),
(23, 'no nii', '2013-10-01 08:36:13', NULL, 4),
(24, 'test', '2013-10-01 08:36:26', NULL, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'In et nulla vehicula', 'Maecenas eu magna et nisi fermentum accumsan. Etiam gravida leo quam, quis tempus est pretium ut. Nulla facilisi. Cras volutpat, mi non accumsan rhoncus, nisi lectus facilisis ipsum, eu elementum lorem elit et sem. Praesent sed orci hendrerit nisl ultricies ultricies id in enim. Curabitur vestibulum nulla eu felis vulputate, at lacinia ligula ultricies. Maecenas et tincidunt nulla. Proin suscipit quis felis ac imperdiet. Cras metus purus, vestibulum id sagittis volutpat, convallis cursus urna. Aliquam condimentum a nulla et eleifend. Cras lacus nulla, rhoncus vitae pulvinar et, pharetra sed enim.\r\n\r\nCurabitur nec neque velit. Curabitur eu euismod massa. Suspendisse nec feugiat odio. Sed fringilla, tortor id pretium auctor, lorem erat iaculis lorem, ac pretium eros sem nec lacus. Vivamus vulputate quam a risus convallis ultricies. Praesent accumsan neque ac risus accumsan, quis posuere dolor ornare. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus fermentum tortor at felis lacinia vehicula nec in nisi. Morbi sagittis ipsum et luctus mollis. Quisque condimentum magna tortor, vel sollicitudin justo dictum id.', '2013-09-24 06:37:28', 1),
(2, ' Donec rutrum ornare lobortis', 'Fusce varius urna non lectus convallis dapibus. In hac habitasse platea dictumst. Sed velit tellus, semper vitae malesuada a, mollis vitae felis. Aenean tristique dignissim eros, pretium sodales sapien fringilla nec. Nam pretium nisi arcu, quis gravida nulla bibendum eu. Pellentesque adipiscing nibh purus, vitae aliquet arcu sodales auctor. Vestibulum accumsan lacus arcu, eget egestas urna volutpat vitae. Sed at consequat erat, nec egestas libero. Integer rhoncus, lacus nec pharetra interdum, tortor arcu venenatis tellus, quis tincidunt sapien nisl id orci. Integer dignissim felis quis enim lacinia, at imperdiet tellus ullamcorper. Sed rutrum mollis ipsum, ac luctus risus. Sed in cursus nibh. Suspendisse consectetur, nisl sed ultricies pharetra, quam nisl dapibus est, laoreet consectetur diam neque ut dui. Sed viverra massa ipsum, at aliquam sem dictum non. Curabitur facilisis, metus sed euismod posuere, lorem libero egestas eros, ut interdum lacus dolor consectetur erat. Donec commodo lacus vel tortor iaculis sollicitudin.', '2013-09-24 06:37:28', 1),
(3, 'This is a testing post', 'Why am I even writing anything here?', '2013-10-01 07:54:46', 3),
(4, 'Kanavarbad', 'No mingi värk oli nendega...', '2013-10-01 08:07:38', 2);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(4, 1),
(2, 2),
(3, 2),
(1, 3),
(4, 3),
(1, 4),
(2, 4),
(3, 4);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(25) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'kapsas'),
(2, 'karu'),
(3, 'demo'),
(4, 'kaamel');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0),
(2, 'kana', 'kana', 0),
(3, 'tigu', 'tigu', 0);

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Piirangud tabelile `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Piirangud tabelile `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
