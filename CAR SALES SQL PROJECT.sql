create schema cars;
use cars;
-- READ DATA --
select * from car_dekho;

-- TO GET COUNTS OF TOTAL RECORDS --

select count(*) from car_dekho;

-- HOW MANY CARS WILL BE AVAILABLE IN 2023 --

select count(*) from car_dekho where year=2023;

-- HOW MANY CARS AVAILABLE IN 2020,2021,2022 --

select count(*)
from car_dekho
where year in (2020,2021,2022)
group by year;

-- PRINT THE TOTAL OF CARS BY YEAR --

select year, count(*)
from car_dekho
group by year;

-- HOW MANY DIESEL CARS WILL THERE BE IN 2020 --

 select count(*) 
 from car_dekho
 where year=2020 and fuel="diesel";
 
 -- HOW MANY PETROL CARS WILL THERE BE IN 2020 --
 
 select count(*) 
 from car_dekho
 where year=2020 and fuel="petrol"; 
 
 -- PRINT ALL FUEL THE CARS COME BY ALL YEARS --
 
select year, count(*)
from car_dekho
where fuel="petrol"
group by year; 

select year, count(*)
from car_dekho
where fuel="diesel"
group by year; 

select year, count(*)
from car_dekho
where fuel="cng"
group by year; 

-- THERE WERE MORE THAN 100 CARS IN GIVEN YEAR, WHICH YEAR HAD MORE THAN 100 CARS? --

select year,count(*)
from car_dekho
group by year
having count(*)>100;

-- ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023 COMPLETE LIST --

select count(*)
from car_dekho
where year between 2015 and 2023;

select *
from car_dekho
where year between 2015 and 2023;

      -- END --
