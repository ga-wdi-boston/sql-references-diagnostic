-- retrieve appointment information
-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to retrieve the Doctors' names and appointment times for Marsha Wilcox.
SELECT p.given_name p.surname, count(*)
  FROM doctors
  INNER JOIN patients p ON appointments.patient_id = p.id
      GROUP BY p.given_name, p.surname
;

SELECT d.given_name, d.surname, appointments.times count(*)
  FROM patients
  INNER JOIN doctors d ON appointments.doctor_id= d.id
  GROUP BY d.given_name, d.surname
;
