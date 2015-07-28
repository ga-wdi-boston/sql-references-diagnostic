-- retrieve appointment information
SELECT doctors.surname, doctors.given_name
FROM doctors
INNER JOIN patients
  ON doctors.id = patients.person_id
;

-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard. Retrieve the Doctors' names and appointment times for Marsha Wilcox.
