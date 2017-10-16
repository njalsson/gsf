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
	(101,"News", "John", "G","08-nov-00",502,4)

);