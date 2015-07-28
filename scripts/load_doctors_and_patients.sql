-- load doctors and patients tables from csv files
\copy doctors(surname,given_name,gender,dob,specialty) FROM 'data/doctors.csv' WITH (FORMAT csv, HEADER true);
\copy patients(surname,given_name,gender,dob,insurance) FROM 'data/patients.csv' WITH (FORMAT csv, HEADER true);
