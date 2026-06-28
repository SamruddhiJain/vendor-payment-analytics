CLASS zcl_vpa_report DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_vpa_report IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_summary TYPE zcl_vpa_analytics=>tt_payment_summary.

    zcl_vpa_analytics=>get_vendor_payment_summary(
      EXPORTING
        iv_date_from = '20240101'
        iv_date_to   = '20241231'
      IMPORTING
        et_summary   = lt_summary
    ).

    IF lt_summary IS INITIAL.
      out->write( 'No payment data found.' ).
    ELSE.
      LOOP AT lt_summary INTO DATA(ls_summary).
        out->write(
          |Vendor: { ls_summary-vendor_id } | &
          |Name: { ls_summary-vendor_name } | &
          |Payments: { ls_summary-total_payments } | &
          |Amount: { ls_summary-total_amount } | &
          |Currency: { ls_summary-currency }|
        ).
      ENDLOOP.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
