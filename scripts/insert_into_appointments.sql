-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, patient_id, doctor_id)
  SELECT '20150812','10:00',
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky')
  UNION
  SELECT '20150817','13:00',
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory'),
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer')
  UNION
  SELECT '20150812','10:00',
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer')
  UNION
  SELECT '20150817', '13:00',
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake'),
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky')
;
