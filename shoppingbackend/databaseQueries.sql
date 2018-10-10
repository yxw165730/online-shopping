CREATE TABLE category (
	id INT NOT NULL auto_increment,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	PRIMARY KEY(id)
);
INSERT INTO category (name, description, image_url, is_active) VALUES ('Laptop', 'This is a description for laptop category!', 'CAT_1.png', true);
INSERT INTO category (name, description, image_url, is_active) VALUES ('Television', 'This is a description for television category!', 'CAT_2.png', true);
INSERT INTO category (name, description, image_url, is_active) VALUES ('Mobile', 'This is a description for mobile category!', 'CAT_3.png', true);


CREATE TABLE user_detail (
	id INT NOT NULL auto_increment,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	role VARCHAR(50),
	enabled BOOLEAN,
	password VARCHAR(50),
	email VARCHAR(50),
	contact_number VARCHAR(15),
	
	PRIMARY KEY(id)
);
INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Yan', 'Wang', 'ADMIN', true, '11111', '123456@gmail.com', '1111111111');

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Denghui', 'Wang', 'SUPPLIER', true, '22222', '222222@gmail.com', '2222222222');

INSERT INTO user_detail 
(first_name, last_name, role, enabled, password, email, contact_number) 
VALUES ('Bob', 'David', 'SUPPLIER', true, '33333', '333333@yahoo.com', '3333333333');


CREATE TABLE product (
	id INT NOT NULL auto_increment,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10, 2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	
	PRIMARY KEY (id),
	FOREIGN KEY (category_id) REFERENCES category (id),
	FOREIGN KEY (supplier_id) REFERENCES user_detail (id)
);
INSERT INTO product 
(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id) 
VALUES ('PRDABC123DEFX', 'iPhone 8', 'apple', 'This is one of the best phone available in the store.', 23000, 3, true, 1, 2);