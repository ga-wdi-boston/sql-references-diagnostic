-- retrieve appointment information

SELECT d.surname, d.given_name, p.surname, p.given_name, a.date, a.time
FROM doctors d
INNER JOIN appointments a
 ON d.id = a.doctor_id
 INNER JOIN patients p
 ON a.patient_id = p.id
 WHERE d.surname = 'Hubbard'
 AND d.given_name = 'Spencer'
 ;


SELECT p.surname, p.given_name, d.surname, d.given_name, a.date, a.time
FROM patients p
INNER JOIN appointments a
 ON p.id = a.patient_id
 INNER JOIN doctors d
 ON a.doctor_id = d.id
 WHERE p.surname = 'Wilcox'
 AND p.given_name = 'Marsha'
 ;
