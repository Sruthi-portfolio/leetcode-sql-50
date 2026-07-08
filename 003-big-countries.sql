-- Problem: Big Countries
-- Link: https://leetcode.com/problems/big-countries/
-- Difficulty: Easy
-- Concept: WHERE clause, OR conditions

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000;

-- Notes: OR (not AND) is key here — a country only needs to satisfy
-- one of the two conditions to qualify as "big."