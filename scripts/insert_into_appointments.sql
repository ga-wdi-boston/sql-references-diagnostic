-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(given_name, surname, doctor_id, datetime)
  VALUES ('Marsha', 'Wilcox', 4, '2016-08-12 10:00:00'),
         ('Ivory', 'Talley', 6 , '2016-08-17 13:00:00'),
         ('Marsha', 'Wilcox', 6,'2016-08-12 10:00:00'),
         ('Blake', 'Hodge', 4, '2016-08-17 13:00:00')
;
