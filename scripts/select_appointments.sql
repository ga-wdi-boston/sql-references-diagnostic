-- retrieve appointment information
SELECT d.family_name AS doctor, p.family_name,
      p.given_name,
      a.start_at,
      FROM appointments AS a
      INNER JOIN doctors AS d
      ON d.id = a.doctor_id
      INNER JOIN patients AS p
      ON p.id = p.given_name, p.family_name
      WHERE p.id ='Marsha' 'Wilcox'
      ;
