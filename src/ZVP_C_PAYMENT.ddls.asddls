@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Vendor Payment Analytics'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZVP_C_PAYMENT
  as select from ZVP_I_PAYMENT as base
{
  key base.PaymentId,
      base.VendorId,
      base._Vendor.vendor_name  as VendorName,
      base._Vendor.country      as Country,
      base._Vendor.city         as City,
      base.PaymentDate,
      base.PaymentAmount,
      base.Currency,
      base.PaymentStatus,
      case base.PaymentStatus
        when 'P' then 'Paid'
        when 'O' then 'Open'
        when 'C' then 'Cancelled'
        else 'Unknown'
      end                       as StatusText,
      base.InvoiceRef
}
