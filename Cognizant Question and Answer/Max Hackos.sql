SELECT * FROM codingplatfrom.hacker;

insert into codingplatfrom.hacker (ID, Name, Month, Hackos)
values(5, "EE", 5, 20);

select month*hackos as Max_total_Hackos, count(*) num_Hackors from codingplatfrom.hacker
group by Max_total_Hackos
order by Max_total_Hackos desc ;
