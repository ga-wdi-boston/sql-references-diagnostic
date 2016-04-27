-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (appt_date, appt_time, comment, doctor_id, patient_id)
  VALUES ('2016-08-12', '10:00', 'bad rash', 4, 8),
         ('2016-08-17', '13:00', 'eye ache', 6, 5),
         ('2016-08-12', '10:00', 'hair turning purple', 6, 8),
         ('2016-08-17', '13:00', 'wow I did not know you could get a parasite there', 4, 7)
;
