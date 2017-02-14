-- retrieve appointment information
SELECT patients.given_name, patients.surname, appointments.time, appointments.date
FROM patients, appointments, doctors
WHERE appointments.patient_id = patients.id
AND appointments.doctor_id = doctors.id
AND doctors.surname = 'Hubbard';

SELECT doctors.given_name, doctors.surname, appointments.time, appointments.date
FROM patients, appointments, doctors
WHERE appointments.patient_id = patients.id
AND appointments.doctor_id = doctors.id
AND patients.given_name = 'Marsha'
AND patients.surname = 'Wilcox';
