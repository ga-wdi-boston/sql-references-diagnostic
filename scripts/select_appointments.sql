-- ASSUMING I HAD BUILT THE APPOINTMENTS TABLE TO ALLOW THIS
SELECT doc_surname FROM appointments
WHERE doc_surname = 'Hubbard'
ORDER BY time, patient_surname;

SELECT patient_surname FROM appointments
WHERE patient_surname = 'Wilcox'
ORDER BY doc_surname, time;
