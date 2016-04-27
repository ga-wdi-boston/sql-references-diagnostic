SELECT p.given_name, p.surname, a.date, a.time
  FROM patients p
  INNER JOIN appointments a
ON p.id = a.patient_id
  WHERE a.doctor_id = 4
;

SELECT p.given_name, p.surname, a.date, a.time
  FROM patients p
  INNER JOIN appointments a
ON p.id = a.patient_id
  WHERE a.doctor_id = 6
;
