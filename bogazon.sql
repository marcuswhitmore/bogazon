-- Bogazon SQL Syntax
-- Create Database

CREATE DATABASE bogazon_DB;

-- Change to Bogazon DB

USE bogazon_DB;

-- Create Table
CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    category_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NULL,
    quantity INT NULL,
    PRIMARY KEY (product_id)
);

-- Add Initial Products
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Garden Trowel", "Garden", 14.88,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Garden Gloves", "Garden", 8.88,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Garden Clippers", "Garden", 4.88,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Garden Spade", "Garden", 21.88,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Garden Organic Pesticide", "Garden", 28.88,25);
-- Home Items
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Bath Towels", "Home", 5.99,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Door Mat", "Home", 14.99,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Lawn Chair", "Home", 45.99,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Am Radio", "Home", 32.99,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Oil Painting", "Home", 99.99,25);
-- Kitchen Items
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Whisk", "Kitchen", 7.77,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Cast Iron Skillet", "Kitchen", 28.77,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Butter Knife", "Kitchen", 4.77,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Soup Bowl", "Kitchen", 2.77,25);
INSERT INTO products (product_name,category_name, price, quantity)
VALUES ("Spork", "Kitchen", 45.77,25);
