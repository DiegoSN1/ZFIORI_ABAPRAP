CLASS zcldsc_certificates DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcldsc_certificates IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.

      TYPES: tt_certif TYPE TABLE OF zdsrap_certif WITH DEFAULT KEY.


      DATA(lt_certif) = VALUE tt_certif(

           ( cert_uuid = '1' matnr = '1' )
           ( cert_uuid = '2' matnr = '2' )
           ( cert_uuid = '3' matnr = '3' )
"             version =
"             cert_status    =
"             cert_ce  =
"             cert_gs   =
"             cert_fcc  =
"             cert_iso    =
"             cert_tuev    =
"             local_last_changed = )
      ).

      MODIFY zdsrap_certif FROM TABLE @lt_certif.
      out->write('Produtos inseridos com sucesso !').
    ENDMETHOD.
ENDCLASS.
