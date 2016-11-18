-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(pasurname,given_name,gender,height,weight,born_on) VALUES
  ('Rollins', 'Henry', 'm', 69, 210, '1961-02-13'),
  ('Smith', 'Patti', 'f', 68, 110, '1947-12-30');

INSERT INTO appointments(patient_given_name, patient_surname, doctor_given_name, doctor_surname, appt_time, date_of) VALUES
  ('Marsha', 'Wilcox', 'Dr. Vicky', 'Hilton', '10:00am', '2016-08-12'),
  ('Ivory', 'Tailey', 'Dr. Spencer', 'Hubbard', '01:00pm', '2016-08-17'),
  ('Marsha', 'Wilcox', 'Dr. Spencer', 'Hubbard', '10:00am', '2016-08-12'),
  ('Blake', 'Hodge', 'Dr. Vicky', 'Hilton', '01:00pm', '2016-08-17');
