@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Certificados Status'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_DSRAP_CERTIFSTPRODUCT as projection on ZI_DSRAP_CERTIFSTPRODUCT
{
    key StateUuid,
    CertUuid,
    Matnr,
    Description,
    Version,
    Status,
    StatusOld,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _Certif: redirected to parent ZC_DSRAP_CERTIFPRODUCT,
    _Prod
}
