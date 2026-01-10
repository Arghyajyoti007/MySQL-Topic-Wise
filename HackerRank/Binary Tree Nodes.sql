/*
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
*/

SELECT n,
    case
        when p is null then "Root"
        when n not in (select p from BST where p is not null) then "Leaf"
        else "Inner"
    end 
FROM BST
order by n ;
