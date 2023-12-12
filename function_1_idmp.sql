DROP function getEmployeeSalaryRange;
DELIMITER $$
CREATE FUNCTION numberEmployeeSalaryRange(minSalary DECIMAL(10,2), maxSalary DECIMAL(10,2)) RETURNS INT
deterministic
BEGIN
    DECLARE result int;
    
    SELECT count(user_id)
    INTO result
    FROM employee e
    WHERE e.salary BETWEEN minSalary AND maxSalary;

    RETURN result;
END $$

DELIMITER ;

