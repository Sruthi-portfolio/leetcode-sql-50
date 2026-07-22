-- Problem: Percentage of Users Attended a Contest
-- Link: https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- Difficulty: Easy
-- Concept: Subquery, GROUP BY, ORDER BY

SELECT contest_id,
       ROUND(
         COUNT(DISTINCT user_id) * 100.0 / (SELECT COUNT(*) FROM Users)
       , 2) AS percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;

-- Notes: The subquery (SELECT COUNT(*) FROM Users) gets the total user
-- count once, used as the denominator for every contest's percentage.
-- No join to Users needed since we don't select any column from it.

-- Alternate solution: joining Users (comma-join style)
SELECT contest_id,
       ROUND(COUNT(DISTINCT r.user_id) * 100 / (SELECT COUNT(*) FROM Users u), 2) AS percentage
FROM Users u, Register r
WHERE u.user_id = r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;

-- Notes: Joins Register to Users (old-style comma join, equivalent to
-- JOIN...ON), even though no column from Users is actually selected.
-- Works correctly because the subquery's "u" is scoped independently to
-- itself, so the denominator still counts ALL users regardless of the
-- outer join. The join here is unnecessary but harmless.