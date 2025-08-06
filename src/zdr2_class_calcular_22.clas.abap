CLASS zdr2_class_calcular_22 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_valor1 TYPE i
                                  iv_valor2 type i .
    mETHODs sumar RETURNING
                             VALUE(rv_ok) TYPE abap_bool.
    methods restar .
    METHODS mostrar   returning value(ret_resultado) type i.



  PROTECTED SECTION.
  PRIVATE SECTION.

  data valor1 type i.
  data valor2 type i.
  data resultado type i.

ENDCLASS.



CLASS zdr2_class_calcular_22 IMPLEMENTATION.
  METHOD constructor.
           valor1 = iv_valor1.
           valor2 = iv_valor2.
  ENDMETHOD.

  METHOD mostrar.
       ret_resultado = resultado .
  ENDMETHOD.

  METHOD restar.
         resultado = valor1 - valor2.
  ENDMETHOD.

  METHOD sumar.
       " resultado = valor1 + valor2.

        " Llamada a verificador
    DATA(lv_ok1) = zdr2_class_verificador_22=>verificar( iv_numero = valor1 ).
    DATA(lv_ok2) = zdr2_class_verificador_22=>verificar( iv_numero = valor2 ).

    IF lv_ok1 = abap_true AND lv_ok2 = abap_true.
      resultado = valor1 + valor2.
      rv_ok     = abap_true.
    ELSE.
      " No modifica resultado, solo devuelve false
      rv_ok     = abap_false.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
