-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT '20150812', '10am',
    (SELECT id FROM doctors WHERE surname = 'Hilton'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
  UNION
  SELECT '20150817', '1pm',
    (SELECT id FROM doctors WHERE surname = 'Hubbard'),
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory')
  UNION
  SELECT '20150812', '10am',
    (SELECT id FROM doctors WHERE surname = 'Hubbard'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
  UNION
  SELECT '20150817', '1pm',
    (SELECT id FROM doctors WHERE surname = 'Hilton'),
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake')
;
