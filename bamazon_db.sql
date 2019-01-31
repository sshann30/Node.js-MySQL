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

-- SELECT * FROM bamazon;
-- SELECT top_albums.year, top_albums.album, top_albums.position, top5000.song, top5000.artist 
-- FROM top_albums INNER JOIN top5000
-- ON (top_albums.artist = top5000.artist AND top_albums.year = top5000.year) 
-- WHERE (top_albums.artist = "Celine Dion" AND top5000.artist = "Celine Dion")
-- ORDER BY top_albums.year;

INSERT INTO products (whatsForSale, department_name, price, theAmountofStevesStuff)
VALUES: 

("Steve's Jacket", "Clothing",60,20);
("Steve's Sock", "Clothing",3,66);
("Steve's Coffee", "Food",1,99);
("Steve's PS4", "Electronics",200,1);
("Steve's Bed", "Furniture",4,1);
("Steve's Hat", "Clothing",30,7);
("Steve's Carpet","Furniture",270,3);
("Steve's Fridge", "Food",700,2);
("Steve's Lunch", "Food",1,5);
("Steve's Car", "Auto",1000,1);

(SELECT * FROM products;)