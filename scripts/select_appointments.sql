-- retrieve appointment information
SELECT a.time, p.surname, p.given_name
  FROM patients p
  inner join appointments a
   on a.doctor_id = 4
   ;
