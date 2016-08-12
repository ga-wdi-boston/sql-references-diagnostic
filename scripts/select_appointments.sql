-- retrieve appointment information
### Question 4

-- Write a query to
--  retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to
--  retrieve the Doctors' names and appointment times for Marsha Wilcox.
-- Save your code in `scripts/select_appointments.sql`.
--
-- You can test your work by entering the PSQL console and running
--  `\i path/to/your_script.(p)sql`
--
-- Commit and push your changes, and then submit a pull request.

SELECT p.surname, p.given_name, a.time_of
FROM appointments a
  INNER JOIN doctors d
  ON
  INNER JOIN patients p
  ON
  WHERE
;

-- SELECT d.surname, d.specialty, p.surname, a.start
-- FROM appointments a
--   INNER JOIN doctors d
--   ON d.id = a.doctor_id
--   INNER JOIN patients p
--   ON p.id = a.patient_id
-- ;
-- CREATE TABLE appointments(
--   id SERIAL PRIMARY KEY,
--   date_of TEXT,
--   time_of TEXT,
--   comment TEXT,
--   doctor_id INTEGER REFERENCES doctors(id),
--   patient_id INTEGER REFERENCES patients(id)
-- );
