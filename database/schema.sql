CREATE DATABASE IF NOT EXISTS food_delivery CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE food_delivery;

CREATE TABLE IF NOT EXISTS restaurants (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(500),
    cuisine VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS menu_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    price DECIMAL(10, 2) NOT NULL,
    is_available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
);

CREATE TABLE IF NOT EXISTS customers (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(30),
    address VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    restaurant_id BIGINT NOT NULL,
    status VARCHAR(50) NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
);

CREATE TABLE IF NOT EXISTS order_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    menu_item_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (menu_item_id) REFERENCES menu_items (id)
);
