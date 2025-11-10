--Some good Challanges need to solve--
/*
	Select brand, model, and color from cars
		where the color is 'red'
		and the brand is not 'Ferrari'
		and the car has not been sold
*/
-- SELECT brand, model, color FROM cars
-- WHERE color = 'red'
-- AND brand != 'Ferrari'
-- AND sold IS FALSE;
/*
	Select brand, model, and color from cars
		where the color is not red, blue, or white
		and the brand is none of: Aston Martin, Bentley or Jaguar
		and sold is false
*/
-- SELECT brand, model, color FROM cars
-- WHERE color NOT IN ( 'red', 'blue', 'white')
-- AND brand NOT IN ( 'Aston Martin', 'Bentley', 'Jaguar')
-- AND sold IS FALSE;
-- ✅ NOT IN is the perfect choice for excluding multiple exact values

-- ✅ sold IS FALSE correctly filters for unsold cars
/*
	Select brand, model, year, sold from cars
		where the brand is 'Dodge' and year is in the 60s
		or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
		only select cars where sold is not true
*/
-- SELECT brand, model, year, sold FROM cars
-- WHERE sold IS NOT TRUE
-- AND (
--     (brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
--     OR
--     (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979)
-- );
-- SELECT brand, model, year, sold FROM cars
--   WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
--   OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979))
--  AND SOLD IS NOT TRUE;






--Challange-10---ORDER BY Operator---
--The ORDER BY keyword is used to sort the result-set in ascending or descending order.
--The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
/*
	Select the brand, model and year from the cars table
		order by the brand
*/
-- SELECT brand, model, year FROM cars
-- ORDER BY brand;
/*
	Select the brand, model, condition and price from cars
		order the table by condition in descending order
		and by price in ascending order
*/
--  SELECT brand, model, condition, price FROM cars
-- ORDER BY condition DESC, price;
/*
		Select the brand, model, condition and price from cars
		where the car is not sold
		and the condition is not 5
		order the table by condition in descending order
		and by price in ascending order
*/
-- SELECT brand, model, condition, price FROM cars
-- WHERE sold IS FALSE
-- AND condition != 5
-- ORDER BY condition DESC, price;





--Challenge-11----LIMIT operator--
-- The LIMIT clause is used to specify the number of records to return.
--The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
/*
	Select the brand, model, year and price from the cars table
		order the results by the price in descending order
		limit the results to 1
*/
-- SELECT brand, model, year, price FROM cars
-- ORDER BY price DESC LIMIT 1;
-- --✅ LIMIT 1 - returns only the single most expensive car
/*
	Select the brand, model, color and price from cars
		where the color is a shade of 'red'
		and sold is false
		order by price
		limit the results to 5
*/
-- SELECT brand, model, color, price FROM cars
-- WHERE color LIKE '%red%'
-- AND sold IS FALSE
-- ORDER BY price LIMIT 5;




--Challenge-12--COUNT and SUM ---
/*
	Count the number of cars
		where sold is true
*/
-- SELECT COUNT(*) FROM cars
-- WHERE sold IS TRUE;
-- alternative
-- SELECT COUNT(*) AS total_sold FROM cars
-- WHERE sold IS TRUE;
/*
	Sum the price of cars
		where sold is true
	Use the alias total_earnings in your output
*/
-- SELECT SUM(price) AS total_earnings FROM cars
-- WHERE sold IS TRUE;

SELECT * FROM cars;
