/*What are the three countries that make the most profit for the Company on the goods in the price
range between 1000 and 2000? Use ShipToLocation, UnitPrice and OrderLineProfit.*/

select Country , SUM(inter.OrderLineProfit) AS "Profit" from dim_location loc join fact_internetsales inter on loc.LocationKey = inter.ShipToLocationKey
where UnitPrice between 1000 and 2000  
order by  SUM(inter.OrderLineProfit)  desc
limit 3;