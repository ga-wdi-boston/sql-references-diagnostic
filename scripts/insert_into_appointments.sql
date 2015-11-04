-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date_of, time, comment, doctor_id, patient_id)
  SELECT '2016-08-12', '10:00 am', 'Martha Wilcox for Dr. Vicky Hilton',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky'),
    (SELECT id
      FROM patients
        WHERE surname = 'Wilcox'
        AND given_name = 'Martha')
  UNION
  SELECT '2016-08-17', '1:00 pm', 'Ivory Talley for Dr. Spencer Hubbard',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id
      FROM patients
      WHERE surname = 'Talley'
      AND given_name = 'Ivory')
  UNION
  SELECT '2016-08-12', '10:00 am', 'Martha Wilcox for Dr. Spencer Hubbard',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Martha')
  UNION
  SELECT '2016-08-17', '1:00 pm', 'Blake Hodge for Dr. Vicky Hilton',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky'),
    (SELECT id
      FROM patients
      WHERE surname = 'Hodge'
      AND given_name = 'Blake')
;
