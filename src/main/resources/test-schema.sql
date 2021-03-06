DROP TABLE IF EXISTS tasks CASCADE;
DROP TABLE IF EXISTS people CASCADE;

create table tasks (
   id integer generated by default as identity,
   task varchar (500) not null,
   due_date varchar (10) not null,
   status varchar (10) not null,
   completed_on_time varchar (3) not null,
   fk_people_id integer,
   primary key (id)
);
create table people (
   people_id integer generated by default as identity,
   name varchar (125) not null,
   title varchar (125) not null,
   primary key (people_id)
);

alter table tasks add constraint FKdtss7ab4sx4oagfqyacono43a foreign key (fk_people_id) references people on delete cascade;