SET SERVEROUTPUT ON;

-- Drop tables if they exist
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
   EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN NULL;
END;
/

-- Create Departments Table
CREATE TABLE departments (
    department_id NUMBER(4) PRIMARY KEY,
    department_name VARCHAR2(30) NOT NULL
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id NUMBER(6) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    salary NUMBER(8,2),
    commission_pct NUMBER(2,2),
    hire_date DATE NOT NULL,
    department_id NUMBER(4),
    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert Sample Data
INSERT INTO departments VALUES (10, 'Administration');
INSERT INTO departments VALUES (20, 'Marketing');
INSERT INTO departments VALUES (30, 'Purchasing');
INSERT INTO departments VALUES (40, 'Human Resources');
INSERT INTO departments VALUES (50, 'IT');

INSERT INTO employees VALUES (101, 'Alice', 'Smith', 4500, 0.10, TO_DATE('2018-03-15', 'YYYY-MM-DD'), 10);
INSERT INTO employees VALUES (102, 'Bob', 'Johnson', 8500, NULL, TO_DATE('2015-07-20', 'YYYY-MM-DD'), 20);
INSERT INTO employees VALUES (103, 'Charlie', 'Brown', 12000, 0.15, TO_DATE('2010-01-10', 'YYYY-MM-DD'), 50);
INSERT INTO employees VALUES (104, 'Diana', 'Prince', 2500, NULL, TO_DATE('2022-11-01', 'YYYY-MM-DD'), 30);
INSERT INTO employees VALUES (105, 'Evan', 'Wright', 0, NULL, TO_DATE('2023-05-12', 'YYYY-MM-DD'), 40);

COMMIT;
