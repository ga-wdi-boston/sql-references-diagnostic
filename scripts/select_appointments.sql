-- retrieve appointment information
SELECT p.family_name, p.given_name, a.start_at
FROM appointments AS a
  INNER JOIN patients AS p
    ON p.id = a.patient_id
  INNER JOIN doctors AS d
    ON d.id = a.doctor_id
WHERE d.family_name = 'Hubbard'
  AND d.given_name = 'Spencer'
;

SELECT d.family_name, d.given_name, a.on_date, a.start_at
FROM appointments AS a
  INNER JOIN patients AS p
    ON p.id = a.patient_id
  INNER JOIN doctors AS d
    ON d.id = a.doctor_id
WHERE p.family_name = 'Wilcox'
  AND p.given_name = 'Marsha'
;
