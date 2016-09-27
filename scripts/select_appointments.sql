-- retrieve appointment information
SELECT d.surname doctor, d.specialty, p.surname patient, a.day, a.appt_time
FROM appointments a
WHERE d.given_name = 'Spencer'
AND d.surname = 'Hubbard'
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
;

SELECT d.surname doctor, d.specialty, p.surname patient, a.day, a.appt_time
FROM appointments a
WHERE p.given_name = 'Marsha'
AND p.surname = 'Wilcox'
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
;
