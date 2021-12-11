/*Who are the top five most active purchasing customers (by the number of purchased items) among
the customers in Europe? Use ShipToLocation.*/
select Country, EXTRACT(Year FROM fsi.OrderDate) as 'Year', EXTRACT(Month FROM fsi.OrderDate) as Month,SUM(fsi.OrderLineShoppingCost) AS "Shipping costs" from fact_internetsales fsi join dim_location loc 
on fsi.ShipToLocationKey= loc.LocationKey
where fsi.ShipToLocationKey=10 
and ShipMethos ="Cargo International"
and  OrderDate >= Date("2020-01-01") AND OrderDate <= Date("2020-06-30")
order by Month;