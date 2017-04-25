-- retrieve appointment information
SELECT
patients.family_name,
patients.given_name,
date,
time
FROM
appointments

join patients
on appointments.patient_id = patients.id

join doctors
on appointments.doctor_id = doctors.id

where
doctors.id = 6

group by
patients.family_name,
patients.given_name,
date,
time
;

-- Write a query to retrieve the names and appointment times for everyone seeing Dr. Hubbard.
-- Then, write another to retrieve the Doctors' names and appointment times for Marsha Wilcox.

SELECT
doctors.family_name,
doctors.given_name,
date,
time
FROM
appointments

join patients
on appointments.patient_id = patients.id

join doctors
on appointments.doctor_id = doctors.id

where
patients.id = 8

group by
patients.family_name,
patients.given_name,
date,
time
;
