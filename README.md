# LeetCode SQL 50 — Daily Progress Tracker

A daily log of solving LeetCode's SQL 50 set, one problem at a time.
Each solution includes the query, the underlying concept, and a short note on the approach or reasoning behind it.

## Progress  Tracker

| # | Problem | Concept | Status | Date |
|---|---------|---------|--------|------|
| 1 | Recyclable and Low Fat Products | WHERE, filtering | ✅ | 08-07-26 |
| 2 | Find Customer Referee | NULL handling | ✅ | 08-07-26 |
| 3 | Big Countries | WHERE, OR conditions | ✅ | 08-07-26 |
| 4 | Article Views I | DISTINCT, self-comparison | ✅ | 08-07-26 |
| 5 | Invalid Tweets | String functions (LENGTH) | ✅ | 08-07-26 |
| 6 | Replace Employee ID With The Unique Identifier | LEFT JOIN | ✅ | 09-07-26 |
| 7 | Product Sales Analysis I | JOIN | ✅ | 09-07-26 |
| 8 | Customer Who Visited but Did Not Make Any Transactions | NOT IN, GROUP BY | ✅ | 09-07-26 |
| 9 | Rising Temperature | Self JOIN, DATEDIFF | ✅ | 09-07-26 |
| 10 | Average Time of Process per Machine | Self JOIN, CASE, AVG | ✅ | 09-07-26 |
| 11 | Employee Bonus | LEFT JOIN, IS NULL | ✅ | 10-07-26 |
| 12 | Students and Examinations | JOIN, LEFT JOIN, GROUP BY | ✅ | 10-07-26 |
| 13 | Managers with at Least 5 Direct Reports | Subquery, HAVING | ✅ | 10-07-26 |
| 14 | Confirmation Rate | LEFT JOIN, conditional AVG | ✅ | 10-07-26 |
| 15 | Not Boring Movies | WHERE, modulo, ORDER BY | ⬜ | |
| 16 | Average Selling Price | JOIN, weighted AVG | ⬜ | |
| 17 | Project Employees I | JOIN, AVG, GROUP BY | ⬜ | |
| 18 | Percentage of Users Attended a Contest | Subquery, GROUP BY, ORDER BY | ⬜ | |
| 19 | Queries Quality and Percentage | GROUP BY, conditional aggregation | ⬜ | |
| 20 | Monthly Transactions I | DATE_FORMAT, conditional SUM | ⬜ | |
| 21 | Immediate Food Delivery II | Subquery / window function | ⬜ | |
| 22 | Game Play Analysis IV | CTE, subquery | ⬜ | |
| 23 | Number of Unique Subjects Taught by Each Teacher | COUNT DISTINCT, GROUP BY | ⬜ | |
| 24 | User Activity for the Past 30 Days I | Date range filter, GROUP BY | ⬜ | |
| 25 | Product Sales Analysis III | Subquery, MIN | ⬜ | |
| 26 | Classes More Than 5 Students | GROUP BY, HAVING | ⬜ | |
| 27 | Find Followers Count | COUNT DISTINCT, GROUP BY | ⬜ | |
| 28 | Biggest Single Number | GROUP BY, HAVING, subquery | ⬜ | |
| 29 | Customers Who Bought All Products | GROUP BY, HAVING, subquery | ⬜ | |
| 30 | The Number of Employees Which Report to Each Employee | Self JOIN, GROUP BY | ⬜ | |
| 31 | Primary Department for Each Employee | UNION, subquery | ⬜ | |
| 32 | Triangle Judgement | CASE expression | ⬜ | |
| 33 | Consecutive Numbers | Window functions (LAG/LEAD) | ⬜ | |
| 34 | Product Price at a Given Date | Subquery, UNION | ⬜ | |
| 35 | Last Person to Fit in the Bus | Window function (running SUM) | ⬜ | |
| 36 | Count Salary Categories | UNION, conditional SUM | ⬜ | |
| 37 | Employees Whose Manager Left the Company | Subquery, NOT IN | ⬜ | |
| 38 | Exchange Seats | CASE, window functions (LAG/LEAD) | ⬜ | |
| 39 | Movie Rating | UNION ALL, JOIN, ORDER BY/LIMIT | ⬜ | |
| 40 | Restaurant Growth | Window function, moving average | ⬜ | |
| 41 | Friend Requests II: Who Has the Most Friends | UNION ALL, GROUP BY | ⬜ | |
| 42 | Investments in 2016 | Subquery, GROUP BY/HAVING | ⬜ | |
| 43 | Department Top Three Salaries | Window function (DENSE_RANK) | ⬜ | |
| 44 | Fix Names in a Table | String functions (UPPER/LOWER/CONCAT) | ⬜ | |
| 45 | Patients With a Condition | LIKE, string matching | ⬜ | |
| 46 | Delete Duplicate Emails | DELETE, self join | ⬜ | |
| 47 | Second Highest Salary | Subquery, LIMIT/OFFSET | ⬜ | |
| 48 | Find Users With Valid E-Mails | REGEXP | ⬜ | |
| 49 | List the Products Ordered in a Period | JOIN, HAVING, date filter | ⬜ | |
| 50 | Group Sold Products By The Date | GROUP_CONCAT, GROUP BY | ⬜ | |

**Status legend:** ⬜ Not started · 🟨 In progress · ✅ Done

## How this repo works

- One `.sql` file per problem, named `NNN-problem-name.sql`
- Each file has the problem link, difficulty, concept tags, my solution, and a short note on approach
- The tracker table above is updated same-day as I solve each problem

## Why this repo exists

SQL is a skill that compounds with consistency, not cramming. This is a running record of that practice — each problem solved, the concept it reinforced, and how my approach evolves as the problems get harder. More projects building on this foundation are in progress.
