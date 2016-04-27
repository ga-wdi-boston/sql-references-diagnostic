-- retrieve appointment information
SELECT p.given_name, p.surname, a.appt_time
  FROM patients p
  INNER JOIN appointments a
ON a.doctor_id = 6 AND a.patient_id = p.id
;

SELECT d.given_name, d.surname, a.appt_time
  FROM doctors d
  INNER JOIN appointments a
ON a.doctor_id = d.id AND a.patient_id = 8
;
