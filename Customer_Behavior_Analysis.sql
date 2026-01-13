select * from customer limit 20 

select gender, sum(purchase_amount) 
from customer
group by gender

select customer_id, purchase_amount
from customer
where discount_applied= 'Yes' and purchase_amount > (select avg(purchase_amount) from customer)

select item_purchased, round(avg(review_rating::numeric),2) as "avg_review_rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5

select shipping_type, round(avg(purchase_amount),2)
from customer
where shipping_type in ('Standard', 'Express')
group by shipping_type

select subscription_status, count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

select age_group, sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc



