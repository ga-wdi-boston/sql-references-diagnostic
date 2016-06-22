-- insert appointments creating connections between doctors and patients
COPY doctors FROM `data/doctors.csv` HEADERS true;
COPY patients FROM `data/doctors.csv` HEADERS true;
