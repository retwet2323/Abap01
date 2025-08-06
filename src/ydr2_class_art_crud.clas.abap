CLASS ydr2_class_art_crud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ydr2_class_art_crud IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA : it_art TYPE STANDARD TABLE OF ydr2_tab_art .

    it_art = VALUE #(
    ( client = sy-mandt
    id_art = 1
     descrip = ' Mini Colores'
    descrip2    = ' Un mini estuche, con mini colores'
    color       = 'varios'
    piezas      = 12
    stock       = 100
    url         = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-Blackwing140-3_600x.jpg?v=1749794650' )
    ( client = sy-mandt
    id_art = 1
     descrip = ' Borrra Colores'
    descrip2    = ' con Wing'
    color       = 'celeste'
    piezas      = 152
    stock       = 50
    url         = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-volumen-6_600x.jpg?v=1614335427' )

    ( client = sy-mandt
    id_art = 1
     descrip = ' cuaderno'
    descrip2    = ' Un mini '
    color       = 'negro'
    piezas      = 1
    stock       = 30
    url         = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-codex-azul-cobalto-01_600x.jpg?v=1655593497' )


    ).

    insert ydr2_tab_art from TABLE @it_art.


    if sy-subrc = 0.
     out->write(  'Insert satisfactorio' ).
    Else.
      out->write(  ' no se Inserto' ).
     ENDIF.

  ENDMETHOD.

ENDCLASS.
