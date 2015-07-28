-- retrieve appointment information
SELECT p.surname, p.given_name, a.time
FROM patients p
INNER JOIN appointments a
	ON p.id = a.patient_id
WHERE a.doctor_id =  6
;

SELECT d.surname, d.given_name, a.time
FROM doctors d
INNER JOIN appointments a
	ON d.id = a.doctor_id
WHERE a.patient_id = 8
;
