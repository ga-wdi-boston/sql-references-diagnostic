-- retrieve appointment information

SELECT p.given_name, p.surname, a.date, a.time
FROM patients as p
INNER JOIN appointments as a
ON p.id=a.patient_id;
WHERE a.doctor_id=6
--everyone seeing dr hubbard


SELECT d.given_name, d.surname, a.date, a.time
FROM doctors as d
INNER JOIN appointments as a
ON d.id=a.doctor_id;
WHERE a.patient_id=8
--Marsha's fail appointments
