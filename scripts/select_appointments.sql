-- retrieve appointment information
SELECT p.given_name, p.surname, time
FROM appointments a

INNER JOIN patients p
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id

WHERE d.surname = 'Hubbard'
;
