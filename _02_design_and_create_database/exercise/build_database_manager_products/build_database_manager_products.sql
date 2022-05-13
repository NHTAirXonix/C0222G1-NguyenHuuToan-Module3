CREATE DATABASE if not exists `build_database_manager_products`;

USE build_database_manager_products;

CREATE TABLE customer (
    customer_id INT auto_increment primary key,
    customer_name varchar(50),
    customer_age INT
);

CREATE TABLE `order` (
    order_id INT auto_increment primary key,
    customer_id INT,
	order_day date,
    total_price INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE product (
    product_id INT auto_increment primary key,
    product_name varchar(50),
    product_price INT
);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    od_qty INT,
    primary key (order_id,product_id),
    FOREIGN KEY (order_id) REFERENCES `order` (order_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
);

