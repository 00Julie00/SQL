-- Подключится к :
-- Host: 159.69.***.***
-- Port: ****
-- DB: подключение к той таблице где делали DDL операции
-- User: подключение к тем пользователем каким делали DDL операции
-- Pass: ***
-- Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

--  1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary 
from employees e
inner join employees_salary es on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id;

--  2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary 
from employees e
inner join employees_salary es  on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id and s.monthly_salary < 2000;

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary, employee_id, salary_id  
from employees_salary es
left  join employees e  on e.id = es.employee_id  
left  join salary s on es.salary_id = s.id
where employee_name is null;

--  4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employee_name, monthly_salary, employee_id, salary_id  
from employees_salary es
left  join employees e  on e.id = es.employee_id 
left  join salary s on es.salary_id = s.id 
where monthly_salary <2000 and employee_name is null 
order by employee_id;

--  5. Найти всех работников кому не начислена ЗП.

select employee_name, monthly_salary
from employees e
left join employees_salary es  on e.id = es.employee_id 
left join salary s on es.salary_id = s.id
where monthly_salary is null;


--  6. Вывести всех работников с названиями их должности.

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id;

--  7. Вывести имена и должность только Java разработчиков.

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%Java%'
order by role_name;

--  8. Вывести имена и должность только Python разработчиков.

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%Python%'
order by role_name;

--  9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%QA%'
order by role_name;

--  10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%Manual QA%'
order by role_name;

--  11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%Automation QA%'
order by role_name;

-- 12. Вывести имена и зарплаты Junior специалистов

select employee_name,role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like '%Junior%'
order by role_name;

-- 13. Вывести имена и зарплаты Middle специалистов

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like '%Middle%'
order by role_name;

--  14. Вывести имена и зарплаты Senior специалистов

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like '%Senior%'
order by role_name;

--  15. Вывести зарплаты Java разработчиков

select monthly_salary
from salary s 
inner join employees_salary es  on es.salary_id  = s.id 
inner join roles_employee re on re.employee_id = es.employee_id  
inner join roles r on r.id = re.role_id 
where role_name like '%Java%';

--  16. Вывести зарплаты Python разработчиков

select monthly_salary
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%Python%';

--  17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like '%Junior Python%';

--  18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like 'Middle JavaScript developer';

--  19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like 'Senior Java developer';

--  20. Вывести зарплаты Junior QA инженеров

select monthly_salary
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%QA%';

--  21. Вывести среднюю зарплату всех Junior специалистов

select avg(monthly_salary) as "avg_monthly_salary"
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%Junior%';

--  22. Вывести сумму зарплат JS разработчиков

select sum(monthly_salary) as "Total_JS_develpers_salary"
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%JavaScript developer%';

--  23. Вывести минимальную ЗП QA инженеров

select min(monthly_salary) as "Min_QAs_salary"
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%QA%';

--  24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) as "Max_QAs_salary"
from salary s 
inner join employees_salary es on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id
inner join roles r on r.id = re.role_id 
where role_name like '%QA%';

--  25. Вывести количество QA инженеров

select count(*) 
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%QA%';

--  26. Вывести количество Middle специалистов.

select count(*) 
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%Middle%';

--  27. Вывести количество разработчиков

select count(*) 
from roles_employee re 
inner join employees e  on e.id = re.employee_id 
inner join roles r on r.id  = re.role_id 
where role_name like '%developer%';

--  28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) as "Total_developers_salary"
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where role_name like '%developer%';

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
order by monthly_salary;

--  30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id and monthly_salary between 1700 and 2300
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
order by monthly_salary;

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where monthly_salary <2300
order by monthly_salary;

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from employees e
inner join employees_salary es  on es.employee_id = e.id
inner join salary s on s.id = es.salary_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where monthly_salary in (1100, 1500, 2500)
order by monthly_salary;
