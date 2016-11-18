-- insert appointments creating connections between doctors and patients


-- I'm confused as to how I'm supposed to figure out the ID of the docotrs and
-- patients without explicitly looking at the tables. If these tables were long
-- in a real life situation, this would be extremely tedious.

INSERT INTO appointments(app_date, app_time, doctor_id, patient_id, comment) VALUES
  ('', ?, ?, 'comment'),
  ('', ?, ?, 'comment'),
  ('', ?, ?, 'comment'),
  ('', ?, ?, 'comment');
