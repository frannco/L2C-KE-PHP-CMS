CREATE DATABASE IF NOT EXISTS `L2C-KE-PHP-CMS`;

use `L2C-KE-PHP-CMS`;



CREATE TABLE IF NOT EXISTS `Users`(



ID int primary key NOT NULL AUTO_INCREMENT,



Email varchar(256) NOT NULL,

Password varchar(64) NOT NULL,


Nickname varchar(128) NOT NULL
);




CREATE TABLE IF NOT EXISTS `Pages`(



ID int primary key NOT NULL AUTO_INCREMENT,


Title varchar(128) NOT NULL,

Content text NOT NULL,


Menu_label varchar(128) NOT NULL,

Menu_order int,

User_ID int NOT NULL

);



ALTER TABLE `Pages` ADD CONSTRAINT fk_Pages_Users_idx FOREIGN KEY Pages(`User_ID`) REFERENCES Users(`ID`);



INSERT INTO `Users`(ID,Email,Password,Nickname)


VALUES (1, "admin@post.sk", "megan", "admin");