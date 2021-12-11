SELECT p.ProductTopCategoryName as 'Product Top Category', SUM(fsi.OrderLineProfit) as Profit
FROM fact_internetsales fsi
JOIN dim_product p
ON fsi.ProductKey = p.ProductKey
WHERE OrderDate >= Date("2021-01-01") AND OrderDate <= Date("2021-12-31")
GROUP BY p.ProductTopCategoryName ORDER BY Profit DESC;