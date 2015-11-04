-- insert appointments creating connections between doctors and patients

INSERT INTO appointments (date, time, comment, doctor_id, patient_id)
  SELECT 'August 12, 2016', '10am','No comment.',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky'),
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha')
  UNION
  SELECT 'August 17, 2016', '1pm','No comment.',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id
      FROM patients
      WHERE surname = 'Ivory'
      AND given_name = 'Talley')
  UNION
  SELECT 'August 12, 2016', '10am','No comment.',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id
      FROM patients
      WHERE surname = 'Wilcox'
      AND given_name = 'Marsha')
  UNION
  SELECT 'August 17, 2016', '1pm','No comment.',
    (SELECT id
      FROM doctors
      WHERE surname = 'Hilton'
      AND given_name = 'Vicky'),
    (SELECT id
      FROM patients
      WHERE surname = 'Blake'
      AND given_name = 'Hodge')
;
