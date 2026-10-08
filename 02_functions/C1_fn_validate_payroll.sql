CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
) RETURN VARCHAR2 IS
    v_salary       employees.salary%TYPE;
    v_comm         employees.commission_pct%TYPE;
    v_hire_date    employees.hire_date%TYPE;
    v_annual_sal   NUMBER;
    v_years        NUMBER;
    v_tax          NUMBER;
BEGIN
    -- Fetch employee details
    SELECT salary, commission_pct, hire_date
    INTO v_salary, v_comm, v_hire_date
    FROM employees
    WHERE employee_id = p_employee_id;

    -- Calculate metrics using previously defined functions
    v_annual_sal := fn_annual_salary(v_salary, v_comm);
    v_years      := fn_years_of_service(v_hire_date);
    v_tax        := fn_calculate_tax(v_annual_sal);

    -- Apply Validation Rules
    IF v_salary <= 0 THEN
        RETURN 'INVALID: Zero or Negative Salary';
    ELSIF v_years < 1 THEN
        RETURN 'PENDING: Service under 1 year';
    ELSIF v_tax <= 0 THEN
        RETURN 'WARNING: Zero Tax Assessed';
    ELSE
        RETURN 'VALID: Payroll Approved';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee Not Found';
    WHEN OTHERS THEN
        RETURN 'ERROR: Internal Validation Failure';
END fn_validate_payroll;
/
