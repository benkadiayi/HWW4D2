-- Primary Keys can't be empty or duplicated
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Brand Table craetion
CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(150),
	contact_number VARCHAR(150),
	address VARCHAR(150)
);

-- Inventory table creation
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	upc NUMERIC(12,0),
	product_amount INTEGER
);

-- Order Table creation
CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	customer_id INTEGER NOT NULL, -- NOT NULL CONSTRAINT means this can't be empty
	inventory_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);

-- Product Table creation
CREATE TABLE product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	inventory_id INTEGER NOT NULL,
	FOREIGN KEY(seller_id) REFERENCES brand(seller_id),
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);