DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;

USE bamazon;

CREATE TABLE products (
  item_id  VARCHAR(100) NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price VARCHAR(100) NULL,
  stock_quantity VARCHAR(100) NULL,
 
);

SELECT * FROM bamazon;
SELECT top_albums.year, top_albums.album, top_albums.position, top5000.song, top5000.artist 
FROM top_albums INNER JOIN top5000
ON (top_albums.artist = top5000.artist AND top_albums.year = top5000.year) 
WHERE (top_albums.artist = "Celine Dion" AND top5000.artist = "Celine Dion")
ORDER BY top_albums.year;


("Steve's Jacket", "Clothing",60,20);
("Steve's Sock", "Clothing",3,2);
("Steve's Coffee", "Food",1,1);
("Steve's PS4", "Electronics",200,1);
("Steve's Bed", "Furniture",4,1);
("Steve's Hat", "Clothing",30,7);
("Steve's Carpet","Furniture",270,1);
("Steve's Fridge", "Food",700,1);
("Steve's Lunch", "Food",1,5);
("Steve's Car", "Auto",1000,1);