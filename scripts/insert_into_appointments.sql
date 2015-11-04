-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(patient_name, doctor_name, appointment_time, appointment_date, appointment_comment,doctor_id, patient_id)
  VALUES('Marsha Wilcox', 'Dr. Vicky Hilton', '10am','08-12-2016'),
        ('Ivory Talley', 'Dr. Spencer Hubbard', '1pm','08-17-2016'),
        ('Marsha Wilcox', 'Dr. Spencer Hubbard', '10am', '08-12-2016'),
        ('Blake Hodge', 'Dr. Vicky Hilton', '1pm', '08-17-2016')
;
