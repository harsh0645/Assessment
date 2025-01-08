SELECT * FROM assessment.worker;
-- ans1--
select * from worker order by FIRST_NAME asc,DEPARTMENT desc;

-- ans2--
select * from worker where FIRST_NAME= "Vipul" or FIRST_NAME= "Satish";

-- ans3 --
select * from worker where FIRST_NAME like "_____h";

-- ans4 --
select * from worker where SALARY like "1%" or "%1%" or"%1";

-- ans5 --
select * from worker where SALARY=( select SALARY from worker group by SALARY having count(SALARY)>1);

-- ans6 --
select * from worker limit 6;

-- ans7 --
select DEPARTMENT,count(DEPARTMENT) people from worker group by DEPARTMENT having DEPARTMENT<5;

-- ans8 --
select  DEPARTMENT,count(DEPARTMENT) people from worker group by DEPARTMENT;

-- ans9 --
select FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT FROM WORKER WHERE SALARY in (SELECT MAX(SALARY) FROM worker group by DEPARTMENT); 
	
