-- retrieve appointment information
SELECT p.name, d.name, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor = 'Dr. Hubbard'
INNER JOIN patients p
  ON a.patient_id = p.name
;

SELECT p.name, d.name, a.time
FROM appointments a
INNER JOIN doctors d
  ON a.doctor = d.name
INNER JOIN patients p
  ON a.patient_id = 'Marsha Wilcox'
;