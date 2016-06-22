-- retrieve appointment information

SELECT *
     FROM appointments AS a
     INNER JOIN doctors AS d
       ON a.doctor_id = d.id
     INNER JOIN patients AS p
       ON a.patient_id = p.id
       WHERE d.id = 6


SELECT d.given_name, d.surname, a.time
    FROM appointments AS a
    INNER JOIN doctors AS d
      ON a.doctor_id = d.id
    INNER JOIN patients AS p
      ON a.patient_id = p.id
      WHERE p.id = 8
