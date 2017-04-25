-- retrieve appointment information
SELECT COUNT(*), (p_given_name, p_family_name, date, time),
FROM appointments,
WHERE d_given_name = 'Hubbard';

SELECT COUNT(*), (d_given_name, d_family_name, date, time),
FROM appointments,
WHERE p_given_name = 'Wilcox';
