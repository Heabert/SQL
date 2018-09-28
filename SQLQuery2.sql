create database finalProSQL

use finalProSQL;

create table Consensis (id integer identity (1,1) primary key,
						_State varchar(20) NOT NULL,
						Capital varchar(20) NOT NULL,
						Population_ bigint NOT NULL,
						_Area bigint NOT NULL,
						_Famous_People varchar(30) NOT NULL,
						_Nickname varchar(20) NULL,
						_Union bigint NOT NULL,
						_StateBird varchar(20) NOT NULL,
						);

insert into Consensis (_State,Capital,Population_,_Area,_Famous_People,_Nickname,_Union,_Statebird)
					  values ('Alaska', 'Juneau', 479000, 586412, 'Joe Juneau', 'Last Frontier', 1959, 'Ptarmigan'),
							 ('Arizona','Phoenix', 2963000, 113909, 'Geronimo', 'Grand Canyon State', 1912, 'cactus Wren'),
                             ('California', 'Sacramento', 25174000, 158693, 'Jack London', 'Golden  State', 1850, 'Quail'),
							 ('Florida', 'Tallahassee', 10680000, 58560, 'Joseph Stilwell', 'Sinshine State', 1845, 'Mockingbird'),
							 ('Hawaii', 'Honolulu', 102300, 6450, 'Don Ho', 'Aloha State', 1959, 'Goose'),
							 ('Idaho', 'Boise', 989000, 83557, 'Sacajawea', 'Gem State', 1890, 'Bluebird'),
							 ('Kansas', 'Topeka', 2425000, 82264, 'Amelia Earhart', 'Sunflower State', 1861, 'Meadowlark'),
							 ('Maine', 'Augusta', 1146000, 33215,'Henry Longfellow', 'Pine Tree State', 1820, 'Chickadee'),
							 ('Nebraska', 'Lincoln', 1597000, 77227, 'Fred Astaire', 'Cornhusker State', 1867, 'Meadowlark'),
							 ('New Jersey', 'Trenton', 7468000, 7836, 'Stephen Crane', 'Garden State', 1787, 'Goldfinch'),
							 ('New York', 'Albany', 1766700, 49576, 'Walt Whitman', 'Empire State', 1788, 'Bluebird'),
							 ('Ohio', 'Columbus', 10746000, 41222, 'Bob Hope', 'Buckeye State', 1803, 'Cardinal'),
							 ('Washington', 'Olympia', 4300000, 68192, 'Bing Crosby','Evergreen State',1889,'Goldfinch'),
							 ('Wisconsin', 'Madison', 4751000, 56154, 'Specncer Tracy', 'Badger State', 1848,'Robin');


T1, Part 1, Q#2
select * from Consensis where _Union >= 1850 and _Union <= 1920;

T1, Part 1, Q#3
select * from Consensis where _Area < 60000 and Population_ > 10000000;

T1, Part 1, Q#4
select * from Consensis;

create view Famous_sort as select * from Consensis;
select * from Famous_sort
select * from Famous_sort order by Population_;

T1, Part 2, Q#2

create table students (studentID integer NOT NULL primary key,
					  Fname varchar(20) NOT NULL,
					  Lname varchar(20) NOT NULL,
					  addr1 varchar(100) NOT NULL,
					  addr2 varchar(100) NOT NULL,
					  city varchar(50) NOT NULL,
					  zip int NOT NULL,
					  DOB date NOT NULL,
					  Gender varchar(10) NOT NULL,
					  Category varchar(25) NOT NULL,
					  Nationality varchar(50) DEFAULT NULL,
					  Special_Needs varchar(150) DEFAULT NULL,
					  AdvisorNum varchar(50) NOT NULL,
					  );

create table halls	  (PlaceNum integer NOT NULL primary key,
					  HallName varchar(30) NOT NULL,
					  addres varchar(100) NOT NULL,
					  Phone varchar(15) NOT NULL,
					  RoomNum integer NOT NULL,
					  Rate integer NOT NULL,
					  staffId integer NOT NULL,
					  studentID integer DEFAULT NULL,
					  );

create table flats (FlatNum varchar(20) NOT NULL primary key,
					Addres varchar(100) NOT NULL,
					Availability_ integer NOT NULL,
					studentID integer DEFAULT NULL,
					);

create table lease (LeaseNum integer NOT NULL primary key,
					Duration varchar(20) NOT NULL,
					studentID integer NOT NULL,
					PlaceNum integer DEFAULT NULL,
					FlatNum integer DEFAULT NULL,
					StartDate date DEFAULT NULL,
					EndDate date DEFAULT NULL,
					);

create table invoice(InvoiceNum integer NOT NULL primary key,
					 LeaseNum integer NOT NULL,
					 Quarter_ varchar(20) DEFAULT NULL,
					 PaymentDue date DEFAULT NULL,
					 studentID integer NOT NULL,
					 PlaceNum integer DEFAULT NULL,
					 FlatNum integer DEFAULT NULL,
					 );

create table payment(	  PaymentID integer NOT NULL primary key,
						  InvoiceNum integer NOT NULL,
						  Date_ date NOT NULL,
						  MethodPayment varchar(30) NOT NULL,
						  FirstReminder date DEFAULT NULL,
						  SecondReminder date DEFAULT NULL,
						  );
  

create table inspection (InspectionID integer NOT NULL primary key,
						  StaffID integer NOT NULL,
						  Date_ date DEFAULT NULL,
						  Results tinyint DEFAULT NULL,
						  );

create table comment(ComID integer NOT NULL primary key,
					  studentID integer NOT NULL,
					  Comment varchar(600) NOT NULL,
					  );


create table staff(	  StaffID integer NOT NULL primary key,
					  FullName varchar(100) NOT NULL,
					  Add1 varchar(50) NOT NULL,
					  Add2 varchar(50) NOT NULL,
					  City varchar(20) NOT NULL,
					  State_ varchar(20) NOT NULL,
					  Zip integer NOT NULL,
					  DOB date NOT NULL,
					  Gender varchar(10) NOT NULL,
					  Phone varchar(20) NOT NULL,
					  Position varchar(50) NOT NULL,
					  Office varchar(50) NOT NULL,
					  );

create table courses(CourseID integer NOT NULL primary key,
					 studentID integer NOT NULL,
					  Title varchar (10) NOT NULL,
					  StaffID integer NOT NULL,
					  Year_ integer NOT NULL,
					  RoomNum varchar(10) NOT NULL,
					  DepartmentName varchar(50) NOT NULL,
					  );

create table contacts(	  ContactID integer NOT NULL primary key,
						  studentID integer  NOT NULL,
						  SSN varchar (20) DEFAULT NULL,
						  FullName varchar(20) NOT NULL,
						  Relationship varchar(20) NOT NULL,
						  Add1 varchar(20) NOT NULL,
						  Add2 varchar(20) NOT NULL,
						  City varchar(20) NOT NULL,
						  State_ varchar(20) NOT NULL,
						  Zipcode integer NOT NULL,
						  Phone varchar(10) NOT NULL,
						  );
  





