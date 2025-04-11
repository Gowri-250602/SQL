SELECT * FROM patients;
select contact_name,address,city from customers
where country not in ("Germany","Mexico","Spain");
select city,company_name,contact_name from customers
where city like "%L%" order by contact_name;
select company_name,contact_name,fax from customers
where fax is not null;
select order_date,shipped_date,customer_id,freight from orders
where order_date="2018-02-26";
select employee_id,order_id,customer_id,required_date,shipped_date from orders
where shipped_date>required_date;
select order_id from orders
where order_id%2=0;
select round(avg(unit_price),2),sum(units_in_stock),sum(discontinued) from products;
select first_name,last_name,max(hire_date) from employees ;
select cat.category_name,round(avg(pro.unit_price),2)from categories cat join products pro 
on cat.category_id=pro.category_id
group by cat.category_name;
select City, company_name, contact_name, 'customers' as relationship 
from customers
union
select city, company_name, contact_name, 'suppliers' as relationship
from suppliers;
select pro.product_name,sup.company_name,cat.category_name
from products pro join suppliers sup on pro.supplier_id=sup.supplier_id
join categories cat on cat.category_id=pro.category_id;
select year(order_date)as order_year,month(order_date)as order_mon,count(order_id) as no_of_orders
from orders
group by order_year,order_mon;
select category_name,description from categories
order by category_name;