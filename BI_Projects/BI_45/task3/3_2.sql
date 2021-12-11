SELECT dl.Country, SUM(fsi.OrderLineTotal) as Revenue
FROM fact_internetsales fsi
JOIN dim_location dl
ON fsi.ShipToLocationKey = dl.LocationKey
WHERE OrderDate >= Date("2019-01-01") AND OrderDate <= Date("2019-12-31")
GROUP BY dl.Country ORDER BY Revenue DESC;