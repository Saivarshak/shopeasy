USE shopeasy;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    brand VARCHAR(100),
    category_id INT NOT NULL,
    subcategory_id INT NOT NULL,
    sku VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    discount_percent DECIMAL(5,2) DEFAULT 0.00,
    offer_price DECIMAL(10,2) GENERATED ALWAYS AS (price - (price * discount_percent / 100)) STORED,
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

TRUNCATE TABLE products;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE product_variants;
TRUNCATE TABLE products;
SET FOREIGN_KEY_CHECKS = 1;



DELETE FROM products WHERE product_id = 5;


INSERT INTO products (
    product_name, brand, category_id, subcategory_id, sku, price, discount_percent, description, is_active
) VALUES
('t-shirts', 'Allen Solly', 1, 1, 'SKU0001', 1700.00, 10.00, 'A premium quality T-shirt.', TRUE),
('shirts', 'Raymond', 1, 2, 'SKU0002', 1500.00, 15.00, 'A high paid qualty product ', TRUE),
('jeans', 'Diesel', 1, 3, 'SKU0003', 1700.00, 10.00, 'Highily stricted jeans', TRUE),
('Etnicwears','Biba', 2, 4, 'SKU0004', 2000.00, 15.00, 'cotton cloth dress', TRUE),
('westernwear','Zara', 2, 5, 'SKU0005', 2500.00, 20.00, 'western weare clothes', TRUE),
('footwears','walkmate', 2, 6, 'SKU0006', 899.00, 10.00, 'footware', TRUE),
('kt-shirts','M&M', 3, 7, 'SKU0007', 799.00, 10.00, 'Cotton shirts', TRUE),
('kidsdress','M&M', 3, 8, 'SKU0008', 999.00, 10.00, 'dress', TRUE),
('toys','toys', 3, 9, 'SKU0009', 199.00, 10.00, 'toys brand', TRUE),
('kfootwear','Paragon',3,10,'SKU0010',699.00,10.00, 'footware',TRUE);

select * from products;