CLASS ydr2_class_hola DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ydr2_class_hola IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  out->write(  ' Star of Selection : HOLA' ).

  ENDMETHOD.
ENDCLASS.
