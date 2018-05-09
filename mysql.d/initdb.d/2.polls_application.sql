drop database if exists polls_application;

create database polls_application;

use polls_application;
DROP TABLE IF EXISTS `UserData`;

CREATE TABLE `UserData` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `surname` VARCHAR(255) NOT NULL,
  `country` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `birth_date` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `Polls`;

CREATE TABLE `Polls` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `creation` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`)
    REFERENCES UserData(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Variants`;

CREATE TABLE `Variants` (
  `poll_id` INT NOT NULL,
  `id` INT NOT NULL,
  `option` VARCHAR(255) NOT NULL,
  `votes_count` INT DEFAULT 0,
  PRIMARY KEY (`poll_id`, `id`),
  FOREIGN KEY (`poll_id`)
    REFERENCES Polls(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Votes`;

CREATE TABLE `Votes` (
  `poll_id` INT NOT NULL,
  `variant_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`poll_id`, `user_id`),
  FOREIGN KEY (`poll_id`)
    REFERENCES Polls(`id`),
  FOREIGN KEY (`user_id`)
    REFERENCES UserData(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
