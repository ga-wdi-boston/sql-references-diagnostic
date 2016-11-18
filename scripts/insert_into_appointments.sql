-- insert appointments creating connections between doctors and patients
INSERT INTO appointments(start, comments, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-08-17 13:00', 'Gross', d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Dermatology'
    AND d.given_name = 'Spencer'
    AND d.surname = 'Hubbard'
    AND d.gender = 'm'

    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '1949-08-28'
    AND p.gender = 'f'
    AND p.insurance = 'Blue Shield'
UNION
SELECT TIMESTAMP '2016-08-12 10:00', 'Flu', d.id, p.id
    FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.gender = 'f'

    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '1949-08-28'
    AND p.gender = 'f'
    AND p.insurance = 'Blue Shield'
UNION
SELECT TIMESTAMP '2016-08-12 10:00', 'Flu', d.id, p.id
    FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.gender = 'f'

    AND p.given_name = 'Marsha'
    AND p.surname = 'Wilcox'
    AND p.born_on = '1949-08-28'
    AND p.gender = 'f'
    AND p.insurance = 'Blue Shield'
UNION
SELECT TIMESTAMP '2016-08-17 13:00', 'Something', d.id, p.id
    FROM doctors d, patients p
    WHERE d.specialty = 'Internal Medicine'
    AND d.given_name = 'Vicky'
    AND d.surname = 'Hilton'
    AND d.gender = 'f'

    AND p.given_name = 'Blake'
    AND p.surname = 'Hodge'
    AND p.born_on = '1960-10-22'
    AND p.gender = 'm'
    AND p.insurance = 'Blue Shield'
