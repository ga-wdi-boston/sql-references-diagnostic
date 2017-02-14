-- retrieve appointment information
SELECT d.family_name AS doctor, p.family_name, p.given_name, a.date, a.time
FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
WHERE doctor = 'Hubbard'
;

SELECT d.family_name AS doctor, p.family_name, p.given_name, a.date, a.time
FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
WHERE p.family_name = 'Hubbard'
;
