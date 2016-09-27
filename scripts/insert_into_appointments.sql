-- insert appointments creating connections between doctors and patients

-- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.

INSERT INTO appointments(patient.given_name,patient.surname,doctor.given_name,doctor.surname,appointment.time,appointment.date) VALUES
  ('Rollins', 'Henry', 'm', 69, 210, '1961-02-13'),
  ('Smith', 'Patti', 'f', 68, 110, '1947-12-30');
  ('Marsha', 'Wilcox', 'Vicky', 'Hilton', '10:00', '2016-8-12'),
  ('Ivory', 'Talley', 'Spencer', 'Hubbard', '01:00', '2016-8-17'),
  ('Marsha', 'Wilcox', 'Spencer', 'Hubbard', '10:00', '2016-8-12'),
  ('Blake', 'Hodge', 'Vicky', 'Hilton', '01:00', '2016-8-17');
