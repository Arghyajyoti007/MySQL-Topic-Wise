-- Handling Null Values
-- Modify the Scores table to allow null values in the Score column.
-- Insert records with null scores for some students.
-- Write a query to rank students based on their scores, handling null values appropriately using the RANK() function.

select * from scores;
desc scores;
ALTER TABLE Scores 
MODIFY score decimal(10,0) NULL;

INSERT INTO Scores (studentId, score, subject_name, years) 
VALUES 
  -- Student 103 was absent for the Math exam in 2024
  (103, NULL, 'Math', '2024'),
  (103, 78.00, 'Math', '2025'),

  -- Student 104 has pending grades for both subjects in 2025
  (104, NULL, 'Science', '2025'),
  (104, NULL, 'History', '2025'),

  -- Student 105 was exempt from Science but took Math
  (105, 88.50, 'Math', '2025'),
  (105, NULL, 'Science', '2025');

-- Write a query to rank students based on their scores, handling null values appropriately using 
-- the RANK() function.
select *,
rank() over(partition by subject_name order by case when score is NULL then 0 else score end desc) as rank_
from scores;
