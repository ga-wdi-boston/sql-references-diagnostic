-- retrieve appointment information
SELECT p.given_name, p.surname, a.time
FROM patients AS p
INNER JOIN appointments AS a
  ON a.patient_id = p.id
INNER JOIN doctors AS d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

SELECT d.given_name, d.surname, a.time
FROM doctors d
INNER JOIN appointments a
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha'
;
