-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
-- write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

select 
    c.company_code, 
    c.founder, 
    count(distinct lm.lead_manager_code), 
    count(distinct sm.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
    from Company c
    INNER JOIN Lead_Manager lm
        ON c.company_code = lm.company_code
    INNER JOIN Senior_Manager sm 
        ON c.company_code = sm.company_code
    INNER JOIN Manager m 
        ON c.company_code = m.company_code
    INNER JOIN Employee e 
        ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
