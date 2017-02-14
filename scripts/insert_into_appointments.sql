-- insert appointments creating connections between doctors and patients

-- -   Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
-- -   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
-- -   Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
-- -   Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.


INSERT INTO appointments(apt_date, apt_time, comments, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-16', 10:00, 'none', d.id, p.id
  FROM doctors d, patients p
    WHERE d.given_name = 'Vicky'
      AND d.family_name = 'Hilton'
      AND p.given_name = 'Marsha'
      AND p.family_name = 'Wilcox'
