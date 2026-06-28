@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'External View - Vendor Payment for Fiori'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
  typeName: 'Vendor Payment',
  typeNamePlural: 'Vendor Payments'
}
define view entity ZVP_E_PAYMENT
  as select from ZVP_C_PAYMENT
{
  @UI.identification: [{ position: 10 }]
  @UI.lineItem: [{ position: 10 }]
  key PaymentId,

  @UI.identification: [{ position: 20 }]
  @UI.lineItem: [{ position: 20 }]
  VendorId,

  @UI.identification: [{ position: 30 }]
  @UI.lineItem: [{ position: 30 }]
  VendorName,

  @UI.identification: [{ position: 40 }]
  @UI.lineItem: [{ position: 40 }]
  Country,

  @UI.identification: [{ position: 50 }]
  @UI.lineItem: [{ position: 50 }]
  PaymentDate,

  @UI.identification: [{ position: 60 }]
  @UI.lineItem: [{ position: 60 }]
  PaymentAmount,

  @UI.identification: [{ position: 70 }]
  @UI.lineItem: [{ position: 70 }]
  Currency,

  @UI.identification: [{ position: 80 }]
  @UI.lineItem: [{ position: 80 }]
  StatusText,

  @UI.identification: [{ position: 90 }]
  @UI.lineItem: [{ position: 90 }]
  InvoiceRef
}
