-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, doctor_id, patient_id)
  SELECT '20150812', '10:00',
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
  SELECT '20150817', '13:00',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley')
  UNION
  SELECT '20150812', '10:00',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
  SELECT '20150817', '13:00',
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge')
    ;

-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2015.
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2015.
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2015.
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2015.
