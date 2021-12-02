--SHOW database--
show databases;

--CREATE database--
create database bookstore;

--USE database--
use bookstore;

--SHOW Table--
show tables;

--Create Table--
create table books (
    id int auto_increment primary key,
    author1 varchar(100) not null,
    author2 varchar(100),
    author3 varchar(100),
    title varchar(100),
    description varchar(50),
    place_sell varchar(3),
    stock int default 0,
    creation_date datetime default current_timestamp on update current_timestamp
);

--Update--
alter table books
add price int default(0),
    status enum('available', 'out of stock', 'limited');

alter table books
    drop column place_sell;

--Insert--
INSERT INTO books (author1, author2, author3, title, description, stock, price, status)
VALUES ('Jamal', 'haikal', 'tio', 'Unit 1', 'Member unit 1', 5, 100000, 'limited'), 
       ('Dimas', 'Doni', 'Mahen', 'Unit 2', 'Member unit 2', 10, 120000, 'limited'),
       ('Yudha', 'Juan', 'Tian', 'Unit 2', 'Member unit 3', 90, 150000, 'limited');

--Select books--
select * from books;

--Select Alias--
select id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books;

-- Select with Where id -- 
select * from books where id = 1;

-- Select AND --
select * from books where id = 1 or id = 2;

-- Select OR --
select * from books where id = 1 or id = 2;

-- Select NOT --
select * from books where not id = 1;

-- Select ASC --
select * from books order by id asc;

-- Select LIMIT 2 --
select * from books limit 2;

-- Select Update --
update books set author1 = 'jefrey' price = 170000 where id = 1;

-- Delete Row -- 
Delete from books where id = 3;