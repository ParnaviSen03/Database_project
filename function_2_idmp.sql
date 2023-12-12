DELIMITER $$
CREATE FUNCTION calculateOrderTotal(
orderId INT
) 
RETURNS DECIMAL(10,2)
deterministic
BEGIN
    DECLARE totalAmount DECIMAL(10,2) ;
    SELECT SUM(((unit_price * quantity)*(100-discount)/10) + delivery_charge)
    INTO totalAmount
    FROM order_product
    WHERE order_id = orderId;
    RETURN totalAmount;
END $$
DELIMITER ;
