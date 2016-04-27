-- retrieve appointment information


select p.given_name, p.surname
  from patients p
  inner join appointments a
  on p.id = a.id
;

--
--
-- Write a query to
--  retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to
--  retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- Save your code in `scripts/select_appointments.sql`.
