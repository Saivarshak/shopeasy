use shopeasy;

CREATE TABLE product_variants (
    variant_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    size VARCHAR(10),
    color VARCHAR(50),
    quantity INT DEFAULT 0,
    image1 VARCHAR(255),
    image2 VARCHAR(255),
    image3 VARCHAR(255),
    image4 VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO product_variants (
    product_id, size, color, quantity, image1, image2, image3, image4
)
VALUES
(1, 'S', 'Blue', 20, 'men_tshirt_blue_front.jpg', 'men_tshirt_blue_back.jpg', 'men_tshirt_blue_side.jpg', 'men_tshirt_blue_closeup.jpg'),
(2, 'M', 'Black', 25, 'men_shirt_black_front.jpg', 'men_shirt_black_back.jpg', 'men_shirt_black_side.jpg', 'men_shirt_black_closeup.jpg'),
(3, '28', 'White', 15, 'men_jean_front.jpg', 'men_jean_back.jpg', 'men_jean_side.jpg', 'men_jean_closeup.jpg'),

(4, 'S', 'Blue', 18, 'women_Ethnicwear_front.jpg', 'women_Ethnicwear_back.jpg', 'women_Ethnicwear_side.jpg', 'women_Ethnicwear_closeup.jpg'),
(5, 'M', 'Black', 22, 'women_westernwear_front.jpg', 'women_westernwear_back.jpg', 'women_westernwear_side.jpg', 'women_westernwear_closeup.jpg'),
(6, '7', 'orange', 12, 'women_footwear_front.jpg', 'women_footwear_back.jpg', 'women_footwear_side.jpg', 'women_footwear_closeup.jpg'),

(7, 'XS', 'White', 10, 'kids_tshirt_white_front.jpg', 'kids_tshirt_white_back.jpg', 'kids_tshirt_white_side.jpg', 'kids_tshirt_white_closeup.jpg'),
(8, 'S', 'Yellow', 12, 'kids_dress_front.jpg', 'kids_dress_back.jpg', 'kids_dress_side.jpg', 'kids_dress_closeup.jpg'),
(9, 'Free Size', 'red', 8, 'kids_toys_front.jpg', 'kids_toys_back.jpg', 'kids_toys_side.jpg', 'kids_toys_closeup.jpg');



select * from product_variants;
