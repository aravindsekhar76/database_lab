create database Insurance1
use Insurance1;
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
alter table participated modify damage_amt numeric(6,2);
insert into person values(101,'Josna','Kalayil 689581','Female');
select * FROM person;
insert into vehicle values(201,'LXI','2009');
select * FROM vehicle;
insert into accident values(301,20180923);
insert into person values(102,'Aswin','palapetty 689755','male');
insert into person values(103,'Aysha','Alexai 68956','Female');
insert into person values(104,'Aravind','Alacott 68943','male');
insert into person values(105,'Jerin','JerinVilla 689581','Female');

insert into vehicle values(203,'VXI','2012');
insert into vehicle values(204,'BENZ','2022');
insert into vehicle values(205,'BMW','2013');
insert into vehicle values(202,'Ford','2011');

insert into accident values(302,20190804);
insert into accident values(303,20211213);
insert into accident values(304,20200615);
insert into accident values(305,20160328);
select * from accident;
select * FROM person;

insert into owns values(101,201);
insert into owns values(106,201);
insert into owns values(102,202);
insert into owns values(103,203);
insert into owns values(104,204);
insert into owns values(105,205);

insert into participated values(301,201,101,2000.0);
insert into participated values(302,202,102,4000.0);
insert into participated values(303,203,103,5000.0);
insert into participated values(304,204,104,7000.0);
insert into participated values(305,205,105,8000.0);

select * from person where name like "a%";
alter table participated modify damage_amt numeric(8,2);
insert into accident values(306,20220328);
insert into vehicle values(206,'Hyundai','2022');
insert into person values(106,'Jesso','JessVilla 689581','Female');
insert into participated values(306,206,105,12000.0);
select * from participated where damage_amt>10000;
select * from accident where date between 20210000 and 20230000;
select person.*,vehicle.* from person,vehicle,owns where person.driver_id=owns.driver_id and vehicle.license=owns.license;
insert into owns values(106,201);
insert into owns values(102,202);
insert into owns values(103,203);
insert into owns values(104,204);
insert into owns values(105,205);
select person.*,vehicle.* from person,vehicle,owns where person.driver_id=owns.driver_id and vehicle.license=owns.license;
