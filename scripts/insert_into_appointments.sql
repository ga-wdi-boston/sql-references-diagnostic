-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, comment)
  SELECT 'August 12, 2016',
    '10am',
    'Marsha Wilcox is seeing Dr. Hilton',
    (SELECT id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
  SELECT 'August 17, 2016',
    '1pm',
    'Ivory Talley is seeing Dr. Spencer',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley')
  UNION
  SELECT 'August 12, 2016',
    '10am',
    'Marsha Wilcox is seeing Dr. Spencer',
    (SELECT id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
    (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox')
  UNION
  SELECT 'August 17, 2016',
    '1pm',
    'Blake Hodge is seeing Dr. Hilton',
    (SELECT id FROM doctors WHERE given_name = 'Hilton' AND surname = 'Vickie'),
    (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge')
;
