use idmp_proj;
INSERT INTO payment_status (status) VALUES
('Pending'),
('Paid'),
('Failed'),
('Refunded'),
('Completed'),
('Cancelled'),
('Awaiting Confirmation'),
('Partially Paid'),
('In Progress'),
('Expired');

INSERT INTO payment (mode_of_payment, payment_amt, payment_status_id) VALUES
('Credit Card', 150.00, 2),
('Cash On Delivery', 75.50, 1),
('PayPal', 200.25, 4),
('Debit Card', 120.75, 3),
('Net Banking', 80.50, 5),
('Credit Card', 90.00, 2),
('Cash On Delivery', 45.25, 1),
('Google Pay', 150.50, 4),
('Debit Card', 100.75, 3),
('Apple Pay', 60.25, 5);

INSERT INTO returns (pickup_status, pickup_time) VALUES
('Scheduled', '2023-01-15'),
('Completed', '2023-02-20'),
('Pending', NULL),
('Cancelled', NULL),
('Completed', '2023-03-10'),
('Scheduled', '2023-04-15'),
('Completed', '2023-05-20'),
('Pending', NULL),
('Cancelled', NULL),
('Completed', '2023-06-10');

INSERT INTO orders (no_of_items, delivery_address, payment_id) VALUES
(3, '123 Main St, Cityville', 1),
(1, '456 Oak St, Townsville', 3),
(2, '789 Pine St, Villagetown', 2),
(4, '101 Elm St, Hamlet', 4),
(5, '202 Maple St, Riverside', 5),
(2, '303 Cedar St, Grovetown', 6),
(3, '404 Birch St, Hilltown', 7),
(1, '505 Spruce St, Valleytown', 8),
(4, '606 Pine St, Laketown', 9),
(2, '707 Oak St, Summitville', 10);

update orders set no_of_items= 5 where order_id=5;

INSERT INTO order_register (order_status, order_id) VALUES
('Processing', 1),
('Shipped', 2),
('Delivered', 3),
('Cancelled', 4),
('Completed', 5),
('Processing', 6),
('Shipped', 7),
('Delivered', 8),
('Cancelled', 9),
('Completed', 10);

INSERT INTO order_status (status) VALUES
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned'),
('Awaiting Payment'),
('Out for Delivery'),
('Refunded'),
('Partially Shipped');

INSERT INTO order_item (order_item_id, quantity, order_date, delivery_date, return_id, order_id, order_status_id) VALUES
(1, 2, '2023-01-05', '2023-01-20', 2, 1, 2),
(2, 1, '2023-02-10', '2023-02-25', NULL, 2, 3),
(3, 3, '2023-03-15', '2023-03-30', 1, 3, 4),
(4, 2, '2023-04-20', '2023-05-05', NULL, 4, 5),
(5, 1, '2023-05-25', '2023-06-10', NULL, 5, 5),
(6, 2, '2023-06-05', '2023-06-20', NULL, 6, 1),
(7, 1, '2023-07-10', '2023-07-25', 3, 7, 2),
(8, 3, '2023-08-15', '2023-08-30', NULL, 8, 3),
(9, 2, '2023-09-20', '2023-10-05', NULL, 9, 4),
(10, 1, '2023-11-25', '2023-12-10', NULL, 10, 5);

INSERT INTO order_item (order_item_id, quantity, order_date, delivery_date, return_id, order_id, order_status_id) VALUES
(11, 1, '2023-01-05', '2023-01-20', NULL, 1, 2),
(12, 1, '2023-01-06', '2023-01-21', NULL, 1, 1),
(13, 3, '2023-01-06', '2023-01-21', NULL, 1, 2),
(14, 1, '2023-01-07', '2023-01-23', NULL, 1, 1),
(15, 1, '2023-01-06', '2023-01-21', NULL, 2, 1),
(16, 1, '2023-01-07', '2023-01-23', NULL, 2, 1),
(17, 2, '2023-01-06', '2023-01-21', NULL, 2, 2);
 

