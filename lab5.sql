CREATE DATABASE lab5;

CREATE TABLE customers(
  custumer_id int,
  cust_name VARCHAR(255),
  city VARCHAR(255),
  grade int,
  salesman_id int
);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3002,'NICK RIMANDO', 'New York',100,5001);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3005,'GRAHAM ZUSI', 'California',200,5002);
INSERT INTO customers(custumer_id, cust_name, city, salesman_id) VALUES (3001,'BRAD GUZAN', 'London',5005);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3004,'FABIAN JOHNS', 'PARIS',300,5006);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3007,'BRAD DAVIS', 'New York',200,5001);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3009,'GEOFF CAMERO', 'Berlin',100,5001);
INSERT INTO customers(custumer_id, cust_name, city, grade, salesman_id) VALUES (3008,'JULIAN GREEN', 'London',300,5002);


SELECT *FROM customers WHERE grade > 100;

SELECT *FROM customers WHERE (grade>100 and city = 'New York');

SELECT *From customers WHERE grade>100 or city = 'New York';

SELECT *FROM customers WHERE city = 'PARIS' or city = 'Rome';

SELECT *FROM customers WHERE cust_name LIKE 'B%';

CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  customer_id INT,
  description VARCHAR(255),
  purch_amt INT
);
SELECT *FROM orders WHERE customer_id IN (SELECT customer_id FROM customers WHERE city = 'New York');

SELECT * FROM customers WHERE custumer_id IN (SELECT customer_id FROM orders WHERE purch_amt>10);

SELECT * FROM customers WHERE custumer_id IN (SELECT customer_id FROM orders WHERE purch_amt>10);

SELECT sum(purch_amt) FROM orders;

SELECT avg(purch_amt) FROM orders;

SELECT * FROM customers WHERE cust_name NOTNULL;

SELECT max(purch_amt) FROM orders;