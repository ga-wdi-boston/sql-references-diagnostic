-- retrieve appointment information

-- SELECT p.given_name AS patient, a.time AS appointment_time
-- FROM appointments as a
-- INNER JOIN patients as p
-- ON a.doctor=doctors.id;

SELECT * FROM appointments WHERE doctor=6;

SELECT * FROM appointments WHERE patient=8;
