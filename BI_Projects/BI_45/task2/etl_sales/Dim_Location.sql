USE BI_BikesDW_45;
INSERT INTO DIM_Location(LocationKey, Country, Region, TaxRate, ShipCoeff)
   SELECT CountryID, Country, Region, TaxRate, ShipCoeff
     FROM BI_Bikes_45.TB_Country
