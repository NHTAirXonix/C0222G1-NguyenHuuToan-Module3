DROP DATABASE `build_database_manager_products`;
CREATE DATABASE  `build_database_manager_products`;

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

INSERT INTO customer
VALUES (1, 'MinH  Quan', 10);
INSERT INTO customer
VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO customer
VALUES (3, 'Hong Ha', 50);

INSERT INTO `order` (order_id,customer_id,order_day,total_price)
VALUES (1,1, '2006-3-21',null);
INSERT INTO `order` (order_id,customer_id,order_day,total_price)
VALUES (2,2, '2006-3-23',null);
INSERT INTO `order` (order_id,customer_id,order_day,total_price)
VALUES (3,1, '2006-3-16',null);

INSERT INTO product (product_id,product_name,product_price)
VALUES (1,'May Giat', 3);
INSERT INTO product (product_id,product_name,product_price)
VALUES (2,'Tu Lanh', 5);
INSERT INTO product (product_id,product_name,product_price)
VALUES (3,'Dieu Hoa', 7);
INSERT INTO product (product_id,product_name,product_price)
VALUES (4,'Quat', 1);
INSERT INTO product (product_id,product_name,product_price)
VALUES (5,'Bep Dien', 2);

INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (1,1,3);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (1,3,7);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (1,4,2);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (2,1,1);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (3,1,8);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (2,5,4);
INSERT INTO order_detail (order_id,product_id,od_qty)
VALUES (2,3,3);

-- problem 1
select order_id,customer_id,order_day from `order`;
-- problem 2
select c.customer_name,p.product_name from customer c 
join `order` o on c.customer_id = o.customer_id  
join order_detail od on o.order_id = od.order_id 
join product p on od.product_id = p.product_id; 
-- problem 3
select c.customer_name from customer c where c.customer_id not in (select o.customer_id from `order` o);
-- problem 4
select o.order_id,o.order_day,sum(od.od_qty * p.product_price) as total_price from order_detail od
join `order` o on od.order_id = o.order_id 
join product p on od.product_id = p.product_id
group by od.order_id
