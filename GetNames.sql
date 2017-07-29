 
SELECT Name FROM Clients
WHERE CustomerId IN 
(
	SELECT DISTINCT CustomerId FROM Goods 
	WHERE ProductName = 'milk' 
	AND CustomerId NOT IN
	(
		SELECT CustomerId FROM Goods 
		WHERE ProductName = 'sourcream' AND PurchaiseDatetime >= DATEADD(MONTH, -1, GETDATE())
	)
)

 