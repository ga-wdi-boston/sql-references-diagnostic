-- retrieve appointment information
-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard.
SELECT p.given_name, p.surname
FROM patients p
INNER JOIN appointments a
  ON a.date = a.date

-- NOT FINISHED!! SORRY!!!!
-- INNER JOIN people p
--   ON e.person_id = p.id
-- WHERE p.surname = 'Adams'
;

-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.

