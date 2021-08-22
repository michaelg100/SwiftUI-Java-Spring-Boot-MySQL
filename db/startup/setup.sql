CREATE USER IF NOT EXISTS 'mike'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS `iosdb`;

USE `iosdb`;

GRANT ALL PRIVILEGES ON `iosdb`.* TO 'mike'@'localhost';

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,   
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
);

INSERT INTO books (title, author, email) VALUES ("Goblet of Fire", "JK Rowling", "jk@gmail.com");
INSERT INTO books (title, author, email) VALUES ("Chamber of Secrets", "JK Rowling", "jk@gmail.com");