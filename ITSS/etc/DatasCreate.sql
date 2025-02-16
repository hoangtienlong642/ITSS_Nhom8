CREATE DATABASE "ITSS_project"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
create table users(
	id integer primary key,
	password VARCHAR ( 50 ) NOT NULL
);
CREATE TABLE form (
    idform integer NOT NULL primary key,
    idnhanvien integer NOT NULL,
    status int NOT NULL,
    newtime timestamp with time zone NOT NULL,
	idlog int NOT NULL,
	newdevice integer NOT NULL
);

insert into form values(1,20204939,0,(TO_TIMESTAMP('2023-06-01 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),1,1);
insert into form values(2,20204939,0,(TO_TIMESTAMP('2022-06-01 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),2,1);

CREATE TABLE logCC (
    "id" SERIAL NOT NULL PRIMARY KEY,
    "timestamp" timestamp without time zone NOT NULL,
    "id_employee" integer NOT NULL,
	"device" integer not null
);

CREATE TABLE employee(
    "id" integer primary key NOT NULL,
    "name" varchar (50) NOT NULL,
    "birthDate" date NOT NULL,
    "Unit" integer NOT NULL,
    "role" integer NOT NULL,
	"gender" integer Not NULL
);

CREATE TABLE worker (
	"id" integer primary key NOT NULL,
	"workerName" varchar (50) NOT NULL,
	"workerID" varchar (50) NOT NULL,
	"workerUnit" int NOT NULL,
	"workMonth" int NOT NULL,
	"workerTotalWorkHour" double precision NOT NULL,
	"workerTotalOvertimeHour" double precision NOT NULL
);

CREATE TABLE officer (
	"id" integer primary key NOT NULL,
	"officerName" varchar (50) NOT NULL,
	"officerID" varchar (50) NOT NULL,
	"officerUnit" int NOT NULL,
	"workMonth" int NOT NULL,
	"totalWorkDays" int NOT NULL,
	"totalFaultHours" double precision NOT NULL
);

insert into officer values(1, 'Nguyen Tung Lam', 'NV123546', 1, 1, 15, 59.0);
insert into officer values(2, 'Nguyen Tung Ram', 'NV123646', 1, 1, 11, 1.5);
insert into officer values(3, 'Nguyen Tung Ramy', 'NV124346', 2, 3, 9, 0.15);
insert into officer values(4, 'Nguyen Tung Lamu', 'NV126546', 2, 5, 5, 0.60);
insert into officer values(5, 'Nguyen Tung Ramu', 'NV128546', 3, 7, 8, 0.25);
insert into officer values(6, 'Nguyen Tung Lama', 'NV126546', 3, 8, 6, 0.20);
insert into officer values(7, 'Nguyen Tung Rama', 'NV128546', 4, 12, 10, 10.0);
insert into officer values(8, 'Nguyen Tung Lamma', 'NV193546', 4, 11, 7, 1.0);
insert into officer values(9, 'Nguyen Tung Lam', 'NV123546', 1, 1, 16, 59.0);

insert into worker values(1, 'Nguyen Tung Ram', 'CN123646', 1, 1, 11.0, 1.5);
insert into worker values(2, 'Nguyen Tung Ramy', 'CN124346', 2, 3, 90.0, 0.15);
insert into worker values(3, 'Nguyen Tung Lamu', 'CN126546', 2, 5, 50.0, 0.60);
insert into worker values(4, 'Nguyen Tung Ramu', 'CN128546', 3, 7, 80.0, 0.25);
insert into worker values(5, 'Nguyen Tung Lama', 'CN126546', 3, 8, 60.0, 0.20);
insert into worker values(6, 'Nguyen Tung Rama', 'CN128546', 4, 12, 10.0, 10.0);
insert into worker values(7, 'Nguyen Tung Lamma', 'CN193546', 4, 11, 70.0, 1.0);
insert into worker values(8, 'Nguyen Tung Lamma', 'CN193546', 4, 11, 70.0, 1.0);

insert into employee values(20205105,'Nguyen Van Nam','01-05-2002',2,1,1);
insert into users(id,password) values(20205103,'nam');
insert into users values(20205104,'123456');
insert into users values(20205105,'man');
insert into employee values(20204939,'Nguyễn Cơ Tuấn Anh','10-27-2002',2,3,1);
insert into users values(20204939,'11');

delete from logCC;
INSERT INTO logCC (timestamp, id_employee, device)
VALUES
    (TO_TIMESTAMP('2023-06-01 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-01 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-02 08:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-02 14:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-03 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-03 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-04 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-04 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-05 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-05 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-06 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-06 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-07 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-07 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-08 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-08 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-09 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-09 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-10 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-10 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-11 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-11 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-12 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-12 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-13 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-13 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-14 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-14 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-15 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-15 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-16 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-16 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-17 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-17 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-18 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-18 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-19 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-19 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-20 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-20 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-21 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-21 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-22 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-22 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-23 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-23 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-24 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-24 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-25 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-25 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-26 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-26 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-27 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-27 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-28 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-28 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-29 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-29 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0),
    (TO_TIMESTAMP('2023-06-30 07:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,1),
    (TO_TIMESTAMP('2023-06-30 17:34:56', 'YYYY-MM-DD HH24:MI:SS'),20204939,0)


INSERT INTO users VALUES
    (20201111,'1'),
    (20202222,'2'),
    (20203333,'3'),
    (20204444,'4'),
    (20205555,'5'),
    (20206666,'6'),
    (20207777,'7'),
    (20208888,'8'),
    (20209999,'9');

INSERT INTO employee VALUES
    (20201111,'Thanh', '2002-04-01', 1, 1, 1),
    (20202222,'Nam', '2002-04-02', 2, 2, 1),
    (20203333,'Tuan Anh', '2002-04-03', 3, 3, 1),
    (20204444,'The Anh', '2002-04-04', 4, 3, 1),
    (20205555,'Linh', '2002-04-05', 2, 3, 0),
    (20206666,'Huy', '2002-04-06', 2, 3, 1),
    (20207777,'Dat', '2002-04-07', 2, 3, 1),
    (20208888,'Giang', '2002-04-08', 2, 3, 0),
    (20209999,'Tung', '2002-04-09', 2, 3, 1);

INSERT INTO logCC VALUES
    (default, '2020-06-27 09:10:00', '20203333', 0),
    (default, '2020-06-27 09:15:00', '20204444', 0),
    (default, '2020-06-27 09:20:00', '20205555', 0),
    (default, '2020-06-27 09:25:00', '20206666', 0),
    (default, '2020-06-27 09:30:00', '20207777', 0),
    (default, '2020-06-27 09:35:00', '20208888', 0),
    (default, '2020-06-27 09:40:00', '20209999', 0),
    (default, '2020-06-27 12:10:00', '20203333', 1),
    (default, '2020-06-27 12:15:00', '20204444', 1),
    (default, '2020-06-27 12:20:00', '20205555', 1),
    (default, '2020-06-27 12:25:00', '20206666', 1),
    (default, '2020-06-27 12:30:00', '20207777', 1),
    (default, '2020-06-27 12:35:00', '20208888', 1),
    (default, '2020-06-27 12:40:00', '20209999', 1);

INSERT INTO form VALUES
    (1, 20209999, 'true', '2020-06-27 12:45:00', 74);