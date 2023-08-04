create database triggertest2
use triggertest2;

create table Product (
    PID int,
    PName varchar(10),
    Price numeric(6,2),
    QtyInStock int,
    primary key (PID)
);

create table Sales (
    SaleID int,
    DeliveryAddress varchar(50),
    Primary Key (SaleID)
);

create table SaleItem (
    PID int,
    SaleID int,
    Qty int,
    Primary Key (PID, SaleID),
    foreign key (PID) references Product (PID),
    foreign key (SaleID) references Sales (SaleID)
);

DELIMITER //
create trigger UpdateAvailableQty AFTER INSERT ON SaleItem FOR EACH ROW 
BEGIN
    UPDATE Product SET QtyInStock = QtyInStock - NEW.Qty 
    WHERE PID = NEW.PID;
END;
//
DELIMITER ;

insert into Product values (1, "Biscuit", 20.0, 10), (2, "Book", 50.0, 50), (3, "Pen", 10.0, 100);
select * from Product;

insert into Sales values (100, "Kollam"), (101, "Tvm"), (102, "Ekm");
insert into SaleItem values (1, 101, 3);
insert into SaleItem values (2, 101, 3);
select * from Product;
