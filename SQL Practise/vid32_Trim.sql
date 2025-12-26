-- TRIM - RTrim - LTrim
select "        Hello         "; --  o/p: '        Hello         '         

-- RTrim = Right Trim
select rtrim("        Hello         "); --  o/p: '        Hello'

-- LTrim = Left Trim
select ltrim("        Hello         "); --  o/p: 'Hello         '

-- for both side trim
select rtrim(ltrim("        Hello         ")); --  o/p: 'Hello'
