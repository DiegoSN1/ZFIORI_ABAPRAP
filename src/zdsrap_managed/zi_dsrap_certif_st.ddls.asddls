@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic-Certificaods Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DSRAP_CERTIF_ST
  as select from zdsrap_certif_st
{
  key state_uuid            as StateUuid,
      cert_uuid             as CertUuid,
      matnr                 as Matnr,
      version               as Version,
      status                as Status,
      status_old            as StatusOld,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
