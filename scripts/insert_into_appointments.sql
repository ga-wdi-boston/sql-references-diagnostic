-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(date, time, comment_column)
  SELECT 20150801210,
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha'),
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky')
  UNION
  SELECT 2,
    (SELECT id FROM people WHERE surname = 'Mcintosh' AND given_name = 'Marla'),
    (SELECT id FROM skills WHERE language = 'Ruby' AND framework = 'Rails')
  UNION
  SELECT 3,
    (SELECT id FROM people WHERE surname = 'Mcintosh' AND given_name = 'Marla'),
    (SELECT id FROM skills WHERE language = 'Javascript' AND framework = 'jQuery')


;
