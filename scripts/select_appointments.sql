-- retrieve appointment information
SELECT p.given_name, p.appt_time
  FROM patients p
  inner join appointments a
  on a.doctor_id = 6
UNION
SELECT d.given_name, d.appt_time
  FROM doctors d
  inner join appointments a
  on a.patient_id = 8
;  
