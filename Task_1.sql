
/*to determine student status.
If he fails in three or fewer subjects,then he is incomplete.
if he fails in more than three subjects, he has failed.
Otherwise, he passes.*/
SELECT id,fname, avg(grade) as average,case when  count(CASE WHEN grade<50 THEN 1 END)>3 then 'failed' 
when count(CASE WHEN grade>=50 THEN 1 END)<3 then 'incomplete'
else 'pass' end as status
from student innner join ss on id=studentID 
GROUP BY fname,id
;
/*top 3 student */
SELECT TOP 3 id,fname, avg(grade)
from student innner join ss on id=studentID 
group by id,fname
order by avg(grade) desc
;



