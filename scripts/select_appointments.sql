-- retrieve appointment information
SELECT p.family_name, a.appt_time
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
  WHERE a.family_name = 'Hubbard'
;
SELECT d.family_name, a.appt_time
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
  WHERE a.family_name = 'Wilcox'
;
