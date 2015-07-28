-- retrieve appointment information

-- Retrieve the names and appointment times for everyone seeing Dr. Hubbard.
SELECT p.surname, p.given_name, a.date, a.time, p.insurance
FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
WHERE d.surname = 'Hubbard';


-- Retrieve the Doctors' names and appointment times for Marsha Wilcox.
SELECT d.surname, a.date, a.time
FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id
WHERE p.given_name = 'Marsha' and p.surname = 'Wilcox';



