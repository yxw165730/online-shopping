CREATE TABLE category (
	
	id INT NOT NULL auto_increment,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	PRIMARY KEY(id)

);

INSERT INTO Category (name, description, image_url, is_active) VALUES ('Mobile', 'This is a description for Mobile category!', 'CAT_3.png', true);
