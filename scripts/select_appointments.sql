-- retrieve appointment information
SELECT p.given_name, p.surname, a.time, a.date_of_appointment
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE a.doctor_id = 6
;

SELECT d.surname doctor, a.time, a.date_of_appointment
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname = 'Wilcox'
;
