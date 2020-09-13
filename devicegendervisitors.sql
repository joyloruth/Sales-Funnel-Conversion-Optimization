# visitors on home page
SELECT device, sex, COUNT(*)
FROM user_table
INNER JOIN home_page_table 
ON 	user_table.user_id = home_page_table.user_id
GROUP BY 1, 2;

# device	sex	COUNT(*)
# Desktop	Male	30203
# Mobile	Female	15078
# Desktop	Female	29997
# Mobile	Male	15122

  

# visitors on search page
SELECT device, sex, COUNT(*)
FROM user_table
INNER JOIN search_page_table 
ON 	user_table.user_id = search_page_table.user_id
GROUP BY 1, 2;
  
# device	sex	COUNT(*)
# Mobile	Male	7515
# Mobile	Female	7585
# Desktop	Male	15009
# Desktop	Female	15091

  

# visitors on payment page
SELECT device, sex, COUNT(*)
FROM user_table
INNER JOIN payment_page_table
ON 	user_table.user_id = payment_page_table.user_id
GROUP BY 1,2;

# device	sex	COUNT(*)
# Mobile	Male	1450
# Desktop	Male	1480
# Mobile	Female	1570
# Desktop	Female	1530
  


# visitors on confirmation page
SELECT device, sex, COUNT(*)
FROM user_table
INNER JOIN payment_confirmation_table 
ON 	user_table.user_id = payment_confirmation_table.user_id
GROUP BY 1,2;

# device	sex	COUNT(*)
# Desktop	Male	30203
# Desktop	Female	29997
# Mobile	Female	15078
# Mobile	Male	15122
