SELECT sex, COUNT(*)
FROM user_table
INNER JOIN payment_confirmation_table 
ON user_table.user_id = payment_confirmation_table.user_id
GROUP BY 1;

