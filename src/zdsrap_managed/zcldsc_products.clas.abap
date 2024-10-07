CLASS zcldsc_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcldsc_products IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

      TYPES: tt_products TYPE TABLE OF zdsrap_product WITH DEFAULT KEY.

      DATA(lt_products) = VALUE tt_products(
         ( matnr = '1' description = 'Celular')
         ( matnr = '2' description = 'Televisao')
         (  matnr = '3' description = 'Computador')
      ).

      MODIFY zdsrap_product FROM TABLE @lt_products.
      out->write('Produtos inseridos com sucesso !').
    ENDMETHOD.
ENDCLASS.
