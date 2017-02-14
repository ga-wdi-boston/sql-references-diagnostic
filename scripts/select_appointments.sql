-- retrieve appointment information
SELECT p.name, a.date_time, 'Hubbard'
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
  WHERE surname IN doctors LIKE 'Hubbard';
