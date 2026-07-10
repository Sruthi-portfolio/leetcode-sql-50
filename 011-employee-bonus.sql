-- Problem: Employee Bonus
-- Link: https://leetcode.com/problems/employee-bonus/
-- Difficulty: Easy
-- Concept: LEFT JOIN, IS NULL

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

-- Notes: LEFT JOIN keeps every employee even if they have no row in Bonus at all. 
--The WHERE clause then needs both conditions: bonus < 1000 catches employees with a low bonus, and bonus IS NULL catches employees with no bonus row whatsoever (since NULL < 1000 evaluates to unknown, not true, so it wouldn't be picked up by the first condition alone).