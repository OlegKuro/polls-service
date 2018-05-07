drop database if exists polls_application;

create database polls_application;

use polls_application;

DROP TABLE IF EXISTS `Polls`;

CREATE TABLE `Polls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `creation` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Variants`;

CREATE TABLE `Variants` (
  `poll_id` INT NOT NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `option` VARCHAR(255) NOT NULL,
  `votes_count` INT DEAULT 0,
  PRIMARY KEY (`poll_id, id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Votes`;

CREATE TABLE `Votes` (
  `poll_id` INT NOT NULL,
  `variant_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`poll_id`, `variant_id`, `user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `birth_date` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
)
