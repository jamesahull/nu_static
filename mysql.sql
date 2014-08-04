create table users (
id serial primary key,
loginid varchar(16) not null,
pwd varchar(64),
logintime datetime,
active char(1) default 'Y',
roles varchar(32) default 'user'
);

insert into users (loginid, pwd) VALUES ('james','feck', 'user,admin');


	