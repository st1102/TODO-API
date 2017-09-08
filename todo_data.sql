create database todo_api

create table todo_lists (
  id int not null auto_increment primary key,
  title varchar(255),
  deadline datetime,
  created_at datetime default current_timestamp
);

#仮データ挿入
insert into todo_lists (title, deadline) values(
  "title1",
  "2017-09-15 00:00:00"
);
insert into todo_lists (title, deadline) values(
  "title2",
  "2017-09-15 12:00:00"
);
insert into todo_lists (title, deadline) values(
  "title1",
  "2017-09-15 23:59:59"
);
