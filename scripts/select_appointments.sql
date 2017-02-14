-- retrieve appointment information
SELECT d.family_name AS doctor,
       p.family_name, p.given_name,
       a.appointment_date, a.appointment_time
FROM appointments AS a
  INNER JOIN doctors AS d
    ON d.id = a.doctor_id
  INNER JOIN patients AS P
    ON p.id = a.patient_id
WHERE doctor = 'Hubbard'
;
SELECT d.family_name AS doctor,
       p.family_name, p.given_name,
       a.appointment_date, a.appointment_time
FROM appointments AS a
  INNER JOIN doctors AS d
    ON d.id = a.doctor_id
  INNER JOIN patients AS P
    ON p.id = a.patient_id
WHERE p.family_name = 'Wilcox'
  AND p.given_name = 'Marsha'
;
