-- Create a new database
-- CREATE DATABASE my_database;

-- Connect to the new database
\c my_database;

-- Create tables
-- enum for user roles
CREATE TYPE user_role AS ENUM ('manager', 'worker');
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    pass VARCHAR(50) NOT NULL,
    role user_role NOT NULL
);

CREATE TABLE providers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    company_name VARCHAR(50)
);

CREATE TAble categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    amount INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE inflow_orders (
    id SERIAL PRIMARY KEY,
    provider_id INT NOT NULL,
    product_id INT NOT NULL,
    amount INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (provider_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
-- Insert initial data into the tables

-- Users
INSERT INTO users (name, surname, email, pass, role) VALUES ('John', 'Doe', '11@test.com', 'password123', 'manager');
INSERT INTO users (name, surname, email, pass, role) VALUES ('Jane', 'Doe', '22@test.com', 'password123', 'worker');
INSERT INTO users (name, surname, email, pass, role) VALUES ('Alice', 'Smith', '33@test.com', 'password123', 'worker');
INSERT INTO users (name, surname, email, pass, role) VALUES ('Bob', 'Smith', '44@test.com', 'password123', 'worker');
INSERT INTO users (name, surname, email, pass, role) VALUES ('Charlie', 'Brown', '55@test.com', 'password123', 'worker');
INSERT INTO users (name, surname, email, pass, role) VALUES ('David', 'Brown', '66@test.com', 'password123', 'worker');

-- providers
INSERT INTO providers (company_name, email, phone) VALUES ('Provider1', 'provider1@test.com', '123456789');
INSERT INTO providers (company_name, email, phone) VALUES ('Provider2', 'provider2@test.com', '987654321');

-- customers
INSERT INTO customers (name, surname, email, company_name) VALUES ('Customer1', 'Doe', 'customer1@test.com', 'Company1');
INSERT INTO customers (name, surname, email, company_name) VALUES ('Customer2', 'Smith', 'customer2@test.com', null);
INSERT INTO customers (name, surname, email, company_name) VALUES ('Customer3', 'Brown', 'customer3@test.com', null);

-- categories
INSERT INTO categories (name) VALUES ('Washing machines');
INSERT INTO categories (name) VALUES ('Refrigerators');
INSERT INTO categories (name) VALUES ('Dishwashers');
INSERT INTO categories (name) VALUES ('Ovens');

-- products
INSERT INTO products (name, price, amount, category_id) VALUES ('Washing machine1', 1000.00, 10, 1);
INSERT INTO products (name, price, amount, category_id) VALUES ('Washing machine2', 2000.00, 20, 1);
INSERT INTO products (name, price, amount, category_id) VALUES ('Refrigerator1', 1500.00, 15, 2);
INSERT INTO products (name, price, amount, category_id) VALUES ('Refrigerator2', 2500.00, 25, 2);
INSERT INTO products (name, price, amount, category_id) VALUES ('Dishwasher1', 1200.00, 12, 3);
INSERT INTO products (name, price, amount, category_id) VALUES ('Dishwasher2', 2200.00, 22, 3);
INSERT INTO products (name, price, amount, category_id) VALUES ('Oven1', 1300.00, 13, 4);
INSERT INTO products (name, price, amount, category_id) VALUES ('Oven2', 2300.00, 23, 4);

-- orders
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (1, 1, 1, '2021-01-01');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (1, 2, 2, '2021-01-02');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (2, 3, 3, '2021-01-03');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (2, 4, 4, '2021-01-04');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (3, 5, 5, '2021-01-05');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (3, 6, 6, '2021-01-06');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (1, 7, 7, '2021-01-07');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (1, 8, 8, '2021-01-08');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (2, 3, 9, '2021-01-09');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (2, 4, 10, '2021-01-10');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (3, 5, 11, '2021-01-11');
INSERT INTO orders (customer_id, product_id, amount, order_date) VALUES (3, 6, 12, '2021-01-12');

