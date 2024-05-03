%dw 2.0
output application/csv
---
(payload filter ($.'external_system' == 'RFI' or $.'external_system' == 'oracle')) map {
	Id: $.'student_id',
	First_Name : $.'first_name'
}