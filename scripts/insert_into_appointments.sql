-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT DATE '2016-08-12', TIME '10:00', d.id, p.id
  FROM doctors AS d, patients AS p
  WHERE d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
    AND p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
  UNION
  SELECT '2016-08-17', '13:00', d.id, p.id
  FROM doctors AS d, patients AS p
  WHERE d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
    AND p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
  UNION
  SELECT '2016-08-12', '10:00', d.id, p.id
  FROM doctors AS d, patients AS p
  WHERE d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
    AND p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
  UNION
  SELECT '2016-08-17', '13:00', d.id, p.id
  FROM doctors AS d, patients AS p
  WHERE d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
    AND p.family_name = 'Hodge'
    AND p.given_name = 'Blake'
;
