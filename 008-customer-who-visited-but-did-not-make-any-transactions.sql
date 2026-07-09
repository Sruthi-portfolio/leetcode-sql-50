-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- Difficulty: Easy
-- Concept: LEFT JOIN, IS NULL, GROUP BY

SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

-- Notes: LEFT JOIN from Visits keeps every visit even without a matching transaction. WHERE t.transaction_id IS NULL then isolates only the visits that had no transaction. GROUP BY customer_id counts how many such "empty" visits each customer had.

-- Alternate solution: NOT IN with subquery
SELECT customer_id,
       COUNT(*) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id;

-- Notes: Same logic, different mechanism — instead of joining and checking for NULL, this filters out any visit_id that exists anywhere in Transactions using a subquery, then groups what's left.
-- Caveat: NOT IN can behave unexpectedly if the subquery returns any NULL values (the whole NOT IN evaluates to unknown/empty) — LEFT JOIN + IS NULL is generally the safer pattern for this reason, but NOT IN is fine here since visit_id in Transactions won't be NULL.