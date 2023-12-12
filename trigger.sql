DELIMITER $$
CREATE TRIGGER update_order_item
After INSERT
ON order_item
FOR EACH ROW
BEGIN
	UPDATE orders
    set no_of_items=no_of_items+1
    where order_id=NEW.order_id;
END $$
    
DELIMITER ;