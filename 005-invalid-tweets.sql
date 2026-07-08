-- Problem: Invalid Tweets
-- Link: https://leetcode.com/problems/invalid-tweets/
-- Difficulty: Easy
-- Concept: String functions (LENGTH)

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- Notes: LENGTH() counts characters in the string. Straightforward filter,
-- but worth remembering LENGTH() vs CHAR_LENGTH() can differ for
-- multi-byte characters in some SQL dialects (MySQL: LENGTH counts bytes,
-- CHAR_LENGTH counts characters).