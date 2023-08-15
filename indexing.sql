

SELECT * from employees;

EXPLAIN ANALYZE SELECT empid FROM employees;

CREATE INDEX name_idx on employees(name);

EXPLAIN ANALYZE SELECT empid,name,email FROM employees WHERE name = 'Isabella Clark';

-- like operator indexing use korena
EXPLAIN ANALYZE SELECT empid,name,email FROM employees WHERE name LIKE '%Isa%';

