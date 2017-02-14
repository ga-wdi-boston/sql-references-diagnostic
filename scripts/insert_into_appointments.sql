-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date,time,comment)
SELECT '2016-08-12','10:00', 'be on time', p.id, d.id
FROM patients p, doctors d
  WHERE d.specialty = 'Internal Medicine'
  AND d.given_name = 'Vicky'
  AND d.surname = 'Hilton'
  AND p.given_name = 'Marsha'
  AND p.surname = 'Wilcox'
  AND p.born_on = '1949-08-28'
UNION
SELECT '2016-08-17','13:00', 'be on time', p.id, d.id
FROM patients p, doctors d
  WHERE d.specialty = 'Dermatology'
  AND d.given_name = 'Spencer'
  AND d.surname = 'Hubbard'
  AND p.given_name = 'Ivory'
  AND p.surname = 'Talley'
  AND p.born_on = '1975-06-17'
UNION
SELECT '2016-08-12','10:00', 'be on time', p.id, d.id
FROM patients p, doctors d
  WHERE d.specialty = 'Dermatology'
  AND d.given_name = 'Spencer'
  AND d.surname = 'Hubbard'
  AND p.given_name = 'Marsha'
  AND p.surname = 'Wilcox'
  AND p.born_on = '1949-08-28'
  UNION
  SELECT '2016-08-17','13:00', 'be on time', p.id, d.id
  FROM patients p, doctors d
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
    AND p.born_on = '1960-10-22'
;
