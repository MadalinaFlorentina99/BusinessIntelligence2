SELECT EXTRACT(Year FROM fsi.OrderDate) as 'Calendar Year', EXTRACT(Month FROM fsi.OrderDate) as Month, dim.Country,
SUM(fsi.OrderLineTaxAmmount) as `Tax Ammount`
FROM fact_internetsales fsi join dim_location dim on fsi.ShipToLocationKey=dim.LocationKey 
WHERE fsi.OrderDate >= Date("2021-01-01") AND fsi.OrderDate <= Date("2021-06-30")
and fsi.ShipToLocationKey=7 or fsi.ShipToLocationKey=8
GROUP BY Month ORDER BY Month;