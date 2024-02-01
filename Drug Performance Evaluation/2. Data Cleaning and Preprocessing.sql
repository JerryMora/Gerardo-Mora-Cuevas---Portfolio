-- Project - Drug Performance Evaluation
-- By Gerardo Mora Cuevas
-- Dataset - Drug Database


SELECT * FROM drug;



-- 1. Extract the number of "Reviews" and convert it to an intiger:
UPDATE drug
SET Reviews = CAST(SUBSTRING_INDEX(Reviews,' ',1) AS UNSIGNED);

SELECT * FROM drug;	


-- 2. Change the data type to the columns into the correct format:
ALTER TABLE drug
MODIFY Reviews INT,
MODIFY Effective DECIMAL(5,2),
MODIFY EaseOfUse DECIMAL(5,2),
MODIFY Satisfaction DECIMAL(5,2),
MODIFY Information TEXT;



-- 3. Handling Null Values
-- Cheking for null values in each column:
SELECT COUNT(*) AS TotalRows,
SUM(CASE WHEN `Condition` IS NULL THEN 1 ELSE 0 END) AS NullCondition,
SUM(CASE WHEN Drug IS NULL THEN 1 ELSE 0 END) AS NullDrug,
SUM(CASE WHEN Indication IS NULL THEN 1 ELSE 0 END) AS NullIndication,
SUM(CASE WHEN Type IS NULL THEN 1 ELSE 0 END) AS NullType,
SUM(CASE WHEN Reviews IS NULL THEN 1 ELSE 0 END) AS NullReviews,
SUM(CASE WHEN Effective IS NULL THEN 1 ELSE 0 END) AS NullEffective,
SUM(CASE WHEN EaseOfUse IS NULL THEN 1 ELSE 0 END) AS NullEaseOfUse,
SUM(CASE WHEN Satisfaction IS NULL THEN 1 ELSE 0 END) AS NullSatisfaction,
SUM(CASE WHEN Information IS NULL THEN 1 ELSE 0 END) AS NullInformation
FROM drug;



-- 4. Duplicate VALUES
-- Cheking for duplicate values:
SELECT COUNT(*), `Condition`, Drug, Indication, Type,
 Reviews, Effective, EaseOfUse, Satisfaction, information
FROM drug
GROUP BY `Condition`, Drug, Indication, Type,
 Reviews, Effective, EaseOfUse, Satisfaction, information
HAVING COUNT(*) > 1;

-- There are some duplicate rows, which correspond to one patient response each. 
-- I will group those duplicates in python in order to have no duplicates




