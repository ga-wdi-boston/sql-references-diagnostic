-- retrieve appointment information
SELECT p.surname patient, a.time  appt_time
FROM patients p
INNER JOIN patients p
  ON p.id = a.patient_id
WHERE a.doctor_id IN ('7');

SELECT d.surname doctor, a.time appt_time
FROM doctors d
INNER JOIN patients p
  ON d.id = p.doctor_id
WHERE d.surname IN ('Hubbard');
