-- Soal 5 : Contest Leaderboard
-- Link soal: https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

SELECT h.hacker_id, h.name, s.total_score
FROM Hackers h
JOIN (
    SELECT hacker_id, SUM(max_score) AS total_score
    FROM (
        SELECT hacker_id, challenge_id, MAX(score) AS max_score
        FROM Submissions
        GROUP BY hacker_id, challenge_id
    ) AS best
    GROUP BY hacker_id
) AS s ON h.hacker_id = s.hacker_id
WHERE s.total_score > 0
ORDER BY s.total_score DESC, h.hacker_id ASC;