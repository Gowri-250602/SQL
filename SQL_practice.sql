select * from patients;
SELECT first_name,last_name,gender FROM patients where gender="M";
select first_name,last_name from patients where allergies is Null;
SELECT first_name from patients where first_name like 'C%';
SELECT first_name, last_name from patients where weight between 100 and 120;
UPDATE PATIENTS SET allergies="NKA" WHERE allergies IS NULL;
SELECT concat(first_name," ",last_name)AS full_name from patients;
SELECT first_name,last_name,allergies FROM patients
where allergies is not null and city="Hamilton";
SELECT * FROM patients where patient_id in (1,45,534,879,1000);
select count(*) from patients where birth_date like '2010%';
select* from admissions where admission_date =discharge_date;
select patient_id,count(*)as total_admissions from admissions where patient_id=579;
select distinct city as unique_cities from patients where province_id="NS";
select first_name,last_name,birth_date from patients where height>160 and weight >70;
select count(*) from admissions;
select first_name,last_name,max(height) from patients ;
select distinct year(birth_date)as birth_year from patients order by birth_year;
select first_name,last_name,allergies from patients where allergies in ("Penicillin","Morphine")
order by allergies,first_name,last_name;
select patient_id,attending_doctor_id,diagnosis from admissions 
where ((patient_id%2!=0)and attending_doctor_id in (1,5,19))or
((attending_doctor_id like "%2%")and (len(patient_id))=3);
select patient_id,first_name from patients where (first_name like 'S%S' and len(first_name)>=6);
select first_name,last_name,birth_date from patients
where year(birth_date)between 1970 and 1979 order by birth_date;
select (max(weight)-min(weight))as weight_delta from patients where last_name="Maroni";
select * from admissions where patient_id="542"
group by patient_id
having admission_date=max(admission_date);




