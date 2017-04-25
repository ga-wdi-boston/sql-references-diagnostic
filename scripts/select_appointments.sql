-- retrieve appointment information

Write a query to retrieve the names and appointment times for everyone seeing
Dr. Hubbard. Then, write another to retrieve the Doctors' names and appointment
times for Marsha Wilcox. Save your code in `scripts/select_appointments.sql`.


SELECT a.time, p.family_name, p.given_name
FROM appointments a
INNER JOIN patients p
  ON ß = l.book_id
INNER JOIN doctors d
  ON l.borrower_id = br.id
WHERE d.family_name = 'Hubbard';

);
