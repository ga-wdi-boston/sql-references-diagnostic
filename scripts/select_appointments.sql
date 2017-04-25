-- retrieve appointment information
SELECT doctors.family_name, patients.given_name, patients.family_name, appointments.appt_time
FROM doctors
WHERE family_name = "Hubbard"
INNER JOIN appointments
  ON doctors.id = appointments.doctor_id
INNER JOIN patients
  ON appointments.patient_id = patients.id
  ORDER BY doctors.family_name;
