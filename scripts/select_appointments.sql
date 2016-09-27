-- retrieve appointment information
SELECT p.given_name, p.surname patient, a.appointment_time
FROM appointments a
WHERE d.surname = 'Hubbard'
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
;

SELECT d.given_name, d.surname doctor, a.appointment_time
FROM appointments a
WHERE p.surname = 'Wilcox'
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
;
