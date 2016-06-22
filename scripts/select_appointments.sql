-- retrieve appointment information
SELECT doctor.surname AS doctor_surname, patient.given_name AS patient_given_name, patient.surname AS patient_surname,
patient.appt_date AS appt_date, patient.appt_time AS patient_appt_time
FROM appointments AS a
INNER JOIN doctors AS doctor
ON doctor.id = a.doctor
INNER JOIN patients AS patient
ON patient.id = a.patient
WHERE a.doctor = 6;

SELECT doctor.given_name AS doctor_given_name, doctor.surname AS doctor_surname, patient.given_name AS patient_given_name,
patient.surname AS patient_surname, patient.appt_date AS appt_date, patient.appt_time AS patient_appt_time
FROM appointments AS a
INNER JOIN doctors AS doctor
ON doctor.id = a.doctor
INNER JOIN patients AS patient
ON patient.id = a.patient
WHERE a.patient = 8;
