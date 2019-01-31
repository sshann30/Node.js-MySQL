DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;
USE bamazon_db;


CREATE TABLE products (
  item_id INTEGER(100) NOT NULL AUTO_INCREMENT,
  whatsForSale VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(10,2),
  theAmountofStevesStuff INTEGER(10),
  PRIMARY KEY (item_id)
 
);


INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES

("Steve's Jacket", "Clothing",60,20);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Sock", "Clothing",3,66);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Coffee", "Food",1,99);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's PS4", "Electronics",200,1);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Bed", "Furniture",4,1);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Hat", "Clothing",30,7);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Carpet","Furniture",270,3);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Fridge", "Food",700,2);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Lunch", "Food",1,5);
INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES
("Steve's Car", "Auto",1000,1);

(SELECT * FROM products)