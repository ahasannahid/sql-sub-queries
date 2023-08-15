-- Active: 1691480676960@@127.0.0.1@5432@sub_queries
CREATE VIEW view_name
AS
SELECT name from employees;

SELECT * FROM view_name;

SELECT name,count(*) FROM view_name GROUP BY name;


CREATE VIEW department_employee_count
AS
SELECT d.name, count(empid) FROM employees e
JOIN departments d on d.deptid = e.deptid 
GROUP BY d.deptid;