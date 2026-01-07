-- Partitioning and Ranking
-- Add a new column Year to the Scores table representing the academic year.
-- Insert records with scores for different years.
-- Write a query to rank students within each year using the PARTITION BY clause with the ROW_NUMBER() function.


drop table Scores;
create table Scores (
  studentId int not null,
  score decimal not null
);
alter table Scores
add column subject_name varchar(50);

alter table Scores
add column years varchar(4);

INSERT INTO Scores (studentId, score, subject_name, years) 
VALUES 
  -- Student 101: Comparison over two years
  (101, 85.00, 'Math', '2024'),
  (101, 92.50, 'Math', '2025'), -- Improvement!
  (101, 88.00, 'Science', '2024'),
  (101, 90.00, 'Science', '2025'),

  -- Student 102: Comparison over two years
  (102, 76.00, 'Math', '2024'),
  (102, 74.00, 'Math', '2025'),
  (102, 82.00, 'Science', '2024'),
  (102, 85.00, 'Science', '2025');
  
select * from Scores;

-- Write a query to rank students within each year using the PARTITION BY clause with the ROW_NUMBER() function.
  
select *,
row_number() over (partition by years order by score desc) as rank_in_year
from Scores;
  
  




