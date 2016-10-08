SELECT * FROM `msbeta2.0`.user_attempts;

alter table user_attempts add unique key(`username`);

ALTER TABLE user_attempts MODIFY COLUMN username VARCHAR(30) BINARY CHARACTER SET utf8;

CREATE TABLE `user_attempts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `attempts` varchar(30) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;