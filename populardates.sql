SELECT date, COUNT(date),
CASE
WHEN date BETWEEN '2015-01-01 00:00:00' AND '2015-01-31 00:00:00' THEN 'Jan'
WHEN date BETWEEN '2015-02-01 00:00:00' AND '2015-02-28 00:00:00' THEN 'Feb'
WHEN date BETWEEN '2015-03-01 00:00:00' AND '2015-03-31 00:00:00' THEN 'Mar'
WHEN date BETWEEN '2015-04-01 00:00:00' AND '2015-04-30 00:00:00' THEN 'Apr'
ELSE 'NONE'
END AS 'Month'
FROM user_table
INNER JOIN home_page_table 
ON 	user_table.user_id = home_page_table.user_id
GROUP BY 3;

# date	                COUNT Month
# 2015-01-03 00:00:00	22600	Jan
# 2015-02-09 00:00:00	22600	Feb
# 2015-03-05 00:00:00	22600	Mar
# 2015-04-24 00:00:00	22600	Apr


SELECT date, COUNT(date),
CASE
WHEN date BETWEEN '2015-01-01 00:00:00' AND '2015-01-31 00:00:00' THEN 'Jan'
WHEN date BETWEEN '2015-02-01 00:00:00' AND '2015-02-28 00:00:00' THEN 'Feb'
WHEN date BETWEEN '2015-03-01 00:00:00' AND '2015-03-31 00:00:00' THEN 'Mar'
WHEN date BETWEEN '2015-04-01 00:00:00' AND '2015-04-30 00:00:00' THEN 'Apr'
ELSE 'NONE'
END AS 'Month'
FROM user_table
INNER JOIN search_page_table 
ON 	user_table.user_id = search_page_table.user_id
GROUP BY 3;

# date	                COUNT	Month
# 2015-01-28 00:00:00	13554	Jan
# 2015-02-22 00:00:00	13687	Feb
# 2015-03-15 00:00:00	8879	Mar
# 2015-04-26 00:00:00	9080	Apr



SELECT date, COUNT(date),
CASE
WHEN date BETWEEN '2015-01-01 00:00:00' AND '2015-01-31 00:00:00' THEN 'Jan'
WHEN date BETWEEN '2015-02-01 00:00:00' AND '2015-02-28 00:00:00' THEN 'Feb'
WHEN date BETWEEN '2015-03-01 00:00:00' AND '2015-03-31 00:00:00' THEN 'Mar'
WHEN date BETWEEN '2015-04-01 00:00:00' AND '2015-04-30 00:00:00' THEN 'Apr'
ELSE 'NONE'
END AS 'Month'
FROM user_table
INNER JOIN payment_page_table
ON 	user_table.user_id = payment_page_table.user_id
GROUP BY 3;

# date	                COUNT	Month
# 2015-01-15 00:00:00	2390	Jan
# 2015-02-13 00:00:00	2412	Feb
# 2015-03-17 00:00:00	631	Mar
# 2015-04-10 00:00:00	597	Apr



SELECT date, COUNT(date),
CASE
WHEN date BETWEEN '2015-01-01 00:00:00' AND '2015-01-31 00:00:00' THEN 'Jan'
WHEN date BETWEEN '2015-02-01 00:00:00' AND '2015-02-28 00:00:00' THEN 'Feb'
WHEN date BETWEEN '2015-03-01 00:00:00' AND '2015-03-31 00:00:00' THEN 'Mar'
WHEN date BETWEEN '2015-04-01 00:00:00' AND '2015-04-30 00:00:00' THEN 'Apr'
ELSE 'NONE'
END AS 'Month'
FROM user_table
INNER JOIN payment_confirmation_table 
ON 	user_table.user_id = payment_confirmation_table.user_id
GROUP BY 3;

# date	              COUNT Month
# 2015-01-29 00:00:00	189	Jan
# 2015-02-05 00:00:00	173	Feb
# 2015-03-03 00:00:00	44	Mar
# 2015-04-21 00:00:00	46	Apr
