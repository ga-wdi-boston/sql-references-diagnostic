-- retrieve appointment information
SELECT patients.family_name, patients.given_name, doctors.family_name
FROM patients
INNER JOIN appointments
  ON appointments.patient_id = patients.id
INNER JOIN doctors
  ON doctors.id = appointments.doctor_id
WHERE doctors.family_name = 'Hubbard';

SELECT patients.family_name, patients.given_name, doctors.family_name, appointments.appointment_time
FROM patients
INNER JOIN appointments
  ON appointments.patient_id = patients.id
INNER JOIN doctors
  ON doctors.id = appointments.doctor_id
WHERE patients.family_name = 'Wilcox' AND patients.given_name = 'Marsha';
