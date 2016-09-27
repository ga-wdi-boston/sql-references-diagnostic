-- retrieve appointment information
SELECT p.surname, p.given_name, a.appt_date, a.appt_time
  FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
  WHERE d.surname = 'Hubbard'
  ;

SELECT d.surname, d.given_name, a.appt_date, a.appt_time
  FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
  WHERE p.surname = 'Wilcox'
    AND p.given_name = 'Marsha'
  ;
