drop database if exists 0506973399_projects;
create database 0506973399_projects;
use 0506973399_projects;

drop table if exists JOB;
create table JOB(
	JOB_CODE int,
	JOB_DESCRIPTION varchar(255),
	JOB_GHG_HOUR varchar(255),
	JOB_LAST_UPDATE varchar(255),
	PRIMARY KEY (JOB_CODE)

);

drop table if  exists EMPLOYEE;
create	table EMPLOYEE(
	EMP_NUM int,
	EMP_LNAME varchar(255),
	EMP_FNAME varchar(255),
	EMP_INITIAL varchar(255),
	EMP_HIREDATE varchar(255),
	JOB_CODE int,
	EMP_YEARS int,
	PRIMARY KEY (EMP_NUM)
);


alter table employee add constraint foreign key (job_code) references job(job_code);


drop table if exists ASSIGNMENT;
create table ASSIGNMENT(
	ASSIGN_NUM int,
	ASSIGN_DATE varchar(255),
	PROJ_NUM int not null,
	EMP_NUM int not null,
	ASSIGN_JOB INT,
	ASSIGN_CHG_HR double,
    ASSIGN_HOURS double,
	ASSIGN_CHARGE double,
	PRIMARY KEY (ASSIGN_NUM)

);
drop table if exists PROJECT;
create table PROJECT(
	PROJ_NUM int,
    PROJ_NAME varchar(255),
    PROJ_VALUE double,
    PROJ_BALANCE double,
    EMP_NUM int,
    PRIMARY KEY (PROJ_NUM),
    FOREIGN KEY (EMP_NUM) REFERENCES EMPLOYEE(EMP_NUM)

);

alter table ASSIGNMENT add constraint foreign key (emp_NUM) references EMPLOYEE (EMP_NUM);
alter table ASSIGNMENT add constraint foreign key (proj_num) references project (proj_num);




insert into  EMPLOYEE(EMP_NUM,EMP_LNAME,EMP_FNAME,EMP_INITIAL,EMP_HIREDATE,JOB_CODE,EMP_YEARS)
values
	
	(102,"Senior","David","H","12-jul-89",501,15),
	(103,"Arbough","June","E","01-des-96",503,8),
	(104,"Ramonas","Anne","K","01-feb,93",501,17),
	(105,"Johnson","Alice","K","01-feb-32",502,12),
	(106,"Smithsfield","William","","22-jun-04",500,0),
	(107,"Alonzo","Maria","D","10-okt-93",500,11),
	(108,"Washington","Ralph","B","22-agus-91",501,13),
	(109,"Smith","Larry","W","18-jul-97",501,7),
	(110,"Olensko","Gerald","A","11-des-95",505,14),
	(111,"Wabash","Geoff","B","04-apr-91",506,10),
	(112,"Smithson","Darlene","M","23-okt-94",507,10),
	(113,"Joenbrood","Delbert","K","15-nov-96",508,8),
	(114,"Jones","Annalise","","20-agu-93",508,11),
	(115,"Bawangi","Travis","B","25-jan",501,13),
	(116,"Pratt","Gerald","L","05-mar-97",510,8),
	(117,"Williamson","Angie","H","19-jun-96",509,8),
	(118,"Frommer","James","J","04-jan-05",510,0);



insert into PROJECT (PROJ_NUM, PROJ_NAME,PROJ_VALUE,PROJ_BALANCE,EMP_NUM)
values
	(15,"Evergreen",1453500.00,1002350.00,103),
	(18,"Amber Wave",3500500.00,2110346.00,108),
	(22,"Rolling Tide",805000.00,500345.20,102),
	(25,"Starlight",2650500.00,2309880.00,107);
    
    
insert into ASSIGNMENT(ASSIGN_NUM,ASSIGN_DATE,PROJ_NUM,EMP_NUM,ASSIGN_JOB,ASSIGN_CHG_HR,ASSIGN_HOURS,ASSIGN_CHARGE)
values
	(1001,"22-mar-07",18,103,503,84.50,3.5,295.75),
	(1002,"22-mar-07",22,117,509,34.55,4.2,145.11),
	(1003,"22-mar-07",18,117,509,34.55,2.0,69.10),
	(1004,"22-mar-07",18,103,503,84.50,5.9,498.55),
	(1005,"22-mar-07",25,108,501,96.75,2.2,212.85),
	(1006,"22-mar-07",22,104,501,96.75,5.6,541.80);


insert into JOB(JOB_CODE,JOB_DESCRIPTION,JOB_GHG_HOUR,JOB_LAST_UPDATE)
values
	(500,"Programmer",35.75,"20-nov-06"),
	(501,"System Analyst",95.75,"20-nov-06"),
	(502,"Database Designer",125.00,"24-mar-07"),
	(503,"Electrical Engineer",84.50,"20-nov-07"),
	(504,"Mechanical Engineer",67.90,"20-nov-07"),
	(505,"Civil Engineer",55.78,"20-nov-07"),
	(506,"Clerical Support",26.87,"20-nov-07"),
	(507,"DSS Analyst", 45.95,"20-nov-07"),
	(508,"Applications Designer",48.10,"24-mar-07"),
	(509,"Bio Technician",34.55,"20-nov-06"),
	(510,"General Support",18.36,"20-nov-06");
    
    
