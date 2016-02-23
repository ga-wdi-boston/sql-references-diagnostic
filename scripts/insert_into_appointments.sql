-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(appt_date, appt_time, patient_id, doctor_id)
  SELECT 'August 12, 2016', '10am',
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton')
  UNION
  SELECT 'August 17, 2016', '1pm',
    (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley'),
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')
  UNION
  SELECT 'August 12, 2016', '10am',
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')
  UNION
  SELECT 'August 17, 2016', '1pm',
    (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge'),
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton')
;
