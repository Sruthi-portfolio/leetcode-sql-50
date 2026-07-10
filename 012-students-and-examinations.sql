-- Problem: Students and Examinations
-- Link: https://leetcode.com/problems/students-and-examinations/
-- Difficulty: Easy
-- Concept: JOIN, LEFT JOIN, GROUP BY

SELECT s.student_id, s.student_name, sub.subject_name,
       COUNT(e.student_id) AS attended_exams
FROM Students s
JOIN Subjects sub
LEFT JOIN Examinations e
  ON s.student_id = e.student_id
  AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;

-- Notes: Students JOIN Subjects (no ON condition needed — this is effectively a CROSS JOIN) generates every possible student-subject combination, even ones the student never took an exam for. 
-- LEFT JOIN to Examinations then attaches actual exam records where they exist, leaving NULL where a student didn't attend that subject's exam. 
-- COUNT(e.student_id) counts only non-NULL matches, so combinations with no exam correctly show 0 (not NULL) as the count.