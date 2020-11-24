CREATE TABLE color (
	c_name VARCHAR(100) NOT NULL,
	PRIMARY KEY (`c_name`)
);

CREATE TABLE producer (
	p_name VARCHAR(100) NOT NULL,
	country VARCHAR(100) NOT NULL,
	PRIMARY KEY (`p_name`, `country`)
);

CREATE TABLE category (
	c_name VARCHAR(100) NOT NULL,
	sub_category VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY (`c_name`),
	FOREIGN KEY (`sub_category`) REFERENCES category(`c_name`)
);

CREATE TABLE size (
	id INT PRIMARY KEY,
	measure VARCHAR(100),
	count BIGINT	
);

CREATE TABLE item_model (
	article VARCHAR(100),
	i_name VARCHAR(100),
	price INT,
	description VARCHAR(100),
	width INT,
	height INT,
	deep INT,
	wight INT,
	producer_name VARCHAR(100),
	producer_country VARCHAR(100),
	category_name VARCHAR(100),
	PRIMARY KEY (`article`),
	FOREIGN KEY (`producer_name`, `producer_country`) REFERENCES producer(`p_name`, `country`),
	FOREIGN KEY (`category_name`) REFERENCES category(`c_name`),
	FOREIGN KEY (`width`) REFERENCES size(`id`),
	FOREIGN KEY (`height`) REFERENCES size(`id`),
	FOREIGN KEY (`deep`) REFERENCES size(`id`),
	FOREIGN KEY (`wight`) REFERENCES size(`id`)
);

CREATE TABLE item (
	item_article VARCHAR(100),
	color_name VARCHAR(100),
	PRIMARY KEY (`item_article`, `color_name`),
	FOREIGN KEY (`item_article`) REFERENCES item_model(`article`),
	FOREIGN KEY (`color_name`) REFERENCES color(`c_name`)
);

