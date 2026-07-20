select * from Patients 
where conditions like ('DIAB1%') 
|| conditions LIKE ('% DIAB1%');