
DELIMITER $$
CREATE FUNCTION getWishlistCountProducts(
user_Id INT)

RETURNS INT 
deterministic
BEGIN
    RETURN (
        SELECT count(w.product_id) 
        FROM wishlisted w 
        WHERE w.user_id = user_Id
    );
END $$
DELIMITER ;
