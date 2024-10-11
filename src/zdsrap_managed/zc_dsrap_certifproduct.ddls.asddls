@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_DSRAP_CERTIFPRODUCT as projection on ZI_DSRAP_CERTIFPRODUCT
{
    key CertUuid,
    matnr,
    Description,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    LocalLastChanged,
    Icon,
    /* Associations */
    _Prod,
    _Stats: redirected to composition child ZC_DSRAP_CERTIFSTPRODUCT
}
