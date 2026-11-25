*&---------------------------------------------------------------------*
*& Report ZEMPLOYEE_MGMT
*&---------------------------------------------------------------------*
*& Purpose : Display employee master data in an ALV report
*& Table   : ZEMPLOYEE
*& Features: Employee ID and department selection filters
*&---------------------------------------------------------------------*
REPORT zemployee_mgmt.

TABLES: zemployee.

SELECT-OPTIONS: s_empid FOR zemployee-emp_id.
PARAMETERS: p_dept TYPE zemployee-department.

DATA: gt_employee TYPE STANDARD TABLE OF zemployee,
      go_alv      TYPE REF TO cl_salv_table.

START-OF-SELECTION.

  IF p_dept IS INITIAL.
    SELECT *
      FROM zemployee
      INTO TABLE gt_employee
      WHERE emp_id IN s_empid.
  ELSE.
    SELECT *
      FROM zemployee
      INTO TABLE gt_employee
      WHERE emp_id IN s_empid
        AND department = p_dept.
  ENDIF.

  IF gt_employee IS INITIAL.
    MESSAGE 'No employees found for the selected criteria.' TYPE 'S'.
    RETURN.
  ENDIF.

  TRY.
      cl_salv_table=>factory(
        IMPORTING
          r_salv_table = go_alv
        CHANGING
          t_table      = gt_employee ).

      go_alv->get_columns( )->set_optimize( abap_true ).
      go_alv->get_functions( )->set_all( abap_true ).
      go_alv->display( ).

    CATCH cx_salv_msg.
      MESSAGE 'Unable to create the ALV display.' TYPE 'E'.
  ENDTRY.
