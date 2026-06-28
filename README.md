# Real-Time Vendor Payment Analytics

## SAP S/4HANA | ABAP Cloud | CDS Views | HANA Optimization

A portfolio project demonstrating real-time vendor payment analytics
built on SAP S/4HANA using modern ABAP Cloud development techniques.

## Project Architecture

- **Database Layer**: 2 transparent tables (ZVP_VENDOR, ZVP_PAYMENT)
- **CDS View Layer**: 3-layer architecture
  - Layer 1: Interface View (ZVP_I_PAYMENT) - raw data
  - Layer 2: Consumption View (ZVP_C_PAYMENT) - calculated fields
  - Layer 3: External View (ZVP_E_PAYMENT) - Fiori ready
- **Analytics Class**: ZCL_VPA_ANALYTICS - Open SQL aggregation
- **Report Class**: ZCL_VPA_REPORT - executable via Eclipse ADT
- **HANA Index**: Secondary index on VENDOR_ID + PAYMENT_DATE

## Technologies Used

- SAP ABAP Cloud Development
- Eclipse ADT
- Core Data Services (CDS Views)
- Open SQL with aggregation
- SAP HANA index optimization
- ABAP OOP

## Developer

Samruddhi Gore | SAP ABAP Developer
- GitHub: github.com/SamruddhiJain
- SAP Certified Associate - ABAP Developer (C_ABAPD_2601)
