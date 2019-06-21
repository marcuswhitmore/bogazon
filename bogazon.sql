-- Bogazon SQL Syntax
-- Create Database

CREATE DATABASE bogazon_DB;

-- Change to Bogazon DB

USE bamazon-DB;

-- Create Table
CREATE TABLE products(
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    category_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NULL,
    quantity INT NULL,
);

