-- retrieve appointment information


SELECT p.surname, p.given_name, a.time
FROM patients p
INNER JOIN appointments a
  ON p.id = a.patient_id
INNER JOIN doctors d
  ON d.id =

-- not done!
