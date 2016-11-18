INSERT INTO appointments(date, time, comments)
SELECT 'August 12, 2016', '10AM', p.id, d.id
FROM patients p, doctors d
  WHERE d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
;
