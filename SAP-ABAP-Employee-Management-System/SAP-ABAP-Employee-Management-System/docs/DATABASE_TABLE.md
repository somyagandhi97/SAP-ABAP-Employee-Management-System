# Database table design: ZEMPLOYEE

Create a **transparent table** in transaction `SE11`.

Suggested technical settings:
- Delivery class: `A` (application table)
- Data browser/table view maintenance: allow display/maintenance as appropriate for your training system
- Activate the table after defining all fields.

| Field | Key | Suggested type | Length / decimals | Description |
|---|---:|---|---:|---|
| MANDT | Yes | CLNT | 3 | Client |
| EMP_ID | Yes | CHAR | 10 | Employee ID |
| EMP_NAME | No | CHAR | 40 | Employee name |
| DEPARTMENT | No | CHAR | 30 | Department |
| DESIGNATION | No | CHAR | 40 | Job title |
| EMAIL | No | CHAR | 60 | Email address |
| PHONE | No | CHAR | 15 | Contact number |
| SALARY | No | DEC | 13,2 | Salary amount |
| CURRENCY | No | CUKY | 5 | Currency key |
| JOIN_DATE | No | DATS | 8 | Joining date |

For a learning project, you may create reusable domains and data elements for these fields (for example, `ZDE_EMP_ID`, `ZDE_EMP_NAME`, and `ZDE_DEPARTMENT`) rather than using built-in types directly.

**Note:** `SALARY` is specified as a decimal field for simplicity. In a production-grade design, use a currency amount field with a proper currency reference field and follow your system's DDIC conventions.

## Table maintenance (SM30)

1. Open `SE11`, enter `ZEMPLOYEE`, and choose **Utilities → Table Maintenance Generator**.
2. Create a function group (for example, `ZFG_EMPLOYEE`) and generate the maintenance dialog.
3. Open `SM30`, enter `ZEMPLOYEE`, and choose **Maintain**.
4. Add a few fictional test records in your development system.

Only use fictional employee data. Do not upload real personal or salary information to a public GitHub repository.
