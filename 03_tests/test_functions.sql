SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- TESTING FUNCTIONS ---');
    DBMS_OUTPUT.PUT_LINE('Annual Salary (5000, 0.1): ' || fn_annual_salary(5000, 0.1));
    DBMS_OUTPUT.PUT_LINE('Years of Service (2015-01-01): ' || fn_years_of_service(TO_DATE('2015-01-01', 'YYYY-MM-DD')));
    DBMS_OUTPUT.PUT_LINE('Tax for $50,000 Annual: ' || fn_calculate_tax(50000));
    DBMS_OUTPUT.PUT_LINE('Dept Name for ID 10: ' || fn_dept_name(10));
    DBMS_OUTPUT.PUT_LINE('Dept Name for ID 99 (Invalid): ' || fn_dept_name(99));
END;
/
