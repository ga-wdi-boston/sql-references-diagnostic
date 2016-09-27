-- retrieve appointment information
SELECT d.surname as doctor, d.specialty, p.surname as patient, a.start, a.length
  FROM appointments a
  INNER JOIN doctors d
    ON a.doctor_id = d.id
  INNER JOIN patients p
    ON a.patient_id = p.id;

--This is the code I referenced from the exercise. Obviously this isn't
--everything. Perhaps this should be a SELECT * FROM query? I'm not sure.
--Either way, time's up.
