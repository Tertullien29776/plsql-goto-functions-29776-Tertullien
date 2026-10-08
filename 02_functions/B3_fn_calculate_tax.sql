CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_annual_salary IN NUMBER
) RETURN NUMBER IS
    v_tax NUMBER := 0;
BEGIN
    IF p_annual_salary IS NULL OR p_annual_salary <= 0 THEN
        RETURN 0;
    ELSIF p_annual_salary <= 30000 THEN
        v_tax := p_annual_salary * 0.10;
    ELSIF p_annual_salary <= 80000 THEN
        v_tax := (30000 * 0.10) + ((p_annual_salary - 30000) * 0.20);
    ELSE
        v_tax := (30000 * 0.10) + (50000 * 0.20) + ((p_annual_salary - 80000) * 0.30);
    END IF;

    RETURN ROUND(v_tax, 2);
END fn_calculate_tax;
/
