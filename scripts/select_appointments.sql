-- retrieve appointment information
SELECT surname, given_name, appointment_date, appointent_time
FROM appointments AS a
INNER JOIN patients AS p
  ON p.id = a.patient_id
INNER JOIN doctors AS d
  ON d.id = a.doctor_id
WHERE d.id = 6
