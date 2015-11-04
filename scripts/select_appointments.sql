-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard. Retrieve the Doctors' names and appointment times for Marsha Wilcox.



SELECT p.surname, p.given_name, a.appointment_time, a.appointment_date
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE a.doctor_id = 6
;



SELECT d.surname, d.given_name, a.appointment_time, a.appointment_date
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = p.id
INNER JOIN doctors d
  ON a.doctor_id = d.id
WHERE a.patient_id = 8
;

