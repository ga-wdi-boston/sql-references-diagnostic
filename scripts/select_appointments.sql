-- retrieve appointment information
-- Write a query to retrieve the names and appointment times for everyone seeing
-- Dr. Hubbard.

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  insurance TEXT
);

Here the doctor_id and patient_id is a foreign key from the two respective tables where it is the PK on those tables.
CREATE TABLE appointments (
id SERIAL PRIMARY KEY,
appt_date DATE,
appt_time TIME,
comments TEXT,
doctor_id,
patient_id
);

SELECT
  p.family_name,
  p.given_name,
  a.appt_time
from
  patients p
inner join
  appointments a
on
  p.id = a.patient_id
inner join
  doctors d
on
  d.id = a.doctor_id

where
  d.family_name = 'Hubbard';

-- Then, write another to retrieve the Doctors' names and appointment
SELECT
  d.family_name,
  d.given_name,
  a.appt_time
from
  patients p
inner join
  appointments a
on
  p.id = a.patient_id
inner join
  doctors d
on
  d.id = a.doctor_id

where
  p.family_name = 'Wilcox'
  and   p.given_name = 'Martha';
