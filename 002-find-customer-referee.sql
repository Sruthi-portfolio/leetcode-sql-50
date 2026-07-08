-- Problem: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/
-- Difficulty: Easy
-- Concept: NULL handling

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;

-- Notes: != alone excludes NULL rows since NULL comparisons return unknown,
-- so IS NULL has to be added explicitly to include customers with no referee.