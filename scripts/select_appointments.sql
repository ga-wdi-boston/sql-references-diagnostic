-- retrieve appointment information
SELECT p.given_name, p.surname,
  from patients p
  INNER JOIN appointments a
  on p.id = 6
  ;
