create database smartmeter
use smartmeter

create table Customers (CustomerId int primary key, Name varchar(50),
Address varchar(50), Region varchar(20));

create table SmartMeterReadings (MeterId int primary key, CustomerId int , Location varchar(50), InstalledDate date, ReadingDateTime datetime, EnergyConsumed float, foreign key(CustomerId) references Customers(CustomerId));
drop table SmartMeterReadings
create table SmartMeterReadings (MeterId int, CustomerId int , Location varchar(50), InstalledDate date, ReadingDateTime datetime, EnergyConsumed float, foreign key(CustomerId) references Customers(CustomerId));

insert into Customers values
(1, 'Superman', 'Capetown', 'East'), 
(2, 'Batman' , 'Gotham', 'West'),
(3, 'Alexandar', 'Karnataka', 'South'),
(4, 'Chahal' , 'Mumbai', 'East'),
(5, 'Johnwick', 'Delhi', 'North');

select* from Customers

insert into SmartMeterReadings values
(101, 2, 'Balcony', '2024-01-01', '2025-02-15 12:30:00', 230),
(102, 1, 'Rooftop', '2024-08-24', '2024-11-15 1:30:00', 450),
(104, 5, 'Basement', '2024-05-11', '2024-09-15 18:20:00', 600),
(103, 4, 'Rooftop', '2025-01-01', '2025-02-15 21:20:00', 700),
(105, 3, 'Basement', '2024-09-20', '2024-12-15 19:10:00', 800);

insert into SmartMeterReadings values
(101, 2, 'Balcony', '2024-01-01', '2025-04-15 12:30:00', 100),
(102, 1, 'Rooftop', '2024-08-24', '2024-12-15 13:30:00', 150),
(104, 5, 'Basement', '2024-05-11', '2024-10-15 18:20:00', 25),
(103, 4, 'Rooftop', '2025-01-01', '2025-03-01 21:20:00', 50),
(105, 3, 'Basement', '2024-09-20', '2024-10-15 19:10:00', 40),
(103, 4, 'Rooftop', '2025-01-01', '2025-07-15 21:20:00', 30),
(105, 3, 'Basement', '2024-09-20', '2024-10-15 19:10:00', 20);

update SmartMeterReadings set EnergyConsumed=25 where MeterId=103;

select* from SmartMeterReadings


--Task1

select* from SmartMeterReadings where EnergyConsumed between 10 and 50;

select* from SmartMeterReadings where ReadingDateTime between '2024-01-01' and '2024-12-31';

select* from SmartMeterReadings where InstalledDate<='2024-06-30'

--Task2

select AVG(EnergyConsumed) as AvgEnergyConsumed from SmartMeterReadings  group by MeterId;

select MAX(EnergyConsumed) as MaxEnergyConsumed from SmartMeterReadings  group by MeterId;

select* from SmartMeterReadings where ReadingDateTime>= '2025-01-01';

