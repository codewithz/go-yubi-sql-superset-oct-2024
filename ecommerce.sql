CREATE TABLE users (
    user_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    role ENUM('admin', 'customer') DEFAULT 'customer',
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);




CREATE TABLE categories (
    category_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    
);


CREATE TABLE products (
    product_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    discount DECIMAL(5, 2) DEFAULT 0.00,
    stock INT UNSIGNED DEFAULT 0,
    category_id BIGINT UNSIGNED,
    brand VARCHAR(100),
    status ENUM('active', 'inactive') DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_product_category FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
);


CREATE TABLE orders (
    order_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED,
    order_number VARCHAR(50) UNIQUE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    payment_method ENUM('cod', 'paypal', 'credit_card') DEFAULT 'cod',
    payment_status ENUM('paid', 'unpaid') DEFAULT 'unpaid',
    order_status ENUM('new', 'processed', 'shipped', 'delivered', 'cancelled') DEFAULT 'new',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_order_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE SET NULL
);



CREATE TABLE order_items (
    order_item_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT UNSIGNED,
    product_id BIGINT UNSIGNED,
    quantity INT UNSIGNED DEFAULT 1,
    price DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE
);


