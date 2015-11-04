-- retrieve appointment information
SELECT p.surname, p.given_name, a.time
FROM appointments a
INNER JOIN patients p
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

SELECT d.surname, d.given_name, a.time
FROM appointments a
INNER JOIN patients p
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox'
;
