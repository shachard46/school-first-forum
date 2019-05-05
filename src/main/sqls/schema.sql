CREATE TABLE IF NOT EXISTS topics (
  id int(11) NOT NULL AUTO_INCREMENT,
  parent_id int(11) NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
);

CREATE TABLE IF NOT EXISTS posts (
  id int(11) NOT NULL AUTO_INCREMENT,
  post_name varchar(255) NULL,
  email varchar(32)  NULL,
  post_text varchar(1024) NULL,
  post_topic_name varchar(32) NULL,
  post_date datetime NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE IF NOT EXISTS members (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(32),
  `password` varchar(32),
  email varchar(64),
  compType varchar(8),
  teamNumber varchar(8),
  country varchar(32),
  teamJob varchar(32),
  rookieTime varchar(16),
  last_seen datetime,
  is_admin int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY email_UNIQUE (`email`),
  UNIQUE KEY username_UNIQUE (`username`)
);

CREATE TABLE IF NOT EXISTS poll_questions (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128),
  ans_1 varchar(64),
  ans_2 varchar(64),
  ans_3 varchar(64),
  ans_4 varchar(64),
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS poll_answers (
  id int(11) NOT NULL AUTO_INCREMENT,
  question varchar(128),
  answer varchar(128),
  PRIMARY KEY (`id`)
);
