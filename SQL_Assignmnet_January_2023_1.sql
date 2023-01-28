--- RDB&SQL Assignment-
--- 1. Product Sales
--- You need to create a report on whether customers who purchased the product named 
---'2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD' buy the product below or not.
--- 1. 'Polk Audio - 50 W Woofer - Black' -- (other_product)

CREATE VIEW NAS_buyers
AS
SELECT DISTINCT b.customer_id, b.first_name, b.last_name
FROM product.product a, sale.customer b, sale.order_item c, sale.orders d
WHERE b.customer_id = d.customer_id
AND c.order_id = d.order_id
AND a.product_id = c.product_id
AND a.product_name = '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'

CREATE VIEW polk_buyers
AS
SELECT	distinct b.customer_id, b.first_name, b.last_name, a.product_id
FROM	product.product a, sale.customer b, sale.order_item c, sale.orders d
WHERE	a.product_id=c.product_id
AND		c.order_id = d.order_id
AND		d.customer_id = b.customer_id
AND		a.product_name = 'Polk Audio - 50 W Woofer - Black'

CREATE VIEW the_buyer
AS
SELECT *, other_product = 'No'
FROM NAS_buyers






---2. Conversion Rate
---Below you see a table of the actions of customers visiting the website by clicking 
---on two different types of advertisements given by an E-Commerce company. 
---Write a query to return the conversion rate for each Advertisement type.


---a.    Create above table (Actions) and insert values,

---b.    Retrieve count of total Actions and Orders for each Advertisement Type,

---c.    Calculate Orders (Conversion) rates for each Advertisement Type by 
---dividing by total count of actions casting as float by multiplying by 1.0.
