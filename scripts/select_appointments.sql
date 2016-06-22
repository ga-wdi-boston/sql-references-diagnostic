-- retrieve appointment information
SELECT * FROM appointments WHERE doctor = 'Dr. Hubbard';
SELECT * FROM appointments WHERE patient = 'Marsha Wilcox' GROUP BY doctor AND time_of;
