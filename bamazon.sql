DROP DATABASE IF EXISTS bamazon_DB; 

CREATE DATABASE bamazon_DB; 

USE bamazon_DB; 

CREATE TABLE products(
    item_id INTEGER(20) AUTO_INCREMENT NOT NULL, 
    product_name VARCHAR(100) NOT NULL, 
    department_name VARCHAR(100) NOT NULL, 
    price INTEGER(20) AUTO_INCREMENT NOT NULL, 
    stock_quality INTEGER(20) AUTO_INCREMENT NOT NULL
)

INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Samsung 65inch OLED TV", "Electronics", 1400, 10);

INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Falken Tire 255/40/18", "Automotive", 150, 20);


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Blendtech Professional 8000", "Home Goods", 800, 15);


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Vitamix Commerical Blender", "Home Goods", 1040, 19);


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Iphone XR 128G", "Electronics", 799, 100 );


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Samsung Note 9", "Electronics", 799, 200);


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Hanes Boxer Men Small", "Clothing", 5.99, 1000);


INSERT INTO products(product_name, department_name, price, stock_quality)
VALUES("Lebron Laker Jersey", "Clothing", 200, 40);
