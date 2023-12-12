use idmp_proj;
-- View1
create view return_view as
select * 
from orders as o
natural join order_item as i
natural join returns as r;
-- View2
create view vendor_view as
select * 
from user as u
natural join vendor as v;
-- View3
create view employee_view as
select * 
from user as u
natural join employee as e;
-- View 4
create view customer_view as
select * 
from user as u
natural join customer as c;
-- View 5
create view wishlisted as
select *
from product as p natural join wishlist_product as wp
natural join wishlist as w;
-- View 6
create view order_product as
select *
from order_item as i
join product as p
on p.product_id=i.order_item_id;