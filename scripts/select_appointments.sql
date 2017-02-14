-- retrieve appointment information
SELECT start, patient_id  FROM appointments
WHERE doctor_id=7

SELECT start, doctor_id FROM appointments
WHERE patient_id=9
