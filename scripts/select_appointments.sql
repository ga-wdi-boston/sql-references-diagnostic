-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.
  --+ Save your code in `scripts/select_appointments.sql`.


SELECT p.given_name, p.surname, date, time
FROM patients AS p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors AS d
  ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

SELECT d.given_name, d.surname, date, time
FROM doctors AS d
INNER JOIN appointments a
  ON a.doctor_id = d.id
INNER JOIN doctors AS d
  ON a.patient_id = p.id
WHERE p.surname = 'Wilcox'
;
