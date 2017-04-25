-- insert appointments creating connections between doctors and patients
-- add books to the books tables
INSERT INTO appointments(doctor_id, patient_id, appt_time, appt_date )
  SELECT d.id
  , p.id
  ,'10:00 AM'
  , '2016-08-12'
  FROM doctors d, patients p
  WHERE d.given_name || ' ' || d.family_name = 'Vicky Hilton'
  AND p.given_name || ' ' || p.family_name = 'Marsha Wilcox';
;
INSERT INTO appointments(doctor_id, patient_id, appt_time, appt_date )
  SELECT d.id
  , p.id
  ,'10:00 AM'
  , '2016-08-12'
  FROM doctors d, patients p
  WHERE d.given_name || ' ' || d.family_name = 'Spencer Hubbard'
  AND p.given_name || ' ' || p.family_name = 'Marsha Wilcox';
;
INSERT INTO appointments(doctor_id, patient_id, appt_time, appt_date )
SELECT d.id
, p.id
,'01:00 PM'
, '2016-08-17'
FROM doctors d, patients p
WHERE d.given_name || ' ' || d.family_name = 'Spencer Hubbard'
AND p.given_name || ' ' || p.family_name = 'Ivory Talley'
;
INSERT INTO appointments(doctor_id, patient_id, appt_time, appt_date )
SELECT d.id
, p.id
,'01:00 PM'
, '2016-08-17'
FROM doctors d, patients p
WHERE d.given_name || ' ' || d.family_name = 'Vicky Hilton'
AND p.given_name || ' ' || p.family_name = 'Blake Hodge'
