create database SHOP;
use SHOP;
create table product(
	pdtid int primary key,
    pname varchar (25),
    price int,
    qty_instock int
);

alter table product add column haha varchar(20);

create table sale(
	sale_id int primary key,
	delivery_address varchar(25)
);
    
create table saleitem( 
	sale_id int,
    pdtid int,
	qty int ,
    primary key(sale_id, pdtid),
	foreign key (sale_id) references sale(sale_id),
	foreign key (pdtid) references product(pdtid)
);
select * from product,sale;
-- drop trigger Kuttappan;
-- DELIMITER //
-- CREATE TRIGGER Kuttappan AFTER INSERT ON saleitem FOR EACH ROW
-- BEGIN
-- 	update product set product.haha="Umbi" where pdtid=NEW.pdtid;
-- END //
-- DELIMITER ;

insert into product values(10, "pears",35,20,"");
insert into product values(11, "lifebouy",25,10,"");
insert into product values(13, "parleg",10,50,"");
insert into product values(14, "hideandseek",30,15,"");
insert into product values(15, "milma",28,5,"");
-- insert into sale values (569,"Gotham");
select * from product;
-- insert into saleitem values (569,13,54);
    
    