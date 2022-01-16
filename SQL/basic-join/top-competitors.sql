/*

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the

Column    Type
hacker_id Integer
name      String

Difficulty: The difficulty_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level.

Column           Type
difficulty_level Integer
score            Integer

Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of
difficulty of the challenge.

Column           Type
hacker_id        Integer
challenge_id     Integer
difficulty_level Integer

Submissions: The submission_id is the id of the submission, 
hacker_id is the id of the hacker who made the submission,
challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission.

Column          Type
submission_id   Integer
hacker_id       Integer
challenge_id    Integer
score           Integer

Solution:
*/

select h.hacker_id, h.name from submissions as s join hackers as h on s.hacker_id = h.hacker_id
join challenges as c on s.challenge_id = c.challenge_id
join difficulty as d on c.difficulty_level = d.difficulty_level
where s.score = d.score
group by h.hacker_id, h.name
having count(*) > 1
order by count(*) desc, h.hacker_id;
