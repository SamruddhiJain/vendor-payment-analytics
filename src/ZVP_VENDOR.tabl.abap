@EndUserText.label : 'Vendor Master Data'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zvp_vendor {
  key client    : abap.clnt not null;
  key vendor_id : abap.char(10) not null;
  vendor_name   : abap.char(50);
  country       : abap.char(3);
  city          : abap.char(30);
  created_on    : abap.dats;
}
