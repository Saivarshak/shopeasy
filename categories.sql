create database shopeasy;

USE shopeasy;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO categories (category_id, category_name)
VALUES
(1, 'mens'),
(2, 'womens'),
(3, 'kids');

select * from categories;