INSERT INTO product (product_id, name, vendor_id, unit_price, discount, delivery_charge, warranty_periodYears, manufacturer, specifications, return_policy, customer_ratings) VALUES
(1, 'Laptop', 1, 800.00, 10, 20.00, 2, 'ABC Electronics', 'Intel i5, 8GB RAM, 256GB SSD', '30 days return', 4),
(2, 'Smartphone', 2, 500.00, 5, 10.00, 1, 'XYZ Mobiles', '6.5-inch display, 128GB storage', '15 days return', 3),
(3, 'Camera', 3, 300.00, 8, 15.00, 3, 'PQR Cameras', '20MP, 4K recording', '45 days return', 5),
(4, 'Headphones', 1, 50.00, 2, 5.00, 1, 'AudioTech', 'Over-ear, noise-canceling', '60 days return', 4),
(5, 'Tablet', 4, 400.00, 15, 12.00, 2, 'TechGadgets', '10-inch display, 64GB storage', '30 days return', 4),
(6, 'Smartwatch', 2, 150.00, 7, 8.00, 1, 'WristTech', 'Fitness tracking, water-resistant', '20 days return', 4),
(7, 'Desktop Computer', 5, 1200.00, 12, 30.00, 2, 'PowerPC', 'AMD Ryzen 7, 16GB RAM, 1TB HDD', '45 days return', 5),
(8, 'Bluetooth Speaker', 3, 80.00, 5, 6.00, 1, 'SoundWave', 'Wireless, portable', '30 days return', 3),
(9, 'External Hard Drive', 4, 100.00, 8, 8.00, 3, 'DataVault', '2TB storage, USB 3.0', '60 days return', 4),
(10, 'Printer', 5, 200.00, 10, 15.00, 1, 'PrintPro', 'Wireless, color printing', '30 days return', 4);

INSERT INTO product (product_id, name, vendor_id, unit_price, discount, delivery_charge, warranty_periodYears, manufacturer, specifications, return_policy, customer_ratings) VALUES
(11, 'Smart Speaker', 3, 80.00, 5, 6.00, 1, 'SoundTech', 'Voice-controlled, Bluetooth', '30 days return', 4),
(12, 'Fitness Tracker', 2, 40.00, 3, 5.00, 1, 'FitGadget', 'Heart rate monitor, step counter', '15 days return', 3),
(13, 'Coffee Maker', 4, 60.00, 8, 8.00, 2, 'BrewMaster', 'Programmable, 12-cup capacity', '30 days return', 4),
(14, 'Gaming Mouse', 1, 30.00, 2, 4.00, 1, 'TechGear', 'RGB lighting, customizable buttons', '15 days return', 5),
(15, 'Portable Charger', 5, 20.00, 0, 3.00, 1, 'PowerOn', '10000mAh capacity, fast charging', '30 days return', 4);

