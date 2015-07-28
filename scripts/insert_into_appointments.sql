-- -- insert appointments creating connections between doctors and patients
--                     date TEXT,
--                     time TEXT,
--                     comment TEXT,
--                     doctor_id INTEGER REFERENCES doctors(id),
--                     patient_id INTEGER REFERENCES patients(id)

-- + Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2015.




-- INSERT INTO appointments(date,time,comment,doctor_id,patient_id)
--   SELECT '20150812', '1000', 'Crentist',
--     (SELECT id FROM doctors WHERE surname = 'Hilton'),
--     (SELECT id FROM patients WHERE surname = 'Wilcox');

--   + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2015.
-- INSERT INTO appointments(date,time,comment,doctor_id,patient_id)
--   SELECT '20150817', '1300', 'second',
--     (SELECT id FROM doctors WHERE surname = 'Hubbard'),
--     (SELECT id FROM patients WHERE surname = 'Talley');

--   + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2015.
-- INSERT INTO appointments(date,time,comment,doctor_id,patient_id)
--   SELECT '20150812', '1000', 'third',
--     (SELECT id FROM doctors WHERE surname = 'Hubbard'),
--     (SELECT id FROM patients WHERE surname = 'Wilcox');

--   + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2015.
INSERT INTO appointments(date,time,comment,doctor_id,patient_id)
  SELECT '20150817', '1300', 'fourth',
    (SELECT id FROM doctors WHERE surname = 'Hilton'),
    (SELECT id FROM patients WHERE surname = 'Hodge');
