CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student
(rollno,name)
VALUES
(1,"karan"),
(2,"arjun"),
(3,"ram");
INSERT INTO student VALUES (4,"shyam");

CREATE DATABASE xyz;
USE xyz;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"bob",20000),
(2,"alice",22000),
(3,"james",23000);
SELECT * FROM employee;
CREATE TABLE emp(
id INT,
salary INT DEFAULT 25000
);
INSERT INTO emp (id)  VALUES(101);
SELECT * FROM emp;
SELECT * FROM employee WHERE salary+10>22000;
SELECT * FROM employee WHERE salary=20000 AND name="bob";
SELECT * FROM employee LIMIT 2;
SELECT * FROM employee ORDER BY salary DESC LIMIT 2;
SELECT MAX(salary)from employee;
SELECT MIN(salary)from employee;
SELECT AVG(salary)from employee;
SELECT salary,COUNT(id) FROM employee GROUP BY salary;
SELECT id,AVG(salary) FROM employee GROUP BY id ORDER BY name;
SELECT id,COUNT(name) FROM employee GROUP BY id HAVING max(salary)>19000;
SET SQL_SAFE_UPDATES=0;
UPDATE employee SET salary=26000 WHERE id=1;
SELECT * FROM employee;
DELETE FROM employee WHERE salary=26000;
SELECT * FROM employee;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT NOT NULL,
FOREIGN KEY(dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
TRUNCATE TABLE employee;



