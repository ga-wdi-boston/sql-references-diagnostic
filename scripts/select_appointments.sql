-- retrieve appointment information
SELECT
p.given_name,
p.family_name,
a.time

FROM patients p
  JOIN appointments a ON a.patient_id = p.id
  JOIN doctors d ON d.id = a.doctor_id

WHERE d.family_name = 'Hubbard'
;

SELECT
d.given_name,
d.family_name,
a.time

FROM patients p
  JOIN appointments a ON a.patient_id = p.id
  JOIN doctors d ON d.id = a.doctor_id

WHERE p.given_name = 'Marsha'
AND p.family_name = 'Wilcox'
;
