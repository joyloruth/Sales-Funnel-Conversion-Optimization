# visitors on home page
SELECT sex, COUNT(*)
FROM user_table
INNER JOIN home_page_table 
ON user_table.user_id = home_page_table.user_id
GROUP BY 1;

# sex	COUNT(*)
# Male 45325
# Female 45075


# visitors on search page
SELECT sex, COUNT(*)
FROM user_table
INNER JOIN search_page_table 
ON user_table.user_id = search_page_table.user_id
GROUP BY 1;

# sex	COUNT(*)
# Male 22524
# Female 22676


# visitors on payment page
SELECT sex, COUNT(*)
FROM user_table
INNER JOIN payment_page_table
ON user_table.user_id = payment_page_table.user_id
GROUP BY 1;

# visitors on confirmation page
SELECT sex, COUNT(*)
FROM user_table
INNER JOIN payment_confirmation_table 
ON user_table.user_id = payment_confirmation_table.user_id
GROUP BY 1;


    
    
