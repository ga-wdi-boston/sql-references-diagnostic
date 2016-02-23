-- retrieve appointment information
SELECT p.surname, p.given_name, a.date_of, a.time_of
  FROM patients p
INNER JOIN appointments a ON p_patients.id = p.id
INNER JOIN doctors d ON d_doctors.id = d.id
    WHERE d.surname = 'Hubbard'
UNION
SELECT d.surname, d.given_name, a.date_of, a.time_of
  FROM doctors p
INNER JOIN appointments a ON d_doctors.id = d.id
INNER JOIN doctors d ON p_patients.id = p.id
    WHERE p.surname = 'Wilcox'
