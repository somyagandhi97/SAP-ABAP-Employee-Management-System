# Setup guide

## 1. Create a package

In SE80 or ADT, create a package such as `ZEMP_MGMT` and assign it to an appropriate workbench request in your training system. If you are only practicing locally, follow your institution's system rules.

## 2. Create the table

Use SE11 to create transparent table `ZEMPLOYEE`. Follow [`DATABASE_TABLE.md`](DATABASE_TABLE.md), then save and activate it.

## 3. Generate table maintenance

Use SE11 → Utilities → Table Maintenance Generator. Create a function group such as `ZFG_EMPLOYEE`, generate the maintenance dialog, and test it through SM30.

## 4. Add sample data

Enter a few fictional records through SM30. Example values:

| EMP_ID | EMP_NAME | DEPARTMENT | DESIGNATION | EMAIL | PHONE | SALARY | CURRENCY | JOIN_DATE |
|---|---|---|---|---|---|---:|---|---|
| E000000001 | Aarav Shah | IT | Junior Developer | aarav@example.com | 9000000001 | 30000.00 | INR | 20260115 |
| E000000002 | Diya Patel | HR | HR Associate | diya@example.com | 9000000002 | 28000.00 | INR | 20260201 |
| E000000003 | Kabir Mehta | Finance | Analyst | kabir@example.com | 9000000003 | 32000.00 | INR | 20260310 |

These are fictional examples. Do not use real personal data.

## 5. Create the report

1. Open SE38 (or create an executable program in ADT).
2. Create report `ZEMPLOYEE_MGMT`.
3. Copy code from `src/ZEMPLOYEE_MGMT.abap`.
4. Activate the report.
5. Execute and test with an empty department, a selected department, and an employee ID range.

## 6. Troubleshooting

- If `ZEMPLOYEE` is unknown, confirm the table name and activation status.
- If a field is unknown, compare the table field names with `DATABASE_TABLE.md`.
- If `CL_SALV_TABLE` is unavailable in your system, check the SAP_BASIS release and use an ALV approach supported by your system.
- If no rows appear, check client, sample data, and selection filters.
