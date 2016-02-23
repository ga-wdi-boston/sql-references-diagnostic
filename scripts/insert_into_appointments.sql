-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(comment, appt_date, appt_time, doctor_id, patient_id)
  SELECT 'Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.',
    SELECT 'August 12, 2016',
    SELECT '10am',
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
  SELECT 'Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.',
    SELECT 'August 17, 2016',
    SELECT '1pm',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley')
  UNION
  SELECT 'Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.',
    SELECT 'August 12, 2016',
    SELECT '10am',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
    SELECT 'Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.',
    SELECT 'August 17, 2016',
    SELECT '1pm',
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge')
;
