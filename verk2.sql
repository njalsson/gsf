drop database if exists projects;
create database projects;
use projects;

drop table if exists JOB;
create table JOB(
	JOB_CODE int,
	JOB_DESCRIPTION varchar(255),
	JOB_GHG_HOUR varchar(255),
	JOB_LAST_UPDATE date

);

drop table if  exists EMPLOYEE;
create	table EMPLOYEE(
	EMP_NUM int,
	EMP_LNAME varchar(255),
	EMP_FNAME varchar(255),
	EMP_INITIAL varchar(255),
	EMP_HIREDATE varchar(255),
	JOB_CODE int,
	EMP_YEARS int
);
drop table if exists ASSIGNMENT;
create table ASSIGNMENT(
	ASSIGN_NUM int,
	ASSIGN_DATE date,
	PROJ_NUM int,
	EMP_NUM int,
	ASSIGNMENT_JOB int,
	ASSIGN_CHG_HR int,
	ASSIGN_CHARGE int
);

insert into  EMPLOYEE(EMP_NUM,EMP_LNAME,EMP_FNAME,EMP_INITIAL,EMP_HIREDATE,JOB_CODE,EMP_YEARS)
values(
	(101,"News", "John", "G","08-nov-00",502,4),
	(102,"Senior","David","H","G","12-jul-89",401,15),
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
	(118,"Frommer","James","J","04-jan-05",510,0)

);