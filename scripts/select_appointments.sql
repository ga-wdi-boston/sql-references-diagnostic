-- retrieve appointment information
-- Question 4. Retrieve the names and appointment times for everyone seeing Dr. Hubbard.  Retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT p.surname, p.given_name, time
  FROM patients p
    INNER JOIN appointments a
      ON a.patient_id = p.id
    INNER JOIN doctors d
      ON a.doctor_id = d.id
WHERE d.surname = 'Hubbard'
  AND
      d.given_name = 'Spencer'
;

SELECT d.surname AS doctor, d.given_name AS doctor , time
  FROM doctors d
    INNER JOIN appointments a
      ON a.doctor_id = d.id
    INNER JOIN patients p
      ON a.patient_id = p.id
WHERE p.surname = 'Wilcox'
;
