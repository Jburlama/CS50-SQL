CREATE TABLE `users` (
	`id` INT AUTO_INCREMENT,
	`first_name` VARCHAR(32) NOT NULL,
	`last_name` VARCHAR(32) NOT NULL,
	`user_name` VARCHAR(32) NOT NULL,
	`password` VARCHAR(32) NOT NULL,
	PRIMARY KEY(`id`)
);

CREATE TABLE `school` (
	`id` INT AUTO_INCREMENT,
	`type` ENUM('Primary', 'Secondary', 'Higher Education'),
	`location` VARCHAR(32) NOT NULL,
	`year` INT,
	PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
	`id` INT AUTO_INCREMENT,
	`name` VARCHAR(32) NOT NULL,
	`industry` VARCHAR(32),
	`location` VARCHAR(64),
	PRIMARY KEY(`id`)
);

CREATE TABLE `friends` (
	`id` INT AUTO_INCREMENT,
	`user_id` INT,
	`friend_id` INT,
	FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
	FOREIGN KEY(`friend_id`) REFERENCES `users`(`id`),
	PRIMARY KEY(`id`)
);

CREATE TABLE `study` (
	`id` INT AUTO_INCREMENT,
	`user_id` INT,
	`school_id` INT,
	`start` DATETIME,
	`end` DATETIME,
	`degree` VARCHAR(10),
	PRIMARY KEY(`id`),
	FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
	FOREIGN KEY(`school_id`) REFERENCES `school`(`id`)
);

CREATE TABLE `work` (
	`id` INT AUTO_INCREMENT,
	`user_id` INT,
	`company_id` INT,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
	FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
