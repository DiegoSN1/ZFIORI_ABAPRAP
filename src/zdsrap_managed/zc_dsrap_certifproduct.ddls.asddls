@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_DSRAP_CERTIFPRODUCT as projection on ZI_DSRAP_CERTIFPRODUCT
{
    key CertUuid,
    Matnr,
    Description,
    Version,
    CertStatus,
    CertCe,
    CertGs,
    CertFcc,
    CertIso,
    CertTuev,
    LocalLastChanged,
    /* Associations */
    _Prod,
    _Stats: redirected to composition child ZC_DSRAP_CERTIFSTPRODUCT
}
