-- Problem: Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- Difficulty: Medium
-- Concept: Subquery, HAVING

SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
);

-- Notes: The inner subquery groups all employees by their managerId and
-- keeps only the ones with 5 or more direct reports (HAVING filters on
-- an aggregate, which WHERE can't do). The outer query then looks up the
-- actual manager's name by matching their id against that list of
-- qualifying managerIds.