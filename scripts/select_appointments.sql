-- retrieve appointment information

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname ='Hubbard'
INNER JOIN patients p
  ON a.patient_id = p.id

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname ='Wilcox'
INNER JOIN patients p
  ON a.patient_id = p.id
;

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname ='Hilton'
INNER JOIN patients p
  ON a.patient_id = p.id

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname ='Hodge'
INNER JOIN patients p
  ON a.patient_id = p.id
:

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE d.surname ='Hilton'
INNER JOIN patients p
  ON a.patient_id = p.id

SELECT d.surname doctor, d.specialty, p.surname patient, a.start, a.length
FROM appointments a
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE p.surname ='Wilcox'
INNER JOIN patients p
  ON a.patient_id = p.id
