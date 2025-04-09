
use forms;
select * from bus_booking;
#Extract all records where the bus company is 'Rhyloo
select * from bus_booking where bus_company="rhyloo";
#Retrieve all tickets booked by a passenger named 'Jocelin Oxford'
select * from bus_booking where passenger_name="jocelin oxford";
#Extract tickets where the departure_date is '2022-12-07'
select * from bus_booking where departure_date="2022-12-07";
#Find all tickets with a departure_time before '8:00 AM'.
select * from bus_booking where departure_time="8:00 am";
#List all passengers traveling on the 'X to Y' route.
select* from bus_booking where bus_route="x to y";
#Get all tickets where the arrival_date is later than '2022-11-01'.
select * from bus_booking where arrival_date>"2022-11-01";
#Retrieve tickets where the departure_date is between '2022-01-01' and '2022-06-30'.
select * from bus_booking where departure_date>='2022-01-01' and departure_date<= '2022-06-30';
#xtract tickets where the journey happens in 'October 2022'.
select * from bus_booking where departure_date>="2022-10-01" and departure_date<="2022-10-30";
#Get all tickets with a departure_time in the afternoon (12 PM - 6 PM).
select* from bus_booking where departure_time>='12 pm'and departure_time<='6 pm';
#Extract tickets where the ticket_price is in 'Yuan Renminbi'.
select* from bus_booking where ticket_price="Yuan Renminbi";
#Retrieve tickets with a ticket_price in 'Rupiah'.
select* from bus_booking where ticket_price="Rupiah";



#Retrieve tickets where the seat_number is less than 10.
select * from bus_booking where seat_number<10;
#Extract all tickets where the seat_number is greater than 40.
select * from bus_booking where seat_number>40;
#Get a count of unique passengers in the dataset.
select distinct count(*) from bus_booking;
#Retrieve records for passengers with the last name 'Smith' (if present).
select * from bus_booking where passenger_name like '% smith';
#Find all passengers who have a first name starting with 'J'.
select * from bus_booking where passenger_name like 'J%';
#List all bus routes operated by 'Voonyx'
select bus_route from bus_booking where bus_company="voonyx";
#Retrieve all records where the bus_route contains 'A to B'.
select * from bus_booking where bus_route="a to b";

#Extract records where the departure_date is the same as the arrival_date (if possible).
select * from bus_booking where departure_date=arrival_date;
#Find the passenger who booked the last ticket (highest ticket_id).
select max(ticket_id) from bus_booking;



