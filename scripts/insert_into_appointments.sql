-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, appt_time, doctor_id, patient_id)
  SELECT DATE '2016-08-12', TIME '22:00', d.id, p.id
  FROM doctors d, patients p
    WHERE d.given_name = 'Vicky'
      AND d.family_name = 'Hilton'
      AND p.given_name = 'Marsha'
      AND p.family_name = 'Wilcox'
  UNION
  SELECT DATE '2016-08-17', TIME '01:00', d.id, p.id
  FROM doctors d
    INNER JOIN patients p
      ON  d.given_name = 'Spencer'
      AND d.family_name = 'Hubbard'
      AND p.given_name = 'Ivory'
      AND p.family_name = 'Talley'
  UNION
  SELECT DATE '2016-08-12', TIME '10:00', d.id, p.id
  FROM doctors d
    INNER JOIN patients p
      ON  d.given_name = 'Spencer'
      AND d.family_name = 'Hubbard'
      AND p.given_name = 'Marsha'
      AND p.family_name = 'Wilcox'
  UNION
  SELECT DATE '2016-08-17', TIME '01:00', d.id, p.id
  FROM doctors d
    INNER JOIN patients p
      ON  d.given_name = 'Vicky'
      AND d.family_name = 'Hilton'
      AND p.given_name = 'Blake'
      AND p.family_name = 'Hodge'
