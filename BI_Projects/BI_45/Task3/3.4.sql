
select Region, FullName , SUM(OrderQty) AS "Quantity Sold",rank() over (partition by inter.CustomerKey order by SUM(OrderQty) desc) as "Rank"  from dim_location loc join fact_internetsales inter on 
loc.LocationKey= inter.ShipToLocationKey join dim_customer cust on
cust.CustomerKey=inter.CustomerKey
where Region = "Europe"
order by SUM(OrderQty) desc
limit 5;