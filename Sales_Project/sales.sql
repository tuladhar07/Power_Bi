USE sales;
select * from sales.customers;
SELECT count(*) FROM customers;
SELECT * FROM transactions where market_code='Mark001';
SELECT distinct product_code FROM transactions where market_code='Mark001';
SELECT * from transactions where currency="USD";
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR" or transactions.currency="USD";
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";