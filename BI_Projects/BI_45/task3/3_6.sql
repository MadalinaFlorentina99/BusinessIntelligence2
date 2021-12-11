select ProductTopCategoryName as "Product Top Category" , 
ProductSubCategoryName as "Product Sub Category", 
ProductModelName as "Product Model",
SUM(inter.OrderQty) as "Quantity Sold"
from dim_product prod join fact_internetsales inter on prod.ProductKey=inter.ProductKey
group by  ProductTopCategoryName 
order by SUM(inter.OrderQty) desc
limit 3;
