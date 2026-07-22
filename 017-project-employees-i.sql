-- Problem: Project Employees I
-- Link: https://leetcode.com/problems/project-employees-i/
-- Difficulty: Easy
-- Concept: JOIN, AVG, GROUP BY

SELECT p.project_id,
       ROUND(AVG(e.experience_years), 2) AS average_years
FROM Project p
JOIN Employee e ON p.employee_id = e.employee_id
GROUP BY p.project_id;

-- Notes: Regular JOIN (not LEFT JOIN) is correct here — every row in
-- Project is expected to reference a valid, existing employee_id in
-- Employee, so there's no "unmatched" case to preserve. GROUP BY
-- project_id then averages experience_years across all employees
-- assigned to that project.