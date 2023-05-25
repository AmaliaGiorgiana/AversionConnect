CREATE DATABASE AversionConnect

CREATE TABLE users
(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	username varchar(50),
	password varchar(100),
	name varchar(50),
	age int,
	phone varchar(20),
	city varchar(20)

);
create UNIQUE index idx_users_username on users(username);

ALTER TABLE users
ALTER COLUMN age char(3);

DELETE FROM users;
delete from usersItems
DBCC CHECKIDENT('usersItems', RESEED, 0)
DBCC CHECKIDENT('users', RESEED, 0)

CREATE TABLE items
(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name varchar(50),
);

CREATE TABLE usersItems
(
	userId int FOREIGN KEY REFERENCES users(id),
	itemName varchar(20)
)
drop table userItems
delete from usersItems


insert into items(name)
values('public speaking'),('heavy traffic'),('war zone'),('amusement park'),('country music'),('heavy metal music'), ('opera music')


insert into items(name)
values('lies'), ('vegetarian food'), ('arrogance'),( 'violence'), ('museum visits'),( 'irresponsibility')

insert into items(name)
values('toxic relationships'), ('negativity')

SELECT DISTINCT itemName,userId FROM usersItems WHERE userId=5
SELECT DISTINCT itemName,userId FROM usersItems WHERE userId=7
SELECT DISTINCT itemName,userId FROM usersItems WHERE userId=2

select distinct userId from usersItems order by userId asc



select*
from users u 
join usersItems ui on ui.userId = u.id
where u.id=5 and ui.itemName in(select myi.itemName from usersItems myi where myi.userId =7);
