
CREATE DATABASE seminarka_database;




CREATE TABLE public.eshop_company (
	name varchar(10),
	id integer,
	tax_id varchar(12),
	legal_establishemnt varchar(35),
	responsible_person varchar(35),
	email varchar(50),
	phone_number varchar(20),
	customer_id smallint NOT NULL,
	CONSTRAINT uqk_id UNIQUE (id),
	CONSTRAINT pk_customerid PRIMARY KEY (customer_id)

);





CREATE TABLE public.eshop_products_table (
	name varchar(100),
	price varchar(20),
	id_product integer NOT NULL,
	type varchar(15),
	customer_id_eshop_company smallint,
	currency_eshop_payments_table varchar(30),
	CONSTRAINT pk PRIMARY KEY (id_product)

);





CREATE TABLE public.eshop_customers_table (
	first_name varchar(30),
	last_name varchar(30),
	nickname varchar(30),
	gender char(1),
	email varchar(50),
	phone_number varchar(15),
	street varchar(30),
	city varchar(35),
	postalcode smallint,
	orientation_number smallint,
	customer_id varchar(25) NOT NULL,
	customer_id_eshop_company smallint,
	CONSTRAINT customer_id PRIMARY KEY (customer_id)

);





CREATE TABLE public.eshop_sales_table (
	sale varchar(5) NOT NULL,
	id_product_sale varchar(50),
	CONSTRAINT pk PRIMARY KEY (sale)







CREATE TABLE public.eshop_payments_table (
	product varchar(50),
	currency varchar(30) NOT NULL,
	CONSTRAINT pk PRIMARY KEY (currency),
	CONSTRAINT uqk UNIQUE (product)

);








