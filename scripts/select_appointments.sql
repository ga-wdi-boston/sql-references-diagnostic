-- retrieve appointment information
SELECT a.time AS time, d.family_name
  FROM appointments AS a
    INNER JOIN doctors AS d
      ON d.id = a.doctor_id
    WHERE d.family_name = 'Hubbard'
;

SELECT d.family_name AS name AND a.time AS time, p.family_name, p.given_name
  FROM appointments AS a
    INNER JOIN doctors AS d
      ON d.id = a.doctor_id
    INNER JOIN patients AS p
      ON p.id = a.patient_id
    WHERE p.family_name = 'Wilcox' AND p.given_name = 'Marsha'
;
