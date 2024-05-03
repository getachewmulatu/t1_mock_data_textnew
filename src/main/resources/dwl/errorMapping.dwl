%dw 2.0
output application/json
---
{
	Status : vars.httpStatus,
	Error : error.errorType.identifier,
	Error_Description : error.description,
	Errro_DetailedDescription : error.detailedDescription
}