--baitap1
select name 
from students
where marks > 75
order by right (name,3), ID ASC
--baitap2
select user_id,
concat(upper(left(name,1)), lower(right(name,length(name)-1))) as name
from users
--baitap3
SELECT 
manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' '|| 'million' as sale
from pharmacy_sales
group by  manufacturer
order by sum(total_sales) DESC, manufacturer
--baitap4

                        
