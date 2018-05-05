drop database if exists polls_application;

create database polls_application;

use polls_application;

DROP TABLE IF EXISTS `dummy_table`;

CREATE TABLE `dummy_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `col1` int(11) DEFAULT NULL,
  `col2` varchar(255) DEFAULT NULL,
  `col3` varchar(255) DEFAULT NULL,
  `col4` varchar(255) DEFAULT NULL,
  `col5` datetime DEFAULT NULL,
  `col6` int(11) DEFAULT NULL,
  `col7` int(11) DEFAULT NULL,
  `col8` int(11) DEFAULT NULL,
  `col9` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
