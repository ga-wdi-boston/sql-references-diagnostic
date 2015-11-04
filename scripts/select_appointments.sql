-- retrieve appointment information
SELECT p.surname, p.given_name, d.surname, d.given_name
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard' AND d.given_name = 'Spencer'
;

SELECT d.surname, d.given_name, a.date, a.time
FROM appointments a
INNER JOIN patients p
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox' AND p.given_name = 'Marsha'
;
