SET SERVEROUTPUT ON;

-- Clean refactoring of Task A1 without GOTO
DECLARE
    v_num NUMBER := -15;
BEGIN
    IF v_num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is POSITIVE.');
    ELSIF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_num || ' is NEGATIVE.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Classification completed cleanly without GOTO.');
END;
/
