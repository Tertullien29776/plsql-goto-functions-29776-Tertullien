.
├── 00_setup/
│   └── create_tables.sql           # Schema DDL and sample dataset initialization
├── 01_tables/
│   └── schema_ddl.sql              # Table constraints, primary keys, and foreign keys
├── 02_functions/
│   ├── fn_annual_salary.sql        # Gross annual salary calculation routine
│   ├── fn_years_of_service.sql     # Service tenure calculator (hire date to current date)
│   ├── fn_calculate_tax.sql        # Tiered tax liability calculator
│   ├── fn_dept_name.sql            # Department ID-to-name lookup function
│   └── C1_fn_validate_payroll.sql  # Task C1 master payroll validation engine
├── 03_tests/
│   └── test_validate_payroll.sql   # SQL verification queries and PL/SQL anonymous blocks
└── screenshots/
    ├── C1_output.png               # Execution output verification screenshot
    └── .gitkeep
