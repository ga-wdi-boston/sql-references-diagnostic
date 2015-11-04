-- retrieve appointment information

-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard. Retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT d.surname, ...
FROM patients p
INNER JOIN appointments a
  ON a.patient_id = a.id
INNER JOIN doctors d
  ON d.doctor_id = d.id
WHERE d.surname = 'Hubbard'
;

-- I didn't have time to finish the quetion...
