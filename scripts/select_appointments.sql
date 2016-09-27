-- retrieve appointment information
Write a query to
 retrieve the names and appointment times for everyone seeing Dr. Hubbard.
Then, write another to
 retrieve the Doctors' names and appointment times for Marsha Wilcox.
Save your code in `scripts/select_appointments.sql`.

SELECT p.surname patient, d.surname doctor, a.appt_time
FROM appointments a
INNER JOIN doctors d
     on a.doctor_id = d.id
INNER JOIN patients p
     on a.patient_id = p.id
WHERE d.surname = 'Lasagna'

;


SELECT p.surname patient, d.surname doctor, a.appt_time
FROM appointments a
INNER JOIN doctors d
     on a.doctor_id = d.id
INNER JOIN patients p
     on a.patient_id = p.id
;
