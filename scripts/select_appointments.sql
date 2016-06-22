-- retrieve appointment information
SELECT * FROM appointments as a
INNER JOIN
patients AS p ON
a.patient_id = p.id WHERE doctor_id=6;

SELECT * FROM appointments as a
INNER JOIN
doctors AS d on
a.doctor_id = d.id WHERE patient_id=10;
