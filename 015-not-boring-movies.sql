-- Problem: Not Boring Movies
-- Link: https://leetcode.com/problems/not-boring-movies/
-- Difficulty: Easy
-- Concept: WHERE, modulo, ORDER BY

SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description != 'boring'
ORDER BY rating DESC;

-- Notes: id % 2 = 1 checks for odd id values (modulo gives the remainder
-- after dividing by 2 — odd numbers always leave a remainder of 1).
-- Both conditions combine with AND since a row must satisfy both to
-- qualify. ORDER BY rating DESC sorts highest rating first, as required
-- by the output format.