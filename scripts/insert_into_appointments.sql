-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
  -- Insert 4 appointments

  -- Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
  VALUES ('2016-08-12', '10:00 am', '', 5, 9),

-- Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
          ('2016-08-17', '1:00 pm', '', 7, 6),

-- Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
          ('2016-08-12', '10:00 am', '', 7, 6),

-- Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
          ('2016-08-17', '1:00 pm', '', 5, 8),
;
