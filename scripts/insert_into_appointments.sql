-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date_of, time_of, doctor_id, patient_id)
SELECT DATE 2016-8-12, TIME 10:00, id FROM doctors WHERE family_name = "Hilton",
id FROM patients WHERE family_name = 'Wilcox' && given_name = 'Marsha'
UNION
SELECT DATE 2016-8-17, TIME 13:00, id FROM doctors WHERE family_name = "Hubbard",
id FROM patients WHERE family_name = 'Talley' && given_name = 'Ivory'
UNION
SELECT DATE 2016-8-12, TIME 10:00, id FROM doctors WHERE family_name = "Hubbard",
id FROM patients WHERE family_name = 'Wilcox' && given_name = 'Marsha'
UNION
SELECT DATE 2016-8-17, TIME 13:00, id FROM doctors WHERE family_name = "Hilton",
id FROM patients WHERE family_name = 'Hodge' && given_name = 'Blake'
