-- Basic Ranking
-- Create a table named Scores with columns StudentID and Score.
-- Insert records representing different students and their scores.
-- Write a query to rank students based on their scores using the RANK() function.

create table Scores (
  studentId int primary key auto_increment,
  score decimal not null
);
INSERT INTO Scores (score) 
VALUES 
  (88.50),
  (92.00),
  (75.25),
  (82.10),
  (98.75),
  (64.00),
  (89.30);
  
select * from Scores;
  
-- Write a query to rank students based on their scores using the RANK() function.
select *, rank() over(order by score desc) as score_rank from Scores;

