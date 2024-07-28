-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками

create table employees(
id serial primary key,
employee_name varchar(50) not NULL
);
insert into employees (employee_name) values ('Ginni');
insert into employees (employee_name) values ('Allis'),
                                             ('Lurette'),
                                             ('Karyl'),
                                             ('Lorraine'),
                                             ('Arlan'),
                                             ('Charmine'),
                                             ('Dukie'),
                                             ('Thorstein'),
                                             ('Carny'),
                                             ('Bibbye'),
                                             ('Raynard'),
                                             ('Marrilee'),
                                             ('Alexi'),
                                             ('Wernher'),
                                             ('Bonnee'),
                                             ('Meridith'),
                                             ('Cathleen'),
                                             ('Gunther'),
                                             ('Kelly'),
                                             ('Joe'),
                                             ('Juditha'),
                                             ('Neilla'),
                                             ('Pacorro'),
                                             ('Chic'),
                                             ('Neils'),
                                             ('Brodie'),
                                             ('Kenneth'),
                                             ('Reuben'),
                                             ('Adelaide'),
                                             ('Karlotta'),
                                             ('Terrel'),
                                             ('Glen'),
                                             ('Cassius'),
                                             ('Pammy'),
                                             ('Glen'),
                                             ('Chrissie'),
                                             ('Leonora'),
                                             ('Dynah'),
                                             ('Amandi'),
                                             ('Skell'),
                                             ('Suzette'),
                                             ('Jill'),
                                             ('Tess'),
                                             ('Margalo'),
                                             ('Lancelot'),
                                             ('Evelyn'),
                                             ('Danni'),
                                             ('Ronny'),
                                             ('Tera'),
                                             ('Baird'),
                                             ('Hurleigh'),
                                             ('Thom'),
                                             ('Carine'),
                                             ('Katlin'),
                                             ('Nicole'),
                                             ('Marja'),
                                             ('Riane'),
                                             ('Chucho'),
                                             ('Robbyn'),
                                             ('Joelly'),
                                             ('Boonie'),
                                             ('Waylon'),
                                             ('Virge'),
                                             ('Dare'),
                                             ('Cameron'),
                                             ('Theadora'),
                                             ('Bastien'),
                                             ('Jamesy'),
                                             ('Jordan');

-- Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- Наполнить таблицу salary 16 строками:
-- - 1000
-- - 1100
-- - 1200
-- - 1300
-- - 1400
-- - 1500
-- - 1600
-- - 1700
-- - 1800
-- - 1900
-- - 2000
-- - 2100
-- - 2200
-- - 2300
-- - 2400
-- - 2500

create table salary (
id serial primary key,
monthly_salary int not NULL
);
insert into salary (monthly_salary) values   ('1000'),
                                             ('1100'),
                                             ('1200'),
                                             ('1300'),
                                             ('1400'),
                                             ('1500'),
                                             ('1600'),
                                             ('1700'),
                                             ('1800'),
                                             ('1900'),
                                             ('2000'),
                                             ('2100'),
                                             ('2200'),
                                             ('2300'),
                                             ('2400'),
                                             ('2500');

select * from employees;
select * from salary;

-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
-- id| employee_salary| salary_id
-- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- 1 |       3        |     7
-- 2 |       1        |     4
-- 3 |       5        |     9
-- 4 |      40        |    13
-- 5 |      23        |     4
-- 6 |      11        |     2
-- 7 |      52        |    10
-- 8 |      15        |    13
-- 9 |      26        |     4
-- 10|      16        |     1
-- 11|      33        |     7
-- ..|      ..        |    ..

create table employees_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);
insert into employees_salary values (1,3,7),
                                    (2,1,4),
                                    (3,5,9),
                                    (4,40,13),
                                    (5,23,4),
                                    (6,11,2),
                                    (7,52,10),
                                    (8,15,13),
                                    (9,26,4),
                                    (10,16,1),
                                    (11,33,7),
                                    (12,12,7),
                                    (13,13,4),
                                    (14,14,8),
                                    (15,15,1),
                                    (16,16,10),
                                    (17,17,4),
                                    (18,18,2),
                                    (19,19,15),
                                    (20,20,7),
                                    (21,21,7),
                                    (22,22,9),
                                    (23,23,11),
                                    (24,24,12),
                                    (25,25,3),
                                    (26,26,6),
                                    (27,27,4),
                                    (28,28,2),
                                    (29,29,14),
                                    (30,30,1),
                                    (31,31,13),
                                    (32,32,5),
                                    (33,33,8),
                                    (34,34,12),
                                    (35,35,6),
                                    (36,36,10),
                                    (37,37,3),
                                    (38,38,15),
                                    (39,39,4),
                                    (40,40,1);

select * from employees_salary;

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique
);

select * from roles;

-- Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками:
-- id|  role_name              
-- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
-- 1 | Junior Python developer          
-- 2 | Middle Python developer   
-- 3 | Senior Python developer       
-- 4 | Junior Java developer     
-- 5 | Middle Java developer   
-- 6 | Senior Java developer     
-- 7 | Junior JavaScript developer     
-- 8 | Middle JavaScript developer
-- 9 | Senior JavaScript developer    
-- 10| Junior Manual QA engineer   
-- 11| Middle Manual QA engineer     
-- 12| Senior Manual QA engineer    
-- 13| Project Manager
-- 14| Designer
-- 15| HR
-- 16| CEO
-- 17| Sales manager
-- 18| Junior Automation QA engineer
-- 19| Middle Automation QA engineer
-- 20| Senior Automation QA engineer

insert into roles (role_name) values ('Junior Python developer'),
                                      ('Middle Python developer'),
                                      ('Senior Python developer'),
                                      ('Junior Java developer'),
                                      ('Middle Java developer'),
                                      ('Senior Java developer'),
                                      ('Junior JavaScript developer'),
                                      ('Middle JavaScript developer'),
                                      ('Senior JavaScript developer'),
                                      ('Junior Manual QA engineer'),
                                      ('Middle Manual QA engineer'),
                                      ('Senior Manual QA engineer'),
                                      ('Project Manager'),
                                      ('Designer'),
                                      ('HR'),
                                      ('CEO'),
                                      ('Sales manager'),
                                      ('Junior Automation QA engineer'),
                                      ('Middle Automation QA engineer'),
                                      ('Senior Automation QA engineer');


-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign KEY (employee_id)references employees (id) 
);

ALTER TABLE roles_employee
add column role_id int not null;

alter table roles_employee
ADD CONSTRAINT roles
FOREIGN KEY (role_id) REFERENCES roles(id);

select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками:
-- id|   employee_id  |  role_id
-- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
-- 1 |       7        |     2
-- 2 |      20        |     4
-- 3 |       3        |     9
-- 4 |       5        |    13
-- 5 |      23        |     4
-- 6 |      11        |     2
-- 7 |      10        |     9
-- 8 |      22        |    13
-- 9 |      21        |     3
-- 10|      34        |     4
-- 11|       6        |     7
-- ..|      ..        |    ..

insert into roles_employee (id, employee_id, role_id) values (1, 7, 2);
insert into roles_employee (id, employee_id, role_id) values (2, 20, 4);
insert into roles_employee (id, employee_id, role_id) values (3, 3, 9);
insert into roles_employee (id, employee_id, role_id) values (4, 5, 13);
insert into roles_employee (id, employee_id, role_id) values (5, 23, 4);
insert into roles_employee (id, employee_id, role_id) values (6, 11, 2);
insert into roles_employee (id, employee_id, role_id) values (7, 10, 9);
insert into roles_employee (id, employee_id, role_id) values (8, 22, 13);
insert into roles_employee (id, employee_id, role_id) values (9, 21, 3);
insert into roles_employee (id, employee_id, role_id) values (10, 34, 4);
insert into roles_employee (id, employee_id, role_id) values (11, 6, 7);
insert into roles_employee (id, employee_id, role_id) values (12, 12, 12);
insert into roles_employee (id, employee_id, role_id) values (13, 13, 13);
insert into roles_employee (id, employee_id, role_id) values (14, 14, 14);
insert into roles_employee (id, employee_id, role_id) values (15, 15, 15);
insert into roles_employee (id, employee_id, role_id) values (16, 16, 16);
insert into roles_employee (id, employee_id, role_id) values (17, 17, 17);
insert into roles_employee (id, employee_id, role_id) values (18, 18, 18);
insert into roles_employee (id, employee_id, role_id) values (19, 19, 19);
insert into roles_employee (id, employee_id, role_id) values (20, 20, 20);
insert into roles_employee (id, employee_id, role_id) values (21, 21, 1);
insert into roles_employee (id, employee_id, role_id) values (22, 22, 2);
insert into roles_employee (id, employee_id, role_id) values (23, 23, 3);
insert into roles_employee (id, employee_id, role_id) values (24, 24, 4);
insert into roles_employee (id, employee_id, role_id) values (25, 25, 5);
insert into roles_employee (id, employee_id, role_id) values (26, 26, 6);
insert into roles_employee (id, employee_id, role_id) values (27, 27, 7);
insert into roles_employee (id, employee_id, role_id) values (28, 28, 8);
insert into roles_employee (id, employee_id, role_id) values (29, 29, 9);
insert into roles_employee (id, employee_id, role_id) values (30, 30, 10);
insert into roles_employee (id, employee_id, role_id) values (31, 31, 11);
insert into roles_employee (id, employee_id, role_id) values (32, 32, 12);
insert into roles_employee (id, employee_id, role_id) values (33, 33, 13);
insert into roles_employee (id, employee_id, role_id) values (34, 34, 14);
insert into roles_employee (id, employee_id, role_id) values (35, 35, 15);
insert into roles_employee (id, employee_id, role_id) values (36, 36, 16);
insert into roles_employee (id, employee_id, role_id) values (37, 37, 17);
insert into roles_employee (id, employee_id, role_id) values (38, 38, 18);
insert into roles_employee (id, employee_id, role_id) values (39, 39, 19);
insert into roles_employee (id, employee_id, role_id) values (40, 40, 20);
