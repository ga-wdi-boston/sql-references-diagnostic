-- retrieve appointment information

-- Write a query to
--  retrieve the names and appointment times for everyone seeing Dr. Hubbard.

 SELECT p.names AS names, a.appt_date AS appt_date
 FROM patients AS p
  INNER JOIN appointments AS a
  ON p.id = a.patient_id
 WHERE a.doctor_id = 6;


-- Then, write another to
--  retrieve the Doctors' names and appointment times for Marsha Wilcox.

 SELECT d.names AS doctor_names, a.appt_times AS appointment_times
 FROM doctors AS d
 INNER JOIN appointments AS a
  ON d.id = a.doctor_id
 WHERE a.patient_id = 8;
