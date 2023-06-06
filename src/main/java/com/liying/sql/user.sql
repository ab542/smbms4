create database if not exists chongwuyu;
use chongwuyu;
create table if not exists pet_user(id int(10) primary key auto_increment,
usercode varchar(255) not null unique,
username  varchar(255) ,
userpassword varchar(255) not null,
phone varchar(255) not null);


