CLASS ydr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: start_engine,
             stop_engine,
             get_status RETURNING VALUE(rv_status) TYPE string.

    INTERFACES if_oo_adt_classrun .

    METHODS: bark.

  PROTECTED SECTION.
  PRIVATE SECTION.
      DATA: gv_engine_status TYPE string.
ENDCLASS.



CLASS YDR IMPLEMENTATION.


  METHOD bark.
    DATA: mandem type string.
          mandem = 'Hrllo'.
  ENDMETHOD.


  METHOD get_status.
    rv_status = |Engine Status: { gv_engine_status }|.
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    out->write( 'ARGENTINO' ).
    "DATA(lo_car) = NEW ydr( ).
    "lo_car->start_engine( ).
    "out->write( lo_car->get_status(  ) ).
  ENDMETHOD.


  METHOD start_engine.
    gv_engine_status = 'Running'.
  ENDMETHOD.


  METHOD stop_engine.
    gv_engine_status = 'Stopped'.
  ENDMETHOD.
ENDCLASS.
