-- Problem: Replace Employee ID With The Unique Identifier
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- Difficulty: Easy
-- Concept: LEFT JOIN

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id = eu.id;

-- Notes: LEFT JOIN keeps every employee even if they don't have a unique_id yet — those rows just show NULL for unique_id instead of disappearing, which is exactly what the problem asks for.