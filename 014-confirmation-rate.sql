-- Problem: Confirmation Rate
-- Link: https://leetcode.com/problems/confirmation-rate/
-- Difficulty: Medium
-- Concept: LEFT JOIN, conditional AVG

SELECT s.user_id,
       ROUND(
         IFNULL(AVG(c.action = 'confirmed'), 0)
       , 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Notes: LEFT JOIN keeps every signed-up user even if they never took any
-- confirmation action. (c.action = 'confirmed') evaluates to 1 or 0 per
-- row, so AVG() of that gives the fraction of 'confirmed' actions out of
-- all actions for that user. IFNULL(..., 0) handles users with zero
-- confirmation rows at all, where AVG() would otherwise return NULL.

-- Alternate solution: IF() instead of boolean expression
SELECT s.user_id,
       ROUND(AVG(IF(c.action = 'confirmed', 1, 0)), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Notes: IF(condition, 1, 0) explicitly converts the condition to 1/0,
-- same result as writing (c.action = 'confirmed') directly. IFNULL isn't
-- needed here — LEFT JOIN always produces at least one row per user
-- (with c.action = NULL if unmatched), so AVG() never operates on zero
-- rows; the IF() simply evaluates to 0 for that NULL case.