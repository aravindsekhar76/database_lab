create database 
use Insurance;
create table person (driver_id int, name varchar(20), address varchar(20), primary key(driver_id)); 
create table car (license int, model varchar(20), year int, primary key(license));
create table accident(report_no int, date date, location varchar(20), primary key(report_no));
create table owns(driver_id int, license int, primary key(driver_id,license));
create table participated(report_no int , license int, driver_id int, damage_amt int, primary key(report_no, license));
alter table owns add constraint foreign key owns(driver_id) references person(driver_id),add constraint foreign key owns(license) references car(license); 
alter table participated add constraint foreign key participated(report_no) references accident(report_no), add constraint foreign key participated(license) references car(license);
alter table car rename vehicle;
alter table accident change column report_no report_number int;
alter table person add gender varchar(20);
alter table accident drop location;
alter table participated modify damage_amt numeric(8,2);


insert into person values (101,'Aravind','Alakottu','Male');
insert into person values (102,'jerin','jerinvilla','Male');
insert into person values (103,'josna','kalayil','female');
insert into person values (104,'aisha','am house','female');
insert into person values (105,'aish','sreeprasadam','female');


insert into vehicle values (54321,'zen',2009);
insert into vehicle values (543212,'aleno',2015);
insert into vehicle values (543213,'o',2017);
insert into vehicle values (543214,'ciaz',2022);
insert into vehicle values (543215,'wagon',2012);


insert into accident values (112343,20231222);
insert into accident values (112344,20171214);
insert into accident values (112345,20181222);
insert into accident values (112346,20140607);
insert into accident values (112347,20220509);


insert into owns values(101,54321);
insert into owns values(102,543212);
insert into owns values(103,543213);
insert into owns values(104,543214);
insert into owns values(105,543215);


insert into participated values (112343,54321,101,456732.34);
insert into participated values (112344,543212,102,11234.65);
insert into participated values (112345,543213,103,4523.95);
insert into participated values(112346,543214,104,34567.76);
insert into participated values(112347,543215,105,47883.75);





-- select * from participated;

