drop schema idmp_proj;
create schema idmp_proj;
use idmp_proj;

create table payment_status (
payment_status_id int primary key auto_increment,
status varchar(50) );

create table payment (
payment_id int primary key auto_increment,
mode_of_payment varchar(50),
payment_amt decimal(10,2),
payment_status_id int,
foreign key (payment_status_id) references payment_status(payment_status_id) );



create table returns (
return_id int primary key auto_increment,
pickup_status varchar(50),
pickup_time date );

create table orders(
order_id int primary key auto_increment,
no_of_items int,
delivery_address varchar(255),
payment_id int,
foreign key (payment_id) references payment(payment_id) );

create table order_register(
order_register_id int primary key auto_increment,
order_status varchar(15) ,
order_id int,
foreign key (order_id) references orders(order_id)
);

create table order_status(
order_status_id int primary key auto_increment,
status varchar(25) );

create table order_item(
order_item_id int primary key,
quantity int,
order_date date,
delivery_date date,
return_id int,
order_id int,
order_status_id int,
foreign key (return_id) references returns(return_id),
foreign key (order_id) references orders(order_id),
foreign key (order_status_id) references order_status(order_status_id) );

create table product(
product_id int primary key,
name varchar(30),
vendor_id int,
unit_price decimal(10,2),
discount int,
delivery_charge decimal(10,2),
warranty_periodYears int,
manufacturer varchar(25),
specifications varchar(100),
return_policy varchar(255),
customer_ratings int check(customer_ratings>=0 and customer_ratings<=5)
);

create table user(
user_id int primary key auto_increment,
user_name varchar(25),
password varchar(20),
email varchar(50),
mobile_no numeric(15,0),
address varchar(50) );

create table customer(
user_id int primary key,
feedback varchar(100),
foreign key (user_id) references user(user_id)
);

create table vendor(
user_id int,
vendor_ratings int check(vendor_ratings >=0 and vendor_ratings<=5),
foreign key (user_id) references user(user_id) );

create table employee (
user_id int,
access_level int check(access_level>=0 and access_level<=5),
position varchar(50),
department_name varchar(20),
salary decimal(10,2),
foreign key (user_id) references user(user_id) );

create table wishlist(
wishlist_id int primary key auto_increment,
user_id int,
foreign key(user_id) references customer(user_id) );

create table wishlist_product(
wishlist_id int,
product_id int,
foreign key (wishlist_id) references wishlist(wishlist_id),
foreign key (product_id) references product(product_id) );

create table shopping_cart(
shopping_cart_id int primary key auto_increment,
user_id int,
foreign key (user_id) references customer(user_id) );

create table shopping_cart_product(
quantity int,
product_id int,
shopping_cart_id int,
foreign key (product_id) references product(product_id),
foreign key (shopping_cart_id) references shopping_cart(shopping_cart_id) );

