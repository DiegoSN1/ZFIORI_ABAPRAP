@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Composite-Certificado status com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DSRAP_CERTIFSTPRODUCT as select from ZI_DSRAP_CERTIF_ST
  association to parent ZI_DSRAP_CERTIFPRODUCT as _Certif on $projection.CertUuid = _Certif.CertUuid
  association [1..1] to ZI_DSRAP_PRODUCT as _Prod on $projection.Matnr = _Prod.Matnr and _Prod.language = $session.system_language 
{
    key StateUuid,
    CertUuid,
    Matnr,
    _Prod.Description,
    Version,
    Status,
    StatusOld,
    @Semantics.user.lastChangedBy: true
    LastChangedBy,
    @Semantics.systemDateTime.lastChangedAt: true
    LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    
    _Certif,
     _Prod
}
