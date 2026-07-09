-- Problem: Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/
-- Difficulty: Easy
-- Concept: JOIN

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p ON s.product_id = p.product_id;

-- Notes: Plain INNER JOIN is enough here since every sale is expected to reference a valid, existing product — there's no case of a "missing" product to preserve like in a LEFT JOIN scenario.