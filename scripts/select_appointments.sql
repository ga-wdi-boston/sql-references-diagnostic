-- retrieve appointment information
SELECT a.for_patient, a.with_doctor
  FROM appointments a
  INNER JOIN doctors d ON a.with_doctor = d.id
  INNER JOIN patients p ON a.for_patient = p.id
    WHERE a.with_doctor = 'Dr. Spencer Hubbard'
