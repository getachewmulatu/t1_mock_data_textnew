%dw 2.0
output application/csv
---
(payload filter ($.'external_system' == 'salesforce')) map ({
	Student_Id__c : $.student_id,
	FirstName : $.first_name,
	LastName : $.last_name,
	Email : $.email,
	age__c: $.age,
	Country_Postal_Code__c : $.country_postal_code,
	Favorite_Color__c : $.favorite_color,
	Enrollment_Date__c : ($.enrollment_date ++ " 00:00:00") as String as LocalDateTime {format : "M/d/yyyy HH:mm:ss"} as Date,
	GPA__c : $.gpa
})