use kcs_db;

create table if not exists student(
	num int not null,
	depart varchar(20),
	name varchar(30),
	address varchar(50),
	phone varchar(20),
	primary key(num)
);

