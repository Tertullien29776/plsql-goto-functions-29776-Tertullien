SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 7500;
BEGIN
    IF v_salary < 3000 THEN
        GOTO low_salary;
    ELSIF v_salary BETWEEN 3000 AND 10000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Band: LOW. Eligible for maximum raise.');
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Band: MEDIUM. Standard review applicable.');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Band: HIGH. Executive level compensation.');
    GOTO finish;

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review process completed.');
END;
/
