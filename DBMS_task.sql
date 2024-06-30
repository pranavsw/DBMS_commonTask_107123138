CREATE DATABASE inventoryDB;
USE inventoryDB;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    quantity INT,
    category VARCHAR(255)
);
-- Insert 3 sample product records
INSERT INTO products (name, description, price, quantity, category) VALUES
('Product 1', 'Description for product 1', 19.99, 100, 'Category A'),
('Product 2', 'Description for product 2', 29.99, 200, 'Category B'),
('Product 3', 'Description for product 3', 39.99, 150, 'Category A'),
('Product 4', 'Description for product 4', 49.99, 80, 'Category C'),
('Product 5', 'Description for product 5', 59.99, 60, 'Category B');


-- Retrieve all products
SELECT * FROM products;

-- Retrieve products with a price less than 30.00
SELECT * FROM products WHERE price < 30.00;

-- Retrieve products with more than 100 in quantity
SELECT * FROM products WHERE quantity > 100;

-- Update the price of 'Product 3' to 34.99
UPDATE products SET price = 34.99 WHERE name = 'Product 3';

-- Delete 'Product 5'
DELETE FROM products WHERE name = 'Product 5';
 