create database if not exists chongwuyu;
use chongwuyu;
create table if not exists pet_show1(id int(10) primary key auto_increment,
src varchar(255) ,
description varchar(255) ,
good int(255) ,
discussion int(255),
author varchar(255));
create table if not exists pet_show2(id int(10) primary key auto_increment,
src varchar(255) ,
description varchar(255) ,
good int(255) ,
discussion int(255),
author varchar(255));
create table if not exists pet_show3(id int(10) primary key auto_increment,
src varchar(255) ,
description varchar(255) ,
good int(255) ,
discussion int(255),
author varchar(255));
create table if not exists pet_show4(id int(10) primary key auto_increment,
src varchar(255) ,
description varchar(255) ,
good int(255) ,
discussion int(255),
author varchar(255));
create table if not exists pet_show5(id int(10) primary key auto_increment,
src varchar(255) ,
description varchar(255) ,
good int(255) ,
discussion int(255),
author varchar(255));
create table if not exists pet_user(id int(10) primary key auto_increment,
usercode varchar(255) not null unique,
username  varchar(255) ,
userpassword varchar(255) not null,
phone varchar(255) not null);


