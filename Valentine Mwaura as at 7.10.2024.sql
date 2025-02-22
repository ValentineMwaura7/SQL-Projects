											#ASSIGNMENT
#Question A
	select *
	FROM customers
	ORDER BY total_points DESC;

#Question B
	USE `store`;
	select *
	FROM customers
	WHERE points<1500;

#Question C
	ALTER TABLE customers RENAME COLUMN phone to phone_numbers ;
	ALTER TABLE customers RENAME COLUMN points to total_points ;

#Question D
	select  customer_id,first_name,last_name,birth_date
	from customers;

#Question E
	select *
	from customers
	WHERE phone_numbers IS NULL;

	select *
	from customers
	WHERE phone_numbers IS NOT NULL;

#Question F
	DESCRIBE customers;
	ALTER TABLE customers ADD COLUMN Multiplied_Points int(11) NOT NULL DEFAULT '0';

	SET SQL_SAFE_UPDATES = 0;
	UPDATE customers SET Multiplied_Points =total_points*0.2;

#Question G
	select *
	FROM customers;
	UPDATE customers SET last_name ='Benson'
	WHERE customer_id=4;

#Question H
	SELECT DISTINCT city FROM Customers;

#Question I
	SELECT SUM(total_points)
	FROM customers;

SELECT DISTINCT city,SUM(total_points)
	FROM customers
	GROUP BY city;

#Question J
	SELECT *
	FROM customers
	WHERE birth_date<='1980-01-01';

#Question K
	SELECT count(customer_id)
	FROM customers
	WHERE birth_date<='1991-01-01';
