-- retrieve appointment information
SELECT * FROM appointments a
INNER JOIN patients b ON a.patient_id = b.id
INNER JOIN doctors c ON a.doctor_id = c.id
WHERE c.family_name = 'Hubbard';
