create table if not exists teams(
	num int not null,
	depart varchar(20),
	name varchar(30),
	address varchar(50),
	phone varchar(20),
	primary key(num)
);

insert into teams values(2018100001,'모바일과','홍길순','서울시','010-9002-1234');
insert into teams values(2018100002,'모바일과','홍길동','경기도','010-2009-4321');
insert into teams values(2018100003,'영어과','수여인','인천시','010-3918-0007');
insert into teams values(2018100004,'영어과','김다운','서울시','010-3002-0101');