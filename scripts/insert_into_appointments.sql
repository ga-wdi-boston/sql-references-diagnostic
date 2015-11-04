-- insert appointments creating connections between doctors and patients
insert into appointments(date, time, comment, patient_id, doctor_id)
  select 'August 12, 2016', '10am','',
    (select id  --To show I can do it...
      from patients
      where surname = 'Wilcox'
      and given_name = 'Marsha'),
    (select id
      from doctors
      where surname = 'Hilton'
      and given_name = 'Vickie')
union
 select 'August 17, 2016', '1pm','',5,6
union
 select 'August 12, 2016', '10am','',8,6
union
 select 'August 17, 2016', '1pm','',7,4
;



  -- + Marsha Wilcox seeing Dr. Vicky Hilton at 10am on August 12, 2016.
  -- + Ivory Talley seeing Dr. Spencer Hubbard at 1pm on August 17, 2016.
  -- + Marsha Wilcox seeing Dr. Spencer Hubbard at 10am on August 12, 2016.
  -- + Blake Hodge seeing Dr. Vicky Hilton at 1pm on August 17, 2016.
