-- -- retrieve appointment information
-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard.

SELECT * FROM appointments AS a
INNER JOIN doctors AS d
ON a.doctor_6 = d.6;

--  retrieve the Doctors' names and appointment times for Marsha Wilcox.
