CLASS zdr2_class_ejecucion_22 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PRIVATE SECTION.
ENDCLASS.

CLASS zdr2_class_ejecucion_22 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA salida TYPE REF TO if_oo_adt_classrun_out.


    DATA o_Calculadora TYPE REF TO zdr2_class_calcular_22.
     " 1. Creamos calculadora con valores de ejemplo
    CREATE OBJECT o_calculadora
      EXPORTING iv_valor1 = 10 iv_valor2 = 5.


      salida = out.

  " 2. Ejecutamos suma y capturamos estado
    DATA(lv_exito) = o_calculadora->sumar( ).

    " 3. Tomamos acción según el booleano
    IF lv_exito = abap_true.
      salida->write( |Suma válida: { o_calculadora->mostrar( ) }| ).
    ELSE.
      salida->write( |Error: alguno de los valores no es mayor que cero.| ).
    ENDIF.


    """""""""""""faltaria hacer lo misma para la resta

    o_calculadora->restar( ).
    salida->write( |Resta  : { o_calculadora->mostrar( ) }| ).
  ENDMETHOD.

ENDCLASS.
