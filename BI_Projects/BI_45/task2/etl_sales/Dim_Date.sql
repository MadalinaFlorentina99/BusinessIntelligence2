INSERT INTO BI_BikesDW_45.DIM_DATE
SELECT YEAR(DueDate) * 10000 + MONTH(DueDate) * 100 + DAYOFMONTH(DueDate) AS DateKey, DueDate As FullDateAlternateKey, dayofweek(DueDate) DayNumberOfWeek,
dayname(DueDate) DayNameOfWeek, dayofmonth(DueDate) DayNumberOfMonth, dayofyear(DueDate) DayNumberOfYear,
weekofyear(DueDate) As WeekNumberOfYear, monthname(DueDate) EnglishMonthName, month(DueDate) MonthNumberOfYear,
quarter(DueDate) CalendarQuarter, year(DueDate) CalendarYear
FROM 
(SELECT DueDate from BI_Bikes_45.TB_SalesOrderHeader
UNION
SELECT OrderDate From BI_Bikes_45.TB_SalesOrderHeader
UNION
SELECT ShipDate from BI_Bikes_45.TB_SalesOrderHeader) AS test;