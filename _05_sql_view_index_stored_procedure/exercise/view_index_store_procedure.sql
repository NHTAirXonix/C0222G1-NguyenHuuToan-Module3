drop database demo;
create DATABASE demo;
use demo;
create table products (
	Id int,
	product_code varchar(50),
	product_name varchar(50),
	product_price int,
	product_amount int,
	product_description varchar(50),
	product_status varchar(50)
);

INSERT INTO Products (Id, product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES 
(1, '00-X', 'SCARL-A', 10000, 5, 'High Damage', 'Good'),
(2, '10-VX', 'AK-47', 20000, 8, 'High Damage', 'Repair'),
(3, '04-IX', 'M4', 8000, 7, 'High Damage', 'Good'),
(4, '02-XX', 'AK-74', 9000, 4, 'High Damage', 'Repair'),
(5, '30-IIX', 'M-82', 50000, 5, 'High Damage', 'Repair')
;

-- ////////// STEP 3 //////////

create index demo_index1 on products(product_name,product_price);
create unique index demo_index2 on products(product_name,product_price);
drop index demo_index1 ON products;
drop index demo_index2 ON products;
explain select * from products where product_name = 'Apple';

-- ////////// STEP 4 //////////

create view demo_view_1 as 
select product_code, product_name, product_price, product_status from products;
SELECT * FROM demo.demo_view_1;


ALTER VIEW demo_view_1
AS
SELECT product_code, product_name
FROM products;

DROP VIEW demo_view_1;

-- ////////// STEP 5 //////////

-- -------------get infor--------------

DELIMITER $$
create procedure p_get_all()
begin
select * from products;
end $$
DELIMITER ;
call p_get_all();

-- -------------add new--------------

DELIMITER $$
create procedure p_add_new_product(
product_code varchar(50), 
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin
insert into products (product_code, product_name, product_price, product_amount, product_description, product_status)
values (product_code, product_name, product_price, product_amount, product_description, product_status);
end $$
DELIMITER ;
call p_add_new_product(6, '99-IX', 'M-99', 100000, 5, 'High Damage', 'Good');

-- -------------edit--------------

DELIMITER $$
CREATE PROCEDURE p_edit_product(
product_id int,
product_code varchar(50),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin
update products p
set p.product_code = product_code,
    p.product_name = product_name,
    p.product_price = product_price,
    p.product_amount = product_amount,
    p.product_description = product_description,
    p.product_status = product_status
where p.id = product_id;
end $$
DELIMITER ;
call p_edit_product(9, '99-99', '99-99', 9999, 9, 'High Damage', 'Good');

-- -------------delete--------------

DELIMITER $$
create procedure p_delete_product(product_id int)
begin
delete from products p
where p.id = product_id;
end $$
DELIMITER ;
call p_delete_product(4);


