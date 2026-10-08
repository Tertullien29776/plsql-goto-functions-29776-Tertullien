SET SERVEROUTPUT ON;

DECLARE
    CURSOR c_emp IS SELECT employee_id FROM employees;
BEGIN
    DBMS_OUTPUT.PUT_LINE('--- PAYROLL VALIDATION TESTS ---');
    FOR r IN c_emp LOOP
        DBMS_OUTPUT.PUT_LINE('Emp ID: ' || r.employee_id || ' -> Status: ' || fn_validate_payroll(r.employee_id));
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Emp ID: 999 -> Status: ' || fn_validate_payroll(999)); -- Test Non-existent
END;
/
