CLASS zcl_vpa_analytics DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_payment_summary,
             vendor_id      TYPE c LENGTH 10,
             vendor_name    TYPE c LENGTH 50,
             total_payments TYPE i,
             total_amount   TYPE p LENGTH 13 DECIMALS 2,
             currency       TYPE waers,
           END OF ty_payment_summary.

    TYPES tt_payment_summary TYPE TABLE OF ty_payment_summary
                             WITH DEFAULT KEY.

    CLASS-METHODS get_vendor_payment_summary
      IMPORTING
        iv_date_from TYPE d
        iv_date_to   TYPE d
      EXPORTING
        et_summary   TYPE tt_payment_summary.

ENDCLASS.

CLASS zcl_vpa_analytics IMPLEMENTATION.

  METHOD get_vendor_payment_summary.

    SELECT
      pay~vendor_id,
      ven~vendor_name,
      COUNT( pay~payment_id )   AS total_payments,
      SUM( pay~payment_amount ) AS total_amount,
      pay~currency
    FROM zvp_payment AS pay
    INNER JOIN zvp_vendor AS ven
      ON pay~vendor_id = ven~vendor_id
    WHERE pay~payment_date BETWEEN @iv_date_from AND @iv_date_to
      AND pay~payment_status = 'P'
    GROUP BY pay~vendor_id, ven~vendor_name, pay~currency
    ORDER BY SUM( pay~payment_amount ) DESCENDING
    INTO CORRESPONDING FIELDS OF TABLE @et_summary.

  ENDMETHOD.

ENDCLASS.
