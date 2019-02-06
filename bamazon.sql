DROP DATABASE IF EXISTS bamazon_db; 

CREATE DATABASE bamazon_db; 

USE bamazon_db; 

CREATE TABLE products(
    itemid INTEGER AUTO_INCREMENT NOT NULL, 
    productname VARCHAR(45) NOT NULL, 
    departmentname VARCHAR(45) NOT NULL, 
    price DECIMAL(10,4) NOT NULL, 
    stockquantity INTEGER(10)  NOT NULL,
    primary key (itemid) 
);

INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Memory Foam Mattress", "Home Goods", 189.00, 75);

INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Sports Action Camera", "Electronics", 72.99, 23);


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Octopus Hoopla Bathtime", "Home Goods", 6.88, 81);


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Thermal Fleece Balaclavar", "Home Goods", 13.19, 17);


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Pet Training Pads", "Pets Goods", 16.99, 88 );


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("SmartBase Mattress Foundation", "Home Goods", 64.00, 43);


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Ice Scraper", "Automotive", 6.39, 97);


INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Swimming Penguin", "Toys", 4.99, 55);

INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Dog Treats", "Pets Goods", 7.39, 38);

INSERT INTO products(productname, departmentname, price, stockquantity)
VALUES("Headphones", "Electronics", 69.99, 15);


SELECT * FROM products;