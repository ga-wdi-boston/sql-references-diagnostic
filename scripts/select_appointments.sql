-- retrieve appointment information

SELECT p.given_name, p.surname
  FROM patient p
  INNER JOIN appointment a on a.patient_id = p.id
