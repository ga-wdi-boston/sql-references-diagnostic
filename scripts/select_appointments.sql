-- retrieve appointment information
SELECT COUNT(*), a.patient_given_name, a.patient_surname
FROM appointments a
INNER JOIN doctors d
  ON p.doctor_id = d.id
WHERE d.specialty <> 'General practice'
GROUP BY d.specialty
ORDER BY COUNT(*) ASC;
