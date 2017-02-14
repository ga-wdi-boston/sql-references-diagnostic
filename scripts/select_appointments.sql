-- retrieve appointment information
SELECT p.given_name, p.family, a.start_on, a.start_at
FROM appointments a
INNER JOIN patients p
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON d.id = a.doctor_id
WHERE d.family_name = 'Hubbard';

SELECT d.given_name, d.family, a.start_on, a.start_at
FROM appointments a
INNER JOIN patients p
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON d.id = a.doctor_id
WHERE p.family_name = 'Wilcox'
  AND p.given_name = 'Marsha';
