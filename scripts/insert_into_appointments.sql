-- insert appointments creating connections between doctors and patients

INSERT INTO appointments(app_date, app_time, patient_surname, doctor_surname)
  SELECT '2016-08-12', '10am',
    (SELECT surname FROM patients WHERE surname = 'Wilcox'),
    (SELECT surname FROM doctors WHERE surname = 'Hilton')

UNION

SELECT '2016-08-17', '1pm',
  (SELECT surname FROM patients WHERE surname = 'Talley'),
  (SELECT surname FROM doctors WHERE surname = 'Hubbard')

UNION

SELECT '2016-08-12', '10am',
  (SELECT surname FROM patients WHERE surname = 'Wilcox'),
  (SELECT surname FROM doctors WHERE surname = 'Hubbard')

UNION

SELECT '2016-08-17', '1pm',
  (SELECT surname FROM patients WHERE surname = 'Hodge'),
  (SELECT surname FROM doctors WHERE surname = 'Hilton')
;
