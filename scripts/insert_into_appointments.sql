-- insert appointments creating connections between doctors and patients

INSERT INTO patients(appt_date,appt_time, patients_id, doctors_id)
  SELECT '2016-08-12','10:00:00',
  (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
  (SELECT id FROM doctors WHERE surname = 'Hilton'AND given_name = 'Vickie')

  UNION

  SELECT '2016-08-17','13:00:00',
  (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory'),
  (SELECT id FROM doctors WHERE surname = 'Hubbard'AND given_name = 'Spencer')

  UNION

  SELECT '2016-08-12','10:00:00',
  (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
  (SELECT id FROM doctors WHERE surname = 'Hubbard'AND given_name = 'Spencer')
  UNION

  SELECT '2016-08-17','13:00:00',
  (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake'),
  (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vickie')
;


--   Marsha Wilcox seeing Dr. Vickie Hilton at 10am on August 12, 2016.
--   Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
--  Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
--   Blake Hodge seeing Dr. Vickie Hilton at 1pm on August 17, 2016.
