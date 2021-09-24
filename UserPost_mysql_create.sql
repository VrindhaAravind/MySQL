CREATE TABLE `User` (
	`User_id` int(5) NOT NULL AUTO_INCREMENT,
	`User_name` varchar(25) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`User_id`)
);

CREATE TABLE `Post_details` (
	`post_id` int(10) NOT NULL AUTO_INCREMENT,
	`images` blob(30) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`post_id`)
);

CREATE TABLE `comments` (
	`post_id` int(10) NOT NULL,
	`user_id` int(10) NOT NULL,
	`like` BOOLEAN(10) NOT NULL,
	`comment` TEXT(100) NOT NULL,
	PRIMARY KEY (`post_id`)
);

ALTER TABLE `comments` ADD CONSTRAINT `comments_fk0` FOREIGN KEY (`post_id`) REFERENCES `Post_details`(`post_id`);

ALTER TABLE `comments` ADD CONSTRAINT `comments_fk1` FOREIGN KEY (`user_id`) REFERENCES `User`(`User_id`);




