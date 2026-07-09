-- Problem: Rising Temperature
-- Link: https://leetcode.com/problems/rising-temperature/
-- Difficulty: Easy
-- Concept: Self JOIN, DATEDIFF

SELECT w2.id
FROM Weather w1
JOIN Weather w2 ON DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE w2.temperature > w1.temperature;

-- Notes: Self join compares each day (w2) to "yesterday" (w1).
-- DATEDIFF(w2.recordDate, w1.recordDate) = 1 ensures w1 is exactly
-- one day before w2 — without this, the join would compare every
-- row to every other row, not just consecutive days.
-- w2.temperature > w1.temperature then finds days where temperature
-- rose compared to the day before.