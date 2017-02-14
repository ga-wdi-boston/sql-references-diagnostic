-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (date, time, comments, patient_id, doctor_id) VALUES
('2016-08-12','10:00', 'COMMENTS' , (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
 (SELECT id from doctors WHERE given_name = 'Vicky' AND surname = 'Hilton')),
 ('2016-08-17','13:00', 'COMMENTS' , (SELECT id FROM patients WHERE given_name = 'Ivory' AND surname = 'Talley'),
  (SELECT id from doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')),
  ('2016-08-12','10:00', 'COMMENTS' , (SELECT id FROM patients WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
   (SELECT id from doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard')),
   ('2016-08-17','13:00', 'COMMENTS' , (SELECT id FROM patients WHERE given_name = 'Blake' AND surname = 'Hodge'),
    (SELECT id from doctors WHERE given_name = 'Vicky' AND surname = 'Hilton'));

-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
