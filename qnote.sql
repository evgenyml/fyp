create database qnote;

use qnote;

create table staff (
	staff_id int,
	first_name varchar (25),
	last_name varchar(25),
	branch_id smallint(6),
	contact_no int,
	email varchar(25),
	username varchar(25),
	password varchar(20),
	position varchar(45),
	salary decimal(7,2),
	primary key (staff_id),
	foreign key (branch_id) references branch(branch_id)
);

/* create table customer (
	customer_id int,
	first_name varchar (25),
	last_name varchar(25),
	contact_no int,
	email varchar(25),
	password varchar(20),
	state varchar(25),
	country char(3),
	postcode int,
	primary key (customer_id)
); */

create table customer (
    username varchar(20) not null,
    password varchar(20) not null,
    contact_no varchar(20) not null,
    first_name varchar(255), 
    last_name varchar(255), 
    email varchar(255),
    primary key (username)
);

create table company (
	company_id smallint(5),
	company_name varchar(45),
	industry varchar(45),
	primary key (company_id)
);


create table branch (
	branch_id smallint(6),
	company_id smallint(5),
	address varchar(100),
	postcode int(5),
	state varchar(45),
	country char(3),
	primary key (branch_id),
	foreign key (company_id) references company(company_id)
	
);

create table service (
	service_id int(5),
	description varchar(50),
	branch_id smallint(6),
	primary key (service_id),
	foreign key (branch_id) references branch(branch_id)
);

create table session (													-- upd
	session_id int(11) auto_increment,
	service_id int(5),
	date date,
	current_number int(11) default 0,
	last_number int(11) default 0,
	primary key (session_id),
	foreign key (service_id) references service(service_id)
);

insert into company values(1, 'Marchbank', 'banking');

insert into branch values(1,1,'Wisma K.S. Jalan Meranti, Taman Setapak', 53000, 'Kuala Lumpur', 'MAS');

insert into service values(1, 'open account', 1);
insert into service values(2, 'make payment', 1);
insert into service values(3, 'money transfer', 1);



