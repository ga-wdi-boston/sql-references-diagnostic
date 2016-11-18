INSERT INTO appointments(app_date, app_time)
  SELECT 'August 12, 2016', '10am'
  FROM doctors d, patients p
  WHERE p.given_name = 'Marsha'
  AND p.surname = 'Wilcox'
  AND d.given_name = 'Vicky'
  AND d.surname = 'Hilton'
  UNION
  SELECT 'August 17, 2016', '1pm'
  FROM doctors d, patients p
  WHERE p.given_name = 'Ivory'
  AND p.surname = 'Talley'
  AND d.given_name = 'Spencer'
  AND d.surname = 'Hubbard'
  UNION
  SELECT 'August 12, 2016', '10am'
  FROM doctors d, patients p
  WHERE p.given_name = 'Marsha'
  AND p.surname = 'Wilcox'
  AND d.given_name = 'Spencer'
  AND d.surname = 'Hubbard'
  UNION
  SELECT 'August 17, 2016', '1pm'
  FROM doctors d, patients p
  WHERE p.given_name = 'Blake'
  AND p.surname = 'Hodge'
  AND d.given_name = 'Vicky'
  AND d.surname = 'Hilton'
