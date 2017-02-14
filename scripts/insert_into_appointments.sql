-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(start_on, start_at, comment, patient_id, doctor_id)
  -- Reese Kisha
  -- Sloan | Randal | Allergy and immunology
  --
  --
  -- Scott | Rosie
  -- Rasmussen | Meagan | Orthopedics
  SELECT TIMESTAMP '2016-08-12', '10:00', 'notes about stuff', p.id, d.id
  FROM patients p, doctors d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
  UNION
  SELECT TIMESTAMP '2016-08-17', '13:00', 'notes about stuff', p.id, d.id
  FROM patients p, doctors d
  WHERE p.family_name = 'Talley'
    AND p.given_name = 'Ivory'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
  UNION
  SELECT TIMESTAMP '2016-08-12', '10:00', 'notes about stuff', p.id, d.id
  FROM patients p, doctors d
  WHERE p.family_name = 'Wilcox'
    AND p.given_name = 'Marsha'
    AND d.family_name = 'Hubbard'
    AND d.given_name = 'Spencer'
  UNION
  SELECT TIMESTAMP '2016-08-17', '13:00', 'notes about stuff', p.id, d.id
  FROM patients p, doctors d
  WHERE p.family_name = 'Hodge'
    AND p.given_name = 'Blake'
    AND d.family_name = 'Hilton'
    AND d.given_name = 'Vicky'
