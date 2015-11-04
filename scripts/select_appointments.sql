-- retrieve appointment information

SELECT p.given_name, p.surname, a.appt_time
FROM patients AS p
INNER JOIN appointments AS A
  ON a.patient_id = p.id
INNER JOIN doctors AS d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;


SELECT d.given_name, d.surname, a.appt_time
FROM doctors AS d
INNER JOIN appointments AS a
  ON a.doctor_id = d.id
INNER JOIN patients AS p
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox'
AND p.given_name = 'Marsha'
;



