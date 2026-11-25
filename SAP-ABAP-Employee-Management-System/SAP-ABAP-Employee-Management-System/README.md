# SAP ABAP Employee Management System

A beginner-friendly SAP ABAP portfolio project that demonstrates a custom employee master table, ABAP Dictionary design, Open SQL, selection-screen filters, and an ALV report using `CL_SALV_TABLE`.

> **Important:** This repository contains ABAP source code and implementation documentation. It is not a complete SAP transport request. You must create the Dictionary objects in your SAP system and activate them before running the report.

## Project objectives

- Store employee master data in a custom transparent table (`ZEMPLOYEE`).
- Build an ABAP report to display employee records.
- Filter records by employee ID and department.
- Display results in an ALV table with optimized columns.
- Use SAP Table Maintenance Generator (SM30) for basic create, update, and delete operations.

## Technology

- SAP ABAP
- ABAP Dictionary (SE11)
- Open SQL
- Internal Tables
- Selection Screen
- ALV using `CL_SALV_TABLE`
- Table Maintenance Generator (SE54 / SE11 Utilities)

## Repository structure

```text
SAP-ABAP-Employee-Management-System/
├── README.md
├── src/
│   └── ZEMPLOYEE_MGMT.abap
└── docs/
    ├── DATABASE_TABLE.md
    ├── SETUP_GUIDE.md
    └── INTERVIEW_QUESTIONS.md
```

## Database table: `ZEMPLOYEE`

Create the table in SE11 using the field specification in [`docs/DATABASE_TABLE.md`](docs/DATABASE_TABLE.md).

## How to run

1. Create and activate table `ZEMPLOYEE` in SE11.
2. Add a few test employee records using SM30 after generating table maintenance, or use an approved data-loading method in your development system.
3. Create executable report `ZEMPLOYEE_MGMT` in SE38 or ADT.
4. Copy the source from `src/ZEMPLOYEE_MGMT.abap`.
5. Activate and execute the report.
6. Enter employee ID and/or department filters to display matching records.

Detailed instructions: [`docs/SETUP_GUIDE.md`](docs/SETUP_GUIDE.md).

## CRUD approach

This starter project uses the SAP Table Maintenance Generator for create, read, update, and delete maintenance of the custom table. The ABAP report provides the read/filter/ALV reporting functionality. Do not expose table maintenance broadly in a production system; use appropriate authorizations and application controls.

## Suggested future enhancements

- Add authorization checks for employee data.
- Add a custom transaction code for the report.
- Add a dedicated maintenance dialog or RAP business object.
- Add validations for email, phone, salary, and mandatory fields.
- Add unit tests and application logging.
- Add an OData service and SAP Fiori UI.

## Author

**Somya Gandhi**  
B.Tech Computer Science Engineering | SAP ABAP Backend Certificate  
GitHub: https://github.com/somyagandhi97

Update the author details or contact links if needed before publishing.
