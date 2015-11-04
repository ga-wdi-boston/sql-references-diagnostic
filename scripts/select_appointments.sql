-- retrieve appointment information
SELECT p.given_name, p.surname, a.time
FROM patients as p
INNER JOIN appointments as a
  ON a.patient_id = p.id
INNER JOIN doctors as d
  ON a.doctor_id = d.id
WHERE d.given_name = 'Spencer'
AND d.surname = 'Hubbard'
;

SELECT d.given_name, d.surname, a.time
FROM doctors as d
INNER JOIN appointments as a
  ON a.doctor_id = d.id
INNER JOIN patients as p
  ON a.patient_id = p.id
WHERE p.given_name = 'Marsha'
AND p.surname = 'Wilcox'
;
