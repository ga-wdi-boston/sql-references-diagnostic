-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date_of,time_of,comment,patients_id,doctors_id)
  SELECT '20160812',
  SELECT '1000',
  (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
  (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),

  UNION

  SELECT '20160817',
  SELECT '1300',
  (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
  (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory'),

  UNION

  SELECT '20160812',
  SELECT '1000',
  (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
  (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),

  UNION

  SELECT '20160817',
  SELECT '1300',
  (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
  (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake')
  ;
