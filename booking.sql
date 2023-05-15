-- Important: 
-- Important: Only use on personal server do not run on wwwlab 
-- Important: 

-- create database BookingSystem;
-- use BookingSystem;

		company			varchar(64),
		location		varchar(64),
		category		varchar(64),
		size				integer,
		cost				integer,
		auxdata			varchar(2048),
		primary key(ID)
);

create table resourceavailability(
		resourceID	varchar(32),
		date				datetime,		
		dateto			datetime,		
		primary key	(resourceID,date)
);

create table booking(
		resourceID	varchar(32),
		date				datetime,
		dateto 		  datetime,
		position		integer,
		cost				integer,
		status			integer,
		rebate			integer,
		customerID 	varchar(32),
		auxdata			varchar(2048),
		primary key(resourceID,date,position)
);
