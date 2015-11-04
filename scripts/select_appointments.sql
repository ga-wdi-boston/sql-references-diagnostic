-- retrieve appointment information
SELECT p.given_name, p.surname, a.time
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

SELECT d.given_name, d.surname, a.time
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox'
;