INSERT INTO user (user_id, user_name, password, email, mobile_no, address) VALUES
(1, 'john_doe', 'password123', 'john.doe@example.com', 1234567890, '456 Pine St, Citytown'),
(2, 'alice_smith', 'alice@123', 'alice.smith@example.com', 9876543210, '789 Oak St, Villagetown'),
(3, 'bob_jones', 'bob567', 'bob.jones@example.com', 5555555555, '101 Elm St, Hamlet'),
(4, 'emma_wilson', 'emma@789', 'emma.wilson@example.com', 9998887777, '202 Maple St, Riverside'),
(5, 'sam_carter', 'sam456', 'sam.carter@example.com', 3334445555, '303 Cedar St, Grovetown'),
(6, 'lisa_jackson', 'lisa789', 'lisa.jackson@example.com', 7778889999, '404 Birch St, Hilltown'),
(7, 'michael_smith', 'michael123', 'michael.smith@example.com', 1112223333, '505 Spruce St, Valleytown'),
(8, 'olivia_wang', 'olivia@456', 'olivia.wang@example.com', 6667778888, '606 Pine St, Laketown'),
(9, 'javier_rodriguez', 'javier567', 'javier.rodriguez@example.com', 4443332222, '707 Oak St, Summitville'),
(10, 'sophie_miller', 'sophie@789', 'sophie.miller@example.com', 8889990000, '808 Maple St, Beachville'),
(11, 'ryan_anderson', 'ryan123', 'ryan.anderson@example.com', 5556667777, '909 Cedar St, Hillside'),
(12, 'natalie_white', 'natalie@456', 'natalie.white@example.com', 9990001111, '101 Pine St, Lakeside'),
(13, 'david_kim', 'david567', 'david.kim@example.com', 3332224444, '202 Oak St, Hilltop'),
(14, 'emily_martin', 'emily@789', 'emily.martin@example.com', 7778889999, '303 Elm St, Rivertown'),
(15, 'brandon_taylor', 'brandon456', 'brandon.taylor@example.com', 8887776666, '404 Maple St, Gladeville'),
(16, 'sara_morris', 'sara567', 'sara.morris@example.com', 5551112222, '505 Cedar St, Hilltown'),
(17, 'peter_nguyen', 'peter@123', 'peter.nguyen@example.com', 7773334444, '606 Oak St, Valleytown'),
(18, 'grace_hernandez', 'grace789', 'grace.hernandez@example.com', 9992223333, '707 Pine St, Laketown'),
(19, 'kevin_campbell', 'kevin@456', 'kevin.campbell@example.com', 6668889999, '808 Elm St, Summitville'),
(20, 'lily_miller', 'lily567', 'lily.miller@example.com', 4445556666, '909 Maple St, Beachville'),
(21, 'daniel_wu', 'daniel@789', 'daniel.wu@example.com', 8885556666, '101 Birch St, Hillside'),
(22, 'megan_turner', 'megan123', 'megan.turner@example.com', 5554443333, '202 Spruce St, Lakeside'),
(23, 'victor_li', 'victor@456', 'victor.li@example.com', 6664445555, '303 Pine St, Hilltop'),
(24, 'sophia_nelson', 'sophia567', 'sophia.nelson@example.com', 1112223333, '404 Oak St, Rivertown'),
(25, 'chris_carter', 'chris@789', 'chris.carter@example.com', 9991112222, '505 Elm St, Gladeville'),
(26, 'laura_jackson', 'laura123', 'laura.jackson@example.com', 5553334444, '606 Maple St, Citytown'),
(27, 'alex_smith', 'alex@456', 'alex.smith@example.com', 6662223333, '707 Cedar St, Villagetown'),
(28, 'mia_wang', 'mia567', 'mia.wang@example.com', 4441112222, '808 Oak St, Hamlet'),
(29, 'liam_rodriguez', 'liam@789', 'liam.rodriguez@example.com', 7772223333, '909 Pine St, Riverside'),
(30, 'zoey_miller', 'zoey456', 'zoey.miller@example.com', 8881112222, '101 Elm St, Grovetown');

INSERT INTO customer (user_id, feedback) VALUES
(1, 'Great service!'),
(2, 'Product quality could be better.'),
(3, 'Fast delivery, satisfied overall.'),
(4, 'Excellent customer support.'),
(5, 'Good experience, will shop again.'),
(6, 'Impressed with the variety of products.'),
(7, 'Timely delivery, but packaging could be improved.'),
(8, 'Responsive customer service, happy with the purchase.'),
(9, 'Smooth transaction, would recommend to others.'),
(10, 'Easy returns process, satisfied with the overall experience.');



INSERT INTO vendor (user_id, vendor_ratings) VALUES
(11, 4),
(12, 3),
(13, 5),
(14, 4),
(15, 4),
(16, 3),
(17, 4),
(18, 5),
(19, 3),
(20, 4);

INSERT INTO employee (user_id, access_level, position, department_name, salary) VALUES
(21, 4, 'Sales Manager', 'Sales', 60000.00),
(22, 3, 'Customer Support Representative', 'Support', 45000.00),
(23, 5, 'Product Manager', 'Product Management', 75000.00),
(24, 4, 'IT Specialist', 'IT', 65000.00),
(25, 3, 'Marketing Coordinator', 'Marketing', 50000.00),
(26, 4, 'Finance Analyst', 'Finance', 70000.00),
(27, 3, 'Technical Support Specialist', 'Support', 48000.00),
(28, 5, 'Senior Software Engineer', 'IT', 80000.00),
(29, 4, 'Quality Assurance Analyst', 'IT', 62000.00),
(30, 3, 'Social Media Specialist', 'Marketing', 55000.00);


INSERT INTO wishlist (user_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO wishlist_product (wishlist_id, product_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO wishlist_product (wishlist_id, product_id) VALUES
(6,7),
(6,8),
(6,5),
(6,4),
(7,1),
(7,2),
(8,9);

INSERT INTO shopping_cart (user_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);


INSERT INTO shopping_cart_product (quantity, product_id, shopping_cart_id) VALUES
(2, 1, 1),
(1, 3, 2),
(3, 2, 3),
(2, 4, 4),
(1, 5, 5),
(3, 6, 6),
(1, 7, 7),
(2, 8, 8),
(4, 9, 9),
(1, 10, 10);
