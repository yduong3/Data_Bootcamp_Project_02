-- Query to check successful load
SELECT * FROM crime_data;

SELECT * FROM housing_data;

-- Joins the tables
SELECT housing_data.fsa, crime_data.Major_Crime_Indicators, crime_data.Neighbourhood, housing_data.Bedroom, housing_data.Bathroom, housing_data.Den, housing_data.Address, housing_data.Price
FROM housing_data 
RIGHT OUTER JOIN crime_data 
ON housing_data.fsa=crime_data.fsa
GROUP BY housing_data.fsa
;