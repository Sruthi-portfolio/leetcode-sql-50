-- Problem: Average Time of Process per Machine
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/
-- Difficulty: Easy
-- Concept: Self JOIN, CASE, AVG

SELECT a1.machine_id,
       ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1
JOIN Activity a2
  ON a1.machine_id = a2.machine_id
  AND a1.process_id = a2.process_id
  AND a1.activity_type = 'start'
  AND a2.activity_type = 'end'
GROUP BY a1.machine_id;

-- Notes: Self join pairs each process's "start" row (a1) with its "end" row (a2) — same machine_id AND same process_id, but different activity_type. Subtracting timestamps gives the duration for that one process run. 
-- GROUP BY machine_id + AVG then averages across all process runs on that machine. ROUND(..., 3) matches LeetCode's expected precision. 