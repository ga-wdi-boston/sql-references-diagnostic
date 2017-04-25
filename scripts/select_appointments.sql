-- retrieve appointment information
SELECT d.given_name, a.appt_time
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
WHERE d.family_name = 'Hubbard';

SELECT p.given_name, a.appt_time
  FROM patients p
  INNER JOIN appointments a
  ON p.id = a.patient_id
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  WHERE p.family_name = 'Wilcox';
