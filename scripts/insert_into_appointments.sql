-- insert appointments creating connections between doctors and patients

INSERT INTO appointments (date,time,comment,doctor_id,patient_id)
  SELECT 'August 12, 2015', '10am', '',
  (SELECT id FROM doctors WHERE surname = 'Hilton' and given_name = 'Vickie'),
  (SELECT id FROM patients WHERE surname = 'Wilcox' and given_name = 'Marsha')
UNION
  SELECT 'August 17, 2015', '1pm', '',
  (SELECT id FROM doctors WHERE surname = 'Hubbard' and given_name = 'Spencer'),
  (SELECT id FROM patients WHERE surname = 'Talley' and given_name = 'Ivory')
UNION
  SELECT 'August 12, 2015', '10am', '',
  (SELECT id FROM doctors WHERE surname = 'Hubbard' and given_name = 'Spencer'),
  (SELECT id FROM patients WHERE surname = 'Wilcox' and given_name = 'Marsha')
UNION
  SELECT 'August 17, 2015', '1pm', '',
  (SELECT id FROM doctors WHERE surname = 'Hilton' and given_name = 'Vickie'),
  (SELECT id FROM patients WHERE surname = 'Hodge' and given_name = 'Blake');

  -- Viky is spelled wrong

  --   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2015.
  -- + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2015.
  -- + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2015.
  -- + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2015.
