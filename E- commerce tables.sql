
CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  country VARCHAR(50),
  signup_at DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  sku VARCHAR(100) UNIQUE NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  category_id INT,
  cost_price DECIMAL(10,2) NOT NULL,
  list_price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE categories (
  category_id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE channels (
  channel_id INT AUTO_INCREMENT PRIMARY KEY,
  channel_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE channel_spend (
  spend_date DATE NOT NULL,
  channel_id INT NOT NULL,
  spend DECIMAL(12,2) NOT NULL,
  PRIMARY KEY (spend_date, channel_id),
  FOREIGN KEY (channel_id) REFERENCES channels(channel_id)
);


CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_datetime DATETIME NOT NULL,
  channel_id INT,
  ship_country VARCHAR(50),
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (channel_id) REFERENCES channels(channel_id)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  unit_price DECIMAL(10,2) NOT NULL,
  discount DECIMAL(10,2) DEFAULT 0,
  FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);


CREATE TABLE payments (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  paid_amount DECIMAL(12,2) NOT NULL,
  paid_at DATETIME NOT NULL,
  method VARCHAR(20),
  FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);


