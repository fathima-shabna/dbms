create table customers3(customer_id int,first_name varchar(20),country varchar(20));
use student_details2;
DELIMITER //
CREATE PROCEDURE product ()
BEGIN
SELECT customer_id, first_name
FROM customers3
WHERE country = 'USA';
END //
DELIMITER ;

insert into customers3 values(1,"haneena","UK");
insert into customers3 values(2,"shabna","USA");
insert into customers3 values(3,"haneena","India");

CALL product();
