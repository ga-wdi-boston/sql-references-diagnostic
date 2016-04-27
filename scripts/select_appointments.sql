-- retrieve appointment information
SELECT p.given_name as patient_first, p.surname as patient_last, a.time
  FROM patients p
  INNER JOIN appointments a
  ON p.id = a.patient_id
  WHERE a.doctor_id = 6;

SELECT d.given_name as doctor_first, d.surname as doctor_last, a.time
  FROM doctors d
  INNER JOIN appointments a
  ON d.id = a.doctor_id
  WHERE a.patient_id = 8;
