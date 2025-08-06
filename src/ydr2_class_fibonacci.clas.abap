CLASS ydr2_class_fibonacci DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: ty_fib_table TYPE STANDARD TABLE OF i WITH EMPTY KEY.
    METHODS:
      constructor
        IMPORTING iv_limit TYPE i,
      calculate
        RETURNING VALUE(rt_fib_series) TYPE ty_fib_table.


  PROTECTED SECTION.





  PRIVATE SECTION.

  DATA mv_limit TYPE i.
ENDCLASS.



CLASS ydr2_class_fibonacci IMPLEMENTATION.

METHOD constructor.
    mv_limit = iv_limit.
  ENDMETHOD.


  METHOD calculate.
    DATA: lv_first TYPE i VALUE 1,
          lv_second TYPE i VALUE 1,
          lv_next TYPE i,
          lt_result TYPE ty_fib_table.

    APPEND lv_first TO lt_result.
    IF mv_limit >= 1.
      APPEND lv_second TO lt_result.
    ENDIF.

    WHILE lv_next < mv_limit.
      lv_next = lv_first + lv_second.
      IF lv_next > mv_limit.
        EXIT.
      ENDIF.
      APPEND lv_next TO lt_result.
      lv_first = lv_second.
      lv_second = lv_next.
    ENDWHILE.

    rt_fib_series = lt_result.
  ENDMETHOD.



ENDCLASS.
