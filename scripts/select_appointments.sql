-- retrieve appointment information
-- for Dr. Hubbard
SELECT p.surname, a.date, a.time
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard';
-- for patient Wilcox
SELECT d.surname, a.date, a.time
FROM doctors d
INNER JOIN appointments a
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox';
