-- retrieve appointment information
SELECT p.surname as patient, a.date_scheduled, a.start_time
  FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
  WHERE d.surname = 'Hubbard'
;


SELECT d.surname as doctor, a.date_scheduled, a.start_time
  FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
  WHERE p.surname = 'Wilcox'
;
