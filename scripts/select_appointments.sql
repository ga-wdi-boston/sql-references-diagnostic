-- retrieve appointment information
SELECT patients.family_name,
patients.given_name,
appointments.appointment_date,
appointments.appointment_time
FROM patients
  INNER JOIN appointments
    ON patients.id = appointments.patient_id
  INNER JOIN doctors
    ON doctors.id = appointments.doctor_id
    WHERE doctor_id = 6;

SELECT doctors.family_name, doctors.given_name
  FROM doctors
    INNER JOIN appointments
      ON doctors.id = appointments.doctor_id
    INNER JOIN patients
      ON patients.id = appointments.patient_id
      WHERE patient_id = 8;
