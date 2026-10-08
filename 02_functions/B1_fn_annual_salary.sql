CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary IN NUMBER,
    p_commission_pct IN NUMBER DEFAULT 0
) RETURN NUMBER IS
    v_annual_sal NUMBER;
BEGIN
    IF p_monthly_salary IS NULL OR p_monthly_salary < 0 THEN
        RETURN 0;
    END IF;
    
    v_annual_sal := (p_monthly_salary * 12) * (1 + NVL(p_commission_pct, 0));
    RETURN ROUND(v_annual_sal, 2);
END fn_annual_salary;
/
