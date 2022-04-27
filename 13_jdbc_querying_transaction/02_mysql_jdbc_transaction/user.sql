CREATE DATABASE user_management;
USE user_management;

create table user (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into user(name, email, country) values('Nguyen Van A','nguyenvana@gmail.com','Viet Nam');
insert into user(name, email, country) values('Nguyen Van B','nguyenvanb@gmail.com','Viet Nam');