@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite-Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_DSRAP_CERTIFPRODUCT
  as select from ZI_DSRAP_CERTIF
  composition [1..*] of ZI_DSRAP_CERTIFSTPRODUCT as _Stats
  association [1..1] to ZI_DSRAP_PRODUCT as _Prod on $projection.matnr = _Prod.matnr and _Prod.language = $session.system_language 
{
  key CertUuid,
      matnr,
/*    _Prod[ language = $session.system_language  ].Description as description,  "Filta pelo idioma do sistema */
      _Prod.Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChanged,
      'sap-icon://accounting-document-verification' as Icon,
      _Prod,
      _Stats
}
