-- When you deal with NULL value  
-- USE CompanyDB_Class;
SELECT * 
FROM Project
	WHERE NULL IS NULL;
-- Operator you should use "IS" or "IS NOT" not equal sign or other
-- You want to find NULL

-- 
INSERT INTO project VALUES (205, 'AI Tech', NULL, 10);


	-- UPDATE STATEMENT "WHERE" should be a primary key to the table otherwise other table data will be affected
UPDATE Project
SET Location =  'Vancouver'
-- WHERE Number =  205; 
	-- SAFE MODE: Where your project number 
	-- 				(SubQuery) Select the number from project where the name is Western Sales Push
WHERE Number = (SELECT Number FROM Project WHERE Name = 'Western Sales Push');
-- WHERE Dept_number = 20;
	

	-- DELETE STATEMENT: If you want to delete rows DELETE FROM "tableName" WHERE "Condition" 
DELETE FROM Project
WHERE Number = 205;
	-- If you want delete table use DROP
    
    
    -- SELECT TOP(LIMIT FETCH, FIRST): Top result
		-- EX: Select Top 5 of employees depends on how you sort them
SELECT * FROM Employee LIMIT 3;

-- write query to show you most expensive product, or customer highest purchase;
	-- DONT USE sort and LIMIT 1 why?? its not prcisie it look correct but not
	-- Summary: DOnt use Limit for that

    
	-- AGGREAGETE FUNCTION: Putting multiple values and getting one unique value
		-- MIN() 
		-- MAX() 
		-- COUNT() 
		-- SUM() 
		-- AVG() 
		-- Ignores Null Values not counted in the calculation
        -- You cant USE aggregate inside WHERE thus use subQuery

SELECT COUNT(*)
FROM project
WHERE Dept_number = 20;

SELECT SUM(Salary)
FROM employee;

-- Who get the maximum salary Find all with the same
SELECT * 
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);
	
SELECT * 
FROM Employee
WHERE SSN = (SELECT MIN(SSN) FROM Employee);

-- ERROR
SELECT COUNT (Location)
FROM Project;
-- USE * or Primary Key
SELECT COUNT(*) 
FROM Projects;

-- Select all employee where employee have greater than avg salary
SELECT *
FROM Employee
WHERE Salary >  (SELECT AVG(Salary) FROM Employee);


		-- IN STATEMENT: Deal with district value(check for specific value) Specific vs Range
SELECT * 
FROM Employee
WHERE Salary IN (95000, 72500, 110000);

-- WHERE Salary = 95000 OR Salary = 72500 OR Salary = 110000;



	-- ALIAS Statement: Nickname for collumn
-- If you need to show Two collumn one SEX and number on second 
SELECT Sex, COUNT(*)
FROM Employee
GROUP BY Sex;

-- how many dependents each employee has
SELECT *
FROM employee_dependent;

SELECT SSN, COUNT(*) 
FROM employee_dependent
-- RULE :You MUST the SSN because its not part of aggregate and other type
GROUP BY SSN;


				-- HAVING: In SQL when we execute we dont execute line by line but FROM -> WHERE ->GroupBy -> Having
                -- You use it to apply filter before aggreagtion.
                
-- Grabs all the order where its more than 1 that is not Canada.
-- SELECT Country, City COUNT(*) 			THIS IS FOR DISPLAY
-- FROM Custonmers							
-- WHERE COuntry <> 'Canada'				Condition
-- GROP BY COuntry, City					MAJOR RULE REMEMBER
-- HAVING CUNT(*) > 1;						WITH Aggregate COndition



SELECT * 
FROM Employee, Project;
