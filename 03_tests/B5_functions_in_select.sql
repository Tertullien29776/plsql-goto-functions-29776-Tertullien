SELECT 
    employee_id,
    first_name || ' ' || last_name AS full_name,
    salary,
    fn_dept_name(department_id) AS department,[cite: 2]
    fn_years_of_service(hire_date) AS service_years,[cite: 2]
    fn_annual_salary(salary, commission_pct) AS gross_annual_salary,[cite: 2]
    fn_calculate_tax(fn_annual_salary(salary, commission_pct)) AS annual_tax[cite: 2]
FROM employees;
