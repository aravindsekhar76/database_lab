create database SHOP;
use SHOP;
create table product(
	pdtid int primary key,
    pname varchar (25),
    price int,
    qty_instock int
);

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


    
    