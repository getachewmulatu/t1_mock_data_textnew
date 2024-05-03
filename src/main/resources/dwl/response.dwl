%dw 2.0
output application/json
---
{ "Summary" : {
	"Status" : "Success",
	"Internal_Records_Count" : vars.internalRecordsResponse,
	"RIF_and_Oracle record Count " : payload.'1'.payload,
	"Salesforce_Upsert_Count" : payload.'2'.payload
}}