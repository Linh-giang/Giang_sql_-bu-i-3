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
SELECT extract(month from submit_date) as mth,
product_id,
round(avg(stars),2)as avg_stars
from reviews
group by mth,product_id
order by mth, product_id
--baitap5
SELECT sender_id,
count(message_id) as message_count
FROM messages
where extract(month from sent_date)=8
and extract(year from sent_date)=2022
group by sender_id
order by message_count DESC
limit 2
--baitap6
select tweet_id 
from tweets
where length(content)>15
--baitap7
  select 
activity_date as day,
Count(distinct user_id) as active_users
from activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
--baitap8
select 
count(employee_id) as count_employee
from employees
where extract (month from joining_date) between 1 and 7
and extract (year from joining_date)=2022
--baitap9
select first_name,
left(right(first_name,2),1)
from worker
where first_name='Amitah'
--baitap10
select 
substring (title, length(winery)+2,4)
from winemag_p2
where country ='Macedonia'




                        
