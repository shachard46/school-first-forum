CREATE TABLE topics (
  id int(11) NOT NULL AUTO_INCREMENT,
  parent_id int(11) NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
);

CREATE TABLE posts (
  id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(32)  NULL,
  post_text varchar(1024) NULL,
  post_topic_name varchar(32) NULL,
  post_date varchar(32) NULL
  PRIMARY KEY (`id`)
);

CREATE TABLE members (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  username varchar(32) NULL,
  password varchar(32) NULL,
  email varchar(64) NULL,
  compType varchar(8) NULL,
  teamNumber varchar(8) NULL,
  country varchar(32) NULL,
  teamJob varchar(32) NULL,
  rookieTime varchar(16) NULL,
  last_seen varchar(32) NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`)
);
