create database njalsson;

use njalsson;
#nota camelCase thvi ad _ er erfidara ad na
create table membership
	(
		memNum int not null,
		memFname varchar(255),
		memLname varchar(255),
		memStreet varchar(255),
		memCity varchar(255),
		memState varchar(255),
		memZip int,
		memBalance int,
		primary key ( memNum )

	);

create table rental
	(
		rentNum int not null ,
		rentDate varchar(255),
		memNum int,
		primary key ( rentNum ),
		foreign key ( memNum ) references membership( memNum )

	);

create table price
	(
		priceCode int not null,
		priceDescription varchar(255),
		priceRentFee int,
		priceDailyLateFee int,
		primary key ( priceCode )
	);
create table movie
	(
		movieNum int not null ,
		movieTitle varchar(255),
		movieYear int,
		movieCost float,
		movieGenre varchar(255),
		priceCode int,
		primary key ( movieNum ),
		foreign key ( priceCode ) references price( priceCode )
	);
create table video
	(
		vidNum int not null ,
		vidInDate varchar(255),
		movieNum int,
		primary key	( vidNum ),
		foreign key ( movieNum ) references movie( movieNum )

	);

create table detailRental
	(
		rentNum int,
		vidNum int,
		detailFee int,
		detailDueDate varchar(255),
		detailReturnDate varchar(255),
		detailDailyLateFee int,
		foreign key ( rentNum ) references rental( rentNum ),
		foreign key ( vidNum )  references video( vidNum)

	);


#####
# inserting data
#####


insert into membership
values
	(102,"Tami","Dawson","2632 Takli Circle","Norene","TN",37136,11),
	(103,"Curt","Knight","4025 Cornell Court","Flatgap","KY",41219,6),
	(104,"Jamal","Melendez","788 East 145th Avenue","Quebeck","TN",38579,0),
	(105,"Iva","Mcclain","6045 Musket Ball Circle","Summit","KY",42783,15),
	(106,"Miranda","Parks","4469 Mabwell Place","Germantown","TN",38183,0),
	(107,"Rosario","Elliot","7578 Danner Avenue","Columbia","TN",38402,5),
	(108,"Mattie","Guy","4390 Evergreen Street","Lily","KY",40740,0),
	(109,"Clint","Ochoa","1711 Elm Street","Greeneville","TN",37745,10),
	(110,"Lewis","Rosales","4524 Southwind Circle","Counce","TN",38326,0),
	(111,"Stacy","Mann","2789 East Cook Avenue","Murfreesboro","TN",37132,8),
	(112,"Luis","Trujillo","7267 Melvin Avenue","Heiskell","TN",37754,3),
	(113,"Minnie","Gonzales","6430 Vasili Drive","Williston","TN",38076,0);



insert into price
values
	(1,"Standard",2,1),
	(2,"New Release",3.5,3),
	(3,"Discount",1.5,1),
	(4,"Weekly Special",1,0.5);






insert into rental
values
	(1001, '01-mar-09', 103),
	(1002, '01-mar-09', 105),
	(1003, '02-mar-09', 102),
	(1004, '02-mar-09', 110),
	(1005, '02-mar-09', 111),
	(1006, '02-mar-09', 107),
	(1007, '02-mar-09', 104),
	(1008, '03-mar-09', 105),
	(1009, '03-mar-09', 111);





insert into detailRental
values
	(1001, 34342, 2, '04-mar-09', '02-mar-09', 1),
	(1001, 61353, 2, '04-mar-09', '03-mar-09', 1),
	(1002, 59237, 3.5, '04-mar-09', '04-mar-09', 3),
	(1003, 54325, 3.5, '04-mar-09', '09-mar-09', 3),
	(1003, 61369, 2, '06-mar-09', '09-mar-09', 1),
	(1003, 61388, 0, '06-mar-09', '09-mar-09', 1),
	(1004, 44392, 3.5, '05-mar-09', '07-mar-09', 3),
	(1004, 34367, 3.5, '05-mar-09', '07-mar-09', 3),
	(1004, 34341, 2, '07-mar-09', '05-mar-09', 1),
	(1005, 34342, 2, '07-mar-09', '05-mar-09', 1),
	(1005, 44397, 3.5, '05-mar-09', '05-mar-09', 3),
	(1006, 34366, 3.5, '05-mar-09', '04-mar-09', 3),
	(1006, 61367, 2, '07-mar-09', '', 1),
	(1007, 34368, 3.5, '05-mar-09', '', 3),
	(1008, 54324, 3.5, '05-mar-09', '05-mar-09', 3),
	(1009, 54324, 3.5, '05-mar-09', '', 3),
	(1001, 34366, 3.5, '04-mar-09', '', 3);

insert into movie
values
	(1234,"The Cesar Family Christmas",2007,39.95,"Family",2),
	(1235,"The Smokey Mountain Wildlife",2004,59.95,"Action",1),
	(1236,"Richard Goodhope",2008,59.95,"Drama",2),
	(1237,"Beatnik Fever",2007,29.95,"Comedy",2),
	(1238,"Constant Companion",2008,89.95,"Drama",2),
	(1239,"Where Hope Dies",1998,25.49,"Drama",3),
	(1245,"Time To Burn",2005,45.49,"Action",1),
	(1246,"What he Doesn't Know",2006,58.29,"Comedy",1);




insert into video
values
	(54321, '18-jun-08', 1234),
	(54324, '18-jun-08', 1234),
	(54325, '18-jun-08', 1234),
	(34341, '22-jan-07', 1235),
	(34342, '22-jan-07', 1254),
	(34366, '02-mar-09', 1236),
	(34367, '02-mar-09', 1236),
	(34368, '02-mar-09', 1236),
	(34369, '02-mar-09', 1236),
	(44392, '21-okt-08', 1237),
	(44397, '21-okt-08', 1237),
	(59237, '14-feb-09', 1237),
	(61388, '25-jan-07', 1239),
	(61353, '28-jan-06', 1245),
	(61354, '28-jan-06', 1245),
	(61367, '30-jul-08', 1246),
	(61369, '30-jul-08', 1246);













# 3
select movieTitle, movieYear, movieCost from movie where movieTitle like '%hope%' order by movieTitle asc;


# 4
select movieTitle, movieYear, movieGenre from movie where movieGenre ="Action";

# 5
select movieNum, movieTitle, movieCost from movie where movieCost >= 40;

#6
select movieNum, movieTitle, movieCost from movies where movieCost < 50 and movieGenre = "Action" or movieGenre = "Comedy" order by movieGenre asc;

#7
#5select movieNum, priceDescription