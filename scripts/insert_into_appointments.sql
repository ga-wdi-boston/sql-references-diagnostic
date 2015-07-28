-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comments, doctor_id, patient_id)
  SELECT '20150812', '10:00', 'none',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
  UNION
  SELECT '20150817', '13:00', 'none',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory')
  UNION
  SELECT '20150812', '10:00', 'none',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
  UNION
  SELECT '20150817', '13:00', 'none',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake')
;
