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
	under_category_name VARCHAR(100) DEFAULT NULL,
	PRIMARY KEY (`c_name`)
);

CREATE TABLE item_model (
	article VARCHAR(100),
	i_name VARCHAR(100),
	price INT,
	description VARCHAR(100),
	width_mm INT,
	height_mm INT,
	deep_mm INT,
	wight_mg BIGINT,
	producer_name VARCHAR(100),
	producer_country VARCHAR(100),
	category_name VARCHAR(100),
	PRIMARY KEY (`article`),
	FOREIGN KEY (`producer_name`, `producer_country`) REFERENCES producer(`p_name`, `country`),
	FOREIGN KEY (`category_name`) REFERENCES category(`c_name`)
);

CREATE TABLE item (
	item_article VARCHAR(100),
	color_name VARCHAR(100),
	PRIMARY KEY (`item_article`, `color_name`),
	FOREIGN KEY (`item_article`) REFERENCES item_model(`article`),
	FOREIGN KEY (`color_name`) REFERENCES color(`c_name`)
);