Create table DIM_DATE(
DateKey int not null,
FullDateAlternateKey date,
DayNumberOfWeek int,
EnglishNameDayOfTheWeek varchar(30),
DayNumberOfMonth int,
DayNumberOfYear int,
WeekNumberOfYear int,
EnglishMonthName varchar(30),
MonthNumberOfYear int,
CalendarQuarter int,
CalendarYear int);

Alter Table DIM_DATE
Add constraint PK_DIM_DATE
PRIMARY KEY(DateKey);


