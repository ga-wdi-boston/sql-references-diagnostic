-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(date, time, comment, doctor_id, patient_id)
    SELECT '20150812', '10am', 'Marsha Wilcox seeing Dr. Vicky Hilton',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
    UNION
    SELECT '20150817', '1pm', 'Ivory Talley seeing Dr. Spencer Hubbard',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Talley' AND given_name = 'Ivory')
    UNION
    SELECT '20150812', '10am', 'Marsha Wilcox seeing Dr. Spencer Hubbard',
    (SELECT id FROM doctors WHERE surname = 'Hubbard' AND given_name = 'Spencer'),
    (SELECT id FROM patients WHERE surname = 'Wilcox' AND given_name = 'Marsha')
    UNION
    SELECT '20150817', '1pm', 'Ivory Talley seeing Dr. Spencer Hubbard',
    (SELECT id FROM doctors WHERE surname = 'Hilton' AND given_name = 'Vicky'),
    (SELECT id FROM patients WHERE surname = 'Hodge' AND given_name = 'Blake');
