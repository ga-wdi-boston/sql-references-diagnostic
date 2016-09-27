-- retrieve appointment information
SELECT (p.surname, p.given_name, a.date, a.time)
FROM appointments a, patients p, doctors d
WHERE d.surname = 'Hubbard'
  AND d.given_name = 'Spencer'
