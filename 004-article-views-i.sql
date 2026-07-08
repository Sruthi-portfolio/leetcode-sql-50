-- Problem: Article Views I
-- Link: https://leetcode.com/problems/article-views-i/
-- Difficulty: Easy
-- Concept: DISTINCT, self-comparison

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;

-- Notes: Filtering where author_id = viewer_id finds authors who viewed
-- their own article. DISTINCT avoids repeating an id if they viewed
-- their own articles more than once.