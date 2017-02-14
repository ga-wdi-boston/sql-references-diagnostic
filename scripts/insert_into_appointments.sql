-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT DATE '2017-08-12',
  TIME '1000',
    (SELECT id FROM doctors
      WHERE family_name = 'Hilton'
      AND given_name = 'Vicky'),
    (SELECT id FROM patients
      WHERE family_name = 'Wilcox'
      AND given_name = 'Marsha')
  UNION

  SELECT '2017-08-17', '1300',
    (SELECT id FROM doctors
      WHERE family_name = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id FROM patients
      WHERE family_name = 'Talley'
      AND given_name = 'Ivory')
  UNION
  SELECT '2017-08-17', '1000',
    (SELECT id FROM doctors
      WHERE family_name = 'Hubbard'
      AND given_name = 'Spencer'),
    (SELECT id FROM patients
      WHERE family_name = 'Wilcox'
      AND given_name = 'Marsha')
  UNION
  SELECT '2017-08-17', '1300',
   (SELECT id FROM doctors
     WHERE family_name = 'Hilton'
     AND given_name = 'Vicky'),
   (SELECT id FROM patients
     WHERE family_name = 'Hodge'
     AND given_name = 'Blake')
;
