SET SERVEROUTPUT ON;

/* 
  ILLEGAL GOTO DEMONSTRATION:
  Uncommenting the code below will result in compilation error PLS-00375 
  because GOTO cannot branch into an IF statement or LOOP.

DECLARE
    v_flag NUMBER := 1;
BEGIN
    GOTO inside_if; -- ILLEGAL: Branching into an IF statement block
    
    IF v_flag = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/

-- CORRECTED VERSION:
DECLARE
    v_flag NUMBER := 1;
BEGIN
    IF v_flag = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Corrected: Execution redirected cleanly without illegal branch.');
    END IF;
END;
/
