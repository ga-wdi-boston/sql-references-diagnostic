-- retrieve appointment information
SELECT
family_name,
given_name,
time,
FROM patients
JOIN appointments on appointments.patient_id = patients.id
