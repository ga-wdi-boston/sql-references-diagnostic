-- retrieve appointment information
SELECT p.surname, p.given_name, a.time
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.id = 6
;

SELECT d.surname, d.given_name, a.time
FROM doctors d
INNER JOIN appointments a
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.id = 8
;
