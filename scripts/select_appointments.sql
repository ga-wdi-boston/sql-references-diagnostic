-- retrieve appointment information
SELECT patient_given_name, patient_surname, appt_date, appt_time
  FROM appointments
  WHERE doctor = 'Dr. Spencer Hubbard'
  GROUP BY patient_given_name, patient_surname, appt_date, appt_time

SELECT doctor, appt_date, appt_time
  FROM appointments
  WHERE patient_surname = 'Wilcox' AND patient_given_name = 'Marsha'
  GROUP BY doctor, appt_date, appt_time
;
