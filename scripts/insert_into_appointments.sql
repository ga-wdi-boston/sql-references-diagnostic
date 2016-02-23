-- insert appointments creating connections between doctors and patients
INSERT INTO appointments (message,dates,times,doctor_id,patient_id)
  SELECT 'Marsha Wilcox seeing Dr. Vicky Hilton',
    (SELECT doctor_id FROM doctors WHERE given_name = 'Vickie' AND surname = 'Hilton'),
    (SELECT patient_id FROM patient WHERE given_name = 'Marsha' AND surname = 'Wilcox'),
  UNION
  SELECT 'Ivory Talley seeing Dr. Spencer Hubbard.',
  (SELECT doctor_id FROM doctors WHERE given_name = 'Spencer' AND surname = 'Hubbard'),
  (SELECT patient_id FROM patient WHERE given_name = 'Ivory' AND surname = 'Talley'),
;
