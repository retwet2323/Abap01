CLASS zdr2_class_verificador_22 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-METHODS verificar
      IMPORTING
        iv_numero TYPE i
      RETURNING
        VALUE(rv_valido) TYPE abap_bool.
ENDCLASS.



CLASS zdr2_class_verificador_22 IMPLEMENTATION.
  METHOD verificar.

             if iv_numero > 0 .
                      rv_valido = abap_true. .
              else.
                     rv_valido = abap_false.
              endif.
              """"""""""""""""""""""""""""""""""""""""   o
              rv_valido = COND abap_bool(
                          WHEN iv_numero > 0 THEN abap_true
                          ELSE abap_false ).



  ENDMETHOD.

ENDCLASS.
