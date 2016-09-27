-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(App_date, App_time, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-12 10:00', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hitton'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT TIMESTAMP '2016-08-12 10:00', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spence'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
  UNION
  SELECT TIMESTAMP '2016-08-17 13:00', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Spence'
    AND d.surname = 'Hubbard'
    AND p.given_name = 'Ivory'
    AND p.surname = 'Talley'
  UNION
  SELECT TIMESTAMP '2016-08-17 10:00', d.id, p.id
  FROM doctors d, patients p
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hitton'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
    ;
