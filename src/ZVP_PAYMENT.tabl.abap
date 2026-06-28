@EndUserText.label : 'Vendor Payment Transactions'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zvp_payment {
  key client       : abap.clnt not null;
  key payment_id   : abap.char(10) not null;
  vendor_id        : abap.char(10);
  payment_date     : abap.dats;
  payment_amount   : abap.dec(13,2);
  currency         : abap.cuky;
  payment_status   : abap.char(1);
  invoice_ref      : abap.char(20);
}
