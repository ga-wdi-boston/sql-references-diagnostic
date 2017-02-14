-- retrieve appointment information

SELECT p.family_name, a.date, a.time
FROM patients p
INNER JOIN appointments a
ON a.patient_id = p.id
INNER JOIN doctors d
ON a.doctor_id = d.id
WHERE d.family_name = 'Hubbard';
