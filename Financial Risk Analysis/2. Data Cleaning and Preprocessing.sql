-- Project - Financial Risk Analysis
-- By Gerardo Mora Cuevas
-- Dataset - Cymbal Investments






-- 1.	Handling Null Values:
-- Identified and handled null values in the dataset. 
-- Options included either deleting rows with null values
-- or imputing values based on the nature of the data.

SELECT 
  COUNT(*) AS TotalRows,
  SUM(CASE WHEN SendingTime IS NULL THEN 1 ELSE 0 END) AS NullSendingTime,
  SUM(CASE WHEN TargetCompID IS NULL THEN 1 ELSE 0 END) AS NullTargetCompID,
  SUM(CASE WHEN SenderCompID IS NULL THEN 1 ELSE 0 END) AS NullSenderCompID,
  SUM(CASE WHEN Symbol IS NULL THEN 1 ELSE 0 END) AS NullSymbol,
  SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS NullQuantity,
  SUM(CASE WHEN TransactTime IS NULL THEN 1 ELSE 0 END) AS NullTransactTime,
  SUM(CASE WHEN StrikePrice IS NULL THEN 1 ELSE 0 END) AS NullStrikePrice,
  SUM(CASE WHEN LastPx IS NULL THEN 1 ELSE 0 END) AS NullLastPx,
  SUM(CASE WHEN MaturityDate IS NULL THEN 1 ELSE 0 END) AS NullMaturityDate,
  SUM(CASE WHEN TradeReportID IS NULL THEN 1 ELSE 0 END) AS NullTradeReportID,
  SUM(CASE WHEN TradeDate IS NULL THEN 1 ELSE 0 END) AS NullTradeDate,
  SUM(CASE WHEN CFICode IS NULL THEN 1 ELSE 0 END) AS NullCFICode,
  SUM(CASE WHEN Side IS NULL THEN 1 ELSE 0 END) AS NullSide,
  SUM(CASE WHEN OrderID IS NULL THEN 1 ELSE 0 END) AS NullOrderID,
  SUM(CASE WHEN PartyID IS NULL THEN 1 ELSE 0 END) AS NullPartyID,
  SUM(CASE WHEN PartyIDSource IS NULL THEN 1 ELSE 0 END) AS NullPartyIDSource,
  SUM(CASE WHEN PartyRole IS NULL THEN 1 ELSE 0 END) AS NullPartyRole
FROM cymbal_investments;
-- There are 0 null values




-- 2.	Formatting of Dates and Times:
-- Ensured that time columns (“SendingTime”, “transactTime”,
-- “MaturityDate”, “TradeDate”) were in the correct format, crucial for temporal analysis.

-- Let's separate the time columns in Date and Time:

-- Add 2 columns Sending_Date and Sending_Time
ALTER TABLE cymbal_investments 
ADD COLUMN Sending_Date DATE,
ADD COLUMN Sending_Time TIME;

-- Add 2 columns Transact_Date and Transact_Time
ALTER TABLE cymbal_investments 
ADD COLUMN Transact_Date DATE,
ADD COLUMN Transact_Time TIME;

-- Add 2 columns Maturity_Date and Maturity_Time
ALTER TABLE cymbal_investments 
ADD COLUMN Maturity_Date DATE,
ADD COLUMN Maturity_Time TIME;


-- Update columns Sending_Date and Sending_Time
UPDATE cymbal_investments 
SET Sending_Date = STR_TO_DATE(SendingTime,'%Y-%m-%d'),
		Sending_Time = SUBSTR(SendingTime,12,8);

-- Update columns Transact_Date and Transact_Time
UPDATE cymbal_investments 
SET Transact_Date = STR_TO_DATE(TransactTime,'%Y-%m-%d'),
		Transact_Time = SUBSTR(TransactTime,12,8);

-- Update columns Maturity_Date and Maturity_Time
UPDATE cymbal_investments 
SET Maturity_Date = STR_TO_DATE(MaturityDate,'%Y-%m-%d'),
		Maturity_Time = SUBSTR(MaturityDate,12,8);


-- Delete Original Column SendingTime
ALTER TABLE cymbal_investments 
DROP COLUMN SendingTime;

-- Delete Original Column TransactTime
ALTER TABLE cymbal_investments 
DROP COLUMN TransactTime;

-- Delete Original Column MaturityDate
ALTER TABLE cymbal_investments 
DROP COLUMN MaturityDate;





-- 3.	Review of Anomalous Data:
-- Explored distributions of numerical variables (“Quantity”, “StrikePrice”, “LastPx”) 
-- and verified if there were anomalous data that needed treatment.

-- Checking the "Qunatity" distribution
SELECT Quantity, COUNT(*) FROM cymbal_investments 
GROUP BY Quantity;
-- All quantities are 1.


-- Checking the "StrikePrice" distribution
SELECT StrikePrice, COUNT(*) FROM cymbal_investments 
GROUP BY StrikePrice
ORDER BY COUNT(*) DESC;


-- Checking the "LastPX" distribution
SELECT LastPx, COUNT(*) FROM cymbal_investments 
GROUP BY LastPx
ORDER BY COUNT(*) DESC;



-- 4.	Review of Duplicate Data:
-- Checked for duplicate rows and decided how to handle them.
SELECT *, COUNT(*) FROM cymbal_investments
GROUP BY TargetCompID, SenderCompID, Symbol, Quantity, StrikePrice, LastPx, TradeReportID,
TradeDate, CFICode, Side, OrderID, PartyID, PartyIDSource, PartyRole,
Transact_Time, Sending_Date, Maturity_Date, Sending_Time, Maturity_Time, Transact_Date
HAVING COUNT(*) > 1;
-- There are no duplicate rows
