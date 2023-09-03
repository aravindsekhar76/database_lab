create database insurance;
use insurance;
create table person(driver_id int primary key ,name varchar(20),address varchar(25));
desc person;
create table car(licence int primary key ,model varchar(20), year int);
create table accident(report_no int primary key,date date, location varchar(25));
create table owns(driver_id int, licence int, primary key(driver_id,licence));
create table participated(report_no int , licence int, driver_id int, damage_amt int, primary key(report_no, licence));
insert into car values(001,"zen",2018);
desc car;
select * from car;
insert into car values(002,"alto",2016);
insert into car values(003,"baleno",2020);
select * from car;
call car_name;
call model_ye