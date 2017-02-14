-- retrieve appointment information

-- Using past repo but haven't had time to update with appropriate data.
SELECT COUNT(*), d.appointments
FROM patients p
INNER JOIN doctors d
  ON p.doctor_id = d.id
WHERE d.specialty <> 'General practice'
GROUP BY d.specialty
ORDER BY COUNT(*) ASC;
