INSERT INTO users (first_name, last_name, email, password, phone_number, role, status, created_at, updated_at) VALUES
('Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '+12345678901', 'customer', 'active', NOW(), NOW()),
('Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '+12345678902', 'admin', 'active', NOW(), NOW()),
('Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', '+12345678903', 'customer', 'inactive', NOW(), NOW()),
('David', 'Wilson', 'david@example.com', 'hashedpassword4', '+12345678904', 'customer', 'active', NOW(), NOW()),
('Eva', 'Davis', 'eva@example.com', 'hashedpassword5', '+12345678905', 'admin', 'active', NOW(), NOW()),
('Frank', 'Taylor', 'frank@example.com', 'hashedpassword6', '+12345678906', 'customer', 'inactive', NOW(), NOW()),
('Grace', 'Harris', 'grace@example.com', 'hashedpassword7', '+12345678907', 'customer', 'active', NOW(), NOW()),
('Hank', 'Moore', 'hank@example.com', 'hashedpassword8', '+12345678908', 'customer', 'active', NOW(), NOW()),
('Ivy', 'Martinez', 'ivy@example.com', 'hashedpassword9', '+12345678909', 'customer', 'inactive', NOW(), NOW()),
('Jack', 'Miller', 'jack@example.com', 'hashedpassword10', '+12345678910', 'admin', 'active', NOW(), NOW());

-- 
INSERT INTO categories (title, description, status, created_at, updated_at) VALUES
('Smartphones', 'Latest smartphones from top brands', 'active', NOW(), NOW()),
('Laptops', 'High-performance laptops for work and gaming', 'active', NOW(), NOW()),
('Televisions', 'Smart TVs with 4K and OLED technology', 'active', NOW(), NOW()),
('Audio Devices', 'Bluetooth speakers, headphones, and more', 'active', NOW(), NOW()),
('Gaming Consoles', 'PS5, Xbox Series X, Nintendo Switch', 'active', NOW(), NOW()),
('Home Appliances', 'Microwaves, refrigerators, washing machines', 'active', NOW(), NOW()),
('Wearables', 'Smartwatches and fitness bands', 'active', NOW(), NOW()),
('Cameras', 'DSLRs, mirrorless, and action cameras', 'active', NOW(), NOW()),
('Computer Accessories', 'Keyboards, mice, and USB drives', 'active', NOW(), NOW()),
('Networking Devices', 'Routers, modems, and extenders', 'active', NOW(), NOW());

INSERT INTO products (title, description, price, discount, stock, category_id, brand, status, created_at, updated_at) VALUES
('iPhone 15', 'The latest Apple iPhone with A17 Bionic chip', 999.99, 0.00, 50, 1, 'Apple', 'active', NOW(), NOW()),
('MacBook Pro', 'M2 chip-powered high-performance laptop', 1999.99, 10.00, 20, 2, 'Apple', 'active', NOW(), NOW()),
('Samsung QLED TV', '4K UHD smart TV with QLED technology', 1499.00, 5.00, 30, 3, 'Samsung', 'active', NOW(), NOW()),
('Sony WH-1000XM5', 'Noise-cancelling over-ear headphones', 399.99, 15.00, 100, 4, 'Sony', 'active', NOW(), NOW()),
('PlayStation 5', 'Next-gen gaming console with immersive graphics', 499.99, 0.00, 10, 5, 'Sony', 'active', NOW(), NOW()),
('Dyson Vacuum Cleaner', 'Cordless vacuum cleaner with powerful suction', 699.99, 5.00, 15, 6, 'Dyson', 'active', NOW(), NOW()),
('Apple Watch Series 9', 'Advanced smartwatch with fitness tracking', 399.99, 0.00, 60, 7, 'Apple', 'active', NOW(), NOW()),
('Canon EOS R5', 'Professional mirrorless camera with 45MP sensor', 3499.99, 10.00, 8, 8, 'Canon', 'active', NOW(), NOW()),
('Logitech MX Master 3', 'Ergonomic wireless mouse for productivity', 99.99, 20.00, 80, 9, 'Logitech', 'active', NOW(), NOW()),
('TP-Link Archer AX6000', 'Wi-Fi 6 router for fast and stable connectivity', 299.99, 10.00, 25, 10, 'TP-Link', 'active', NOW(), NOW());

INSERT INTO products (title, description, price, discount, stock, category_id, brand, status, created_at, updated_at) VALUES
('Google Pixel 8', 'Google’s flagship phone with Tensor G3 chip', 799.99, 5.00, 45, 1, 'Google', 'active', NOW(), NOW()),
('Asus ROG Zephyrus G14', 'High-end gaming laptop with AMD Ryzen 9', 1799.99, 7.50, 15, 2, 'Asus', 'active', NOW(), NOW()),
('LG OLED CX', '55-inch smart TV with self-lighting pixels', 1299.99, 10.00, 25, 3, 'LG', 'active', NOW(), NOW()),
('Bose SoundLink Mini II', 'Portable Bluetooth speaker with deep bass', 299.99, 8.00, 35, 4, 'Bose', 'active', NOW(), NOW()),
('Xbox Series X', '4K gaming console with 1TB storage', 499.99, 0.00, 20, 5, 'Microsoft', 'active', NOW(), NOW()),
('Philips Air Fryer XL', 'Large capacity air fryer for healthy cooking', 199.99, 12.50, 40, 6, 'Philips', 'active', NOW(), NOW()),
('Fitbit Versa 4', 'Fitness smartwatch with heart rate monitor', 229.99, 5.00, 30, 7, 'Fitbit', 'active', NOW(), NOW()),
('Nikon Z6 II', 'Full-frame mirrorless camera with 4K video', 2499.99, 8.00, 10, 8, 'Nikon', 'active', NOW(), NOW()),
('Razer BlackWidow V3', 'Mechanical gaming keyboard with RGB', 149.99, 10.00, 50, 9, 'Razer', 'active', NOW(), NOW()),
('Netgear Nighthawk AX12', 'Tri-band Wi-Fi 6 router for fast speeds', 399.99, 15.00, 20, 10, 'Netgear', 'active', NOW(), NOW());


INSERT INTO orders (user_id, order_number, total_amount, payment_method, payment_status, order_status, created_at, updated_at) VALUES
(1, 'ORDER1001', 1099.99, 'credit_card', 'paid', 'delivered', NOW(), NOW()),
(2, 'ORDER1002', 1499.99, 'paypal', 'paid', 'shipped', NOW(), NOW()),
(3, 'ORDER1003', 499.99, 'cod', 'unpaid', 'new', NOW(), NOW()),
(4, 'ORDER1004', 3499.99, 'credit_card', 'paid', 'processed', NOW(), NOW()),
(5, 'ORDER1005', 1999.99, 'paypal', 'paid', 'cancelled', NOW(), NOW()),
(6, 'ORDER1006', 399.99, 'cod', 'unpaid', 'new', NOW(), NOW()),
(7, 'ORDER1007', 999.99, 'credit_card', 'paid', 'shipped', NOW(), NOW()),
(8, 'ORDER1008', 299.99, 'paypal', 'paid', 'delivered', NOW(), NOW()),
(9, 'ORDER1009', 699.99, 'cod', 'unpaid', 'new', NOW(), NOW()),
(10, 'ORDER1010', 1499.99, 'credit_card', 'paid', 'delivered', NOW(), NOW());


INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 999.99),
(2, 2, 1, 1999.99),
(2, 3, 1, 1499.00),
(3, 4, 2, 399.99),
(4, 5, 1, 499.99),
(5, 6, 1, 699.99),
(6, 7, 2, 399.99),
(7, 8, 1, 3499.99),
(8, 9, 1, 99.99),
(9, 10, 1, 299.99);


INSERT INTO orders (user_id, order_number, total_amount, payment_method, payment_status, order_status, created_at, updated_at) VALUES
(2, 'ORDER1011', 299.99, 'cod', 'unpaid', 'new', NOW(), NOW()),
(4, 'ORDER1012', 1899.99, 'paypal', 'paid', 'shipped', NOW(), NOW()),
(5, 'ORDER1013', 229.99, 'credit_card', 'paid', 'delivered', NOW(), NOW()),
(1, 'ORDER1014', 2499.99, 'paypal', 'paid', 'processed', NOW(), NOW()),
(3, 'ORDER1015', 149.99, 'credit_card', 'paid', 'cancelled', NOW(), NOW()),
(6, 'ORDER1016', 1799.99, 'credit_card', 'paid', 'delivered', NOW(), NOW()),
(7, 'ORDER1017', 799.99, 'paypal', 'paid', 'new', NOW(), NOW()),
(8, 'ORDER1018', 499.99, 'cod', 'unpaid', 'shipped', NOW(), NOW()),
(9, 'ORDER1019', 999.99, 'paypal', 'paid', 'processed', NOW(), NOW()),
(10, 'ORDER1020', 399.99, 'credit_card', 'paid', 'delivered', NOW(), NOW());


INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(11, 11, 1, 799.99),
(12, 12, 1, 1799.99),
(12, 14, 2, 299.99),
(13, 15, 1, 499.99),
(14, 16, 1, 199.99),
(15, 18, 1, 2499.99),
(16, 19, 3, 149.99),
(17, 20, 1, 399.99),
(18, 10, 2, 299.99),
(19, 13, 1, 1299.99),
(20, 4, 2, 399.99),
(11, 3, 1, 1499.00),
(12, 9, 1, 99.99),
(13, 1, 2, 999.99),
(15, 6, 1, 699.99),
(17, 5, 1, 499.99),
(18, 7, 2, 399.99),
(19, 2, 1, 1999.99),
(20, 11, 1, 799.99),
(20, 17, 1, 229.99);
