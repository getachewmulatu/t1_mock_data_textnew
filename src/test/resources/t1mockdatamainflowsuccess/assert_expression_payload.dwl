%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "Summary": {
    "Status": "Success",
    "Internal_Records_Count": {
      "Message": "Internal Records",
      "TotalRecords": 250
    },
    "RIF_and_Oracle record Count ": {
      "totalSuccess": 516
    },
    "Salesforce_Upsert_Count": {
      "totalSuccess": 0,
      "totalFailed": 0
    }
  }
})