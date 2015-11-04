-- retrieve appointment information
ELECT p.given_name, p.surname, a.appttime
FROM appointments AS a
INNER JOIN patients AS p
  ON a.patient_id = p.id
INNER JOIN doctors AS d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;
