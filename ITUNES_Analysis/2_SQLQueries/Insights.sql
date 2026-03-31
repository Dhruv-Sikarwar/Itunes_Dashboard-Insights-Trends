--> TOP 5 USERS BASED ON MONEY SPENT
SELECT TOP 5 C.Name,C.country,ROUND(SUM(I.total),2) AS Total_Spent FROM Customer C
LEFT JOIN invoice I
ON C.customer_id=I.customer_id
GROUP BY C.Name,C.country
ORDER BY SUM(I.total) DESC;
GO


--> ONE TIME CUSTOMERS & REPEATED CUSTOMERS
CREATE FUNCTION dbo.GetCustomersBehaviour(@Purchases INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        C.customer_id,
        C.Name,
        COUNT(I.invoice_id) AS Times_Purchased
    FROM Customer C
    JOIN Invoice I
        ON C.customer_id = I.customer_id
    GROUP BY C.customer_id, C.Name
    HAVING COUNT(I.invoice_id) >= @Purchases
);
GO

--> LOYAL CUSTOMERS 

SELECT COUNT(*) FROM dbo.GetCustomersBehaviour(10);
GO

--> ONE TIME CUSTOMERS
SELECT COUNT(*) AS One_Time_Customers
FROM (
    SELECT C.customer_id
    FROM Customer C
    LEFT JOIN Invoice I 
        ON C.customer_id = I.customer_id
    GROUP BY C.customer_id
    HAVING COUNT(I.invoice_id) <= 4
) AS T;

--> Employees managing customers
SELECT COUNT(*) AS Count FROM
Employee E JOIN
Customer C 
ON E.employee_id=C.support_rep_id
GROUP BY E.employee_id;

-->Employees Handling High Reveneue Generator Customers 

SELECT DISTINCT E.employee_id,E.Name,COUNT(DISTINCT C.customer_id) AS Top_Customers_Handled FROM Employee E
JOIN Customer C
ON E.employee_id=C.support_rep_id
WHERE
C.customer_id IN (
SELECT TOP 10 C.customer_id FROM Customer C
LEFT JOIN invoice I 
ON C.customer_id=I.customer_id
GROUP BY C.customer_id
ORDER BY SUM(I.total) DESC 
)
GROUP BY E.employee_id, E.Name
ORDER BY Top_Customers_Handled DESC;


--> Hierarchical Position of Employees

SELECT CONCAT(E.Name,' (',E.title,')') AS Employee  ,CONCAT(E1.Name,' (',E1.title,')') AS Manager FROM Employee E
LEFT JOIN Employee E1
ON E.reports_to=E1.employee_id;