@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View - Vendor Payment Raw Data'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZVP_I_PAYMENT
  as select from zvp_payment as pay
  association [1..1] to zvp_vendor as _Vendor
    on $projection.VendorId = _Vendor.vendor_id
{
  key pay.payment_id    as PaymentId,
      pay.vendor_id     as VendorId,
      pay.payment_date  as PaymentDate,
      pay.payment_amount as PaymentAmount,
      pay.currency      as Currency,
      pay.payment_status as PaymentStatus,
      pay.invoice_ref   as InvoiceRef,
      _Vendor
}
