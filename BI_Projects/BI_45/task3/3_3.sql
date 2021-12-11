select rank() over( partition by inter.CustomerKey order by SUM(OrderLineProfit) desc) as "Customer Rank" ,
FullName, SUM(OrderLineProfit) AS "Profit" from dim_customer cust join fact_internetsales inter
 on cust.CustomerKey = inter.CustomerKey
 where OrderDate >= Date("2021-01-01") AND OrderDate <= Date("2021-06-30")
 order by  SUM(OrderLineProfit) desc;
