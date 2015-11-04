-- retrieve appointment information
SELECT p.given_name, p.surname, a.appt_time
FROM patients p
INNER JOIN doctors d
  ON p.patient_id = d.id
INNER JOIN appointments a
  ON d.doctor_id = a.id
WHERE doctor_id = 6
;

SELECT d.given_name, d.surname, a.appt_time
FROM patients p
INNER JOIN doctors d
  ON patient_id = d.id
INNER JOIN appointments a
  ON doctor_id = a.id
WHERE p.surname = 'Wilcox'
;

-- Not too sure on these.  Gets a little hairy.  I know I need to join all the tables to pull the requisite data from but the logic of who to INNER JOIN ON to is fuzzy.
