-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(apt_time, apt_date, patient_id, doctor_id)
  SELECT 'August 12, 2016',
    '10AM',
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vickie')
  UNION
  SELECT 'August 17, 2016',
    '1PM',
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory'),
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer')
  UNION
  SELECT 'August 12, 2016',
    '10AM',
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer')
  UNION
  SELECT 'August 17, 2016',
    '1PM',
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake'),
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vickie')
