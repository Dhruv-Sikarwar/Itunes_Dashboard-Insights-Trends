SELECT TOP 5 C.first_name FROM Customer C
LEFT JOIN invoice I 
ON C.customer_id=I.customer_id
GROUP BY C.first_name
ORDER BY total DESC;