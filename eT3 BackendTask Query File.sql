/* eT3 Internship Backend Task */
/* Muhammad Jamal Muhammad*/

USE Coffee_Shop;

/* 1. Which drink has the highest calories from the dataset? */
SELECT TOP(1) Beverage_category,Beverage,Calories FROM dbo.drinkMenu ORDER BY Calories DESC;

/* 2. What is the average calorie amount for each drink category? */
SELECT Beverage_category, AVG(Calories) AS average_calorie 
FROM  drinkMenu 
GROUP BY Beverage_category;


/* 3. Which drinks have below average calorie amount ? */
SELECT Drinks1.Beverage,Drinks1.Beverage_category, Drinks1.Calories ,Drinks2.average_calorie FROM
(
	SELECT Beverage,Beverage_category, Calories 
	FROM  drinkMenu
) 
Drinks1 
INNER JOIN
(
	SELECT Beverage_category, AVG(Calories) AS average_calorie 
	FROM  drinkMenu 
	GROUP BY Beverage_category
) 
Drinks2 
ON 
Drinks1.Beverage_category = Drinks2.Beverage_category
WHERE 
Drinks1.Calories < Drinks2.average_calorie;