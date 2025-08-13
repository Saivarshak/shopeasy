USE shopeasy;

CREATE TABLE subcategories (
    subcategory_id INT AUTO_INCREMENT PRIMARY KEY,
    subcategory_name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


INSERT INTO subcategories (subcategory_id, category_id, subcategory_name)
VALUES
(1, 1, 't-shirts'),
(2, 1, 'shirts'),
(3, 1, 'jeans'),
(4, 2, 'Etnicwears'),
(5, 2, 'westernwears'),
(6, 2, 'wfootwears'),
(7, 3, 'kt-shirts'),
(8, 3, 'kidesdresses'),
(9, 3, 'toys'),
(10,3, 'kfootwares');

select * from subcategories;