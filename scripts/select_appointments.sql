-- retrieve appointment information

SELECT d.surname doctor, p.surname patient, a.appt_date, a.start
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
INNER JOIN patients p
  ON a.patient_id = p.id
WHERE d.surnam = 'Hubbard';
