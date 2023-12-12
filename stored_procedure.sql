DELIMITER $$
CREATE PROCEDURE get_order_info_by_id(
IN o_id int)
begin
select *
FROM orders as o natural join order_item as i
where o.order_id=o_id;
end $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE get_employee_info_by_user_id(
IN u_id int)
begin
select *
FROM user as u natural join employee as e
where u.user_id=u_id;
end $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE get_product_details_by_product_id(
IN p_id int)
begin
select *
FROM product as p
where p.product_id=p_id;
end $$
DELIMITER ;

