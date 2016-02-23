-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, patient_id, doctor_id)
  SELECT '2016-08-12', '10am', 'no comment',
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton')
  UNION
  SELECT '2016-08-17', '1pm', 'no comment',
    (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley'),
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')
  UNION
  SELECT '2016-08-12', '10am', 'no comment',
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')
  UNION
  SELECT '2016-08-17', '1pm', 'no comment',
    (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge'),
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton')
;
