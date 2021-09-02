-- Insert statements for new DB
-- customer inserts
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Benjamin',
	'Kaay',
	'2345 San Gabriel Dr Plano, TX 75053',
	'4242-4242-4242-4242 632 05/22'
);

--Insert statement for brand date
INSERT INTO brand(
	seller_id,
	brand_name,
	contact_number,
	address
)VALUES(
	1,
	'coding Temple LLC',
	'234-345-3456',
	'234 W Ontario St Chicago, IL'
);

--Insert Into inventory
INSERT INTO inventory(
	inventory_id,
	upc,
	product_amount
)VALUES(
	1,
	132456867898,
	20
);
 --Insert into product
 INSERT INTO product(
 	item_id,
	amount,
	prod_name,
	seller_id,
	inventory_id
 )VALUES (
 	1,
	20.00,
	'Python course',
	1,
	1
 );
 
 -- Isert into order
 INSERT INTO order_(
 	order_id,
	sub_total,
	total_cost,
	customer_id,
	inventory_id
 )VALUES (
 	1,
	40.00,
	45.55,
	1,
	1
 );