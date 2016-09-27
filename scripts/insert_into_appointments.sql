-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(start, duration_in_minutes, comments, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-12 10:00', 30, 'N/A', 4, 8
  FROM doctors, patients;
  
INSERT INTO appointments(start, duration_in_minutes, comments, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-17 13:00', 60, 'Delirium tremens', dr.id, p.id
  FROM doctors dr, patients p
  WHERE dr.given_name = 'Spencer'
    AND dr.surname = 'Hubbard'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  SELECT TIMESTAMP '2016-08-12 10:00', 45, 'Space dementia', dr.id, p.id
  FROM doctors dr, patients p
  WHERE dr.given_name = 'Spencer'
    AND dr.surname = 'Hubbard'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT TIMESTAMP '2016-08-17 13:00', 45, 'Cranial rectitus', dr.id, p.id
  FROM doctors dr, patients p
  WHERE dr.given_name = 'Vicky'
    AND dr.surname = 'Hilton'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
;
