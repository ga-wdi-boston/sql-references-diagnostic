-- retrieve appointment information

SELECT p.given_name,p.surname
  FROM patients p
  INNER JOIN appointments a ON a.patients_id=p.id
  INNER JOIN doctors d ON a.doctors_id = d.id
    WHERE doctors.surname='Hubbard'
;

SELECT p.given_name,p.surname
  FROM patients p
  INNER JOIN appointments a ON a.patients_id=p.id
  INNER JOIN doctors d ON a.doctors_id = d.id
    WHERE doctors.surname='Wilcox'
;




-- Write a query to
--  retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to
--  retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- Save your code in `scripts/select_appointments.sql`.
