\copy doctors(surname,given_name,gender,dob,specialty) FROM 'data/doctors.csv' WITH(FORMAT csv, HEADER true);
