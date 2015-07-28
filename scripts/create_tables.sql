-- create doctors, patients, and appointments tables
create table doctors(id serial primary key, surname text,given_name text,gender text,dob text,specialty text);
create table patients(id serial primary key, surname text,given_name text,gender text,dob text,insurance text);
create table appointments(date text, time text, comment text, doctor_id integer references doctors(id), patient_id integer references patients(id));
